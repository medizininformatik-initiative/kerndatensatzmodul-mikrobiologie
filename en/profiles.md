# Profiles - MII Implementation Guide Microbiology v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* **Profiles**

## Profiles

This page lists the FHIR profiles of the **Microbiology** module. They follow the MII naming convention `MII_PR_<Module>_<Name>`. The module's extensions are listed on the [Extensions](extensions.md) page.

The 2027 modelling uses standalone Observation profiles instead of `component` representations. The investigation profiles are grouped into four families; the report and the specimen stand beside them. The modelling notes are on [FHIR Profiles - Modelling Notes](fhir-profile.md), the delimitation between them on [Profile Selection and Delimitation](profilauswahl-und-abgrenzung.md).

### Culture

Culture-related observations (general, microscopy including Bartlett/Nugent score, colony count, susceptibility).

* [General culture](StructureDefinition-mii-pr-mikrobio-allgemeine-kultur.md)
* [General microscopy](StructureDefinition-mii-pr-mikrobio-mikroskopie.md)
* [Specific microscopy](StructureDefinition-mii-pr-mikrobio-spezifische-mikroskopie.md)
* [Bartlett score](StructureDefinition-mii-pr-mikrobio-bartlett-score.md)
* [Nugent score](StructureDefinition-mii-pr-mikrobio-nugent-score.md)
* [Colony count](StructureDefinition-mii-pr-mikrobio-keimzahl.md)
* [Susceptibility](StructureDefinition-mii-pr-mikrobio-empfindlichkeit.md)

### Determination

Determination observations (general/specific determination, Ct value).

* [General determination (identification)](StructureDefinition-mii-pr-mikrobio-allgemeine-bestimmung.md)
* [Specific determination](StructureDefinition-mii-pr-mikrobio-spezifische-bestimmung.md)
* [Ct value](StructureDefinition-mii-pr-mikrobio-ct-wert.md)

### Quantitative tests

Quantitative tests (antigen/antibody, titre, molecular pathogen load).

* [Antigen/antibody, quantitative](StructureDefinition-mii-pr-mikrobio-antigen-antikoerper-quantitativ.md)
* [Titre](StructureDefinition-mii-pr-mikrobio-titer.md)
* [Molecular pathogen load](StructureDefinition-mii-pr-mikrobio-molekulare-pathogenlast.md)

### Further properties

Further properties as standalone Observations (virulence, resistance mechanism, MRGN, predicted susceptibility, resistance category status, avidity).

* [Virulence factor](StructureDefinition-mii-pr-mikrobio-virulenzfaktor.md)
* [Resistance mechanisms / determinants](StructureDefinition-mii-pr-mikrobio-resistenzmechanismen-determinanten.md)
* [MRGN class](StructureDefinition-mii-pr-mikrobio-mrgn-klasse.md)
* [Predicted susceptibility](StructureDefinition-mii-pr-mikrobio-voraussichtliche-empfindlichkeit.md)
* [Resistance category status](StructureDefinition-mii-pr-mikrobio-resistenzkategorie-status.md)
* [Avidity](StructureDefinition-mii-pr-mikrobio-aviditaet.md)

### Report and specimen

The report that gathers the investigations, and the specimen they were performed on.

* [Microbiological report (DiagnosticReport)](StructureDefinition-mii-pr-mikrobio-diagnostic-report.md)
* [Specimen](StructureDefinition-mii-pr-mikrobio-probe.md)

