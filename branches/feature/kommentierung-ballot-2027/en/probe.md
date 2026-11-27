# Specimen - MII Implementation Guide Microbiology v2027.0.0-ballot2

* [**Table of Contents**](toc.md)
* [**Guidance**](guidance.md)
* **Specimen**

## Specimen

### Report - Specimen

Specimens are represented by [Specimen](StructureDefinition-mii-pr-mikrobio-probe.md), which derives from [MII_PR_Biobank_Specimen_Bioprobe_Core](https://simplifier.net/medizininformatikinitiative-modulbiobank/mii_pr_biobank_specimen_bioprobe_core) of the [MII Biobank module](https://simplifier.net/medizininformatikinitiative-modulbiobank) — a base profile written for exactly this purpose, which modules derive from rather than implement directly. `Observation.specimen` of every investigation profile references it.

The following elements are particularly relevant for the microbiological use cases:

* **`Specimen.type[sct]`**
 Should be populated with the specimen type. This applies even where the material is already pre-coordinated in the LOINC code used, so that the specimen type is available in a structured form and independently of the Observation code.
* **`Specimen.container.type`**
 Populated where the bottle or medium is known, e.g. `767385003 |Aerobic blood culture bottle|`. `Specimen.type` may be pre-coordinated, such as `866033003 |Blood specimen in aerobic blood culture bottle|`, but must then agree with `container.type`.
* **`Specimen.collection.collected[x]`**
 Gives the time of specimen collection. If that is not known, the time of specimen receipt may be documented instead.
* **`Specimen.parent`**
 Represents the relationship to the specimen from which another specimen was derived or taken, e.g. for further-processed materials or materials obtained from primary specimens.

### Isolate as a specimen of its own

An isolate may be represented as a specimen of its own, as in the model of the HL7 EU Lab Semantic Workgroup. This is optional.

* `type`: `119303007 |Microbial isolate|`
* `parent`: the specimen it was obtained from
* `collection.collected[x]`: that specimen's collection time

The investigations of one organism — identification, susceptibility, MRGN class, resistance category status, predicted susceptibility, and resistance mechanisms and virulence factors determined on the isolate — then reference the isolate. Culture and colony count stay with the original specimen. This makes the link to the organism unambiguous even without references; the [urine example](profilauswahl-und-abgrenzung.md#chain-general-culture) shows it.

### Specimen.processing: staining

The staining technique is **not** given under `Specimen.processing.procedure`, as the HL7 EU Lab Semantic Workgroup proposes, but in an extension on the Observation, [`extension[faerbung]`](StructureDefinition-mii-ex-mikrobio-faerbung.md), with the same codes — see [Microscopy](StructureDefinition-mii-pr-mikrobio-mikroskopie.md#staining): one specimen is often stained several times without the laboratory creating sub-specimens, and only on the Observation does it remain clear which stain belongs to which finding.

### Incubation duration and temperature

Both are optional. Where a site supplies them, they go into `Specimen.processing`:

* **Duration** — `Specimen.processing.time[x]` as a `Period`. `Specimen.processing` has no `Duration` element of its own (`Specimen.collection.duration` refers to collection), so start and end are the FHIR-native form. That is precisely what the European data model asks for when it notes that its candidate LOINC code `80581-2` "mandates for start/enddate" — with a `Period` the requirement is met and no new LOINC code is needed.
* **Temperature** — the extension `MII_EX_Biobank_Temperaturbedingungen`, whose context is `Specimen.processing` and whose value is a `Range`. The right element and the right datatype for "35-37 degrees C", and optional since the base profile's `2027.0.0-ballot`.

