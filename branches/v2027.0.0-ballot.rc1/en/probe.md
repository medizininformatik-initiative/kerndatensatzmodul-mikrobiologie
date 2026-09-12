# Specimen - MII Implementation Guide Microbiology v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* [**Guidance**](guidance.md)
* **Specimen**

## Specimen

### Report - Specimen

**Ballot question 1 — can you supply a Specimen resource for every result?** Every investigation profile in this module requires `Observation.specimen`, as the HL7 EU Lab Semantic Workgroup does — it asks for an explicit Specimen even where the LOINC code already carries the material.

German laboratory practice reports that a Specimen resource is frequently not produced. If that holds widely, the two ways out point in opposite directions: relax `Observation.specimen` to `0..1` and let pre-coordinated LOINC codes carry the material, or keep the requirement and accept that some senders cannot conform.

Specimens are represented by [Specimen](StructureDefinition-mii-pr-mikrobio-probe.md), which derives from [MII_PR_Biobank_Specimen_Bioprobe_Core](https://simplifier.net/medizininformatikinitiative-modulbiobank/mii_pr_biobank_specimen_bioprobe_core) of the [MII Biobank module](https://simplifier.net/medizininformatikinitiative-modulbiobank) — a base profile written for exactly this purpose, which modules derive from rather than implement directly. `Observation.specimen` of every investigation profile references it.

The following elements are particularly relevant for the microbiological use cases:

* **`Specimen.type[sct]`**
 Should be populated with the specimen type. This applies even where the material is already pre-coordinated in the LOINC code used, so that the specimen type is available in a structured form and independently of the Observation code.
* **`Specimen.collection.collected[x]`**
 Gives the time of specimen collection. If that is not known, the time of specimen receipt may be documented instead.
* **`Specimen.parent`**
 Represents the relationship to the specimen from which another specimen was derived or taken, e.g. for further-processed materials or materials obtained from primary specimens.

### Specimen.processing: temperature conditions and staining

**Ballot question 3 — does the mandatory storage temperature block you?** The base profile requires the extension `temperaturbedingungen` on every `Specimen.processing` element, and a derived profile can only narrow, never relax, so this module cannot resolve it.

The requirement comes from the biobank, where `Specimen.processing` describes the storage of a biosample and the temperature is a core statement — it holds in `2026.0.1` as in `2027.0.0-ballot.rc2`. In microbiology the same element describes laboratory processing: staining, enrichment, incubation, where a storage temperature is either unknown or without meaning. We consider it misplaced in this context and are raising it with the biobank module, with a view to confining it to the storage slice `processing:lagerprozess`.

The staining technique is consequently **not** given under `Specimen.processing.procedure`, as the HL7 EU Lab Semantic Workgroup proposes, but in an extension on the Observation, [`extension[faerbung]`](StructureDefinition-mii-ex-mikrobio-faerbung.md), with the same codes — see [Microscopy](StructureDefinition-mii-pr-mikrobio-mikroskopie.md), where ballot question 2 sets out the reasoning.

### Incubation duration and temperature

**Ballot question 4 — is incubation representable via `Specimen.processing`?** FHIR provides for it there and the MII has the pieces, so the modelling is settled; we ask whether it is implementable at your site. The elements, measured against R4 core and the biobank module on 2026-09-10:

* **Duration** — `Specimen.processing.time[x]` as a `Period`. `Specimen.processing` has no `Duration` element of its own (`Specimen.collection.duration` refers to collection), so start and end are the FHIR-native form. That is precisely what the European data model asks for when it notes that its candidate LOINC code `80581-2` "mandates for start/enddate" — with a `Period` the requirement is met and no new LOINC code is needed.
* **Temperature** — the extension `MII_EX_Biobank_Temperaturbedingungen`, whose context is `Specimen.processing` and whose value is a `Range`. The right element and the right datatype for "35-37 degrees C".

If no Specimen resource is produced (ballot question 1), `Specimen.processing` is out of reach, and the alternative would be extensions on `Observation.method`, which qualify the technique in the resource that reports the result. This module does not represent incubation until the answer is in.

