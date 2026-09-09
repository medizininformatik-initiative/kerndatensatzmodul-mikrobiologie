// Die Terminologieversionen dieses Leitfadens stehen an mehreren Stellen, weil
// keine einzelne alle Konsumenten bedient: SUSHI liest die Aliase, um
// `compose.include.version` zu bauen, der IG Publisher liest das
// Expansions-Manifest, um zu entscheiden, wogegen expandiert und validiert wird.
// Keiner der beiden sieht den anderen.
//
// Gleiche Lage wie bei scripts/toolchain-pins.test.mjs, gleiches Mittel: die
// Werte nicht teilen, sondern das Auseinanderlaufen den Build brechen lassen.
//
// Uebernommen aus dem Basismodul Labor. Zwei Arten von Uebereinstimmung, die
// nicht dasselbe sind:
//
//   1. Woertliche Dopplung — LOINC und SNOMED stehen in aliases.fsh UND im
//      Manifest. Dieses Modul versioniert die Aliase bisher NICHT, sondern
//      pinnt nur im Manifest; der Test meldet das als skip statt als Fehler.
//   2. Uebereinstimmung mit einem Paket — die `$*-ver`-Aliase nennen
//      CodeSystem-Versionen, die eine ABHAENGIGKEIT ausliefert. Die lassen sich
//      nicht einmal aufschreiben, nur gegen das aufgeloeste Paket pruefen.
//
// Genau Fall 2 haette am 2026-09-09 einen Fehler gefunden: THO wurde auf 7.1.0
// gepinnt, ohne zu pruefen, welche CodeSystems dieses Paket wirklich enthaelt.
//
// Lauf:  node --test scripts/terminology-pins.test.mjs
import { test } from "node:test";
import assert from "node:assert/strict";
import { readFileSync, existsSync, readdirSync } from "node:fs";
import { fileURLToPath } from "node:url";
import { homedir } from "node:os";
import path from "node:path";

import { parseSushiDependencies } from "./check-updates.mjs";

const repository = fileURLToPath(new URL("../", import.meta.url));

const ALIASES = "input/fsh/aliases.fsh";
const MANIFEST = "input/resources/Parameters-expansion-manifest.json";
const SUSHI_CONFIG = "sushi-config.yaml";

function read(relativePath) {
  return readFileSync(`${repository}${relativePath}`, "utf8");
}

/**
 * Jedes `Alias: $name = <url>` aus aliases.fsh, als { name: url }.
 * Die url behaelt ihr `|version`-Suffix, wenn sie eines hat.
 */
export function parseAliases(fshText) {
  const aliases = {};
  for (const line of fshText.split("\n")) {
    if (line.trimStart().startsWith("//")) continue;
    const m = line.match(/^Alias:\s*\$([^\s=]+)\s*=\s*(\S+)/);
    if (m) aliases[m[1]] = m[2];
  }
  return aliases;
}

/**
 * Zerlegt eine Canonical in { url, version }. SNOMEDs Version ist selbst eine
 * URL ohne `|`, deshalb nur am ERSTEN Trenner teilen.
 */
export function splitCanonical(canonical) {
  const at = canonical.indexOf("|");
  return at === -1
    ? { url: canonical, version: null }
    : { url: canonical.slice(0, at), version: canonical.slice(at + 1) };
}

/**
 * Die Versionspins des Manifests als { url: [version, ...] }, ueber
 * `system-version` und `force-system-version` hinweg — ein System darf beide
 * tragen, dann muessen beide dieselbe Version nennen.
 */
export function parseManifestVersions(manifestJson) {
  const byUrl = {};
  for (const p of JSON.parse(manifestJson).parameter ?? []) {
    if (p.name !== "system-version" && p.name !== "force-system-version") continue;
    const { url, version } = splitCanonical(p.valueCanonical ?? "");
    if (!url || !version) continue;
    (byUrl[url] ??= []).push(version);
  }
  return byUrl;
}

// ── 1. Woertliche Dopplung: aliases.fsh ↔ Expansions-Manifest ───────────────

for (const [alias, system] of [
  ["loinc", "http://loinc.org"],
  ["sct", "http://snomed.info/sct"],
]) {
  test(`$${alias} und das Manifest pinnen dieselbe ${system}-Version`, (t) => {
    const aliases = parseAliases(read(ALIASES));
    assert.ok(aliases[alias], `${ALIASES} hat keinen $${alias}-Alias`);

    const { url, version } = splitCanonical(aliases[alias]);
    assert.equal(url, system, `$${alias} zeigt auf ${url}, erwartet ${system}`);

    if (!version) {
      // Bewusster Unterschied zum Basismodul Labor: dort tragen $sct und $loinc
      // die Version, wodurch jede ValueSet-Komposition und jedes Beispiel-Coding
      // sie mitbekommt. Dieses Modul pinnt nur im Manifest. Kein Fehler, aber
      // eine Stelle weniger Verbindlichkeit — bewusst sichtbar gehalten.
      t.skip(`$${alias} ist unversioniert; gepinnt wird nur ueber ${MANIFEST}`);
      return;
    }

    const pinned = parseManifestVersions(read(MANIFEST))[system];
    assert.ok(pinned?.length, `${MANIFEST} pinnt keine Version fuer ${system}`);
    for (const v of pinned) {
      assert.equal(
        v,
        version,
        `${MANIFEST} pinnt ${system}|${v}, ${ALIASES} pinnt $${alias} = ${version}`,
      );
    }
  });
}

// ── 2. Uebereinstimmung mit einer Abhaengigkeit ─────────────────────────────

// Extension-Referenzen bleiben unversioniert. Ein Extension-Slice matcht ueber
// Extension.url — eine uri ohne Version in der Instanz —, ein |version auf
// type.profile repariert also nichts am Matching und bricht zugleich Werkzeuge,
// die versionierte Canonicals nicht aufloesen: Im Basismodul Labor hat das den
// Simplifier-Bake von 2027.0.0-ballot.rc1 zerlegt. Welche Paketversion gilt,
// gehoert in die dependencies der sushi-config; pin-canonicals schreibt die
// Versionen in die veroeffentlichte Ausgabe.
test("Extension-Aliase tragen keine Version", () => {
  const aliases = parseAliases(read(ALIASES));
  const offenders = Object.entries(aliases).filter(
    ([, url]) => url.includes("/StructureDefinition/") && url.includes("|"),
  );
  assert.deepEqual(
    offenders.map(([name, url]) => `$${name} = ${url}`),
    [],
    "Extension-Referenzen muessen unversioniert bleiben; die Paketversion gehoert in sushi-config.yaml",
  );
});

/**
 * Die CodeSystem-Versionen, die ein Paket ausliefert, als { url: version }.
 * Gibt null zurueck, wenn das Paket nicht im FHIR-Cache liegt — ein frischer
 * Checkout hat vor dem ersten Build keinen, und daraus darf kein Fehler werden.
 */
function codeSystemVersions(packageId, packageVersion) {
  const root = process.env.FHIR_PACKAGE_CACHE ?? path.join(homedir(), ".fhir", "packages");
  const dir = path.join(root, `${packageId}#${packageVersion}`, "package");
  if (!existsSync(dir)) return null;

  const versions = {};
  for (const file of readdirSync(dir)) {
    if (!file.startsWith("CodeSystem-") || !file.endsWith(".json")) continue;
    try {
      const cs = JSON.parse(readFileSync(path.join(dir, file), "utf8"));
      if (cs.url && cs.version) versions[cs.url] = cs.version;
    } catch {
      // Ein Paket kann Dateien enthalten, die keine parsebaren Ressourcen sind.
    }
  }
  return versions;
}

test("die versionierten THO-Aliase passen zu den CodeSystems, die THO ausliefert", (t) => {
  const deps = parseSushiDependencies(read(SUSHI_CONFIG));
  const pinned = deps["hl7.terminology.r4"];
  assert.ok(pinned, `${SUSHI_CONFIG} pinnt hl7.terminology.r4 nicht`);

  const shipped = codeSystemVersions("hl7.terminology.r4", pinned);
  if (shipped === null) {
    t.skip(`hl7.terminology.r4#${pinned} liegt nicht im Paket-Cache`);
    return;
  }

  const aliases = parseAliases(read(ALIASES));
  const thoAliases = Object.entries(aliases).filter(
    ([, url]) => url.startsWith("http://terminology.hl7.org/CodeSystem/") && url.includes("|"),
  );
  assert.ok(thoAliases.length, `${ALIASES} hat keine versionierten THO-Aliase zum Pruefen`);

  for (const [name, canonical] of thoAliases) {
    const { url, version } = splitCanonical(canonical);
    const actual = shipped[url];
    assert.ok(actual, `hl7.terminology.r4#${pinned} liefert kein CodeSystem ${url} (referenziert von $${name})`);
    assert.equal(
      version,
      actual,
      `$${name} pinnt ${version}, hl7.terminology.r4#${pinned} liefert ${url} in ${actual}`,
    );
  }
});
