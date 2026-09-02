# Migration report — Kerndatensatzmodul Mikrobiologie → MII KDS module template

**Source** `medizininformatik-initiative/kerndatensatzmodul-mikrobiologie` @ `main` `fdf3190` ·
rendered guide `https://simplifier.net/guide/mii-ig-modul-mikrobiologie-2027-de/MIIIGModulMikrobiologie?version=2027.0.0-alpha.5` (pinned, published, read-only)
**Target template** `medizininformatik-initiative/mii-kds-module-template` `v0.13.2` (`a2390de`), referenced by repository URL — **no vendored copy** (package `de.medizininformatikinitiative.template` 1.3.4, resolved at build time)
**Branch** `migration/2027.0.0-alpha.6-template-v0.11.1` → PR base `main`
**Runs** 1 · 2026-08-25 · skill `mii-ig-migration` v0.23.0 (initial migration onto template v0.11.1)
**Runs** 2 · 2026-09-02 · skill `mii-ig-migration` v0.25.0 (scaffold re-migration onto template v0.13.2) — see *Run 2* below
everything below traces to `migration-log/run.log`

## How to use this report

Three queues, and every open item is in exactly one:
**① decide** (Gate A — someone must choose) · **② review** (Gates B/C — someone must check) ·
**③ QA triage** (what the build says, and whose problem it is).
*Applied fixes* lists what was already changed; merging accepts all of them. Each names the commit
that carries it — and says honestly where several fixes share one, so a reviewer who reverts to undo
one thing knows what else goes with it.
Nothing here is published: Gate D (TF KDS / AG IOP / NSG) is untouched.

## Run 2 — scaffold re-migration onto template v0.13.2 (2026-09-02)

Run 1 put the module on template `v0.11.1` with the template **vendored** as `ig-template/`.
Between then and now the template moved organisation and retired that shape. Run 2 carries the
scaffold forward. **No narrative, artefact or identity decision from run 1 was re-opened.**

| What changed | Why | Evidence |
|---|---|---|
| `ig-template/` (42 files) + `sync-ig-template.{yml,sh}` + `resolve-ig-template-source.sh` removed; `ig.ini` `template =` now the repository URL | template `v0.12.0` made the URL reference the scaffold default; skill `v0.25.0` forbids a vendored template in a migrated module | `5.2 template-reference`, P1 |
| Catalog skills de-vendored: `skills-lock.json`, `scripts/sync-skills.sh`, `.github/workflows/sync-skills.yml`, `scripts/vendored-skills.test.mjs` and the pinned `fhir-ig-analysis` / `fhir-ig-translation` copies removed | template `v0.13.0` (issue #18) decided it; consumers install on demand | `5.2 devendor` |
| 24 pristine scaffold files raised to `v0.13.2`; `scripts/gen-pages-index.{mjs,test.mjs}` and `docs/org-move.md` added | `v0.13.1` gh-pages plain index; organisation move | `git show 17b1999` |
| Ownership handover recorded (MII/TMF until 2026-12-31, NUM-DIZ from 2027-01-01) | template `v0.13.0` | `SECURITY.md`, `CODE_OF_CONDUCT.md` |
| Licence recorded as an asserted decision and reconciled mechanically | skill `v0.24.0` `license-align` | `5.2 license-align` exit 0 |

**Measured outcome.** SUSHI 0 errors · scaffold unit tests 107/107 · IG Publisher **109 errors,
573 warnings, 0 broken links** — the error count is unchanged from run 1, so the scaffold move
introduced no regression. Verification verdicts `IDENTISCH 138 / DIVERGIERT 23` are unchanged;
`NICHT PRÜFBAR` rose 51 → 53.

**Convention check.** `M6 version` moved **FAIL → PASS** (template `v0.13.2` accepts CalVer
prerelease suffixes, so `2027.0.0-alpha.6` is now valid); `M5 canonical` and `M7 no floating pins`
pass, the latter reading the new URL reference. `M2 id` and `M3 name` still FAIL — **verified as
pre-existing**: the same failures reproduce when run 1's checker is run against this tree. Per
guardrail 1 the source wins; changing a published `id` breaks consumers. ① Gate A.

**The three new NICHT PRÜFBAR rows are not new gaps.** `L2 guide-harvest`, `L4 conversion count`
and `R1 source-versus-target rendering` are conditional on a guide harvest and a goFSH conversion,
neither of which applies to this shape-A scaffold run. They read as unverifiable only because run 2
opened a new run boundary and therefore carries no such lines. ② confirm the condition.

**Page map — a human decision was overwritten and restored.** Regenerating
`migration-log/page-map.tsv` (skill: *"re-running overwrites the reviewed map"*) left **42 of 46
targets unchanged** but replaced four reviewed `RETIRED` rows — the Simplifier FQL snippets
`FQL-Beschreibung`, `FQL-Capability-Operations`, `FQL-Capability-REST`, `FQL-Capability-Search` —
with four new `input/pagecontent/fql-*.md` pages. That would have shipped raw `<fql>` bodies the IG
Publisher cannot render. **The four rows were restored verbatim with their original reason**; all 46
targets now match the reviewed baseline. Nothing else in the map needs re-review.

**Still open from run 2.** `.github/workflows/fhir-validate.yml` is a pre-migration leftover from
the Simplifier era (triggers on `master`, a branch that no longer exists). The skill's rule for
unrecognised entries is *list, do not remove* — ② decide retain or retire.
`publication-request.json`'s two placeholders were filled on 2026-09-02; its `"first"` flag is
correct, and the publication-history question it raises is its own section above.


## Identity change — ImplementationGuide `id` and `name` (2026-09-02)

**This is a deliberate, operator-authorised divergence from the source**, and therefore an
exception to guardrail 1, which otherwise forbids changing a published id. It is recorded here
because the mechanical verification does not raise it: the run-1 identity contradictions it
reports are unrelated.

| Field | Before | After |
|---|---|---|
| `id` | `kerndatensatzmodul-mikrobiologie` | `mii-ig-mikrobiologie` |
| `name` | `Kerndatensatzmodul Mikrobiologie` | `MII_IG_Mikrobiologie` |
| IG canonical | `…/ImplementationGuide/kerndatensatzmodul-mikrobiologie` | `…/ImplementationGuide/mii-ig-mikrobiologie` |

**Why.** Both values were inherited verbatim from the source and predate the MII naming
convention. The sibling modules already follow it — `de.…kerndatensatz.base` publishes
`mii-ig-base` / `MII_IG_Base`, `de.…kerndatensatz.labor` publishes `mii-ig-labor` /
`MII_IG_Labor` — so microbiology was the outlier. The id slug follows the **packageId** slug,
not the canonical path (labor's canonical is `core/modul-labor` while its id is `mii-ig-labor`).
The module is at prerelease `2027.0.0-alpha.6`, the cheapest point at which to align.

**What did NOT change**, measured rather than assumed:
- `packageId` `de.medizininformatikinitiative.kerndatensatz.mikrobiologie` — untouched; `M1` passed before and after.
- Profile, ValueSet and CodeSystem canonicals — they hang off `…/modul-mikrobio/StructureDefinition/…` and never embed the IG id.
- The GitHub repository slug `kerndatensatzmodul-mikrobiologie` — it is the same string, so only the unambiguous `ImplementationGuide-<id>` prefix was rewritten; `publication-request.json`'s `github.io/kerndatensatzmodul-mikrobiologie/…` paths and every repository URL are intact.

**Files renamed with the id** (their names are load-bearing):
`input/pagecontent/ImplementationGuide-mii-ig-mikrobiologie.md`,
`input/translations/de/pagecontent/ImplementationGuide-mii-ig-mikrobiologie.md`,
`input/translations/de/ImplementationGuide-mii-ig-mikrobiologie.po`. The `.po` is the page-title
catalogue: at the wrong filename the German titles are ignored **silently**, so the build was
checked for them — `de/index.html` renders `Startseite`, `de/ImplementationGuide-…html` renders
`MII ImplementationGuide Ressource`.

**Outcome.** Convention check `Result: PASS` — all of `M1`–`M11` for the first time. SUSHI 0/0.
IG Publisher **109 errors, 573 warnings, 0 broken links** — unchanged. `P5` IDENTISCH: `ig.ini`
names the IG resource SUSHI actually writes.


## Validation workflows retired (2026-09-02)

Both CI validation workflows are gone. They were removed for **different** reasons, and only one of
them was a Simplifier-era leftover.

**`fhir-validate.yml` — a genuine leftover.** Firely Terminal CI carried over from the Simplifier
project. Retired because the module no longer tracks `fsh-generated/`, which its closing step
committed back.

**`validation.yml` — the template's own file, retired by operator decision.** It was byte-identical
to module template `v0.13.2`, so it is *not* a leftover; but what it does is Simplifier-bound. It
wired up two reusable `kerndatensatz-meta` workflows:

- **.NET QC (Firely Terminal)** — authenticates with `SIMPLIFIER_USERNAME` / `SIMPLIFIER_PASSWORD`.
  This was the CI-red job, and the failure is a **template-level defect, not ours**: the shared
  workflow ends with `git add fsh-generated`, while both this repository *and* the template
  gitignore that directory (`.gitignore:15` in the template, `:14` here, 0 tracked files in either).
  Every module created from this template hits it. Note the validation itself succeeded — only the
  closing `Add & Commit` step failed.
- **HL7 Java validator (SU-TermServ)** — not Simplifier-bound, but already skipping for want of an
  SU-TermServ client certificate. The workflow's own notice records the consequence: *"The IG
  preview build still validates via tx.fhir.org."*

**What this costs.** `module-release.yml` describes `validation.yml` as "the hard FHIR error gate,
run on the release PR before the tag"; that gate is now absent, leaving the IG-Publisher
buildability gate. The same comment records that `kerndatensatz-basis` "wires up neither MII
reusable validation workflow", so this puts the module on the reference module's footing rather than
below it. The test suite is unaffected — 107/107, because `toolchain-pins.test.mjs` returns early
when the file is absent — and `module-release.yml` references it in comments only.

**Follow-up:** five template documents (`workflows.md`, `release.md`, `maintenance.md`,
`secrets.md`, `recipes/review-a-dependency-update.md`) still describe the workflow. They were left
untouched: rewriting template-owned prose creates divergence the next template bump has to fight.
② review whether the module wants its own note instead.

## Menu and page set — untouched by run 2, and that is correct (2026-09-02)

The template's menu was substantially rebuilt — `feat(pages): implement the approved MII module
menu structure (#94)`, plus visible optional tags and two routing fixes for *Datasets and
Descriptions*. All of it, down to the last menu commit `6712a02a`, is contained in
`v0.10.3 … v0.11.1`, so **run 1 already carried it**. Between `v0.11.1` and `v0.13.2`,
**0 of 62 changed files touch `input/`**: the template page set and both `menu.xml` files are
byte-identical across those six releases. Run 2 therefore changed nothing here, and nothing was
missed.

**This also resolves `C5-2d86b5` (NICHT PRÜFBAR).** The verifier could not tell whether
`references/template-pages.tsv`, measured at `v0.11.1`, still describes a module on `v0.13.2`. The
measurement above answers it: the template's `input/` tree did not move, so the manifest remains
valid. No re-measurement is needed.

**The menu itself verifies clean.** `C5` reads IDENTISCH three times: all 33 entries in
`input/includes/menu.xml` resolve to a real page, all 33 in the German mirror do too, and every one
of the 24 narrative pages is reachable from a menu entry. The German menu differs from the default,
so it is a real translation rather than a fallback.

The module's menu follows the approved structure, with the differences a real module is supposed to
have: *Guidance for Researchers* and *Operations* are absent (M9 optional-page decisions, reported
`none undecided`), the `(optional)` tags are resolved because the module actually ships those
artefact classes, and *Examples* and *Technical Implementation* are the module's own entries.

## Publication path — released via Simplifier for now (2026-09-02)

**Operator decision:** the module is released through **Simplifier** for the time being. The
template's gh-pages publication path is therefore not exercised, and the questions it raises are
moot until that changes.

**Correction to an earlier note in this run.** `publication-request.json`'s `"first": true` was
called wrong here because the FHIR registry lists fifteen published versions. That was the wrong
test: `go-publish.yml` ties the flag to the **gh-pages publication webroot** — whether
`site/package-list.json` exists — not to the registry. This repository's `gh-pages` holds only
`.nojekyll` and `branches/`, so `bootstrap=true` and the flag is **correct**. The workflow checks
both directions and fails on a mismatch, so it cannot misconfigure silently.

**Publication history — parked, not resolved.** The package has fifteen versions published through
Simplifier up to `2027.0.0-alpha.5`. Were this pipeline ever used, publishing with `first: true`
would seed a fresh `package-list.json` starting at `2027.0.0-alpha.6` and those versions would not
appear in the guide's version list. The template removed the one-time history-import machinery and
ships only the building blocks — `scripts/install-history-template.mjs` and
`scripts/merge-publication-webroot.mjs`, unit-tested at `go-publish.yml:431-432` — wired into no
publication step. Rebuilding that import is per-module work, modelled on `kerndatensatz-basis`.
**Revisit this before the first formal publication through this repository, not before.**

**The release workflows stay in place.** `go-publish.yml` fires on `workflow_dispatch` only and
`module-release.yml` on a `v*` CalVer tag, a published release, or dispatch, so neither can fire by
accident. Removing them would also break the green test suite: `first-run-bootstrap.test.mjs`,
`convention-check.test.mjs`, `publication-url-consistency.template-test.mjs` and
`toolchain-pins.test.mjs` all reference them, as do `convention-check.mjs`, `check-updates.mjs`,
`gen-pages-index.mjs` and three documents. Dormant costs nothing; removed costs a divergence the
next template bump would fight.

## Summary — read this first

The module is on the template and **builds**. SUSHI compiles clean; the IG Publisher renders both
languages with **zero broken links**.

| | |
|---|---|
| SUSHI | **0 errors, 0 warnings** |
| IG Publisher 2.3.3 | **109 errors**, 573 warnings, **0 broken links** (unchanged by run 2; from 290 / 120 at the first successful build) |
| Artefacts | profiles 20, extensions 2, ValueSets 42, CodeSystems 3, logical models 3, CapabilityStatement 1, SearchParameters 4, examples 27 — **every count identical to the source** |
| Canonical URLs | source ↔ target diff **empty in both directions** (76 = 76) |
| Narrative | 43 source pages routed: 20 → intro notes on their artefact page, 4 → sections on `profiles.md`, 10 → agreed pages, 5 → own pages, 4 retired with a reason |
| Languages | German = the carried source (24 pages, 14 802 words); English = machine-translated default (24 pages, 16 817 words), every page marked and queued at Gate C |
| Verification (step 7b) | 138 IDENTISCH · 23 DIVERGIERT · 51 NICHT PRÜFBAR — **every DIVERGIERT row is triaged below; none is an unexplained loss** |

**The one thing to know:** all 109 remaining build errors are **source-authored content**, not migration
damage — 55 wrong LOINC display names, 52 dangling `Patient/example` and `Specimen/example`
references, 2 dangling `ServiceRequest/111`. Proof: **103 of the module's 106 FSH files are
byte-identical to `main`**, and all three that differ are named in *Applied fixes*.

## Where the evidence lives

| What | File |
|---|---|
| the run log — every claim in this report traces to a line here | `migration-log/run.log` |
| Gate-0 pre-flight measurement of the **unmigrated** source | `migration-log/preflight-analysis.json` |
| post-flight measurement + the pre/post delta | `migration-log/postflight-analysis.json`, `prepost-delta.md`, `prepost-delta.tsv` |
| the reviewed page-routing contract | `migration-log/page-map.tsv` (v2), `page-structure-advice.md` |
| mechanical verification, one row per checked subject | `migration-log/verification-findings.tsv`, `verification.md` |
| derived-content ledger (72 markers) | `migration-log/derived-content.tsv`, `derived-table.md` |
| identity ledger with per-field evidence | `migration-log/identity-claims.tsv` |
| build logs | `migration-log/sushi-verify.log`, `migration-log/ig-publisher.log`, `output/qa.txt` |
| sign-off checklist (61 boxes, 4 gates) | `migration-log/qa-checklist.md` |
| rendered source ↔ target page comparison | `migration-log/comparison-table.md` |

## How to re-run any of this

| What | Command | Expected |
|---|---|---|
| compile the FSH | `npx --yes fsh-sushi@3.20.0 .` | `0 Errors 0 Warnings` |
| render and validate | `java -Xmx4g -jar input-cache/publisher.jar publisher -ig ig.ini -tx https://tx.fhir.org` | `qa.txt` with 109 errors, 0 broken links |
| the template's release checks (M1–M11) | `node scripts/convention-check.mjs` | M11 FAILS on a `release/**` branch until DEC-4 is decided — intended |
| the migration verifier | `python3 .claude/skills/mii-ig-migration/scripts/verify-migration.py --target . --source <unmigrated> --rendered output --source-lang de --template-latest v0.11.1` | exit 1 — the findings are the output |
| the derived-content scan | `python3 .claude/skills/mii-ig-migration/scripts/derived-scan.py --target .` | 72 markers, exit 0 |
| the page map | `python3 .claude/skills/mii-ig-migration/scripts/page-structure-advice.py --source <unmigrated> --target . --out migration-log/page-structure-advice.md --map migration-log/page-map.tsv` | **re-running OVERWRITES the reviewed map** — re-apply the 4 RETIRED rows (see REV-1) |
| the pre/post delta | `python3 .claude/skills/mii-ig-migration/scripts/prepost-delta.py --pre migration-log/preflight-analysis.json --post migration-log/postflight-analysis.json --out migration-log/prepost-delta.md --tsv migration-log/prepost-delta.tsv` | exit 1, 2 regressions — both accepted with evidence below |

The verifier is **not** vendored here; it ships with the `mii-ig-migration` skill at
`.claude/skills/mii-ig-migration/` (catalogue ref `v0.23.0`). The sibling skill `fhir-ig-analysis`
was installed during this run (`npx skills add … --skill fhir-ig-analysis`, ref v0.23.0) — the
migration does not install it by itself.

## Codes, gates and words used here

**Item ids.** `DEC-n` = ① decide · `REV-n` = ② review · `QA-n` = ③ triage · `FIX-n` = an applied, revertible change.
**Gates.** **A** = identity and values · **B** = narrative · **C** = language and translation · **D** = release governance (TF KDS / AG IOP / NSG); nothing publishes before D.
**Verifier verdicts.** `IDENTISCH` = checked and equal · `DIVERGIERT` = checked and different, with evidence · `NICHT PRÜFBAR` = **could not be checked mechanically — not a pass**.
**Check codes.** `C1–C7` conservation · `F1–F4` fidelity · `P1–P5` provenance · `R1–R5` rendering · `L0–L4` the run log read back as a second oracle. Full list: `.claude/skills/mii-ig-migration/references/codes.md`.
**Template checks.** `M9` = the release check that every optional page is decided · `M11` = the same for the Security-and-Privacy section.
**Marker kinds.** `DERIVED:no-source` = text the migration wrote where the source had none in that language (here: the English pages) · `DERIVED:bridge` = connective text joining re-routed sections · `TODO:REVIEW` = a human must look here.

## Applied fixes (already changed — a human confirms or reverts)

Accepting these needs no action; merging accepts all. To reject one, revert it on the branch.
**Revert newest first:** FIX-7 → FIX-1. Only FIX-1 and FIX-7 are independently revertible; FIX-2,
FIX-3 and FIX-4 share the identity commit, FIX-6 rides with the narrative commit, and FIX-5's two
removals are one commit.

| # | Fix, in plain words | Commit | Also touches (beyond the headline) | If reverted | Independent? |
|---|---|---|---|---|---|
| FIX-1 | The DiagnosticReport example's `subject` was `Patient/111`, which resolves to nothing. Publisher 2.3.2 throws a NullPointerException on an unresolvable DiagnosticReport subject and **aborts the whole build**. A contained placeholder Patient makes it resolve. | `3c7fd56` | nothing else — one file | the build aborts again | **required, not a choice** |
| FIX-2 | Declared `special-url` with the 7 canonicals the Gate-0 measurement predicted. | `23d5b03` | **the whole identity commit** — `sushi-config.yaml` also carries FIX-3, FIX-4 and every identity decision | 17 publisher errors return | **no** — shares a commit with FIX-3 and FIX-4 |
| FIX-3 | Removed the template's SNOMED CT `system-version` pin (`…/version/20250701`). The source pinned no SNOMED version, and tx.fhir.org does not offer that release. | `23d5b03` | `input/resources/Parameters-expansion-manifest.json` + the identity commit | 130 errors + 58 warnings return | **no** — see FIX-2 |
| FIX-4 | Added two dependencies, each chosen by measurement: `hl7.fhir.uv.xver-r5.r4@0.1.0` (−21 errors) and `hl7.fhir.uv.ips@1.1.0` (−6 errors, −120 broken links). | `23d5b03` | the identity commit | 27 errors and 120 broken links return | **no** — see FIX-2 |
| FIX-5 | Retired `implementation-guides/modulmikrobio-2027/` (61 files) and stopped tracking `fsh-generated/` (105 files). | `c163838` | both removals are in one commit | two narrative trees again, and SUSHI output back under version control | the two removals cannot be reverted apart |
| FIX-6 | Gave the 5 migrated own-pages a top-level menu entry in both languages. | `c91b086` | **the whole narrative commit** — every migrated page, both languages | 5 pages reachable only by typing their URL | **no** — shares a commit with the narrative |
| FIX-7 | Anchored the `translations/` ignore rule to the repository root. Unanchored, it also matched `input/translations/`, and the narrative commit had shipped the English pages without their German mirrors. | `c77fb07` | adds the 26 German files the previous commit dropped | the German mirrors leave the repository | yes |

**To revert a middle commit without taking the log with it:**
`git revert -n <SHA> && git checkout HEAD -- migration-log/ && git revert --continue`

## ① Decision queue (Gate A — someone must choose)

**DEC-1 — The module has no declared licence; the template's `CC-BY-4.0` is standing in** · severity **high** · Gate A

- **What it is:** the source declares no licence anywhere — no `LICENSE` file, no `license:` in `sushi-config.yaml`, no field in the published package manifest. The template ships `CC-BY-4.0` as a literal, so no placeholder check would ever have flagged it.
- **Where:** `sushi-config.yaml:124` · `LICENSE` (the CC BY 4.0 legal text, vendored from the template).
- **If nobody acts:** the module ships publicly licensed CC BY 4.0. MII modules commonly declare `CC0-1.0`; if that was the intent, published content would carry the wrong licence.
- **Options:** (a) confirm CC-BY-4.0 → nothing changes · (b) switch to CC0-1.0 → edit the scalar **and** replace `LICENSE` · (c) remove the declaration → the field is absent from the IG resource. **Default applied now:** (a), confirmed by the operator on 2026-08-25 as the intended value — recorded as a decision, not as a carried value.
- **Next action:** confirm in writing, or apply (b).
- **Who decides:** the module lead — licensing is a publication decision, not a technical one.
- **Effort · impact:** minutes · consumer-visible.
- **Reversible:** yes, config + one file.
- **Evidence:** run.log `2.2 read-identity` (`license-absent-everywhere:`) · `migration-log/identity-claims.tsv`.

**DEC-2 — `packageId` and `version` contradict themselves across the source's own files** · severity **high** · Gate A

- **What it is:** three of the source's files disagree. `packageId`: `sushi-config.yaml` sets none (SUSHI derived `kerndatensatzmodul-mikrobiologie` from `id`), `package.json` says `project` (an untouched scaffold default), the **published** package is `de.medizininformatikinitiative.kerndatensatz.mikrobiologie`. `version`: `sushi-config.yaml` says `2027.0.0-alpha.6`, `package.json` and the published package say `2027.0.0-alpha.5`. And `releaseLabel` says `2026.0.0-alpha.6` against `version` `2027.0.0-alpha.6` — same file, different year.
- **Where:** `sushi-config.yaml` (`packageId`, `version`, `releaseLabel`) · the ledger `migration-log/identity-claims.tsv`.
- **If nobody acts:** the built package is named `de.medizininformatikinitiative.kerndatensatz.mikrobiologie` (correct for consumers) at version `2027.0.0-alpha.6`, while `releaseLabel` displays `2026.0.0-alpha.6` in the rendered footer — visibly wrong to every reader.
- **Options:** (a) keep as applied and fix `releaseLabel` → one line · (b) re-align `version` to the published `2027.0.0-alpha.5` → a re-release decision · (c) leave everything, accepting the visible mismatch. **Default applied now:** `packageId` set to the published value (operator decision, 2026-08-25); `version` and `releaseLabel` carried **verbatim** from the source, unchanged and contradictory.
- **Next action:** decide `releaseLabel` — it is a label (`Release`, `Trial Use`, `ci-build`), not a version string.
- **Who decides:** the module lead — it is the release identity.
- **Effort · impact:** minutes · consumer-visible.
- **Reversible:** yes for `releaseLabel`; **`packageId` is not**, once a package is pushed under it.
- **Evidence:** run.log `2.1 read-identity` (three `identity-contradiction:` WARNs) · verifier rows `L3-8d972c`, `L3-dd7d67`, `L3-2981ed`, `F1-bacf3c`.

**DEC-3 — Four values the source never supplied were OMITTED, not invented** · severity **medium** · Gate A

- **What it is:** `date` (release date), `resource-approvalDate`, `artifact-author` (the module author's e-mail) and `artifact-topic` (an NCI Thesaurus code) have no value anywhere in the source. Inventing any of them would ship a false claim — an approval date that never happened, a contact who never agreed, a terminology code that means something else. Each element was therefore **removed** and left commented in place with the exact edit.
- **Where:** `sushi-config.yaml` — each site carries a `MIGRATION:` comment · plus `input/fsh/rulesets/crmi.fsh:81,104`, where the two `artifact-author` rules are commented out.
- **If nobody acts:** the IG resource ships without a release date, an approval date, an author contact and a topic code. Nothing breaks; the metadata is simply incomplete, and `go-publish.yml` requires `date` before publication.
- **Options:** (a) supply the real values → uncomment · (b) leave them out permanently → delete the commented blocks. **Default applied now:** omitted, each with its comment.
- **Next action:** supply the four values before Gate D. The NCI code needs a lookup in the NCI Thesaurus — the template states there is no sensible default.
- **Who decides:** the module lead (dates, contact) · the domain group (topic code).
- **Effort · impact:** minutes each once known · blocks publication (`date`).
- **Reversible:** yes — comments, not deletions.
- **Evidence:** run.log `2.1/2.2 read-identity`.

**DEC-4 — The Security-and-Privacy section is undecided, deliberately** · severity **medium** · Gate B

- **What it is:** the source guide has **no** security/privacy section — 0 of 43 source pages route there. The template offers two mutually exclusive options: adopt its default ("this module carries no aspects of its own") or state the module's own. Both are normative statements about a module that carries pathogen-detection and antimicrobial-resistance data, so the migration wrote neither.
- **Where:** `input/pagecontent/security-and-privacy.md` and its German mirror — the `ILLUSTRATIVE-EXAMPLE` marker and the `[TODO]` block are **left in place on purpose**.
- **If nobody acts:** the template's release check **M11 fails on a `release/**` branch**. That is the intended behaviour: removing the marker would turn the check green while the section is still undecided.
- **Options:** (a) adopt the default text → delete the example box and the TODO in both languages · (b) write the module's own aspects → same, with content. **Default applied now:** neither; the open decision is visible in the page and in CI.
- **Next action:** decide the section, then remove the marker in **both** languages (a marker in one language only fails M11 on every branch).
- **Who decides:** the module lead with the MII data-protection contact.
- **Effort · impact:** hours · blocks release.
- **Reversible:** yes.
- **Evidence:** run.log `5.4b security-privacy-decision`.

**DEC-5 — `hl7.fhir.uv.ips` is pinned to 1.1.0 to work around an upstream rename** · severity **medium** · Gate A

- **What it is:** the parent module `…kerndatensatz.laborbefund` binds `http://hl7.org/fhir/uv/ips/ValueSet/results-laboratory-observations-uv-ips`. That ValueSet exists in IPS **1.1.0 only**; IPS 2.0.0 renamed it to `results-laboratory-pathology-observations-uv-ips`. Measured: no pin → 120 broken links; pin 2.0.0 → still 120; pin **1.1.0 → 0**.
- **Where:** `sushi-config.yaml`, the documented `dependencies` block.
- **If nobody acts:** the module stays pinned to a superseded IPS release to satisfy a binding it does not own.
- **Options:** (a) keep 1.1.0 until the parent is fixed · (b) drop the pin and accept 120 broken links · (c) raise it upstream in the Laborbefund module and drop the pin once fixed. **Default applied now:** (a), with (c) noted in the config.
- **Next action:** open an issue on `kerndatensatzmodul-laborbefund`.
- **Who decides:** the module lead together with the Laborbefund module team.
- **Effort · impact:** minutes here, upstream unknown · rendering quality.
- **Reversible:** yes.
- **Evidence:** run.log `5.6 dependency-decision` (the three-row measurement series).

**DEC-6 — The SNOMED CT version pin for the 2027 CalVer line is unknown** · severity **medium** · Gate A

- **What it is:** the template's expansion manifest pins SNOMED CT `…/version/20250701`, the release bound to the **v2026** CalVer line. This module is on **2027**, which the template's table does not cover, and the template says explicitly: do not guess. The pin was removed (FIX-3), restoring the source's behaviour of pinning nothing.
- **Where:** `input/resources/Parameters-expansion-manifest.json`.
- **If nobody acts:** ValueSet expansions are not reproducible across terminology-server updates — exactly the state the source was already in.
- **Options:** (a) look the 2027 → SNOMED release mapping up in the MII meta wiki *Terminology Version Policy* and re-add · (b) leave unpinned. **Default applied now:** (b).
- **Next action:** read the wiki table, re-add the `system-version` parameter.
- **Who decides:** the MII terminology group.
- **Effort · impact:** minutes once known · reproducibility of expansions.
- **Reversible:** yes.
- **Evidence:** run.log `5.6 expansion-manifest`.

**DEC-7 — The DiagnosticReport example's subject is a contained placeholder** · severity **low** · Gate A

- **What it is:** FIX-1 made the build possible by containing a minimal Patient. The long-term form is a content question: a contained placeholder, a real Patient example, or a reference into the Person module.
- **Where:** `input/fsh/instances/mii-exa-mikrobio-diagnostic-report.fsh` — the reasoning and the measurement are in the file's header comment. `basedOn` still points at the unresolvable `ServiceRequest/111` (2 errors; it does not crash the renderer).
- **If nobody acts:** the example renders with a contained placeholder patient carrying identifier `111`.
- **Options:** (a) keep · (b) ship a real Patient example · (c) reference the Person module. **Default applied now:** (a).
- **Next action:** decide the form; **and report the renderer defect upstream** — `DiagnosticReportRenderer.populateSubjectSummary` aborting a whole build on an unresolvable subject is an IG Publisher bug (the 26 Observation examples carry the same dangling reference and render fine).
- **Who decides:** the module lead.
- **Effort · impact:** minutes · cosmetic in the rendered example.
- **Reversible:** yes — one commit.
- **Evidence:** run.log `5.6 ig-publisher` (`publisher-crash-workaround:`), the file header.

**DEC-8 — Template pins deliberately not adopted** · severity **low** · Gate A

- **What it is:** the template pins `de.basisprofil.r4`, `…kerndatensatz.meta`, `hl7.terminology.r4` and `hl7.fhir.uv.extensions.r4` directly. None was adopted: each would change what this already-published module resolves against. The THO/extensions pins exist specifically to stop the publisher injecting the *latest* release — Gate 0 measured `injection_risk: true` on the source, and that property is **unchanged**, not worsened.
- **Where:** `sushi-config.yaml`, commented under the dependencies block with the reason per pin.
- **If nobody acts:** every build silently resolves the latest THO and extensions release, so two builds months apart can differ.
- **Options:** (a) adopt the THO/extensions pins → reproducible builds, but ValueSet expansions may change · (b) leave as is. **Default applied now:** (b).
- **Next action:** decide with the terminology group, together with DEC-6.
- **Who decides:** the module lead with the MII terminology group.
- **Effort · impact:** minutes · build reproducibility.
- **Reversible:** yes.
- **Evidence:** run.log `5.6 dependency-decision`, Gate-0 `preflight.dependency_health.injection_risk`.

**DEC-9 — The vendored skill set is newer than the template's** · severity **low** · Gate A

- **What it is:** the template ships `skills/` and a `skills-lock.json` pinned at catalogue `v0.15.1`. This repository already carried a local install at `v0.23.0`, which was **not** overwritten.
- **Where:** `skills-lock.json` (repo, v0.23.0) vs `skills/` (template, v0.15.1).
- **If nobody acts:** the lock file and the vendored skills describe different versions.
- **Options:** (a) run `scripts/sync-skills.sh` to reconcile · (b) accept the divergence. **Default applied now:** untouched.
- **Next action:** `bash scripts/sync-skills.sh`.
- **Who decides:** whoever maintains the repository's tooling.
- **Effort · impact:** minutes · tooling only.
- **Reversible:** yes.
- **Evidence:** run.log `5.2 fsh-collisions`.

**Values this migration invented (STAND-IN):** **none.** Where the source had no value, the element
was omitted and commented rather than filled — see DEC-3.

## ② Review queue (Gates B/C — someone must check)

### Derived content — GENERATED, do not retype

Every passage the migration **wrote** rather than carried is marked where it stands: an HTML comment
`<!-- DERIVED:<kind> source=<page> gate=<A|B|C> -->` the machine reads, plus the visible
"Written during migration — review before release" box the reader sees. Moved, split and verbatim
content carries **no** marker.

**72 markers · 0 findings · gates A:0 B:6 C:66 · kinds: `no-source` 66, `bridge` 6 · both languages.**
The full table is `migration-log/derived-table.md`, regenerated with
`python3 .claude/skills/mii-ig-migration/scripts/derived-scan.py --target . --markdown`.

- **66 `no-source` (Gate C)** — 33 page pairs. The source guide is German-only and the target
  template renders **English by default**, so every English page is a machine translation of the
  German source and every German mirror carries a matching marker saying so. This is the sanctioned
  exception to "invent nothing": each translation traces to the page it renders.
- **6 `bridge` (Gate B)** — 3 page pairs (`anwendungsfaelle-informationsmodell`,
  `technische-implementierung`, `fhir-profile`). These are Simplifier *section landing pages* whose
  children were re-routed to agreed pages; the migration wrote a short hub listing where each child
  went. `technische-implementierung` is the clearest case: its source page said only "this page was
  deliberately left empty".

### Hand-written review items

**REV-1 — Four page-map rows were changed after the map was generated** · Gate B

`FQL-Beschreibung`, `FQL-Capability-Operations`, `FQL-Capability-REST` and `FQL-Capability-Search`
were moved from branch 4 (own page) to branch 5 (RETIRED). Measure: each carries `topic:` frontmatter
(a Simplifier *reusable snippet*, not a page), none is listed in its `toc.yaml`, and each body is
100 % `<fql>` with zero prose. The IG Publisher renders both things natively — the element dictionary
on the artefact page, the CapabilityStatement on its own page. **Confirm the retirement.**
*Re-running the advice script overwrites this edit.*
`grep -n RETIRED migration-log/page-map.tsv`

**REV-2 — Six boilerplate sentences of the home page were replaced by the template's wording** · Gate B

The template owns the Impressum / Ansprechpartner / Copyright / Disclaimer blocks and its wording now
stands where the source's stood. The module-**specific** sentences of the same page were carried
verbatim. One substitution is a correction: the source says feedback is taken *"in Form von 'Issues'
im Simplifier-Projekt"*, which is stale after this migration; the template says GitHub issues.
The full source → target mapping is in run.log `11 verify-migration` (C4 triage).
**Compare `input/translations/de/pagecontent/index.md` against the rendered source page.**

**REV-3 — The copyright year contradicts itself in the source** · Gate B

The source home page says *"Copyright © 2019: TMF e. V."*; `sushi-config.yaml` says
`copyrightYear: 2026`. Both come from the source and neither was changed. A `TODO:REVIEW` note
stands at the copyright block in both languages.
`grep -n 'TODO:REVIEW' input/pagecontent/index.md input/translations/de/pagecontent/index.md`

**REV-4 — The `$sct` alias differs between module and template** · Gate B

The module's `aliases.fsh` defines `$sct = http://snomed.info/sct` (unversioned); the template's
defines it version-pinned. Per the collision rule the **module's definition won** and the template's
was skipped. Related to DEC-6.
`grep -n 'Alias: \$sct' input/fsh/aliases.fsh`

**REV-5 — The IG's `name` does not follow the MII naming convention** · Gate B

`name: Kerndatensatzmodul Mikrobiologie` was **carried verbatim** from the source. The convention —
and the template pattern — would be `MII_IG_Mikrobio`, matching the module's own 42 ValueSets,
3 CodeSystems and 4 SearchParameters, which all use the `Mikrobio` infix. The QC rule set will
report it. Changing it is an identity change and was not made silently.
`grep -n '^name:' sushi-config.yaml`

**REV-6 — Two analyser findings to report upstream, not to fix here** · Gate B

(a) `prepost-delta` scores `licence.contradictory` as a regression because it counts distinct
*strings* — `attribution4.0international`, `cc-by-4.0`, `creativecommons` — which are three spellings
of one licence. (b) The verifier's C5 flags the IG intro page as "neither a template page nor a
map row" because `template-pages.tsv` lists it under its unsubstituted name
`ImplementationGuide-mii-ig-{{MODULE_SLUG}}.md`, and the mandatory rename breaks the match.
No repository change is warranted for either.

**REV-7 — The template replaced four repository-owned files** · Gate B

`README.md`, `qc/custom.rules.yaml`, `.gitignore` and `.github/dependabot.yml` now carry the
template's content. The `.gitignore` replacement is the significant one: the source's was a
1667-line generated list of individual output files; the template's ignores `output/`, `temp/`,
`template/`, `input-cache/`, `fsh-generated/` and the publisher's generated `translations/` tree —
which is why `fsh-generated/` was un-tracked in this branch. All four originals are at `main@fdf3190`.

## ③ QA triage (what the build says, and whose problem it is)

**Baseline — stated honestly:** a true baseline build is **not obtainable**. The unmigrated source is
a Simplifier project with no `ig.ini` and no template; it cannot be built with the pinned IG
Publisher at all, and Gate 0 recorded `qa_baseline: None`. What replaces it is a **content proof**:
103 of the module's 106 FSH files are byte-identical to `main@fdf3190`, and the 3 that differ are
FIX-1 and the two per-definition scaffold appends. That is weaker than a baseline — it shows the
*subject* is unchanged, not that the same toolchain reported the same finding — and it is labelled as
such in every row below.

| Build | Errors | Read as |
|---|---|---|
| Source (unmigrated) | **not measurable** | the source cannot be built with this toolchain |
| Target, first successful build | 290 · 120 broken links | before FIX-2/3/4 |
| **Target now** | **109 · 0 broken links** | what this PR ships |

| # | Finding | Count | Whose problem (proof) | If nobody acts | Next action | Who owns it | Where to look |
|---|---|---|---|---|---|---|---|
| QA-1 | `Wrong Display Name 'Laboruntersuchungen' / 'Mikrobiologie'` for LOINC codes | 55 | **source-authored, migration-visible** — the German display strings are in example and ruleset files byte-identical to `main` | ships exactly as today | accept, or align the displays with LOINC | the module team | `grep -n "Wrong Display Name" output/qa.txt` |
| QA-2 | `Unable to resolve resource with reference 'Patient/example'` / `'Specimen/example'` | 52 | **source-authored, migration-visible** — same proof; the examples reference resources no MII module ships | ships as today; the artefact pages render | accept, or supply the referenced examples (relates to DEC-7) | the module team | `grep -n "Unable to resolve resource" output/qa.txt` |
| QA-3 | `A definition could not be found for Canonical URL http://hl7.org/fhir/uv/ips/ValueSet/results-laboratory-observations-uv-ips` | 6 | **upstream** — the binding is inherited from the Laborbefund parent, and the ValueSet was renamed in IPS 2.0 | 6 errors remain | DEC-5: raise upstream | the Laborbefund module team | `grep -n "results-laboratory-observations" output/qa.txt` |
| QA-4 | `Unable to resolve resource with reference 'ServiceRequest/111'` | 2 | **source-authored, migration-visible** — the same dangling-reference class as QA-2, in the DiagnosticReport example | 2 errors remain | fold into DEC-7 | the module team | `grep -n "ServiceRequest/111" output/qa.txt` |
| QA-5 | `Unable to find ImplementationGuide.definition.resource.description` | 50 (warnings) | **source-authored** — the source declares no per-resource descriptions | artefact-list entries stay sparse | add descriptions, or accept | the module team | `grep -n "definition.resource.description" output/qa.txt` |

**Blocking?** No row blocks the build. The acceptance bar `qa.txt Errors: 0` is **not met**, and this
report does not claim it is: 109 errors remain, every one classified above, none introduced by the
migration. Accepting them is a Gate-A/B decision, not a technical one.

## Gate 0 — pre-flight scope (evidence behind the queues; not a sign-off)

Measured on the **unmigrated** source before any work: `migration-log/preflight-analysis.json`.

| Aspect | Measured on the source | What it caused | Reviewer action |
|---|---|---|---|
| Artefacts | profiles 20 · extensions 2 · ValueSets 42 · CodeSystems 3 · logical models 3 · SearchParameters 4 · CapabilityStatements 1 · examples 27 · rulesets 5 · invariants 1 — **total 102** | drove every M9 keep/remove decision | none |
| Generated-vs-declared cross-check | **0 mismatches** — the FSH census and `fsh-generated/` agree exactly | the FSH declaration census was used as authoritative | none |
| Canonical URL space | 1 out-of-space artefact + 6 id/url divergences → `special_url_prediction: 7` | **exactly** the 7 entries FIX-2 declared | none |
| Licence evidence | **none** — `declared_anywhere: false` | the template default was NOT applied silently | DEC-1 |
| Dependency health | 1 pinned dependency, 0 floating; `injection_risk: true`; 2 external parents (modul-labor) | the source pin was carried verbatim; the risk is unchanged, not worsened | DEC-8 |
| Narrative source | single — `implementation-guides/` in the repository (last commit 2026-08-14); no platform harvest needed | the repository tree is authoritative (40 pages vs 37 rendered) | none |
| QA baseline | **none — and not obtainable**, see ③ | the content proof replaces it | ③ |

**Artefact counts, reconciled.** 102 declared in the source FSH · 103 generated resource files
(102 + the ImplementationGuide) · 103 in the target, unchanged · 84 resources in the published
package (Simplifier packages ship no ImplementationGuide, no logical models and no `Parameters`).
The only census movement is examples 27 → 28, which is the FSH **declaration** count: FIX-1's
`Usage: #inline` Patient is contained inside the DiagnosticReport and writes **no** resource file.
The published artefact set is identical.

## Content map (where every source page went)

**Narrative source:** the repository's own `implementation-guides/modulmikrobio-2027/` — 40 `.page.md`
files, 11 357 words, 2 images. No platform harvest was needed or run. The rendered guide lists 37
pages; the repository is the superset and is the migration source, the rendered set the verification
oracle.

The machine-readable form is **`migration-log/page-map.tsv`** (v2) — generated by the routing script,
reviewed, and the contract this step consumed. Clickable rendered-source ↔ rendered-target rows:
**`migration-log/comparison-table.md`**.

| Routing branch | Pages | Target |
|---|---|---|
| 1 — content about one artefact | **20** | `input/intro-notes/StructureDefinition-<id>-intro.md` + German mirror; renders atop the artefact page. Every one of the 20 ids was checked against the real profile ids — no orphans. |
| 2 — family overview | **4** | `h3` sections on `profiles.md` (Culture, Determination, Quantitative tests, Further properties) |
| 3 — an agreed page owns it | **10** | `index.md` ×2, `implementer-guidance.md` ×2, `guidance.md`, `logical-models.md`, `uml-diagrams.md`, `capability-statements.md`, `code-systems.md`, `changes.md` |
| 4 — cross-cutting narrative | **5** | own pages: `anwendungsfaelle-informationsmodell`, `technische-implementierung`, `profilauswahl-und-abgrenzung`, `fhir-profile`, `probe` |
| 5 — RETIRED | **4** | the FQL snippet pages — see REV-1 |

**Anything lost?** Three rendering losses, all of them Simplifier mechanisms the IG Publisher renders
itself, and none of them data:

- **303 Simplifier/FQL directives** were translated (`fql-scan`: 303 findings, **0 `[UNKNOWN]`**,
  65 files). 20 `<fql>` metadata blocks were dropped — the publisher generates that header. 20
  `<tabs>` blocks were dropped on intro notes, because the artefact page they sit on renders
  Structure/Differential/XML/JSON natively. 30 `{{json:…}}` embeds became links to the example's own
  page. 3 `{{tree}}` and 3 FQL element tables became the publisher's `-snapshot` and `-dict`
  fragments.
- **The `{{render:Warning.jpg}}` badge** on the home page was a Simplifier built-in asset that does
  not exist in this repository. The warning text it decorated is carried in full, in a styled box.
- **The hand-built `{{index:root}}` table of contents** was dropped — the template generates
  navigation.

**Template pages still carrying starter text — these are GAPS, not migrated pages:** `downloads.md`,
`examples.md`, `extensions.md`, `search-parameters.md`, `value-sets.md`, `metadata.md`,
`version-history.md`, `translationinfo.md`, `security-and-privacy.md` (DEC-4). The source guide had
no counterpart for any of them.

**Optional pages (M9), decided by measurement:** KEPT `extensions` (2 artefacts), `search-parameters`
(4), `value-sets` (42), `code-systems` (3), `metadata` (the IG claims 3 CRMI profiles).
REMOVED `operations` (0 OperationDefinitions) and `researcher-guidance` (0 source pages route there) —
each with all five touches: both page files, both menu entries, the `pages:` entry and the `.po` unit.

## Identity (what makes this module *this* module)

**Unchanged, and deliberately so** — guardrail 1:

| Field | Value | Note |
|---|---|---|
| `canonical` | `https://www.medizininformatik-initiative.de/fhir/modul-mikrobio` | matches the template pattern by coincidence; carried, not derived |
| `id` | `kerndatensatzmodul-mikrobiologie` | drives `ImplementationGuide-<id>.json`, the `ig.ini` path and the `.po` catalogue name — **never** the repository slug |
| `name` | `Kerndatensatzmodul Mikrobiologie` | diverges from the template pattern — REV-5 |
| `status` · `fhirVersion` · `copyrightYear` | `active` · `4.0.1` · `2026` | carried |
| `version` · `releaseLabel` | `2027.0.0-alpha.6` · `2026.0.0-alpha.6` | carried verbatim, contradictory — DEC-2 |
| `applyExtensionMetadataToRoot` | `false` | a source SUSHI flag the template does not ship; carried |
| every artefact canonical | 76 URLs | diff against the source: **empty in both directions** |

**Changed, each with a named decision:** `packageId` → the published value (DEC-2) ·
`title` → `MII Implementation Guide Microbiology`, where the source had none · `description` → an
English sentence derived from the source's German package description · `publisher` → `NUM-DIZ`,
which the template owns as chrome, not as module identity.

**Where each value came from — GENERATED, do not retype:** `migration-log/identity-claims.tsv`
(`bash .claude/skills/mii-ig-migration/scripts/migration-log.sh claims --markdown`). Tiers: **C** the
source config · **J** `package.json` · **P** the published package · **R** the repository.

## Verification (step 7b)

**Exit status 1** — at least one named divergence. **138 IDENTISCH · 23 DIVERGIERT · 51 NICHT PRÜFBAR.**
One row per checked subject in `migration-log/verification-findings.tsv`.

| Layer | IDENTISCH | DIVERGIERT | NICHT PRÜFBAR |
|---|---|---|---|
| conservation (C1–C7) | 94 | 16 | 41 |
| fidelity (F1–F4) | 8 | 2 | 6 |
| provenance (P1–P5) | 5 | 0 | 0 |
| rendering (R1–R5) | 5 | 2 | 1 |
| run log, 2nd oracle (L0–L4) | 26 | 3 | 3 |

**Every DIVERGIERT row, triaged:**

- **C4 ×14** — narrative text runs. Re-measured with the verifier's own text reduction against the
  German target corpus, sentence by sentence: **4** rows are the RETIRED FQL snippet pages (no prose
  at all); **8** are measurement artefacts with **zero** real loss (the check's "runs" swallow the
  removed `{{page-title}}` / `{{index:root}}` directives and the rewritten link targets — every
  directive-free sentence is present: Changelog 68/68, Probe 7/7, UML 8/8, Kontext 4/4, …); **2** on
  `Profilauswahl` differ only in a link target. The **6** genuine ones are all on the home page and
  are REV-2. Two editorial alterations the migration had made were found this way and **reverted**.
- **C5 ×2** — one subject, a false positive of a name match — REV-6(b).
- **F1 ×2** — `packageId` and `title`: DEC-2, and a field the source did not have.
- **R2 ×2** — a `{{title}}` literal in `searchform.html`, which the publisher extracts from the HL7
  base template `fhir2.base.template#0.1.0` at build time. Not module content, not the vendored
  template. Report upstream.
- **L3 ×3** — the three open identity contradictions: DEC-2.

**NICHT PRÜFBAR — not a pass. Who does what:**

- **41 conservation** — mostly C6 (which page a passage landed on) and the C4 rows above. A Gate-B
  reviewer reads the map against the rendered pages: `migration-log/comparison-table.md`.
- **3 run-log rows** — the shape-B steps (`5.1b.*`) and the harvest (`5.1d`) are legitimately
  skipped for a shape-A source and each is recorded with its reason; the remaining rows are two count
  cross-checks a human reads.
- **6 fidelity, 1 rendering** — the two added dependencies (F2 treats a pin the target ADDS as
  unverifiable, not as a defect) and source-vs-target rendering, which needs a human eye on the two
  rendered sites. Provenance P1–P5 is fully IDENTISCH.

## Protocol (what was executed — generated from `migration-log/run.log`)

1 528 lines. Every step of the specification emitted at least one line; the four that had been logged
under other ids were re-emitted after the verifier's L2 check named them.

| Step | What ran | Outcome |
|---|---|---|
| pre.2 / pre.5 | source shape, toolchain | shape **A** (hybrid) · SUSHI 3.20.0, publisher 2.3.2 (SHA verified), Jekyll 4.4.1, Java 25 |
| 1 | Gate-0 pre-flight | 102 artefacts, 40 narrative pages, `qa_baseline: None` |
| 2.1 / 2.2 | identity from tiers C/J/P/R | 3 `identity-contradiction:` WARNs, `license-absent-everywhere:`, `publisher-absent-everywhere:` |
| 5.1c | Simplifier discovery | 3 guide keys, pinned `2027.0.0-alpha.5`, 37 pages |
| 5.2 | vendor + placeholders + collisions | 41 aliases appended, 4 rulesets appended, 2 files skipped; SUSHI clean |
| 5.3 | artefact transfer | `comm -3` over FSH paths: only-in-source empty; canonical diff empty |
| 5.4 / 5.4a–d | narrative, M9, M11, routing, derived scan | 303 directives, 0 unknown · M9 measured · M11 escalated · 43/43 routed · 72 markers, 0 findings |
| 5.5 | bilingual setup | 25 page-title units, all translated; 3 stale units dropped |
| 5.6 / 7 | build, QA, post-flight, delta | SUSHI 0/0 · publisher 109 errors, 0 broken links · delta: 22 unchanged, 1 improved, 6 expected-change, 2 accepted regressions |
| 11 | mechanical verification | 138 / 23 / 51 |

**Every WARN and ERROR in the log lands in a queue above.** The two `prepost-delta` regressions are
accepted with evidence in the log itself (`7 prepost-delta`, two `regression ACCEPTED` lines).
One earlier log line was **corrected** in place rather than left standing: a
`dangling-source-canonical:` WARN about the logical model's `-de` URL was wrong — the canonical does
exist, its tail deliberately differs from the id, and the broken include had been introduced by hand
in the English page.

## Sign-off — what must happen before anything is published

The generated checklist is **`migration-log/qa-checklist.md`** (61 boxes across 4 gates), rendered
from the ledgers. In addition:

- [ ] **Gate A** — DEC-1 licence · DEC-2 `packageId`/`version`/`releaseLabel` · DEC-3 the four omitted values · DEC-5 the IPS pin · DEC-6 the SNOMED pin · DEC-7 the example subject · DEC-8 the template pins · DEC-9 the skill lock
- [ ] **Gate B** — REV-1 the four retired pages · REV-2 the home-page wording · REV-3 the copyright year · REV-4 the `$sct` alias · REV-5 the IG `name` · REV-7 the four replaced files · DEC-4 Security and Privacy
- [ ] **Gate C** — all 24 English pages and 20 English intro notes are machine translations; each carries a visible box and a `TODO:REVIEW`. `migration-log/derived-table.md` is the worklist.
- [ ] **Gate D** — release per KDS governance (TF KDS / AG IOP / NSG). **Nothing was published:** no release, no registry entry, no package push.

**The pull request was deliberately not opened.** The branch is pushed
(`origin/migration/2027.0.0-alpha.6-template-v0.11.1`, 11 commits) and the template's CI builds it as
a preview under `branches/<branch>/`. Whoever opens the PR should note that `main` is this
repository's **publication branch** — the last eight merged PRs all target it — so merging is itself
a publication step, and Gate D applies to the merge, not only to a later release.
GitHub's link: <https://github.com/medizininformatik-initiative/kerndatensatzmodul-mikrobiologie/pull/new/migration/2027.0.0-alpha.6-template-v0.11.1>

**Not done, and deliberately so:** the template's first-run bootstrap step (a) — creating a `dev`
branch and applying branch protection — was **not** run. It is "Use this template" setup for a *new*
repository and would change this module's GitHub settings. Step (b), removing the template's own
release automation, was applied.
