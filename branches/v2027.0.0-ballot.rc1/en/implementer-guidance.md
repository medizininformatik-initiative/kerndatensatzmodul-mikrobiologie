# Guidance for Implementers - MII Implementation Guide Microbiology v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* [**Guidance**](guidance.md)
* **Guidance for Implementers**

## Guidance for Implementers

This page collects what is needed to implement the **Microbiology** module in FHIR-based systems (ETL from primary systems, FHIR API, validation).

### Understanding the Requirements

**1. Logical Models — Business Requirements**

The [Logical Models](logical-models.md) carry the business and clinical requirements, independently of the FHIR profiles:

* **Report** — the microbiological report and the investigations it summarises
* **Investigation** — the abstract base: identification, status, patient, specimen, timings, interpretation-affecting properties, triggering investigation
* **Investigation types** — the domain variants and the attributes each one adds

Their data types and cardinalities are not normative; the profiles define the binding requirements.

**2. UML Diagrams — Data Relationships**

The [UML Diagrams](uml-diagrams.md) illustrate the relationships between the elements and the references between the resources.

### Conformance

The conformance rules apply across the whole Core Dataset and are maintained by the Meta module, not repeated here:

* [Conformance](https://github.com/medizininformatik-initiative/kerndatensatz-meta/wiki/Conformance) — the rules as a whole
* [General Requirements](https://github.com/medizininformatik-initiative/kerndatensatz-meta/wiki/Conformance#anforderungsdokumentation)
* [Must Support](https://github.com/medizininformatik-initiative/kerndatensatz-meta/wiki/Conformance#must-support-ms)
* [Handling Missing Data](https://github.com/medizininformatik-initiative/kerndatensatz-meta/wiki/Conformance#fehlende-daten)
* [Security and Privacy](security-and-privacy.md) — module-specific notes

### Technical Artifacts

* [Profiles](profiles.md) — the 22 profiles with their constraints, one per investigation type plus the report and the specimen
* [Extensions](extensions.md) — the norm behind a susceptibility assessment, and the R5 backport that carries the triggering investigation
* [Value Sets](value-sets.md) — the 48 value sets the module defines
* [Code Systems](code-systems.md) — the four the module defines itself, among them the interim codes for which no LOINC or SNOMED code exists yet
* [Capability Statements](capability-statements.md) — the REST requirements, including interactions and search parameters
* [Search Parameters](search-parameters.md) — the four the module defines, including the one for the triggering investigation
* [Examples](examples.md) — sample resources
* [ImplementationGuide resource](ImplementationGuide-mii-ig-mikrobiologie.md) — the package versions this guide actually resolves to, the global profiles and the expansion parameters

### Domain Guidance

Four subjects are described separately for implementation:

* [Profile Selection and Delimitation](profilauswahl-und-abgrenzung.md) — which profile carries which statement, how the four kinds of negative result are distinguished, and how the steps of a diagnostic workflow are linked
* [Interpretation](interpretation.md) — the susceptibility categories, the norm they rest on, and how a measured value and its assessment relate
* [FHIR Profiles – Modelling Notes](fhir-profile.md) — the conventions behind the profiles: post-coordination, the method axis, and the representation of diagnostic chains
* [Specimen](probe.md) — the representation of specimen material via the Biobank module

### Context within the overall project - relations to other modules

This KDS module is closely related to the [KDS module Laboratory report](https://simplifier.net/medizininformatikinitiative-modullabor), although all Observations and DiagnosticReports are specific to microbiology.

The genetic investigations are likewise specific to the microbiological domain and therefore differ from the [KDS module Molecular genetic report](https://simplifier.net/medizininformatikinitiative-modulomics).

For the description of the specimen we refer to the [KDS module Biobank - biosample data](https://simplifier.net/medizininformatikinitiative-modulbiobank). For the description of the encounter and the organisation, see the [KDS module Case](https://simplifier.net/medizininformatikinitiative-modulfall) and the [KDS module Structural data](https://simplifier.net/medizininformatikinitiative-modulstrukturdaten).

### References

The model is based on conventions agreed with the RKI, MIO42 and HL7 Europe and takes developments in the European context into account, in particular within the European Health Data Space (EHDS).

It was produced with the involvement of domain representatives from the university hospitals and was discussed with a representative of the German Society for Hygiene and Microbiology.

It builds on the preparatory work for the [HiGHmed Use Case Infection Control](https://simplifier.net/MedizininformatikInitiative-HiGHmed-IC) and the [SMITH Use Case HELP](https://simplifier.net/MedizininformatikInitiatie-SMITH-HELP), but is extended to all possible microbiological investigations.

### Getting Started with Implementation

**Downloads**

The [Downloads](downloads.md) page provides the FHIR package for validation, one package per language, and a downloadable copy of this guide.

**Terminology Service**

For value set expansion and code validation, use the MII terminology server:

* **URL:** [https://www.ontoserver.mii-termserv.de/](https://www.ontoserver.mii-termserv.de/)

Access is client-certificate-gated and granted to entities in Germany. The versions this guide is pinned to are declared in its [expansion parameters](Parameters-mii-param-mikrobio-manifest.md) — SNOMED CT `20260701` and LOINC `2.82` at the time of writing. Expanding against a different version can yield a different set of codes; this module's value sets are built from LOINC axis filters, so a version change moves membership rather than only displays.

**Validation**

Validate against the FHIR package with the [FHIR Validator](https://confluence.hl7.org/spaces/FHIR/pages/35718580/Using+the+FHIR+Validator).

