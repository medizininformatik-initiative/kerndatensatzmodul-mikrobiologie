<!-- markdownlint-disable MD041 -->
<!--
  HOME PAGE — English is the IG's DEFAULT language, so this file is the source.
  Structure follows the standard MII module IG page set (kerndatensatz-basis
  input/pagecontent/index.md). Replace the {{...}} placeholders and the bracketed
  [TODO ...] prompts with your module's real content, then delete these HTML
  comments. Keep the section headings — a reviewer expects them. The German
  translation of this page lives at input/translations/de/pagecontent/index.md
  (see docs/recipes/add-translation.md) — keep both in step.
-->

### Introduction

This specification describes the FHIR representation of the Core Dataset (CDS)
module **Microbiology** of the Medical Informatics Initiative (MII). It
covers the module's use cases and the associated FHIR profiles, extensions and
terminology resources in their normative form. The MII Core Dataset enables the
standardized secondary use of routine clinical data for medical research.

<!-- DERIVED:no-source source=MIIIGModulMikrobiologie/Index.page.md gate=C -->
> **Written during migration - review before release.** TODO:REVIEW - the scope text and the note
> box below are machine translations of the German source home page; the German mirror carries the
> original wording verbatim.
{: .ig-highlight .ig-highlight-blue}

The module describes the investigations carried out in laboratories to detect, identify and
characterise microorganisms and their properties.

<div class="ig-highlight ig-highlight-orange" markdown="1">
**Note.** In the course of a harmonisation process between the RKI, MIO42 and the MII, the
microbiology data model was fundamentally revised. The agreements were additionally extended to the
European context (EHDS). This alpha release reflects the current state of the agreements reached. An
officially balloted release is planned for the end of the year.
</div>

The Microbiology 2027 extension module models microbiological findings as standalone Observations.
The main domains are:

- Culture (general, microscopy including Barlett/Nugent score, colony count, susceptibility)
- Determination (general/specific, Ct value)
- Quantitative tests (antigen/antibody, titre, molecular pathogen load)
- Further properties (virulence, resistance mechanism, MRGN, predicted susceptibility, resistance
  category status, avidity)

Components of Observations were moved into separate profiles in this version.

| Publication |               |
|-------------|---------------|
| Date        | TODO:REVIEW (release date - set at Gate D) |
| Version     | 2027.0.0-alpha.6 (CalVer `YYYY.n.n`) |
| Status      | active        |
| Realm       | DE            |

### Target audience

<div class="ig-highlight ig-highlight-blue">
<h5>Implementers</h5>
<p>Data Integration Centers (DIC), software developers and system architects building FHIR-based solutions.<br/>
→ see <a href="profiles.html">Profiles</a> and <a href="logical-models.html">Logical Models</a>.</p>
</div>

<div class="ig-highlight ig-highlight-green">
<h5>Researchers</h5>
<p>Scientists using KDS data for medical research.<br/>
→ see <a href="guidance.html">Guidance</a>.</p>
</div>

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
- **[Dependencies](ImplementationGuide-kerndatensatzmodul-mikrobiologie.html)** — the
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

More FHIR implementation guides can be found in the official
**[FHIR IG Registry](https://fhir.org/guides/registry/)** (source:
[`FHIR/ig-registry`](https://github.com/FHIR/ig-registry)).

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

© 2019 TMF e. V., Charlottenstraße 42, 10117 Berlin

TODO:REVIEW - the Simplifier source home page states 2019 as the copyright year, while
`copyrightYear` in `sushi-config.yaml` states 2026. Both values come from the source and
contradict each other; the migration changed neither (Gate A).

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
