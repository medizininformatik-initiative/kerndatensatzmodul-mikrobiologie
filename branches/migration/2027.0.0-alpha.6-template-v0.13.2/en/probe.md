# Specimen - MII Implementation Guide Microbiology v2027.0.0-alpha.6

* [**Table of Contents**](toc.md)
* [**Home**](index.md)
* [**Technical Implementation**](technische-implementierung.md)
* [**FHIR Profiles - Modelling Notes**](fhir-profile.md)
* **Specimen**

## Specimen

### Report - Specimen

For representing specimens, the profile [MII_PR_Biobank_Specimen_Bioprobe_Core](https://simplifier.net/medizininformatikinitiative-modulbiobank/mii_pr_biobank_specimen_bioprobe_core) from the [MII Biobank module](https://simplifier.net/medizininformatikinitiative-modulbiobank) is referenced.

The following elements are particularly relevant for the microbiological use cases:

* **`Specimen.type[sct]`**
 Should be populated with the specimen type. This applies even where the material is already pre-coordinated in the LOINC code used, so that the specimen type is available in a structured form and independently of the Observation code.
* **`Specimen.collection.collected[x]`**
 Gives the time of specimen collection. If that is not known, the time of specimen receipt may be documented instead.
* **`Specimen.parent`**
 Represents the relationship to the specimen from which another specimen was derived or taken, e.g. for further-processed materials or materials obtained from primary specimens.

