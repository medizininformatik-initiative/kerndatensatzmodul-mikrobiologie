# Pre-release checklist — Microbiology module

Items that must be **re-verified against the outside world** before a version of
*this* module is cut. It is deliberately narrow: it does not repeat the general
release mechanics in [`release.md`](release.md), nor the click-by-click walkthrough
in [`recipes/cut-a-release.md`](recipes/cut-a-release.md), nor the template
conformance checks in
[`ig-best-practices-checklist.md`](ig-best-practices-checklist.md).

What belongs here is one specific kind of item: **a decision we took under a
condition that someone else controls, and that may have changed since.** Each
entry names the condition, how to check it, and what to do if it has changed.

## Open items

### Biobank `temperaturbedingungen` cardinality

- **Condition we relied on:** `MII_EX_Biobank_Temperaturbedingungen` is `1..1` on
  `Specimen.processing` in `de.medizininformatikinitiative.kerndatensatz.biobank`
  `2027.0.0-ballot.rc2`. Because a derived profile can only narrow, the mandatory
  extension is inherited by `MII_PR_Mikrobio_Probe` and makes
  `Specimen.processing` unusable for microbiological processing.
- **What changed:** the biobank module intends to set it to `0..1` in its ballot
  release.
- **How to check:**

  ```bash
  # replace <version> with the biobank version pinned in sushi-config.yaml
  python3 - <<'EOF'
  import json, os, glob
  base = os.path.expanduser('~/.fhir/packages/'
      'de.medizininformatikinitiative.kerndatensatz.biobank#<version>/package/')
  d = json.load(open(base + 'StructureDefinition-mii-pr-biobank-specimen-core.json'))
  for e in d['differential']['element']:
      if 'temperatur' in e['id'].lower():
          print(e['id'], f"{e.get('min')}..{e.get('max')}")
  EOF
  ```

- **If it is `0..1`:** three things follow, and all three must be done together.
  1. Ballot question 3 is resolved — remove the box from `probe.md` and from the
     `mii-pr-mikrobio-probe` intro, in both languages, and drop entry 3 from the
     list on `index.md`.
  2. `Specimen.processing` becomes usable. Re-open ballot questions 2 and 4: the
     `Specimen.processing` route for the staining technique and for incubation is
     then blocked only by ballot question 1 (whether a Specimen resource exists at
     all), not by the inherited requirement.
  3. Drop the sentence about mandatory temperature conditions from the `processing`
     `^comment` in `MII_PR_Mikrobio_Probe.fsh`, from the method comment in
     `MII_PR_Mikrobio_Allgemeine_Mikroskopie.fsh`, and from the incubation TODO in
     `MII_PR_Mikrobio_Allgemeine_Kultur.fsh`.

### Ballot question 1 — availability of a Specimen resource

- **Condition:** `MIKRO_OBSERVATION_COMMON` sets `specimen 1..`, which presupposes
  that sites produce a Specimen resource.
- **How to check:** the ballot comments.
- **If sites cannot supply one:** relax `specimen` to `0..1` in the RuleSet and
  state on `probe.md` that pre-coordinated LOINC codes then carry the material.
  This affects all investigation profiles at once.

### Interim code for the semiquantitative microscopy component

- **Condition we relied on:** LOINC has no code for "semiquantitative value for
  microscopy finding". The European data model requests one ("Microscopy" sheet,
  row 13). Until it exists, `component[menge].code` in
  `MII_PR_Mikrobio_Allgemeine_Mikroskopie` uses
  `mii-cs-mikrobio-mikroskopie-komponenten#semiquantitative-menge`.
- **How to check:** search LOINC for a `Prid`/`PrThr` concept covering a
  semiquantitative microscopy amount, or ask in the European working group.
- **If the LOINC code exists:** point `component[menge].code` at it, set
  `MII_CS_Mikrobio_Mikroskopie_Komponenten` to `retired`, and record the
  substitution in `changes.md` with a migration note — instances carrying the
  interim code stay valid data but no longer match the profile.

### Terminology pins

- **Condition:** SNOMED CT `http://snomed.info/sct/900000000000207008/version/20260701`
  and LOINC `2.82`, pinned in `input/fsh/aliases.fsh` and
  `input/resources/Parameters-expansion-manifest.json`.
- **How to check:** `node --test scripts/terminology-pins.test.mjs`, and a full
  build against the terminology server that actually holds those versions.
- **If a newer edition is mandated:** raise both pins together — the aliases and
  the expansion manifest must not diverge.

### Value sets left deliberately incomplete

- `MII_VS_Mikrobio_Spezifische_Mikroskopie_Tests_LOINC` filters on three stain
  `METHOD_TYP` values (Gram, acid fast, auramine) because those are the ones a
  laboratory has actually evidenced. Check whether further stains have been
  evidenced since.
- `MII_VS_Mikrobio_Keimzahl_Einheiten_UCUM` carries a TODO on whether the
  unannotated legacy codes should be deprecated.

### Two value sets per element - waiting on the European decision

- **Condition:** the white paper ("path to the goal") and the workbook
  ("Microscopy" F4) both recommend two value set bindings per element, one for
  preferred post-coordinated codes and one for accepted pre-coordinated ones.
  This module binds a single `extensible` value set and states the preference on
  the element instead.
- **Why it is deferred:** R4 cannot express a second binding.
  `ElementDefinition.binding` has only `strength`, `description` and `valueSet`;
  `binding.additional` is R5. Rather than build a local approximation out of
  `elementdefinition-maxValueSet`, whose semantics differ, we wait for the
  European group to settle how this is meant to work in an R4 guide.
- **How to check:** ask in the European working group, or watch for the pattern
  appearing in `hl7.fhir.eu.laboratory`.
- **If it is settled:** the change touches potentially every tests value set in
  the module, so it is a version of its own, not a patch.

## Where an open point lives

Three homes, three lifetimes. Putting an item in the wrong one is how it gets
lost.

| Home | Lifetime | For |
|---|---|---|
| `TODO (date):` in `input/fsh/` | survives everything; found by `grep -rn "TODO (" input/fsh/` | a gap at the artefact that has it |
| the derivation analysis, Part 2 — **outside the repository**, in the maintainer's local `materials/` | until the message goes to the European working group | anything the group has to decide |
| this file | until the next release | a decision taken under a condition someone else controls |

An item that needs the group **and** must survive the mail belongs in **both**
the first and the second — Part 2 is a message, not a register. Two currently do:
the SNOMED code for cell debris and the representation of a suspicion, both
carried as a TODO on `MII_VS_Mikrobio_Morphologie_Ergebnis_SNOMED`.

Note that the second home is **not in this repository**. `materials/` is
git-ignored, because it holds working drafts of the European working group with
reviewer comments in them and a laboratory's internal result catalogue, and this
repository is public. So anything that must survive for the next maintainer
belongs in the first home — a `TODO (` in `input/fsh/` — or here. Part 2 exists
only on the machine of whoever is preparing the message.

## Housekeeping before every release

- `changes.md` has a section for the version being cut, in both languages.
- The release status sentence on `index.md` matches the `releaseLabel` — the page
  said "alpha release" while the module was already a ballot candidate.
- Every `TODO (` in `input/fsh/` is either resolved or knowingly carried forward.

  ```bash
  grep -rn "TODO (" input/fsh/
  ```
