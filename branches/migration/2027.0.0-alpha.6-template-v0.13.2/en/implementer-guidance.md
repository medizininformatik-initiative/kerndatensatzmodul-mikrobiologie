# Guidance for Implementers - MII Implementation Guide Microbiology v2027.0.0-alpha.6

* [**Table of Contents**](toc.md)
* [**Guidance**](guidance.md)
* **Guidance for Implementers**

## Guidance for Implementers

Technical guidance for DIC implementers on implementing the profiles of the **Microbiology** module (ETL from primary systems, FHIR API, validation).

### Context within the overall project - relations to other modules

This KDS module is closely related to the [KDS module Laboratory report](https://simplifier.net/medizininformatikinitiative-modullabor), although all Observations and DiagnosticReports are specific to microbiology.

The genetic investigations are likewise specific to the microbiological domain and therefore differ from the [KDS module Molecular genetic report](https://simplifier.net/medizininformatikinitiative-modulomics).

For the description of the specimen we refer to the [KDS module Biobank - biosample data](https://simplifier.net/medizininformatikinitiative-modulbiobank). For the description of the encounter and the organisation, see the [KDS module Case](https://simplifier.net/medizininformatikinitiative-modulfall) and the [KDS module Structural data](https://simplifier.net/medizininformatikinitiative-modulstrukturdaten).

### References

The model is based on conventions agreed with the RKI, MIO42 and HL7 Europe and takes developments in the European context into account, in particular within the European Health Data Space (EHDS).

It was produced with the involvement of domain representatives from the university hospitals and was discussed with a representative of the German Society for Hygiene and Microbiology.

It builds on the preparatory work for the [HiGHmed Use Case Infection Control](https://simplifier.net/MedizininformatikInitiative-HiGHmed-IC) and the [SMITH Use Case HELP](https://simplifier.net/MedizininformatikInitiatie-SMITH-HELP), but is extended to all possible microbiological investigations.

