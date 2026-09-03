# FHIR Profiles - Modelling Notes - MII Implementation Guide Microbiology v2027.0.0-alpha.6

* [**Table of Contents**](toc.md)
* [**Guidance**](guidance.md)
* **FHIR Profiles - Modelling Notes**

## FHIR Profiles - Modelling Notes

The model is based on conventions agreed with the RKI, MIO42 and HL7 Europe and takes developments in the European context into account, in particular within the European Health Data Space (EHDS).

### Representing diagnostic chains

Diagnostic chains are represented, in agreement with HL7 Europe (in the EHDS context), via the R5 backport extension `extension-Observation.triggeredBy`. This modelling is more appropriate than `derivedFrom` because it describes a triggering or procedural relationship between investigations (e.g. reflex testing following a previous result). `derivedFrom` semantically implies a direct derivation of one result from another Observation; that is not correct for many microbiological use cases.

| | |
| :--- | :--- |
| **!** | For elements that are mandatory or marked must-support, we refer to the corresponding[rules of the IPS](https://build.fhir.org/ig/HL7/fhir-ips/design.html#must-support), which apply to this implementation guide as well. |

> **Written during migration - review before release.** The ten sub-pages of this section are distributed across the migrated guide: the four family overviews (culture, determination, quantitative tests, further properties) are sections on [Profiles](profiles.md), the description of each individual profile is an intro note on its own artefact page, and [Specimen](probe.md) and [Profile Selection and Delimitation](profilauswahl-und-abgrenzung.md) have pages of their own.

