<!-- markdownlint-disable MD041 -->
<!-- Split from the former combined profiles-and-extensions.md per the TF-KDS-agreed
     menu structure (one page per artifact type); naming convention from the
     meta wiki page "Namenskonventionen für FHIR-Ressourcen in der MII".
     German mirror: input/translations/de/pagecontent/profiles.md. -->
This page lists the FHIR profiles of the **Microbiology** module. They follow the
MII naming convention `MII_PR_<Module>_<Name>`. The module's extensions are
listed on the [Extensions](extensions.html) page.

The 2027 modelling uses standalone Observation profiles instead of `component` representations. The investigation profiles are grouped into four families; the report and the specimen stand beside them. The modelling notes are on [FHIR Profiles - Modelling Notes](fhir-profile.html), the delimitation between them on [Profile Selection and Delimitation](profilauswahl-und-abgrenzung.html).

### Culture

Culture-related observations (general, microscopy including Bartlett/Nugent score, colony count, susceptibility).

- [General culture](StructureDefinition-mii-pr-mikrobio-allgemeine-kultur.html)
- [General microscopy](StructureDefinition-mii-pr-mikrobio-mikroskopie.html)
- [Specific microscopy](StructureDefinition-mii-pr-mikrobio-spezifische-mikroskopie.html)
- [Bartlett score](StructureDefinition-mii-pr-mikrobio-bartlett-score.html)
- [Nugent score](StructureDefinition-mii-pr-mikrobio-nugent-score.html)
- [Colony count](StructureDefinition-mii-pr-mikrobio-keimzahl.html)
- [Susceptibility](StructureDefinition-mii-pr-mikrobio-empfindlichkeit.html)

### Determination

Determination observations (general/specific determination, Ct value).

- [General determination (identification)](StructureDefinition-mii-pr-mikrobio-allgemeine-bestimmung.html)
- [Specific determination](StructureDefinition-mii-pr-mikrobio-spezifische-bestimmung.html)
- [Ct value](StructureDefinition-mii-pr-mikrobio-ct-wert.html)

### Quantitative tests

Quantitative tests (antigen/antibody, titre, molecular pathogen load).

- [Antigen/antibody, quantitative](StructureDefinition-mii-pr-mikrobio-antigen-antikoerper-quantitativ.html)
- [Titre](StructureDefinition-mii-pr-mikrobio-titer.html)
- [Molecular pathogen load](StructureDefinition-mii-pr-mikrobio-molekulare-pathogenlast.html)

### Further properties

Further properties as standalone Observations (virulence, resistance mechanism, MRGN, predicted susceptibility, resistance category status, avidity).

- [Virulence factor](StructureDefinition-mii-pr-mikrobio-virulenzfaktor.html)
- [Resistance mechanisms / determinants](StructureDefinition-mii-pr-mikrobio-resistenzmechanismen-determinanten.html)
- [MRGN class](StructureDefinition-mii-pr-mikrobio-mrgn-klasse.html)
- [Predicted susceptibility](StructureDefinition-mii-pr-mikrobio-voraussichtliche-empfindlichkeit.html)
- [Resistance category status](StructureDefinition-mii-pr-mikrobio-resistenzkategorie-status.html)
- [Avidity](StructureDefinition-mii-pr-mikrobio-aviditaet.html)

### Report and specimen

The report that gathers the investigations, and the specimen they were performed on.

- [Microbiological report (DiagnosticReport)](StructureDefinition-mii-pr-mikrobio-diagnostic-report.html)
- [Specimen](StructureDefinition-mii-pr-mikrobio-probe.html)
