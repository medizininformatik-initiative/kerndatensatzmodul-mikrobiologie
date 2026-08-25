<!-- markdownlint-disable MD041 -->
<!-- Source: kerndatensatz-basis input/pagecontent/guidance.md (MII module page set).
     "Guidance" overview page. Replace the [TODO] prompts; the sub-page structure
     follows kerndatensatz-basis. German mirror:
     input/translations/de/pagecontent/guidance.md — keep both in step. -->

This section collects the domain guidance for implementing and using the
**Microbiology** module.

### General Implementation Guidance

* **[Datasets and Descriptions](logical-models.html)** — the module's data
  elements, described as logical models. (This entry shares its target with
  *Artifacts → Logical Models*; neither Artifacts-Summary anchor is usable as
  a link target — see
  [`docs/page-structure.md`](https://github.com/medizininformatik-initiative/kerndatensatzmodul-mikrobiologie/blob/main/docs/page-structure.md) in this repository.)
* **[UML Diagrams](uml-diagrams.html)** — visual representation of the data
  models and their relationships.

### Audience-Specific Guidance

* **[Guidance for Implementers](implementer-guidance.html)** — technical
  guidance for DIC implementers.

<!-- DERIVED:no-source source=MIIIGModulMikrobiologie/Anwendungsfaelle-Informationsmodell/Beschreibung-von-Szenarien-fuer-die-Anwendung-der-Module.page.md gate=C -->
> **Written during migration - review before release.** TODO:REVIEW - this English text is a
> machine translation of the German source page named above; the German mirror carries the
> original wording verbatim.
{: .ig-highlight .ig-highlight-blue}

The module focuses on the detection, characterisation and description of microorganisms (e.g. bacteria, viruses, fungi, prions and protozoa). The information model allows a common and standardised description of different investigations in the form of FHIR Observations. The goal is to cover the most common microbiological laboratory procedures.

Susceptibility test results can be reported according to the definitions of the European Committee on Antimicrobial Susceptibility Testing ([EUCAST](https://www.eucast.org/ "EUCAST")) as well as those of the Clinical & Laboratory Standards Institute ([CLSI](https://clsi.org/ "CLSI")). Relevant results can be reported in a dedicated DiagnosticReport for microbiology studies.

For all investigations not covered by this information model, the [MII Laboratory module](https://simplifier.net/medizininformatikinitiative-modullabor "KDS module Laboratory") can be used.

---
For the KDS-wide conformance requirements see the
[Conformance rules of the Meta module](https://github.com/medizininformatik-initiative/kerndatensatz-meta/wiki/Conformance);
for the technical artifacts see [Profiles](profiles.html).
