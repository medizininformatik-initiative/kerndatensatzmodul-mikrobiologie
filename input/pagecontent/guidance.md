<!-- markdownlint-disable MD041 -->
<!-- Hub page for the Guidance section, following the shape kerndatensatzmodul-labor
     uses: the substance first, then one line per sub-page. The template scaffold
     put its two headings and link lists first and the module's own text last,
     where nobody reads it.
     NOTE on "Datasets and Descriptions": it targets logical-models.html, the same
     page as Artifacts → Logical Models. Neither Artifacts-Summary anchor is usable
     as a link target — see docs/page-structure.md in this repository. That is a
     build detail and belongs here, not in the rendered text.
     German mirror: input/translations/de/pagecontent/guidance.md — keep both in step. -->

The **Microbiology** module covers the detection, characterisation and description
of microorganisms — bacteria, viruses, fungi, prions and protozoa. Its information
model describes the different investigations uniformly as FHIR Observations, with
the aim of covering the microbiological laboratory procedures in common use.

Susceptibility results can be reported against the definitions of the European
Committee on Antimicrobial Susceptibility Testing
([EUCAST](https://www.eucast.org/ "EUCAST")) as well as those of the Clinical &
Laboratory Standards Institute ([CLSI](https://clsi.org/ "CLSI")). A dedicated
DiagnosticReport gathers the results that belong to one microbiological report.

Investigations this information model does not cover belong in the
[MII Laboratory module](https://simplifier.net/medizininformatikinitiative-modullabor "KDS module Laboratory").

The subjects treated in detail have their own pages:

* **[Profile Selection and Delimitation](profilauswahl-und-abgrenzung.html)** —
  which profile carries which statement, and how a negative result is expressed
* **[Interpretation](interpretation.html)** — the susceptibility categories, the
  norm they rest on, and how the measured value and its assessment relate
* **[FHIR Profiles – Modelling Notes](fhir-profile.html)** — the conventions
  behind the profiles, including how diagnostic chains are represented
* **[Specimen](probe.html)** — how the specimen is represented and which module
  owns it
* **[Datasets and Descriptions](logical-models.html)** — the module's data
  elements as logical models
* **[UML Diagrams](uml-diagrams.html)** — the data models and their relationships
* **[Guidance for Implementers](implementer-guidance.html)** — technical guidance
  for DIC implementers, and the module's relations to other KDS modules

---
For the KDS-wide conformance requirements see the
[Conformance rules of the Meta module](https://github.com/medizininformatik-initiative/kerndatensatz-meta/wiki/Conformance);
for the technical artifacts see [Profiles](profiles.html).
