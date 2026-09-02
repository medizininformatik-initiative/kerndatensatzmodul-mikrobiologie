# Guidance - MII Implementation Guide Microbiology v2027.0.0-alpha.6

* [**Table of Contents**](toc.md)
* **Guidance**

## Guidance

This section collects the domain guidance for implementing and using the **Microbiology** module.

### General Implementation Guidance

* **[Datasets and Descriptions](logical-models.md)** — the module's data elements, described as logical models. (This entry shares its target with **Artifacts → Logical Models**; neither Artifacts-Summary anchor is usable as a link target — see [`docs/page-structure.md`](https://github.com/medizininformatik-initiative/kerndatensatzmodul-mikrobiologie/blob/main/docs/page-structure.md) in this repository.)
* **[UML Diagrams](uml-diagrams.md)** — visual representation of the data models and their relationships.

### Audience-Specific Guidance

* **[Guidance for Implementers](implementer-guidance.md)** — technical guidance for DIC implementers.

> **Written during migration - review before release.** TODO:REVIEW - this English text is a machine translation of the German source page named above; the German mirror carries the original wording verbatim.

The module focuses on the detection, characterisation and description of microorganisms (e.g. bacteria, viruses, fungi, prions and protozoa). The information model allows a common and standardised description of different investigations in the form of FHIR Observations. The goal is to cover the most common microbiological laboratory procedures.

Susceptibility test results can be reported according to the definitions of the European Committee on Antimicrobial Susceptibility Testing ([EUCAST](https://www.eucast.org/)) as well as those of the Clinical & Laboratory Standards Institute ([CLSI](https://clsi.org/)). Relevant results can be reported in a dedicated DiagnosticReport for microbiology studies.

For all investigations not covered by this information model, the [MII Laboratory module](https://simplifier.net/medizininformatikinitiative-modullabor) can be used.

-------

For the KDS-wide conformance requirements see the [Conformance rules of the Meta module](https://github.com/medizininformatik-initiative/kerndatensatz-meta/wiki/Conformance); for the technical artifacts see [Profiles](profiles.md).

