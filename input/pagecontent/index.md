<!-- markdownlint-disable MD041 -->

### Introduction

This specification describes the FHIR representation of the Core Dataset (CDS)
module **Microbiology** of the Medical Informatics Initiative (MII). It
covers the module's use cases and the associated FHIR profiles, extensions and
terminology resources in their normative form. The MII Core Dataset enables the
standardized secondary use of routine clinical data for medical research.

The module describes the investigations carried out in laboratories to detect, identify and
characterise microorganisms and their properties. It is of decisive importance because it forms the
basis for a common investigation of infectious diseases and antibiotic resistance, which lead to
global health emergencies and are among the main priorities of the [WHO](http://www.who.int "WHO").

<div class="ig-highlight ig-highlight-orange" markdown="1">
**Note on the state of the underlying model.** In the course of a harmonisation process between the
RKI, MIO42 and the MII, the microbiology data model was fundamentally revised, and the agreements
were extended to the European context (EHDS).

That European model is **not yet final**. This release represents its current state as faithfully as
an implementable specification allows: where the underlying agreements leave a question open, this
guide states the decision it took and why. Points deliberately left open are listed under
[Ballot questions](#ballot-questions), and we ask for comment on them. Implementers should expect
changes in the areas concerned.
</div>

### Target audience

<div class="ig-highlight ig-highlight-blue" markdown="1">
<h5>Implementers</h5>
For data management and integration in data integration centres (DIC), software developers and system architects building FHIR-based solutions.

* → [Profiles](profiles.html) — the normative constraints
* → [Guidance for Implementers](implementer-guidance.html) — conformance, artifacts, validation
* → [Logical Models](logical-models.html) and [UML Diagrams](uml-diagrams.html) — the conceptual view
</div>

<div class="ig-highlight ig-highlight-green" markdown="1">
<h5>Researchers</h5>
For scientists working with MII data.

* → [Guidance for Researchers](researcher-guidance.html) — where to start
* → [Profile Selection and Delimitation](profilauswahl-und-abgrenzung.html) — which profile carries which statement, and what a negative result means
* → [Examples](examples.html) — what the data looks like in practice
</div>

The Microbiology 2027 extension module models microbiological findings as standalone Observations.
The main domains are:

- Culture (general, microscopy including Bartlett/Nugent score, colony count, susceptibility)
- Determination (general/specific, Ct value)
- Quantitative tests (antigen/antibody, titre, molecular pathogen load)
- Further properties (virulence, resistance mechanism, MRGN, predicted susceptibility, resistance
  category status, avidity)

Components of Observations were moved into separate profiles in this version.

| Publication |               |
|-------------|---------------|
| Date        | not yet published |
| Version     | 2027.0.0-ballot.rc1 (CalVer `YYYY.n.n`) |
| Status      | active        |
| Realm       | DE            |

### Ballot questions

This is a ballot candidate. The points below are deliberately left open, and we
ask for comment on them during the ballot. Each is stated in full on the page it
belongs to.

1. **[Is a Specimen resource always available?](probe.html#ballot-question-1)** — every
   investigation profile in this module requires `Observation.specimen`.
2. **[Where does the staining technique belong?](StructureDefinition-mii-pr-mikrobio-mikroskopie.html#ballot-question-2)**
   — this module carries it in an extension and deviates from the European
   coordination, which places it on the Specimen.
3. **[Mandatory storage temperature conditions on `Specimen.processing`](probe.html#ballot-question-3)**
   — inherited from the biobank base profile, without meaning for microbiological
   processing.
4. **[Is incubation duration and temperature representable via `Specimen.processing`?](probe.html#ballot-question-4)**
   — FHIR and the MII provide the pieces; the question is whether sites can supply
   them.
5. **[Can you process a component for a semiquantitative amount?](StructureDefinition-mii-pr-mikrobio-mikroskopie.html#ballot-question-5)**
   — the module follows the European coordination here, and the component
   reverses a decision of this release cycle.
6. **[Can you supply `Observation.method` for every result?](profilauswahl-und-abgrenzung.html#ballot-question-6)**
   — the HL7 EU Lab Semantic Workgroup asks for it always; this guide only recommends it, and your
   answer decides more than one question.
7. **[Is `Detected` / `Not detected` enough for a targeted culture?](StructureDefinition-mii-pr-mikrobio-spezifische-bestimmung.html#ballot-question-7)**
   — one profile now covers targeted detection whatever the technique; the
   European coordination binds growth codes for culture and this guide deviates.

### Contents

- **[Guidance](guidance.html)** — getting started and domain notes.
- **Conformance** — the KDS-wide conformance rules (requirements language,
  Must Support, handling missing data) are maintained centrally by the
  [Meta module](https://github.com/medizininformatik-initiative/kerndatensatz-meta/wiki/Conformance);
  the module-specific [Security and Privacy](security-and-privacy.html)
  considerations are part of this guide.
- **[Profiles](profiles.html)** and the further
  **[artifact pages](artifacts.html)** — the technical artifacts.
- **[Examples](examples.html)** — example instances.
- **[Dependencies](ImplementationGuide-mii-ig-mikrobiologie.html)** — the
  ImplementationGuide resource with the dependency table, cross-version
  analysis and copyright statements.

### Related guides

This module is part of the MII Core Dataset; the other KDS modules and their
dependencies are described at
[medizininformatik-initiative.de](https://www.medizininformatik-initiative.de/).

This module builds on the
[KDS module Laboratory report](https://simplifier.net/medizininformatikinitiative-modullabor); the
formal dependency is declared as `de.medizininformatikinitiative.kerndatensatz.laborbefund` in
`sushi-config.yaml`. The relations to the Molecular genetic report, Biobank, Case and Structural data
modules are described on [Guidance for Implementers](implementer-guidance.html).

### Imprint

This guide was created within the Medical Informatics Initiative and is subject,
by its governance process, to the coordination procedure of the Interoperability
Forum and the technical committees of HL7 Germany.

### Contact

Questions about this publication can be asked on the HL7 FHIR Zulip
[chat.fhir.org](https://chat.fhir.org) in the `german/mi-initiative` stream, or
on the MII Zulip [mii.zulipchat.com](https://mii.zulipchat.com/) in the
`MII-Kerndatensatz` stream.
Comments and issues are welcome as *Issues* on
[GitHub](https://github.com/medizininformatik-initiative/kerndatensatzmodul-mikrobiologie/issues).

<!-- MIGRATED verbatim from Simplifier page: MIIIGModulMikrobiologie/Index.page.md  -->
- Eugenia Rinaldi, Charité
- Karoline Buckow, TMF - Technologie- und Methodenplattform für die vernetzte medizinische
  Forschung e. V.

### Authors (in alphabetical order)

<!-- MIGRATED verbatim from Simplifier page: MIIIGModulMikrobiologie/Index.page.md  -->
- Claas Baier (Medizinische Hochschule Hannover)
- Martin Boeker (TU München)
- Karoline Buckow (MII-Koordinationsstelle)
- Cora Drenkhahn (Universität zu Lübeck)
- Benjamin Gebel (Universitätsklinikum Schleswig-Holstein)
- Ludwig Christian Hinske (Universitätsklinikum Augsburg)
- Franziska Klepka (MII-Koordinationsstelle)
- Eugenia Rinaldi (Charité Berlin / BIH)
- Norbert Thoma (Charité Berlin / Institut für Hygiene und Umweltmedizin)
- Kutaiba Saleh (Universitätsklinikum Jena)
- Hauke Tönnies (Universitätsklinikum Münster)
- Patrick Werner (HL7 Deutschland)
- Alexander Zautke (HL7 Deutschland)

### Copyright and License

© 2019+ TMF e. V., Charlottenstraße 42, 10117 Berlin

This work is licensed under the
[Creative Commons Attribution 4.0 International License (CC BY 4.0)](https://creativecommons.org/licenses/by/4.0/).

For the usage rights of the underlying FHIR technology, see the FHIR base
specification.

Some of the code systems used are published and maintained by other
organizations; the copyright of the respective publishers applies.

### Disclaimer

The content of this document is public. Please note that parts of this
document are based on FHIR version R4, which is copyrighted by
HL7 International.

Although this publication was prepared with the greatest care, the authors
cannot accept any liability for direct or indirect damage that may arise from
the content of this specification.
