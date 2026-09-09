# Pre/post delta — the two ig-stats measurements compared

| Side | Measurement |
|---|---|
| pre | preflight-analysis.json (mikrobiologie-source-2027.0.0-alpha.6, fdf3190, 2026-08-25T14:43:39Z) |
| post | postflight-analysis.json (mikrobiologie-migrated-2027.0.0-alpha.6, fdf3190, 2026-08-25T18:08:18Z) |

Verdicts: **unchanged** 22 · **improved** 1 · **expected-change** 6 · **REGRESSION** 2 · **not-measurable** 3.

## ⛔ Regressions — properties that got WORSE

Each one blocks the migration until it is fixed or explained; an explanation belongs in the migration report, not in a merge commit.

- **`identity.packageId`**: `project` → `de.medizininformatikinitiative.kerndatensatz.mikrobiologie` — machine-identity field changed -- the migrated package is no longer the same package
- **`licence.contradictory`**: `false` → `true` — the target now declares CONTRADICTORY licences (the target declares: attribution4.0international, cc-by-4.0, creativecommons) -- one file will be read as the licence by someone, and it will be the wrong one

## Identity

| Property | Pre | Post | Verdict | Why |
|---|---|---|---|---|
| `identity.id` | kerndatensatzmodul-mikrobiologie | kerndatensatzmodul-mikrobiologie | unchanged |  |
| `identity.canonical` | https://www.medizininformatik-initiative.de/fhir/modul-mikrobio | https://www.medizininformatik-initiative.de/fhir/modul-mikrobio | unchanged |  |
| `identity.packageId` | project | de.medizininformatikinitiative.kerndatensatz.mikrobiologie | **REGRESSION** | machine-identity field changed -- the migrated package is no longer the same package |
| `identity.name` | Kerndatensatzmodul Mikrobiologie | Kerndatensatzmodul Mikrobiologie | unchanged |  |
| `identity.version` | 2027.0.0-alpha.6 | 2027.0.0-alpha.6 | unchanged |  |
| `identity.fhirVersion` | 4.0.1 | 4.0.1 | unchanged |  |
| `identity.license` | - | CC-BY-4.0 | not-measurable | the field is absent from the pre measurement |
| `identity.calver` | true | true | unchanged |  |
| `identity.publisher` | - | NUM-DIZ | not-measurable | the field is absent from the pre measurement |
| `identity.status` | active | active | unchanged |  |
| `identity.title` | - | MII Implementation Guide Microbiology | not-measurable | the field is absent from the pre measurement |

## Preflight flags

| Property | Pre | Post | Verdict | Why |
|---|---|---|---|---|
| `licence.contradictory` | false | true | **REGRESSION** | the target now declares CONTRADICTORY licences (the target declares: attribution4.0international, cc-by-4.0, creativecommons) -- one file will be read as the licence by someone, and it will be the wrong one |
| `dependency_health.injection_risk` | true | true | unchanged |  |
| `narrative_sources.dual_source` | false | false | unchanged |  |

## Artefact counts

| Property | Pre | Post | Verdict | Why |
|---|---|---|---|---|
| `mode` | static | static | unchanged |  |
| `artifacts.profiles` | 20 | 20 | unchanged |  |
| `artifacts.extensions` | 2 | 2 | unchanged |  |
| `artifacts.valuesets` | 42 | 42 | unchanged |  |
| `artifacts.codesystems` | 3 | 3 | unchanged |  |
| `artifacts.logicals` | 3 | 3 | unchanged |  |
| `artifacts.capabilitystatements` | 1 | 1 | unchanged |  |
| `artifacts.questionnaires` | 0 | 0 | unchanged |  |
| `artifacts.searchparameters` | 4 | 4 | unchanged |  |
| `artifacts.operations` | 0 | 0 | unchanged |  |
| `artifacts.examples` | 27 | 28 | expected-change | the count rose by 1 -- artefacts added by the migration; the report names what and why |
| `artifacts.rulesets` | 5 | 56 | expected-change | the count rose by 51 -- artefacts added by the migration; the report names what and why |
| `artifacts.invariants` | 1 | 1 | unchanged |  |
| `artifacts.mappings` | 0 | 0 | unchanged |  |
| `artifacts.other_total` | 0 | 0 | unchanged |  |
| `artifacts.total` | 102 | 103 | expected-change | the total rose by 1 -- consistent with the per-class rises above |

## Narrative pages

| Property | Pre | Post | Verdict | Why |
|---|---|---|---|---|
| `narrative.pages` | 40 | 24 | expected-change | narrative routing (spec 9d/9e) moves pages between pagecontent, intro-notes and translations -- conservation of the CONTENT is checked by the verifier against page-map.tsv |
| `narrative.intro_note_pages` | 0 | 20 | expected-change | narrative routing (spec 9d/9e) moves pages between pagecontent, intro-notes and translations -- conservation of the CONTENT is checked by the verifier against page-map.tsv |
| `narrative.translation_pages` | 0 | 24 | expected-change | narrative routing (spec 9d/9e) moves pages between pagecontent, intro-notes and translations -- conservation of the CONTENT is checked by the verifier against page-map.tsv |

## Directives

| Property | Pre | Post | Verdict | Why |
|---|---|---|---|---|
| `directives.total` | 303 | 0 | improved | 303 Simplifier/FQL directives converted away -- template-alien markup the target no longer carries |

