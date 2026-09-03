# Guidance - MII Implementation Guide Microbiology v2027.0.0-alpha.6

* [**Table of Contents**](toc.md)
* **Guidance**

## Guidance

The **Microbiology** module covers the detection, characterisation and description of microorganisms — bacteria, viruses, fungi, prions and protozoa. Its information model describes the different investigations uniformly as FHIR Observations, with the aim of covering the microbiological laboratory procedures in common use.

Susceptibility results can be reported against the definitions of the European Committee on Antimicrobial Susceptibility Testing ([EUCAST](https://www.eucast.org/)) as well as those of the Clinical & Laboratory Standards Institute ([CLSI](https://clsi.org/)). A dedicated DiagnosticReport gathers the results that belong to one microbiological report.

Investigations this information model does not cover belong in the [MII Laboratory module](https://simplifier.net/medizininformatikinitiative-modullabor).

The subjects treated in detail have their own pages:

* **[Profile Selection and Delimitation](profilauswahl-und-abgrenzung.md)** — which profile carries which statement, and how a negative result is expressed
* **[Interpretation](interpretation.md)** — the susceptibility categories, the norm they rest on, and how the measured value and its assessment relate
* **[FHIR Profiles – Modelling Notes](fhir-profile.md)** — the conventions behind the profiles, including how diagnostic chains are represented
* **[Specimen](probe.md)** — how the specimen is represented and which module owns it
* **[Datasets and Descriptions](logical-models.md)** — the module's data elements as logical models
* **[UML Diagrams](uml-diagrams.md)** — the data models and their relationships
* **[Guidance for Implementers](implementer-guidance.md)** — technical guidance for DIC implementers, and the module's relations to other KDS modules

-------

For the KDS-wide conformance requirements see the [Conformance rules of the Meta module](https://github.com/medizininformatik-initiative/kerndatensatz-meta/wiki/Conformance); for the technical artifacts see [Profiles](profiles.md).

