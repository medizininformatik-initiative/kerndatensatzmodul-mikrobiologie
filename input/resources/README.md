# `input/resources/` — hand-authored resources

<!-- Ported from kerndatensatz-basis (main): input/resources/ (the module's
     expansion-parameters manifest) and the MII meta wiki page
     "Terminology Version Policy". -->

Conformance resources that are **not** generated from FSH live here as JSON. The
IG Publisher loads every `.json`/`.xml` file in this directory into the IG (SUSHI
ignores it — SUSHI only reads `input/fsh/`).

## What is here

### `Parameters-expansion-manifest.json` — the terminology manifest

This is the module's **expansion-parameters manifest**: it pins the exact code
system versions that every ValueSet in this IG is expanded against, so that an
expansion produces the same codes today, at release time, and three years later
when a downstream project re-validates data against the published package.

MII policy — meta wiki, [*Terminology Version
Policy*](https://github.com/medizininformatik-initiative/kerndatensatz-meta/wiki/Terminology-Version-Policy):
each MII CalVer release is bound to one SNOMED CT International release.

| MII release (CalVer) | SNOMED CT International release | Version string |
|---|---|---|
| `v2025.*` | 2024-07-01 | `http://snomed.info/sct/900000000000207008/version/20240701` |
| `v2026.*` | 2025-07-01 | `http://snomed.info/sct/900000000000207008/version/20250701` |
| `v2027.*` | 2026-07-01 | `http://snomed.info/sct/900000000000207008/version/20260701` |

The shipped file carries the **`v2027.*` pin**, matching this module's version.
When the module moves to a later CalVer line, look the release up in that wiki
table and update this file. Do not guess a version — if the wiki has no row for
your CalVer line yet, ask the MII Taskforce Core Data Set / the Interoperability
Working Group before releasing.

The full set of pins, all matching the Labor base module:

| Pin | Why |
|---|---|
| `force-system-version` LOINC `2.82` | `force-` also overrides resources that name another LOINC version |
| `system-version` SNOMED CT `…/20260701` | the release bound to the `v2027.*` line |
| `system-version` LOINC `2.82` | |
| `system-version` `v3-ObservationInterpretation|4.0.0` | the code system arrives in THREE versions — 6.2.0 via IPS→IPA, 7.1.0 from our own pin, 7.2.0 via meta→CRMI. Without this entry the publisher picks one itself |
| `system-version` `artifact-version-policy-codes|3.0.0` | the code system behind the CRMI version-policy extension `input/fsh/rulesets/crmi.fsh` puts on every artifact |

### The SNOMED pin makes the public terminology server unusable

Measured 2026-09-09: SU-TermServ holds `…/version/20260701`, **tx.fhir.org does
not** — and the two servers share no version of the SNOMED CT International
edition at all. A build against `https://tx.fhir.org` therefore reports ~100
validation errors, where before the pin it merely expanded some value sets
incompletely. The public server is documented as the fallback in
`.github/workflows/ig-publisher.yml` when no SU-TermServ client certificate is
configured; that path now yields a faulty guide, not a degraded one.

The policy governs **ValueSet expansion**. MII profiles do not currently require
`Coding.version` for SNOMED CT in instance data (they do for ICD-10-GM, OPS and
ATC).

### How it is wired

Three places in `sushi-config.yaml` reference this file — all three are active:

| Where | What it does |
|---|---|
| `extension:` → `cqf-expansionParameters` | the IG resource points at the manifest (`Parameters/mii-param-<slug>-manifest`) |
| `parameters:` → `path-expansion-params` | tells the IG Publisher which file to read the pins from |
| `parameters:` → `pin-manifest` | names the manifest whose pins are written into the built package |

### When you create a module

1. **Replace `{{MODULE_SLUG}}` inside the file** — it appears in the resource
   `id` (`mii-param-{{MODULE_SLUG}}-manifest`). A `{{…}}` left in a FHIR `id` is
   not a valid id and the IG Publisher will reject it. **Do not rename the
   file.** Its name is deliberately slug-free, so nothing has to be renamed per
   module: `path-expansion-params` in `sushi-config.yaml` hard-codes the path.
   (The one file in this repository whose *name* does carry a placeholder is the
   IG-level translation catalogue
   `input/translations/de/ImplementationGuide-mii-ig-{{MODULE_SLUG}}.po`, which
   **must** be renamed — see `docs/recipes/add-translation.md` §5.)
2. Check the SNOMED CT pin against the wiki table for your CalVer line.
3. Add a `system-version` entry per further code system you bind.

### Generating it from FSH instead

`input/fsh/parameters/manifest.fsh` contains the same resource as a commented-out
FSH `Instance:`. Use **either** the hand-authored JSON here **or** the FSH — never
both, or the IG Publisher sees two resources with the same id. basis keeps the
JSON authoritative and the FSH commented out; this template does the same.
