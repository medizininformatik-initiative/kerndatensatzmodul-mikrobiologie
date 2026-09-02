# MII ImplementationGuide Resource - MII Implementation Guide Microbiology v2027.0.0-alpha.6

* [**Table of Contents**](toc.md)
* **MII ImplementationGuide Resource**

## MII ImplementationGuide Resource

This ImplementationGuide resource defines the technical details of this publication, including dependencies and publishing parameters.

* [XML](../ImplementationGuide-mii-ig-mikrobiologie.xml)
* [JSON](../ImplementationGuide-mii-ig-mikrobiologie.json)

### Cross Version Analysis

This is an R4 IG. None of the features it uses are changed in R4B, so it can be used as is with R4B systems. Packages for both [R4 (de.medizininformatikinitiative.kerndatensatz.mikrobiologie.r4)](../package.r4.tgz) and [R4B (de.medizininformatikinitiative.kerndatensatz.mikrobiologie.r4b)](../package.r4b.tgz) are available.

### IG Dependencies

This IG contains the following dependencies on other IGs.










> **Where the versions come from.** Every package in the table is pinned directly in [`sushi-config.yaml`](https://github.com/medizininformatik-initiative/kerndatensatzmodul-mikrobiologie/blob/main/sushi-config.yaml) (`dependencies:`) — including `hl7.terminology.r4` (THO) and `hl7.fhir.uv.extensions.r4`, and those two deliberately so: the IG Publisher's [automatic-packages rule](https://build.fhir.org/ig/FHIR/ig-guidance/versions.html#automatic-packages) consults only this guide's **own** dependency list, so without a direct pin every build would silently inject the latest THO/extensions release — a version pinned by the MII meta package alone cannot control the build (verified in the publisher source at the pinned release). A weekly check warns when these two pins drift from what the pinned meta package ships, and the exact versions a concrete build used are recorded in its `qa-versions.json` output.

### Global Profiles

This IG declares the following global profiles — profiles that apply to every instance of their resource type exchanged under this guide. An empty table means this module declares none.

*There are no Global profiles defined*

### Copyrights

This publication includes IP covered under the following statements.

* ISO maintains the copyright on the country codes, and controls its use carefully. For further details see the ISO 3166 web page: [https://www.iso.org/iso-3166-country-codes.html](https://www.iso.org/iso-3166-country-codes.html)

* [ISO 3166-1 Codes for the representation of names of countries and their subdivisions — Part 1: Country code](http://terminology.hl7.org/6.5.0/CodeSystem-ISO3166Part1.html): [ExtensionObservation_TriggeredBy](StructureDefinition-ext-R5-Observation.triggeredBy.md), [MII_CPS_Mikrobio_Metadata](CapabilityStatement-mii-cps-mikrobio-metadata.md)... Show 74 more, [MII_CS_Mikrobio_MRGN_Ergebnis](CodeSystem-mii-cs-mikrobio-mrgn-ergebnis.md), [MII_CS_Mikrobio_Resistenzkategorie](CodeSystem-mii-cs-mikrobio-resistenzkategorie.md), [MII_CS_Mikrobio_Susceptibility_NORM](CodeSystem-mii-cs-mikrobio-susceptibility-norm.md), [MII_EX_Mikrobio_Empfindlichkeit_Norm](StructureDefinition-mii-ex-mikrobio-empfindlichkeit-norm.md), [MII_IG_Mikrobiologie](index.md), [MII_LM_Mikrobio_Befund](StructureDefinition-mii-lm-mikrobio-logical-model.md), [MII_LM_Mikrobio_Untersuchung](StructureDefinition-mii-lm-mikrobio-untersuchung.md), [MII_LM_Mikrobio_Untersuchungsarten](StructureDefinition-mii-lm-mikrobio-untersuchungsarten.md), [MII_PR_Mikrobio_Allgemeine_Bestimmung](StructureDefinition-mii-pr-mikrobio-allgemeine-bestimmung.md), [MII_PR_Mikrobio_Allgemeine_Kultur](StructureDefinition-mii-pr-mikrobio-allgemeine-kultur.md), [MII_PR_Mikrobio_Antigen_Antikoerper_Quantitativ](StructureDefinition-mii-pr-mikrobio-antigen-antikoerper-quantitativ.md), [MII_PR_Mikrobio_Aviditaet](StructureDefinition-mii-pr-mikrobio-aviditaet.md), [MII_PR_Mikrobio_Barlett_Score](StructureDefinition-mii-pr-mikrobio-barlett-score.md), [MII_PR_Mikrobio_Ct_Wert](StructureDefinition-mii-pr-mikrobio-ct-wert.md), [MII_PR_Mikrobio_Diagnostic_Report](StructureDefinition-mii-pr-mikrobio-diagnostic-report.md), [MII_PR_Mikrobio_Empfindlichkeit](StructureDefinition-mii-pr-mikrobio-empfindlichkeit.md), [MII_PR_Mikrobio_Keimzahl](StructureDefinition-mii-pr-mikrobio-keimzahl.md), [MII_PR_Mikrobio_MRGN_Klasse](StructureDefinition-mii-pr-mikrobio-mrgn-klasse.md), [MII_PR_Mikrobio_Mikroskopie](StructureDefinition-mii-pr-mikrobio-mikroskopie.md), [MII_PR_Mikrobio_Molekulare_Pathogenlast](StructureDefinition-mii-pr-mikrobio-molekulare-pathogenlast.md), [MII_PR_Mikrobio_Nugent_Score](StructureDefinition-mii-pr-mikrobio-nugent-score.md), [MII_PR_Mikrobio_Resistenzkategorie_Status](StructureDefinition-mii-pr-mikrobio-resistenzkategorie-status.md), [MII_PR_Mikrobio_Resistenzmechanismen_Determinanten](StructureDefinition-mii-pr-mikrobio-resistenzmechanismen-determinanten.md), [MII_PR_Mikrobio_Spezifische_Bestimmung](StructureDefinition-mii-pr-mikrobio-spezifische-bestimmung.md), [MII_PR_Mikrobio_Spezifische_Kultur](StructureDefinition-mii-pr-mikrobio-spezifische-kultur.md), [MII_PR_Mikrobio_Titer](StructureDefinition-mii-pr-mikrobio-titer.md), [MII_PR_Mikrobio_Virulenzfaktor](StructureDefinition-mii-pr-mikrobio-virulenzfaktor.md), [MII_PR_Mikrobio_Voraussichtliche_Empfindlichkeit](StructureDefinition-mii-pr-mikrobio-voraussichtliche-empfindlichkeit.md), [MII_SP_Mikrobio_NormKategorie](SearchParameter-mii-sp-mikrobio-interpretation.md), [MII_SP_Mikrobio_Observation_Titer](SearchParameter-mii-sp-mikrobio-observation-titer.md), [MII_SP_Mikrobio_Observation_TriggeredBy](SearchParameter-mii-sp-mikrobio-observation-triggered-by.md), [MII_VS_Labor_Laborergebnis_Semiquantitativ](ValueSet-mii-vs-labor-laborergebnis-semiquantitativ.md), [MII_VS_Mikrobio_Allgemeine_Bestimmung_Ergebnis_SNOMED](ValueSet-mii-vs-mikrobio-allgemeine-bestimmung-ergebnis-snomed.md), [MII_VS_Mikrobio_Allgemeine_Bestimmung_Methode_SNOMED](ValueSet-mii-vs-mikrobio-allgemeine-bestimmung-methode-snomed.md), [MII_VS_Mikrobio_Allgemeine_Kultur_Methode_SNOMED](ValueSet-mii-vs-mikrobio-allgemeine-kultur-methode-snomed.md), [MII_VS_Mikrobio_Antigen_Antikoerper_Methode_SNOMED](ValueSet-mii-vs-mikrobio-antigen-antikoerper-methode-snomed.md), [MII_VS_Mikrobio_Antigen_Antikoerper_Quantitativ_Einheiten_UCUM](ValueSet-mii-vs-mikrobio-antigen-antikoerper-quantitativ-einheiten-ucum.md), [MII_VS_Mikrobio_Antigen_Antikoerper_Quantitative_Tests_LOINC](ValueSet-mii-vs-mikrobio-antigen-antikoerper-quantitative-tests-loinc.md), [MII_VS_Mikrobio_Aviditaet_Ergebnis](ValueSet-mii-vs-mikrobio-aviditaet-ergebnis.md), [MII_VS_Mikrobio_Aviditaet_Tests_LOINC](ValueSet-mii-vs-mikrobio-aviditaet-tests-loinc.md), [MII_VS_Mikrobio_Barlett_Score_LOINC](ValueSet-mii-vs-mikrobio-barlett-score-loinc.md), [MII_VS_Mikrobio_Befundtyp_LOINC](ValueSet-mii-vs-mikrobio-befundtyp-loinc.md), [MII_VS_Mikrobio_CT_Wert_LOINC](ValueSet-mii-vs-mikrobio-ct-wert-loinc.md), [MII_VS_Mikrobio_Data_Absent_Reason](ValueSet-mii-vs-mikrobio-data-absent-reason.md), [MII_VS_Mikrobio_Detected_Not_Detected_SNOMED](ValueSet-mii-vs-mikrobio-detected-not-detected-snomed.md), [MII_VS_Mikrobio_Empfaenglichkeit_Genotyp_LOINC](ValueSet-mii-vs-mikrobio-empfindlichkeit-genotyp-loinc.md), [MII_VS_Mikrobio_Empfindlichkeit_Einheiten_UCUM](ValueSet-mii-vs-mikrobio-empfindlichkeit-einheiten-ucum.md), [MII_VS_Mikrobio_Empfindlichkeit_Phenotyp_LOINC](ValueSet-mii-vs-mikrobio-empfindlichkeit-phenotyp-loinc.md), [MII_VS_Mikrobio_Keimzahl_Einheiten_UCUM](ValueSet-mii-vs-mikrobio-keimzahl-einheiten-ucum.md), [MII_VS_Mikrobio_Keimzahl_LOINC](ValueSet-mii-vs-mikrobio-keimzahl-loinc.md), [MII_VS_Mikrobio_Kultur_Ergebnis_SNOMED](ValueSet-mii-vs-mikrobio-kultur-ergebnis-snomed.md), [MII_VS_Mikrobio_MRGN_Klasse_LOINC](ValueSet-mii-vs-mikrobio-mrgn-klasse-loinc.md), [MII_VS_Mikrobio_Molekulare_Diagnostik_Einheiten_UCUM](ValueSet-mii-vs-mikrobio-molekulare-diagnostik-einheiten-ucum.md), [MII_VS_Mikrobio_Molekulare_Pathogenlast_Methode_SNOMED](ValueSet-mii-vs-mikrobio-molekulare-pathogenlast-methode-snomed.md), [MII_VS_Mikrobio_Molekulare_Pathogenlast_Tests_LOINC](ValueSet-mii-vs-mikrobio-molekulare-pathogenlast-tests-loinc.md), [MII_VS_Mikrobio_Morphologie_Ergebnis_SNOMED](ValueSet-mii-vs-mikrobio-morphologie-ergebnis-snomed.md), [MII_VS_Mikrobio_Morphologie_Methode_SNOMED](ValueSet-mii-vs-mikrobio-morphologie-methode-snomed.md), [MII_VS_Mikrobio_Organismen_SNOMEDCT](ValueSet-mii-vs-mikrobio-organismen-snomedct.md), [MII_VS_Mikrobio_Resistenzkategorie_Status](ValueSet-mii-vs-mikrobio-resistenzkategorie-status.md), [MII_VS_Mikrobio_Resistenzkategorie_Status_Ergebnis](ValueSet-mii-vs-mikrobio-resistenzkategorie-status-ergebnis.md), [MII_VS_Mikrobio_Resistenzmechanismen_Determinanten_LOINC](ValueSet-mii-vs-mikrobio-resistenzmechanismen-determinanten-loinc.md), [MII_VS_Mikrobio_Resistenzmechanismen_Methode_SNOMED](ValueSet-mii-vs-mikrobio-resistenzmechanismen-methode-snomed.md), [MII_VS_Mikrobio_Spezifische_Bestimmung_Ergebnis_SNOMED](ValueSet-mii-vs-mikrobio-spezifische-bestimmung-ergebnis-snomed.md), [MII_VS_Mikrobio_Spezifische_Bestimmung_Methode_SNOMED](ValueSet-mii-vs-mikrobio-spezifische-bestimmung-methode-snomed.md), [MII_VS_Mikrobio_Spezifische_Bestimmung_Tests_LOINC](ValueSet-mii-vs-mikrobio-spezifische-bestimmung-tests-loinc.md), [MII_VS_Mikrobio_Spezifische_Kultur_Methode_SNOMED](ValueSet-mii-vs-mikrobio-spezifische-kultur-methode-snomed.md), [MII_VS_Mikrobio_Spezifische_Kultur_Tests_LOINC](ValueSet-mii-vs-mikrobio-spezifische-kultur-tests-loinc.md), [MII_VS_Mikrobio_Susceptibility](ValueSet-mii-vs-mikrobio-susceptibility.md), [MII_VS_Mikrobio_Susceptibility_NORM](ValueSet-mii-vs-mikrobio-susceptibility-norm.md), [MII_VS_Mikrobio_Titer_Methode_SNOMED](ValueSet-mii-vs-mikrobio-titer-methode-snomed.md), [MII_VS_Mikrobio_Titer_Tests_LOINC](ValueSet-mii-vs-mikrobio-titer-tests-loinc.md), [MII_VS_Mikrobio_Virulenz_LOINC](ValueSet-mii-vs-mikrobio-virulenz-loinc.md), [MII_VS_Mikrobio_Voraussichtliche_Empfindlichkeit](ValueSet-mii-vs-mikrobio-voraussichtliche-empfindlichkeit.md) and [ObservationInterpretation](SearchParameter-ObservationInterpretation.md)


* The UCUM codes, UCUM table (regardless of format), and UCUM Specification are copyright 1999-2009, Regenstrief Institute, Inc. and the Unified Codes for Units of Measures (UCUM) Organization. All rights reserved. [https://ucum.org/trac/wiki/TermsOfUse](https://ucum.org/trac/wiki/TermsOfUse)

* [Unified Code for Units of Measure (UCUM)](http://hl7.org/fhir/uv/xver-r5.r4/0.1.0/CodeSystem-v3-ucum.html): [MII_PR_Mikrobio_Antigen_Antikoerper_Quantitativ](StructureDefinition-mii-pr-mikrobio-antigen-antikoerper-quantitativ.md), [MII_PR_Mikrobio_Empfindlichkeit](StructureDefinition-mii-pr-mikrobio-empfindlichkeit.md)... Show 14 more, [MII_PR_Mikrobio_Keimzahl](StructureDefinition-mii-pr-mikrobio-keimzahl.md), [MII_PR_Mikrobio_Molekulare_Pathogenlast](StructureDefinition-mii-pr-mikrobio-molekulare-pathogenlast.md), [MII_VS_Mikrobio_Antigen_Antikoerper_Quantitativ_Einheiten_UCUM](ValueSet-mii-vs-mikrobio-antigen-antikoerper-quantitativ-einheiten-ucum.md), [MII_VS_Mikrobio_Empfindlichkeit_Einheiten_UCUM](ValueSet-mii-vs-mikrobio-empfindlichkeit-einheiten-ucum.md), [MII_VS_Mikrobio_Keimzahl_Einheiten_UCUM](ValueSet-mii-vs-mikrobio-keimzahl-einheiten-ucum.md), [MII_VS_Mikrobio_Molekulare_Diagnostik_Einheiten_UCUM](ValueSet-mii-vs-mikrobio-molekulare-diagnostik-einheiten-ucum.md), [Observation/mii-exa-mikrobio-antigen-antikoerper-quantitativ](Observation-mii-exa-mikrobio-antigen-antikoerper-quantitativ.md), [Observation/mii-exa-mikrobio-aviditaet](Observation-mii-exa-mikrobio-aviditaet.md), [Observation/mii-exa-mikrobio-ct-wert](Observation-mii-exa-mikrobio-ct-wert.md), [Observation/mii-exa-mikrobio-empfindlichkeit](Observation-mii-exa-mikrobio-empfindlichkeit.md), [Observation/mii-exa-mikrobio-keimzahl](Observation-mii-exa-mikrobio-keimzahl.md), [Observation/mii-exa-mikrobio-molekulare-pathogenlast](Observation-mii-exa-mikrobio-molekulare-pathogenlast.md), [Observation/mii-exa-mikrobio-nugent-score](Observation-mii-exa-mikrobio-nugent-score.md) and [Observation/mii-exa-mikrobio-workflow-vre-03-empfindlichkeit](Observation-mii-exa-mikrobio-workflow-vre-03-empfindlichkeit.md)


* This material contains content from [LOINC](http://loinc.org). LOINC is copyright © 1995-2020, Regenstrief Institute, Inc. and the Logical Observation Identifiers Names and Codes (LOINC) Committee and is available at no cost under the [license](http://loinc.org/license). LOINC® is a registered United States trademark of Regenstrief Institute, Inc.

* [LOINC](http://terminology.hl7.org/6.5.0/CodeSystem-v3-loinc.html): [DiagnosticReport/mii-exa-mikrobio-diagnostic-report](DiagnosticReport-mii-exa-mikrobio-diagnostic-report.md), [MII_PR_Mikrobio_Allgemeine_Bestimmung](StructureDefinition-mii-pr-mikrobio-allgemeine-bestimmung.md)... Show 60 more, [MII_PR_Mikrobio_Allgemeine_Kultur](StructureDefinition-mii-pr-mikrobio-allgemeine-kultur.md), [MII_PR_Mikrobio_Antigen_Antikoerper_Quantitativ](StructureDefinition-mii-pr-mikrobio-antigen-antikoerper-quantitativ.md), [MII_PR_Mikrobio_Aviditaet](StructureDefinition-mii-pr-mikrobio-aviditaet.md), [MII_PR_Mikrobio_Barlett_Score](StructureDefinition-mii-pr-mikrobio-barlett-score.md), [MII_PR_Mikrobio_Ct_Wert](StructureDefinition-mii-pr-mikrobio-ct-wert.md), [MII_PR_Mikrobio_Diagnostic_Report](StructureDefinition-mii-pr-mikrobio-diagnostic-report.md), [MII_PR_Mikrobio_Empfindlichkeit](StructureDefinition-mii-pr-mikrobio-empfindlichkeit.md), [MII_PR_Mikrobio_Keimzahl](StructureDefinition-mii-pr-mikrobio-keimzahl.md), [MII_PR_Mikrobio_MRGN_Klasse](StructureDefinition-mii-pr-mikrobio-mrgn-klasse.md), [MII_PR_Mikrobio_Mikroskopie](StructureDefinition-mii-pr-mikrobio-mikroskopie.md), [MII_PR_Mikrobio_Molekulare_Pathogenlast](StructureDefinition-mii-pr-mikrobio-molekulare-pathogenlast.md), [MII_PR_Mikrobio_Nugent_Score](StructureDefinition-mii-pr-mikrobio-nugent-score.md), [MII_PR_Mikrobio_Resistenzkategorie_Status](StructureDefinition-mii-pr-mikrobio-resistenzkategorie-status.md), [MII_PR_Mikrobio_Resistenzmechanismen_Determinanten](StructureDefinition-mii-pr-mikrobio-resistenzmechanismen-determinanten.md), [MII_PR_Mikrobio_Spezifische_Bestimmung](StructureDefinition-mii-pr-mikrobio-spezifische-bestimmung.md), [MII_PR_Mikrobio_Spezifische_Kultur](StructureDefinition-mii-pr-mikrobio-spezifische-kultur.md), [MII_PR_Mikrobio_Titer](StructureDefinition-mii-pr-mikrobio-titer.md), [MII_PR_Mikrobio_Virulenzfaktor](StructureDefinition-mii-pr-mikrobio-virulenzfaktor.md), [MII_PR_Mikrobio_Voraussichtliche_Empfindlichkeit](StructureDefinition-mii-pr-mikrobio-voraussichtliche-empfindlichkeit.md), [MII_VS_Mikrobio_Antigen_Antikoerper_Quantitative_Tests_LOINC](ValueSet-mii-vs-mikrobio-antigen-antikoerper-quantitative-tests-loinc.md), [MII_VS_Mikrobio_Aviditaet_Tests_LOINC](ValueSet-mii-vs-mikrobio-aviditaet-tests-loinc.md), [MII_VS_Mikrobio_Barlett_Score_LOINC](ValueSet-mii-vs-mikrobio-barlett-score-loinc.md), [MII_VS_Mikrobio_Befundtyp_LOINC](ValueSet-mii-vs-mikrobio-befundtyp-loinc.md), [MII_VS_Mikrobio_CT_Wert_LOINC](ValueSet-mii-vs-mikrobio-ct-wert-loinc.md), [MII_VS_Mikrobio_Empfaenglichkeit_Genotyp_LOINC](ValueSet-mii-vs-mikrobio-empfindlichkeit-genotyp-loinc.md), [MII_VS_Mikrobio_Empfindlichkeit_Phenotyp_LOINC](ValueSet-mii-vs-mikrobio-empfindlichkeit-phenotyp-loinc.md), [MII_VS_Mikrobio_Keimzahl_LOINC](ValueSet-mii-vs-mikrobio-keimzahl-loinc.md), [MII_VS_Mikrobio_MRGN_Klasse_LOINC](ValueSet-mii-vs-mikrobio-mrgn-klasse-loinc.md), [MII_VS_Mikrobio_Molekulare_Pathogenlast_Tests_LOINC](ValueSet-mii-vs-mikrobio-molekulare-pathogenlast-tests-loinc.md), [MII_VS_Mikrobio_Resistenzmechanismen_Determinanten_LOINC](ValueSet-mii-vs-mikrobio-resistenzmechanismen-determinanten-loinc.md), [MII_VS_Mikrobio_Spezifische_Bestimmung_Tests_LOINC](ValueSet-mii-vs-mikrobio-spezifische-bestimmung-tests-loinc.md), [MII_VS_Mikrobio_Spezifische_Kultur_Tests_LOINC](ValueSet-mii-vs-mikrobio-spezifische-kultur-tests-loinc.md), [MII_VS_Mikrobio_Titer_Tests_LOINC](ValueSet-mii-vs-mikrobio-titer-tests-loinc.md), [MII_VS_Mikrobio_Virulenz_LOINC](ValueSet-mii-vs-mikrobio-virulenz-loinc.md), [Observation/mii-exa-mikrobio-allgemeine-bestimmung](Observation-mii-exa-mikrobio-allgemeine-bestimmung.md), [Observation/mii-exa-mikrobio-allgemeine-kultur](Observation-mii-exa-mikrobio-allgemeine-kultur.md), [Observation/mii-exa-mikrobio-antigen-antikoerper-quantitativ](Observation-mii-exa-mikrobio-antigen-antikoerper-quantitativ.md), [Observation/mii-exa-mikrobio-aviditaet](Observation-mii-exa-mikrobio-aviditaet.md), [Observation/mii-exa-mikrobio-barlett-score](Observation-mii-exa-mikrobio-barlett-score.md), [Observation/mii-exa-mikrobio-ct-wert](Observation-mii-exa-mikrobio-ct-wert.md), [Observation/mii-exa-mikrobio-empfindlichkeit](Observation-mii-exa-mikrobio-empfindlichkeit.md), [Observation/mii-exa-mikrobio-keimzahl](Observation-mii-exa-mikrobio-keimzahl.md), [Observation/mii-exa-mikrobio-mikroskopie](Observation-mii-exa-mikrobio-mikroskopie.md), [Observation/mii-exa-mikrobio-molekulare-pathogenlast](Observation-mii-exa-mikrobio-molekulare-pathogenlast.md), [Observation/mii-exa-mikrobio-mrgn-klasse](Observation-mii-exa-mikrobio-mrgn-klasse.md), [Observation/mii-exa-mikrobio-mrgn-klasse-negativ](Observation-mii-exa-mikrobio-mrgn-klasse-negativ.md), [Observation/mii-exa-mikrobio-nugent-score](Observation-mii-exa-mikrobio-nugent-score.md), [Observation/mii-exa-mikrobio-resistenzkategorie-vre-negativ](Observation-mii-exa-mikrobio-resistenzkategorie-vre-negativ.md), [Observation/mii-exa-mikrobio-resistenzkategorie-vre-positiv](Observation-mii-exa-mikrobio-resistenzkategorie-vre-positiv.md), [Observation/mii-exa-mikrobio-resistenzmechanismen-determinanten](Observation-mii-exa-mikrobio-resistenzmechanismen-determinanten.md), [Observation/mii-exa-mikrobio-spezifische-bestimmung](Observation-mii-exa-mikrobio-spezifische-bestimmung.md), [Observation/mii-exa-mikrobio-spezifische-bestimmung-vre-negativ](Observation-mii-exa-mikrobio-spezifische-bestimmung-vre-negativ.md), [Observation/mii-exa-mikrobio-spezifische-kultur](Observation-mii-exa-mikrobio-spezifische-kultur.md), [Observation/mii-exa-mikrobio-spezifische-kultur-vre-negativ](Observation-mii-exa-mikrobio-spezifische-kultur-vre-negativ.md), [Observation/mii-exa-mikrobio-titer](Observation-mii-exa-mikrobio-titer.md), [Observation/mii-exa-mikrobio-virulenzfaktor](Observation-mii-exa-mikrobio-virulenzfaktor.md), [Observation/mii-exa-mikrobio-voraussichtliche-empfindlichkeit](Observation-mii-exa-mikrobio-voraussichtliche-empfindlichkeit.md), [Observation/mii-exa-mikrobio-workflow-vre-01-kultur](Observation-mii-exa-mikrobio-workflow-vre-01-kultur.md), [Observation/mii-exa-mikrobio-workflow-vre-02-identifikation](Observation-mii-exa-mikrobio-workflow-vre-02-identifikation.md) and [Observation/mii-exa-mikrobio-workflow-vre-03-empfindlichkeit](Observation-mii-exa-mikrobio-workflow-vre-03-empfindlichkeit.md)


* This material contains content that is copyright of SNOMED International. Implementers of these specifications must have the appropriate SNOMED CT Affiliate license - for more information contact [https://www.snomed.org/get-snomed](https://www.snomed.org/get-snomed) or [info@snomed.org](mailto:info@snomed.org).

* [SNOMED Clinical Terms&reg; (SNOMED CT&reg;)](http://hl7.org/fhir/R4/codesystem-snomedct.html): [MII_PR_Mikrobio_Allgemeine_Bestimmung](StructureDefinition-mii-pr-mikrobio-allgemeine-bestimmung.md), [MII_PR_Mikrobio_Allgemeine_Kultur](StructureDefinition-mii-pr-mikrobio-allgemeine-kultur.md)... Show 57 more, [MII_PR_Mikrobio_Antigen_Antikoerper_Quantitativ](StructureDefinition-mii-pr-mikrobio-antigen-antikoerper-quantitativ.md), [MII_PR_Mikrobio_Aviditaet](StructureDefinition-mii-pr-mikrobio-aviditaet.md), [MII_PR_Mikrobio_Barlett_Score](StructureDefinition-mii-pr-mikrobio-barlett-score.md), [MII_PR_Mikrobio_Ct_Wert](StructureDefinition-mii-pr-mikrobio-ct-wert.md), [MII_PR_Mikrobio_Empfindlichkeit](StructureDefinition-mii-pr-mikrobio-empfindlichkeit.md), [MII_PR_Mikrobio_Keimzahl](StructureDefinition-mii-pr-mikrobio-keimzahl.md), [MII_PR_Mikrobio_MRGN_Klasse](StructureDefinition-mii-pr-mikrobio-mrgn-klasse.md), [MII_PR_Mikrobio_Mikroskopie](StructureDefinition-mii-pr-mikrobio-mikroskopie.md), [MII_PR_Mikrobio_Molekulare_Pathogenlast](StructureDefinition-mii-pr-mikrobio-molekulare-pathogenlast.md), [MII_PR_Mikrobio_Nugent_Score](StructureDefinition-mii-pr-mikrobio-nugent-score.md), [MII_PR_Mikrobio_Resistenzkategorie_Status](StructureDefinition-mii-pr-mikrobio-resistenzkategorie-status.md), [MII_PR_Mikrobio_Resistenzmechanismen_Determinanten](StructureDefinition-mii-pr-mikrobio-resistenzmechanismen-determinanten.md), [MII_PR_Mikrobio_Spezifische_Bestimmung](StructureDefinition-mii-pr-mikrobio-spezifische-bestimmung.md), [MII_PR_Mikrobio_Spezifische_Kultur](StructureDefinition-mii-pr-mikrobio-spezifische-kultur.md), [MII_PR_Mikrobio_Titer](StructureDefinition-mii-pr-mikrobio-titer.md), [MII_PR_Mikrobio_Virulenzfaktor](StructureDefinition-mii-pr-mikrobio-virulenzfaktor.md), [MII_PR_Mikrobio_Voraussichtliche_Empfindlichkeit](StructureDefinition-mii-pr-mikrobio-voraussichtliche-empfindlichkeit.md), [MII_VS_Labor_Laborergebnis_Semiquantitativ](ValueSet-mii-vs-labor-laborergebnis-semiquantitativ.md), [MII_VS_Mikrobio_Allgemeine_Bestimmung_Ergebnis_SNOMED](ValueSet-mii-vs-mikrobio-allgemeine-bestimmung-ergebnis-snomed.md), [MII_VS_Mikrobio_Allgemeine_Bestimmung_Methode_SNOMED](ValueSet-mii-vs-mikrobio-allgemeine-bestimmung-methode-snomed.md), [MII_VS_Mikrobio_Allgemeine_Kultur_Methode_SNOMED](ValueSet-mii-vs-mikrobio-allgemeine-kultur-methode-snomed.md), [MII_VS_Mikrobio_Antigen_Antikoerper_Methode_SNOMED](ValueSet-mii-vs-mikrobio-antigen-antikoerper-methode-snomed.md), [MII_VS_Mikrobio_Data_Absent_Reason](ValueSet-mii-vs-mikrobio-data-absent-reason.md), [MII_VS_Mikrobio_Detected_Not_Detected_SNOMED](ValueSet-mii-vs-mikrobio-detected-not-detected-snomed.md), [MII_VS_Mikrobio_Kultur_Ergebnis_SNOMED](ValueSet-mii-vs-mikrobio-kultur-ergebnis-snomed.md), [MII_VS_Mikrobio_Molekulare_Pathogenlast_Methode_SNOMED](ValueSet-mii-vs-mikrobio-molekulare-pathogenlast-methode-snomed.md), [MII_VS_Mikrobio_Morphologie_Ergebnis_SNOMED](ValueSet-mii-vs-mikrobio-morphologie-ergebnis-snomed.md), [MII_VS_Mikrobio_Morphologie_Methode_SNOMED](ValueSet-mii-vs-mikrobio-morphologie-methode-snomed.md), [MII_VS_Mikrobio_Organismen_SNOMEDCT](ValueSet-mii-vs-mikrobio-organismen-snomedct.md), [MII_VS_Mikrobio_Resistenzkategorie_Status_Ergebnis](ValueSet-mii-vs-mikrobio-resistenzkategorie-status-ergebnis.md), [MII_VS_Mikrobio_Resistenzmechanismen_Methode_SNOMED](ValueSet-mii-vs-mikrobio-resistenzmechanismen-methode-snomed.md), [MII_VS_Mikrobio_Spezifische_Bestimmung_Methode_SNOMED](ValueSet-mii-vs-mikrobio-spezifische-bestimmung-methode-snomed.md), [MII_VS_Mikrobio_Spezifische_Kultur_Methode_SNOMED](ValueSet-mii-vs-mikrobio-spezifische-kultur-methode-snomed.md), [MII_VS_Mikrobio_Susceptibility](ValueSet-mii-vs-mikrobio-susceptibility.md), [MII_VS_Mikrobio_Titer_Methode_SNOMED](ValueSet-mii-vs-mikrobio-titer-methode-snomed.md), [Observation/mii-exa-mikrobio-allgemeine-bestimmung](Observation-mii-exa-mikrobio-allgemeine-bestimmung.md), [Observation/mii-exa-mikrobio-allgemeine-kultur](Observation-mii-exa-mikrobio-allgemeine-kultur.md), [Observation/mii-exa-mikrobio-antigen-antikoerper-quantitativ](Observation-mii-exa-mikrobio-antigen-antikoerper-quantitativ.md), [Observation/mii-exa-mikrobio-aviditaet](Observation-mii-exa-mikrobio-aviditaet.md), [Observation/mii-exa-mikrobio-barlett-score](Observation-mii-exa-mikrobio-barlett-score.md), [Observation/mii-exa-mikrobio-ct-wert](Observation-mii-exa-mikrobio-ct-wert.md), [Observation/mii-exa-mikrobio-keimzahl](Observation-mii-exa-mikrobio-keimzahl.md), [Observation/mii-exa-mikrobio-mikroskopie](Observation-mii-exa-mikrobio-mikroskopie.md), [Observation/mii-exa-mikrobio-molekulare-pathogenlast](Observation-mii-exa-mikrobio-molekulare-pathogenlast.md), [Observation/mii-exa-mikrobio-nugent-score](Observation-mii-exa-mikrobio-nugent-score.md), [Observation/mii-exa-mikrobio-resistenzkategorie-vre-negativ](Observation-mii-exa-mikrobio-resistenzkategorie-vre-negativ.md), [Observation/mii-exa-mikrobio-resistenzkategorie-vre-positiv](Observation-mii-exa-mikrobio-resistenzkategorie-vre-positiv.md), [Observation/mii-exa-mikrobio-resistenzmechanismen-determinanten](Observation-mii-exa-mikrobio-resistenzmechanismen-determinanten.md), [Observation/mii-exa-mikrobio-spezifische-bestimmung](Observation-mii-exa-mikrobio-spezifische-bestimmung.md), [Observation/mii-exa-mikrobio-spezifische-bestimmung-vre-negativ](Observation-mii-exa-mikrobio-spezifische-bestimmung-vre-negativ.md), [Observation/mii-exa-mikrobio-spezifische-kultur](Observation-mii-exa-mikrobio-spezifische-kultur.md), [Observation/mii-exa-mikrobio-spezifische-kultur-vre-negativ](Observation-mii-exa-mikrobio-spezifische-kultur-vre-negativ.md), [Observation/mii-exa-mikrobio-titer](Observation-mii-exa-mikrobio-titer.md), [Observation/mii-exa-mikrobio-virulenzfaktor](Observation-mii-exa-mikrobio-virulenzfaktor.md), [Observation/mii-exa-mikrobio-workflow-vre-01-kultur](Observation-mii-exa-mikrobio-workflow-vre-01-kultur.md), [Observation/mii-exa-mikrobio-workflow-vre-02-identifikation](Observation-mii-exa-mikrobio-workflow-vre-02-identifikation.md) and [Specimen/mii-exa-mikrobio-probe](Specimen-mii-exa-mikrobio-probe.md)


* This material derives from the HL7 Terminology (THO). THO is copyright ©1989+ Health Level Seven International and is made available under the CC0 designation. For more licensing information see: [https://terminology.hl7.org/license.html](https://terminology.hl7.org/license.html)

* [Observation Category Codes](http://terminology.hl7.org/7.3.0/CodeSystem-observation-category.html): [MII_PR_Mikrobio_Allgemeine_Bestimmung](StructureDefinition-mii-pr-mikrobio-allgemeine-bestimmung.md), [MII_PR_Mikrobio_Allgemeine_Kultur](StructureDefinition-mii-pr-mikrobio-allgemeine-kultur.md)... Show 43 more, [MII_PR_Mikrobio_Antigen_Antikoerper_Quantitativ](StructureDefinition-mii-pr-mikrobio-antigen-antikoerper-quantitativ.md), [MII_PR_Mikrobio_Aviditaet](StructureDefinition-mii-pr-mikrobio-aviditaet.md), [MII_PR_Mikrobio_Barlett_Score](StructureDefinition-mii-pr-mikrobio-barlett-score.md), [MII_PR_Mikrobio_Ct_Wert](StructureDefinition-mii-pr-mikrobio-ct-wert.md), [MII_PR_Mikrobio_Empfindlichkeit](StructureDefinition-mii-pr-mikrobio-empfindlichkeit.md), [MII_PR_Mikrobio_Keimzahl](StructureDefinition-mii-pr-mikrobio-keimzahl.md), [MII_PR_Mikrobio_MRGN_Klasse](StructureDefinition-mii-pr-mikrobio-mrgn-klasse.md), [MII_PR_Mikrobio_Mikroskopie](StructureDefinition-mii-pr-mikrobio-mikroskopie.md), [MII_PR_Mikrobio_Molekulare_Pathogenlast](StructureDefinition-mii-pr-mikrobio-molekulare-pathogenlast.md), [MII_PR_Mikrobio_Nugent_Score](StructureDefinition-mii-pr-mikrobio-nugent-score.md), [MII_PR_Mikrobio_Resistenzkategorie_Status](StructureDefinition-mii-pr-mikrobio-resistenzkategorie-status.md), [MII_PR_Mikrobio_Resistenzmechanismen_Determinanten](StructureDefinition-mii-pr-mikrobio-resistenzmechanismen-determinanten.md), [MII_PR_Mikrobio_Spezifische_Bestimmung](StructureDefinition-mii-pr-mikrobio-spezifische-bestimmung.md), [MII_PR_Mikrobio_Spezifische_Kultur](StructureDefinition-mii-pr-mikrobio-spezifische-kultur.md), [MII_PR_Mikrobio_Titer](StructureDefinition-mii-pr-mikrobio-titer.md), [MII_PR_Mikrobio_Virulenzfaktor](StructureDefinition-mii-pr-mikrobio-virulenzfaktor.md), [MII_PR_Mikrobio_Voraussichtliche_Empfindlichkeit](StructureDefinition-mii-pr-mikrobio-voraussichtliche-empfindlichkeit.md), [Observation/mii-exa-mikrobio-allgemeine-bestimmung](Observation-mii-exa-mikrobio-allgemeine-bestimmung.md), [Observation/mii-exa-mikrobio-allgemeine-kultur](Observation-mii-exa-mikrobio-allgemeine-kultur.md), [Observation/mii-exa-mikrobio-antigen-antikoerper-quantitativ](Observation-mii-exa-mikrobio-antigen-antikoerper-quantitativ.md), [Observation/mii-exa-mikrobio-aviditaet](Observation-mii-exa-mikrobio-aviditaet.md), [Observation/mii-exa-mikrobio-barlett-score](Observation-mii-exa-mikrobio-barlett-score.md), [Observation/mii-exa-mikrobio-ct-wert](Observation-mii-exa-mikrobio-ct-wert.md), [Observation/mii-exa-mikrobio-empfindlichkeit](Observation-mii-exa-mikrobio-empfindlichkeit.md), [Observation/mii-exa-mikrobio-keimzahl](Observation-mii-exa-mikrobio-keimzahl.md), [Observation/mii-exa-mikrobio-mikroskopie](Observation-mii-exa-mikrobio-mikroskopie.md), [Observation/mii-exa-mikrobio-molekulare-pathogenlast](Observation-mii-exa-mikrobio-molekulare-pathogenlast.md), [Observation/mii-exa-mikrobio-mrgn-klasse](Observation-mii-exa-mikrobio-mrgn-klasse.md), [Observation/mii-exa-mikrobio-mrgn-klasse-negativ](Observation-mii-exa-mikrobio-mrgn-klasse-negativ.md), [Observation/mii-exa-mikrobio-nugent-score](Observation-mii-exa-mikrobio-nugent-score.md), [Observation/mii-exa-mikrobio-resistenzkategorie-vre-negativ](Observation-mii-exa-mikrobio-resistenzkategorie-vre-negativ.md), [Observation/mii-exa-mikrobio-resistenzkategorie-vre-positiv](Observation-mii-exa-mikrobio-resistenzkategorie-vre-positiv.md), [Observation/mii-exa-mikrobio-resistenzmechanismen-determinanten](Observation-mii-exa-mikrobio-resistenzmechanismen-determinanten.md), [Observation/mii-exa-mikrobio-spezifische-bestimmung](Observation-mii-exa-mikrobio-spezifische-bestimmung.md), [Observation/mii-exa-mikrobio-spezifische-bestimmung-vre-negativ](Observation-mii-exa-mikrobio-spezifische-bestimmung-vre-negativ.md), [Observation/mii-exa-mikrobio-spezifische-kultur](Observation-mii-exa-mikrobio-spezifische-kultur.md), [Observation/mii-exa-mikrobio-spezifische-kultur-vre-negativ](Observation-mii-exa-mikrobio-spezifische-kultur-vre-negativ.md), [Observation/mii-exa-mikrobio-titer](Observation-mii-exa-mikrobio-titer.md), [Observation/mii-exa-mikrobio-virulenzfaktor](Observation-mii-exa-mikrobio-virulenzfaktor.md), [Observation/mii-exa-mikrobio-voraussichtliche-empfindlichkeit](Observation-mii-exa-mikrobio-voraussichtliche-empfindlichkeit.md), [Observation/mii-exa-mikrobio-workflow-vre-01-kultur](Observation-mii-exa-mikrobio-workflow-vre-01-kultur.md), [Observation/mii-exa-mikrobio-workflow-vre-02-identifikation](Observation-mii-exa-mikrobio-workflow-vre-02-identifikation.md) and [Observation/mii-exa-mikrobio-workflow-vre-03-empfindlichkeit](Observation-mii-exa-mikrobio-workflow-vre-03-empfindlichkeit.md)
* [diagnosticServiceSectionId](http://terminology.hl7.org/7.3.0/CodeSystem-v2-0074.html): [DiagnosticReport/mii-exa-mikrobio-diagnostic-report](DiagnosticReport-mii-exa-mikrobio-diagnostic-report.md), [MII_PR_Mikrobio_Allgemeine_Bestimmung](StructureDefinition-mii-pr-mikrobio-allgemeine-bestimmung.md)... Show 45 more, [MII_PR_Mikrobio_Allgemeine_Kultur](StructureDefinition-mii-pr-mikrobio-allgemeine-kultur.md), [MII_PR_Mikrobio_Antigen_Antikoerper_Quantitativ](StructureDefinition-mii-pr-mikrobio-antigen-antikoerper-quantitativ.md), [MII_PR_Mikrobio_Aviditaet](StructureDefinition-mii-pr-mikrobio-aviditaet.md), [MII_PR_Mikrobio_Barlett_Score](StructureDefinition-mii-pr-mikrobio-barlett-score.md), [MII_PR_Mikrobio_Ct_Wert](StructureDefinition-mii-pr-mikrobio-ct-wert.md), [MII_PR_Mikrobio_Diagnostic_Report](StructureDefinition-mii-pr-mikrobio-diagnostic-report.md), [MII_PR_Mikrobio_Empfindlichkeit](StructureDefinition-mii-pr-mikrobio-empfindlichkeit.md), [MII_PR_Mikrobio_Keimzahl](StructureDefinition-mii-pr-mikrobio-keimzahl.md), [MII_PR_Mikrobio_MRGN_Klasse](StructureDefinition-mii-pr-mikrobio-mrgn-klasse.md), [MII_PR_Mikrobio_Mikroskopie](StructureDefinition-mii-pr-mikrobio-mikroskopie.md), [MII_PR_Mikrobio_Molekulare_Pathogenlast](StructureDefinition-mii-pr-mikrobio-molekulare-pathogenlast.md), [MII_PR_Mikrobio_Nugent_Score](StructureDefinition-mii-pr-mikrobio-nugent-score.md), [MII_PR_Mikrobio_Resistenzkategorie_Status](StructureDefinition-mii-pr-mikrobio-resistenzkategorie-status.md), [MII_PR_Mikrobio_Resistenzmechanismen_Determinanten](StructureDefinition-mii-pr-mikrobio-resistenzmechanismen-determinanten.md), [MII_PR_Mikrobio_Spezifische_Bestimmung](StructureDefinition-mii-pr-mikrobio-spezifische-bestimmung.md), [MII_PR_Mikrobio_Spezifische_Kultur](StructureDefinition-mii-pr-mikrobio-spezifische-kultur.md), [MII_PR_Mikrobio_Titer](StructureDefinition-mii-pr-mikrobio-titer.md), [MII_PR_Mikrobio_Virulenzfaktor](StructureDefinition-mii-pr-mikrobio-virulenzfaktor.md), [MII_PR_Mikrobio_Voraussichtliche_Empfindlichkeit](StructureDefinition-mii-pr-mikrobio-voraussichtliche-empfindlichkeit.md), [Observation/mii-exa-mikrobio-allgemeine-bestimmung](Observation-mii-exa-mikrobio-allgemeine-bestimmung.md), [Observation/mii-exa-mikrobio-allgemeine-kultur](Observation-mii-exa-mikrobio-allgemeine-kultur.md), [Observation/mii-exa-mikrobio-antigen-antikoerper-quantitativ](Observation-mii-exa-mikrobio-antigen-antikoerper-quantitativ.md), [Observation/mii-exa-mikrobio-aviditaet](Observation-mii-exa-mikrobio-aviditaet.md), [Observation/mii-exa-mikrobio-barlett-score](Observation-mii-exa-mikrobio-barlett-score.md), [Observation/mii-exa-mikrobio-ct-wert](Observation-mii-exa-mikrobio-ct-wert.md), [Observation/mii-exa-mikrobio-empfindlichkeit](Observation-mii-exa-mikrobio-empfindlichkeit.md), [Observation/mii-exa-mikrobio-keimzahl](Observation-mii-exa-mikrobio-keimzahl.md), [Observation/mii-exa-mikrobio-mikroskopie](Observation-mii-exa-mikrobio-mikroskopie.md), [Observation/mii-exa-mikrobio-molekulare-pathogenlast](Observation-mii-exa-mikrobio-molekulare-pathogenlast.md), [Observation/mii-exa-mikrobio-mrgn-klasse](Observation-mii-exa-mikrobio-mrgn-klasse.md), [Observation/mii-exa-mikrobio-mrgn-klasse-negativ](Observation-mii-exa-mikrobio-mrgn-klasse-negativ.md), [Observation/mii-exa-mikrobio-nugent-score](Observation-mii-exa-mikrobio-nugent-score.md), [Observation/mii-exa-mikrobio-resistenzkategorie-vre-negativ](Observation-mii-exa-mikrobio-resistenzkategorie-vre-negativ.md), [Observation/mii-exa-mikrobio-resistenzkategorie-vre-positiv](Observation-mii-exa-mikrobio-resistenzkategorie-vre-positiv.md), [Observation/mii-exa-mikrobio-resistenzmechanismen-determinanten](Observation-mii-exa-mikrobio-resistenzmechanismen-determinanten.md), [Observation/mii-exa-mikrobio-spezifische-bestimmung](Observation-mii-exa-mikrobio-spezifische-bestimmung.md), [Observation/mii-exa-mikrobio-spezifische-bestimmung-vre-negativ](Observation-mii-exa-mikrobio-spezifische-bestimmung-vre-negativ.md), [Observation/mii-exa-mikrobio-spezifische-kultur](Observation-mii-exa-mikrobio-spezifische-kultur.md), [Observation/mii-exa-mikrobio-spezifische-kultur-vre-negativ](Observation-mii-exa-mikrobio-spezifische-kultur-vre-negativ.md), [Observation/mii-exa-mikrobio-titer](Observation-mii-exa-mikrobio-titer.md), [Observation/mii-exa-mikrobio-virulenzfaktor](Observation-mii-exa-mikrobio-virulenzfaktor.md), [Observation/mii-exa-mikrobio-voraussichtliche-empfindlichkeit](Observation-mii-exa-mikrobio-voraussichtliche-empfindlichkeit.md), [Observation/mii-exa-mikrobio-workflow-vre-01-kultur](Observation-mii-exa-mikrobio-workflow-vre-01-kultur.md), [Observation/mii-exa-mikrobio-workflow-vre-02-identifikation](Observation-mii-exa-mikrobio-workflow-vre-02-identifikation.md) and [Observation/mii-exa-mikrobio-workflow-vre-03-empfindlichkeit](Observation-mii-exa-mikrobio-workflow-vre-03-empfindlichkeit.md)
* [identifierType](http://terminology.hl7.org/7.3.0/CodeSystem-v2-0203.html): [DiagnosticReport/mii-exa-mikrobio-diagnostic-report](DiagnosticReport-mii-exa-mikrobio-diagnostic-report.md), [MII_PR_Mikrobio_Allgemeine_Bestimmung](StructureDefinition-mii-pr-mikrobio-allgemeine-bestimmung.md)... Show 45 more, [MII_PR_Mikrobio_Allgemeine_Kultur](StructureDefinition-mii-pr-mikrobio-allgemeine-kultur.md), [MII_PR_Mikrobio_Antigen_Antikoerper_Quantitativ](StructureDefinition-mii-pr-mikrobio-antigen-antikoerper-quantitativ.md), [MII_PR_Mikrobio_Aviditaet](StructureDefinition-mii-pr-mikrobio-aviditaet.md), [MII_PR_Mikrobio_Barlett_Score](StructureDefinition-mii-pr-mikrobio-barlett-score.md), [MII_PR_Mikrobio_Ct_Wert](StructureDefinition-mii-pr-mikrobio-ct-wert.md), [MII_PR_Mikrobio_Diagnostic_Report](StructureDefinition-mii-pr-mikrobio-diagnostic-report.md), [MII_PR_Mikrobio_Empfindlichkeit](StructureDefinition-mii-pr-mikrobio-empfindlichkeit.md), [MII_PR_Mikrobio_Keimzahl](StructureDefinition-mii-pr-mikrobio-keimzahl.md), [MII_PR_Mikrobio_MRGN_Klasse](StructureDefinition-mii-pr-mikrobio-mrgn-klasse.md), [MII_PR_Mikrobio_Mikroskopie](StructureDefinition-mii-pr-mikrobio-mikroskopie.md), [MII_PR_Mikrobio_Molekulare_Pathogenlast](StructureDefinition-mii-pr-mikrobio-molekulare-pathogenlast.md), [MII_PR_Mikrobio_Nugent_Score](StructureDefinition-mii-pr-mikrobio-nugent-score.md), [MII_PR_Mikrobio_Resistenzkategorie_Status](StructureDefinition-mii-pr-mikrobio-resistenzkategorie-status.md), [MII_PR_Mikrobio_Resistenzmechanismen_Determinanten](StructureDefinition-mii-pr-mikrobio-resistenzmechanismen-determinanten.md), [MII_PR_Mikrobio_Spezifische_Bestimmung](StructureDefinition-mii-pr-mikrobio-spezifische-bestimmung.md), [MII_PR_Mikrobio_Spezifische_Kultur](StructureDefinition-mii-pr-mikrobio-spezifische-kultur.md), [MII_PR_Mikrobio_Titer](StructureDefinition-mii-pr-mikrobio-titer.md), [MII_PR_Mikrobio_Virulenzfaktor](StructureDefinition-mii-pr-mikrobio-virulenzfaktor.md), [MII_PR_Mikrobio_Voraussichtliche_Empfindlichkeit](StructureDefinition-mii-pr-mikrobio-voraussichtliche-empfindlichkeit.md), [Observation/mii-exa-mikrobio-allgemeine-bestimmung](Observation-mii-exa-mikrobio-allgemeine-bestimmung.md), [Observation/mii-exa-mikrobio-allgemeine-kultur](Observation-mii-exa-mikrobio-allgemeine-kultur.md), [Observation/mii-exa-mikrobio-antigen-antikoerper-quantitativ](Observation-mii-exa-mikrobio-antigen-antikoerper-quantitativ.md), [Observation/mii-exa-mikrobio-aviditaet](Observation-mii-exa-mikrobio-aviditaet.md), [Observation/mii-exa-mikrobio-barlett-score](Observation-mii-exa-mikrobio-barlett-score.md), [Observation/mii-exa-mikrobio-ct-wert](Observation-mii-exa-mikrobio-ct-wert.md), [Observation/mii-exa-mikrobio-empfindlichkeit](Observation-mii-exa-mikrobio-empfindlichkeit.md), [Observation/mii-exa-mikrobio-keimzahl](Observation-mii-exa-mikrobio-keimzahl.md), [Observation/mii-exa-mikrobio-mikroskopie](Observation-mii-exa-mikrobio-mikroskopie.md), [Observation/mii-exa-mikrobio-molekulare-pathogenlast](Observation-mii-exa-mikrobio-molekulare-pathogenlast.md), [Observation/mii-exa-mikrobio-mrgn-klasse](Observation-mii-exa-mikrobio-mrgn-klasse.md), [Observation/mii-exa-mikrobio-mrgn-klasse-negativ](Observation-mii-exa-mikrobio-mrgn-klasse-negativ.md), [Observation/mii-exa-mikrobio-nugent-score](Observation-mii-exa-mikrobio-nugent-score.md), [Observation/mii-exa-mikrobio-resistenzkategorie-vre-negativ](Observation-mii-exa-mikrobio-resistenzkategorie-vre-negativ.md), [Observation/mii-exa-mikrobio-resistenzkategorie-vre-positiv](Observation-mii-exa-mikrobio-resistenzkategorie-vre-positiv.md), [Observation/mii-exa-mikrobio-resistenzmechanismen-determinanten](Observation-mii-exa-mikrobio-resistenzmechanismen-determinanten.md), [Observation/mii-exa-mikrobio-spezifische-bestimmung](Observation-mii-exa-mikrobio-spezifische-bestimmung.md), [Observation/mii-exa-mikrobio-spezifische-bestimmung-vre-negativ](Observation-mii-exa-mikrobio-spezifische-bestimmung-vre-negativ.md), [Observation/mii-exa-mikrobio-spezifische-kultur](Observation-mii-exa-mikrobio-spezifische-kultur.md), [Observation/mii-exa-mikrobio-spezifische-kultur-vre-negativ](Observation-mii-exa-mikrobio-spezifische-kultur-vre-negativ.md), [Observation/mii-exa-mikrobio-titer](Observation-mii-exa-mikrobio-titer.md), [Observation/mii-exa-mikrobio-virulenzfaktor](Observation-mii-exa-mikrobio-virulenzfaktor.md), [Observation/mii-exa-mikrobio-voraussichtliche-empfindlichkeit](Observation-mii-exa-mikrobio-voraussichtliche-empfindlichkeit.md), [Observation/mii-exa-mikrobio-workflow-vre-01-kultur](Observation-mii-exa-mikrobio-workflow-vre-01-kultur.md), [Observation/mii-exa-mikrobio-workflow-vre-02-identifikation](Observation-mii-exa-mikrobio-workflow-vre-02-identifikation.md) and [Observation/mii-exa-mikrobio-workflow-vre-03-empfindlichkeit](Observation-mii-exa-mikrobio-workflow-vre-03-empfindlichkeit.md)
* [ObservationInterpretation](http://terminology.hl7.org/7.3.0/CodeSystem-v3-ObservationInterpretation.html): [MII_PR_Mikrobio_Aviditaet](StructureDefinition-mii-pr-mikrobio-aviditaet.md), [MII_PR_Mikrobio_Empfindlichkeit](StructureDefinition-mii-pr-mikrobio-empfindlichkeit.md)... Show 8 more, [MII_PR_Mikrobio_Voraussichtliche_Empfindlichkeit](StructureDefinition-mii-pr-mikrobio-voraussichtliche-empfindlichkeit.md), [MII_VS_Mikrobio_Aviditaet_Ergebnis](ValueSet-mii-vs-mikrobio-aviditaet-ergebnis.md), [MII_VS_Mikrobio_Susceptibility](ValueSet-mii-vs-mikrobio-susceptibility.md), [MII_VS_Mikrobio_Voraussichtliche_Empfindlichkeit](ValueSet-mii-vs-mikrobio-voraussichtliche-empfindlichkeit.md), [Observation/mii-exa-mikrobio-aviditaet](Observation-mii-exa-mikrobio-aviditaet.md), [Observation/mii-exa-mikrobio-empfindlichkeit](Observation-mii-exa-mikrobio-empfindlichkeit.md), [Observation/mii-exa-mikrobio-voraussichtliche-empfindlichkeit](Observation-mii-exa-mikrobio-voraussichtliche-empfindlichkeit.md) and [Observation/mii-exa-mikrobio-workflow-vre-03-empfindlichkeit](Observation-mii-exa-mikrobio-workflow-vre-03-empfindlichkeit.md)


### IG Parameter Settings and Expansion Parameters

Expansion parameters are query parameters that can be passed to a `ValueSet` `$expand` operation to control how the ValueSet is expanded — that is, how the full list of codes is generated from the ValueSet definition. The [IG Parameters](https://hl7.org/fhir/tools/en/CodeSystem-ig-parameters.html) used for this IG are declared in [`sushi-config.yaml`](https://github.com/medizininformatik-initiative/kerndatensatzmodul-mikrobiologie/blob/main/sushi-config.yaml) (`parameters:`). A module that pins its expansion parameters through a CRMI manifest additionally links the generated `Parameters` resource from here (see the commented manifest blocks in `sushi-config.yaml` and the Metadata Overview page, if the module keeps it).



## Resource Content

```json
{
  "resourceType" : "ImplementationGuide",
  "id" : "mii-ig-mikrobiologie",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-shareableimplementationguide",
    "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-publishableimplementationguide",
    "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-implementationguide"]
  },
  "language" : "en",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/cqf-knowledgeCapability",
    "valueCode" : "shareable"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/cqf-knowledgeCapability",
    "valueCode" : "publishable"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-versionPolicy",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/artifact-version-policy-codes",
        "code" : "package",
        "display" : "Package"
      }]
    }
  },
  {
    "extension" : [{
      "url" : "packageId",
      "valueId" : "de.medizininformatikinitiative.kerndatensatz.mikrobiologie"
    },
    {
      "url" : "version",
      "valueString" : "2027.0.0-alpha.6"
    },
    {
      "url" : "uri",
      "valueUri" : "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio"
    }],
    "url" : "http://hl7.org/fhir/StructureDefinition/package-source"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/resource-effectivePeriod",
    "valuePeriod" : {
      "start" : "2027"
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-editor",
    "valueContactDetail" : {
      "name" : "Taskforce Core Data Set"
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-reviewer",
    "valueContactDetail" : {
      "name" : "Interoperability Working Group",
      "telecom" : [{
        "system" : "url",
        "value" : "https://www.medizininformatik-initiative.de/en/collaboration/interoperability-working-group"
      }]
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-reviewer",
    "valueContactDetail" : {
      "name" : "National Steering Committee",
      "telecom" : [{
        "system" : "url",
        "value" : "https://www.medizininformatik-initiative.de/en/collaboration/national-steering-committee"
      }]
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-endorser",
    "valueContactDetail" : {
      "name" : "Interoperability Working Group",
      "telecom" : [{
        "system" : "url",
        "value" : "https://www.medizininformatik-initiative.de/en/collaboration/interoperability-working-group"
      }]
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-endorser",
    "valueContactDetail" : {
      "name" : "National Steering Committee",
      "telecom" : [{
        "system" : "url",
        "value" : "https://www.medizininformatik-initiative.de/en/collaboration/national-steering-committee"
      }]
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/cqf-expansionParameters",
    "valueReference" : {
      "reference" : "Parameters/mii-param-mikrobio-manifest"
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-versionAlgorithm",
    "valueCoding" : {
      "system" : "http://hl7.org/fhir/version-algorithm",
      "code" : "semver"
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-usage",
    "valueMarkdown" : "Use this ImplementationGuide resource as a computable definition of all the parts of the corresponding module of the Medical Informatics Initiative core data set."
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-purpose",
    "valueMarkdown" : "Provide the computable publication unit for the MII Core Dataset Microbiology module, enabling implementers to discover, validate, version, and apply the specification consistently."
  }],
  "url" : "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/ImplementationGuide/mii-ig-mikrobiologie",
  "version" : "2027.0.0-alpha.6",
  "name" : "MII_IG_Mikrobiologie",
  "title" : "MII Implementation Guide Microbiology",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-09-02T12:45:31+00:00",
  "publisher" : "NUM-DIZ",
  "_publisher" : {
    "extension" : [{
      "extension" : [{
        "url" : "lang",
        "valueCode" : "de"
      },
      {
        "url" : "content",
        "valueString" : "NUM-DIZ"
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/translation"
    }]
  },
  "contact" : [{
    "name" : "NUM-DIZ",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.netzwerk-universitaetsmedizin.de"
    }]
  }],
  "description" : "Core Dataset extension module Microbiology of the Medical Informatics Initiative: FHIR profiles for microbiological findings — culture, identification, susceptibility testing, molecular and antigen/antibody diagnostics.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "packageId" : "de.medizininformatikinitiative.kerndatensatz.mikrobiologie",
  "license" : "CC-BY-4.0",
  "fhirVersion" : ["4.0.1"],
  "dependsOn" : [{
    "id" : "hl7tx",
    "extension" : [{
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/implementationguide-dependency-comment",
      "valueMarkdown" : "Automatically added as a dependency - all IGs depend on HL7 Terminology"
    }],
    "uri" : "http://terminology.hl7.org/ImplementationGuide/hl7.terminology",
    "packageId" : "hl7.terminology.r4",
    "version" : "7.3.0"
  },
  {
    "id" : "hl7ext",
    "extension" : [{
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/implementationguide-dependency-comment",
      "valueMarkdown" : "Automatically added as a dependency - all IGs depend on the HL7 Extension Pack"
    }],
    "uri" : "http://hl7.org/fhir/extensions/ImplementationGuide/hl7.fhir.uv.extensions",
    "packageId" : "hl7.fhir.uv.extensions.r4",
    "version" : "5.3.0"
  },
  {
    "id" : "de_medizininformatikinitiative_kerndatensatz_laborbefund",
    "uri" : "http://fhir.org/packages/de.medizininformatikinitiative.kerndatensatz.laborbefund/ImplementationGuide/de.medizininformatikinitiative.kerndatensatz.laborbefund",
    "packageId" : "de.medizininformatikinitiative.kerndatensatz.laborbefund",
    "version" : "2026.0.3"
  },
  {
    "id" : "hl7_fhir_uv_crmi",
    "uri" : "http://hl7.org/fhir/uv/crmi/ImplementationGuide/hl7.fhir.uv.crmi",
    "packageId" : "hl7.fhir.uv.crmi",
    "version" : "2.0.0"
  },
  {
    "id" : "hl7_fhir_uv_xver_r5_r4",
    "uri" : "http://hl7.org/fhir/uv/xver/ImplementationGuide/hl7.fhir.uv.xver-r5.r4",
    "packageId" : "hl7.fhir.uv.xver-r5.r4",
    "version" : "0.1.0"
  },
  {
    "id" : "hl7_fhir_uv_ips",
    "uri" : "http://hl7.org/fhir/uv/ips/ImplementationGuide/hl7.fhir.uv.ips",
    "packageId" : "hl7.fhir.uv.ips",
    "version" : "1.1.0"
  }],
  "definition" : {
    "extension" : [{
      "extension" : [{
        "url" : "code",
        "valueString" : "copyrightyear"
      },
      {
        "url" : "value",
        "valueString" : "2026+"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "releaselabel"
      },
      {
        "url" : "value",
        "valueString" : "2026.0.0-alpha.6"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "i18n-default-lang"
      },
      {
        "url" : "value",
        "valueString" : "en"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "i18n-lang"
      },
      {
        "url" : "value",
        "valueString" : "de"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "translation-sources"
      },
      {
        "url" : "value",
        "valueString" : "input/translations/de"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "excludexml"
      },
      {
        "url" : "value",
        "valueString" : "false"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "excludejson"
      },
      {
        "url" : "value",
        "valueString" : "false"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "excludettl"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "excludemap"
      },
      {
        "url" : "value",
        "valueString" : "false"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "logging"
      },
      {
        "url" : "value",
        "valueString" : "init"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "logging"
      },
      {
        "url" : "value",
        "valueString" : "progress"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "logging"
      },
      {
        "url" : "value",
        "valueString" : "context"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "logging"
      },
      {
        "url" : "value",
        "valueString" : "html"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "logging"
      },
      {
        "url" : "value",
        "valueString" : "tx"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "pin-canonicals"
      },
      {
        "url" : "value",
        "valueString" : "pin-all"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "path-expansion-params"
      },
      {
        "url" : "value",
        "valueString" : "../../input/resources/Parameters-expansion-manifest.json"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "pin-manifest"
      },
      {
        "url" : "value",
        "valueString" : "mii-param-mikrobio-manifest"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "suppress-mappings"
      },
      {
        "url" : "value",
        "valueString" : "http://hl7.org/v3"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "suppress-mappings"
      },
      {
        "url" : "value",
        "valueString" : "http://hl7.org/v3/cda"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-Observation.triggeredBy"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/CapabilityStatement/metadata"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/SearchParameter/Observation-interpretation"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/SearchParameter/Observation-norm-kategorie"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/SearchParameter/Observation-titer"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/SearchParameter/Observation-triggered-by"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-lm-mikrobio-logical-model-de"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "autoload-resources"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "path-liquid"
      },
      {
        "url" : "value",
        "valueString" : "template/liquid"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "path-liquid"
      },
      {
        "url" : "value",
        "valueString" : "input/liquid"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "path-qa"
      },
      {
        "url" : "value",
        "valueString" : "temp/qa"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "path-temp"
      },
      {
        "url" : "value",
        "valueString" : "temp/pages"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "path-output"
      },
      {
        "url" : "value",
        "valueString" : "output"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "path-suppressed-warnings"
      },
      {
        "url" : "value",
        "valueString" : "input/ignoreWarnings.txt"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "path-history"
      },
      {
        "url" : "value",
        "valueString" : "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/history.html"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "template-html"
      },
      {
        "url" : "value",
        "valueString" : "template-page.html"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "template-md"
      },
      {
        "url" : "value",
        "valueString" : "template-page-md.html"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-contact"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-context"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-copyright"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-jurisdiction"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-license"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-publisher"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-version"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-wg"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "active-tables"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "fmm-definition"
      },
      {
        "url" : "value",
        "valueString" : "http://hl7.org/fhir/versions.html#maturity"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "propagate-status"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "excludelogbinaryformat"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "tabbed-snapshots"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "wantGen-ttl"
      },
      {
        "url" : "value",
        "valueString" : "false"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "wantGen-ttl-html"
      },
      {
        "url" : "value",
        "valueString" : "false"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/expansion-parameters",
      "valueReference" : {
        "reference" : "Parameters/expansion-parameters"
      }
    },
    {
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-internal-dependency",
      "valueCode" : "hl7.fhir.uv.tools.r4#1.1.2"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "copyrightyear"
      },
      {
        "url" : "value",
        "valueString" : "2026+"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "releaselabel"
      },
      {
        "url" : "value",
        "valueString" : "2026.0.0-alpha.6"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "i18n-default-lang"
      },
      {
        "url" : "value",
        "valueString" : "en"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "i18n-lang"
      },
      {
        "url" : "value",
        "valueString" : "de"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "translation-sources"
      },
      {
        "url" : "value",
        "valueString" : "input/translations/de"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "excludexml"
      },
      {
        "url" : "value",
        "valueString" : "false"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "excludejson"
      },
      {
        "url" : "value",
        "valueString" : "false"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "excludettl"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "excludemap"
      },
      {
        "url" : "value",
        "valueString" : "false"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "logging"
      },
      {
        "url" : "value",
        "valueString" : "init"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "logging"
      },
      {
        "url" : "value",
        "valueString" : "progress"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "logging"
      },
      {
        "url" : "value",
        "valueString" : "context"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "logging"
      },
      {
        "url" : "value",
        "valueString" : "html"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "logging"
      },
      {
        "url" : "value",
        "valueString" : "tx"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "pin-canonicals"
      },
      {
        "url" : "value",
        "valueString" : "pin-all"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-expansion-params"
      },
      {
        "url" : "value",
        "valueString" : "../../input/resources/Parameters-expansion-manifest.json"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "pin-manifest"
      },
      {
        "url" : "value",
        "valueString" : "mii-param-mikrobio-manifest"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "suppress-mappings"
      },
      {
        "url" : "value",
        "valueString" : "http://hl7.org/v3"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "suppress-mappings"
      },
      {
        "url" : "value",
        "valueString" : "http://hl7.org/v3/cda"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-Observation.triggeredBy"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/CapabilityStatement/metadata"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/SearchParameter/Observation-interpretation"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/SearchParameter/Observation-norm-kategorie"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/SearchParameter/Observation-titer"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/SearchParameter/Observation-triggered-by"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-lm-mikrobio-logical-model-de"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "autoload-resources"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-liquid"
      },
      {
        "url" : "value",
        "valueString" : "template/liquid"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-liquid"
      },
      {
        "url" : "value",
        "valueString" : "input/liquid"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-qa"
      },
      {
        "url" : "value",
        "valueString" : "temp/qa"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-temp"
      },
      {
        "url" : "value",
        "valueString" : "temp/pages"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-output"
      },
      {
        "url" : "value",
        "valueString" : "output"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-suppressed-warnings"
      },
      {
        "url" : "value",
        "valueString" : "input/ignoreWarnings.txt"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-history"
      },
      {
        "url" : "value",
        "valueString" : "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/history.html"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "template-html"
      },
      {
        "url" : "value",
        "valueString" : "template-page.html"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "template-md"
      },
      {
        "url" : "value",
        "valueString" : "template-page-md.html"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-contact"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-context"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-copyright"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-jurisdiction"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-license"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-publisher"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-version"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-wg"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "active-tables"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "fmm-definition"
      },
      {
        "url" : "value",
        "valueString" : "http://hl7.org/fhir/versions.html#maturity"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "propagate-status"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "excludelogbinaryformat"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "tabbed-snapshots"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "wantGen-ttl"
      },
      {
        "url" : "value",
        "valueString" : "false"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "wantGen-ttl-html"
      },
      {
        "url" : "value",
        "valueString" : "false"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    }],
    "resource" : [{
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CapabilityStatement"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CapabilityStatement-mii-cps-mikrobio-metadata.html"
      }],
      "reference" : {
        "reference" : "CapabilityStatement/mii-cps-mikrobio-metadata"
      },
      "name" : "MII CPS Mikrobio Metadata",
      "description" : "CapabilityStatement für das MII Mikrobiologie Modul 2027.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-mii-cs-mikrobio-mrgn-ergebnis.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/mii-cs-mikrobio-mrgn-ergebnis"
      },
      "name" : "MII CS Mikrobio MRGN Ergebnis",
      "description" : "CodeSystem für Ergebnisse der MRGN-Klassifikation, die sich nicht über LOINC abbilden lassen. Die LOINC-AnswerList LL6195-3 zu 99780-9 enthält ausschließlich 2MRGN, 3MRGN und 4MRGN und damit keinen Negativwert.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-mii-cs-mikrobio-resistenzkategorie.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/mii-cs-mikrobio-resistenzkategorie"
      },
      "name" : "MII CS Mikrobio Resistenzkategorie",
      "description" : "Untersuchungscodes (Observation.code) für die Bewertung eines nachgewiesenen Erregers hinsichtlich einer definierten Resistenzkategorie. Jeder Code benennt die bewertete Kategorie; das Ergebnis der Bewertung steht in Observation.value.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-mii-cs-mikrobio-susceptibility-norm.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/mii-cs-mikrobio-susceptibility-norm"
      },
      "name" : "MII CS Mikrobio Susceptibility Norm",
      "description" : "CodeSystem zur Kodierung von Normen für die Interpretation der Empfindlichkeit von Mikroorganismen gegenüber antimikrobiellen Substanzen.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-ex-mikrobio-empfindlichkeit-norm.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-ex-mikrobio-empfindlichkeit-norm"
      },
      "name" : "MII EX Mikrobio Empfindlichkeit Norm",
      "description" : "Normative susceptibility interpretation metadata (system, version, category).",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-mikrobio-mrgn-klasse-negativ.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-mikrobio-mrgn-klasse-negativ"
      },
      "name" : "MII EXA Mikrobio MRGN Klasse negativ",
      "description" : "Identifiziertes gramnegatives Isolat, dessen Empfindlichkeitsbefunde bewertet wurden und das keiner MRGN-Klasse zuzuordnen ist.",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-mrgn-klasse"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Patient"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Patient-mii-exa-mikrobio-patient.html"
      }],
      "reference" : {
        "reference" : "Patient/mii-exa-mikrobio-patient"
      },
      "name" : "MII EXA Mikrobio Patient",
      "description" : "Minimales Subject für die Beispiele dieses Moduls. Kein Profil, keine Demografie — Patient wird vom Personen-Modul verantwortet.",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Specimen"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Specimen-mii-exa-mikrobio-probe.html"
      }],
      "reference" : {
        "reference" : "Specimen/mii-exa-mikrobio-probe"
      },
      "name" : "MII EXA Mikrobio Probe",
      "description" : "Generisches Probenmaterial für die Beispiele dieses Moduls. Der Typ ist bewusst unspezifisch, weil dieselbe Probe Beispiele unterschiedlicher Untersuchungsarten trägt.",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-mikrobio-resistenzkategorie-vre-negativ.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-mikrobio-resistenzkategorie-vre-negativ"
      },
      "name" : "MII EXA Mikrobio Resistenzkategorie VRE negativ",
      "description" : "Identifizierter Enterococcus ohne Vancomycinresistenz: VRE-Status Negative.",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-resistenzkategorie-status"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-mikrobio-resistenzkategorie-vre-positiv.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-mikrobio-resistenzkategorie-vre-positiv"
      },
      "name" : "MII EXA Mikrobio Resistenzkategorie VRE positiv",
      "description" : "Identifizierter Enterococcus faecium mit nachgewiesener Vancomycinresistenz: VRE-Status Positive, abgeleitet aus Identifikation und Empfindlichkeitstestung.",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-resistenzkategorie-status"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-mikrobio-spezifische-bestimmung-vre-negativ.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-mikrobio-spezifische-bestimmung-vre-negativ"
      },
      "name" : "MII EXA Mikrobio Spezifische Bestimmung VRE negativ",
      "description" : "Negativer VRE-Nachweis: Der Test auf vancomycinresistente Enterokokken ist negativ.",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-spezifische-bestimmung"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-mikrobio-spezifische-kultur-vre-negativ.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-mikrobio-spezifische-kultur-vre-negativ"
      },
      "name" : "MII EXA Mikrobio Spezifische Kultur VRE negativ",
      "description" : "Negativer VRE-Nachweis mittels erregerspezifischer Kultur: kein Wachstum vancomycinresistenter Enterokokken.",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-spezifische-kultur"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-mikrobio-workflow-vre-01-kultur.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-mikrobio-workflow-vre-01-kultur"
      },
      "name" : "MII EXA Mikrobio Workflow VRE 1 Kultur positiv",
      "description" : "Workflow-Kette VRE, Schritt 1: positiver VRE-Nachweis mittels erregerspezifischer Kultur.",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-spezifische-kultur"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-mikrobio-workflow-vre-02-identifikation.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-mikrobio-workflow-vre-02-identifikation"
      },
      "name" : "MII EXA Mikrobio Workflow VRE 2 Identifikation",
      "description" : "Workflow-Kette VRE, Schritt 2: weiterführende Identifikation des Isolats als Enterococcus faecium, ausgelöst durch den positiven Nachweis.",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-allgemeine-bestimmung"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-mikrobio-workflow-vre-03-empfindlichkeit.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-mikrobio-workflow-vre-03-empfindlichkeit"
      },
      "name" : "MII EXA Mikrobio Workflow VRE 3 Empfindlichkeit",
      "description" : "Workflow-Kette VRE, Schritt 3: Vancomycin-Empfindlichkeitstestung des identifizierten Isolats mit dem Ergebnis resistent.",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-empfindlichkeit"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-lm-mikrobio-logical-model.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-lm-mikrobio-logical-model"
      },
      "name" : "MII LM Mikrobio Befund",
      "description" : "Logical Model des mikrobiologischen Befunds für die grafische Darstellung des Mikrobiologie-Datenmodells 2027 [DE]",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical:abstract"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-lm-mikrobio-untersuchung.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-lm-mikrobio-untersuchung"
      },
      "name" : "MII LM Mikrobio Untersuchung",
      "description" : "Gemeinsame Angaben aller mikrobiologischen Untersuchungen [DE]",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-lm-mikrobio-untersuchungsarten.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-lm-mikrobio-untersuchungsarten"
      },
      "name" : "MII LM Mikrobio Untersuchungsarten",
      "description" : "Fachliche Ausprägungen der mikrobiologischen Untersuchung für die grafische Darstellung des Mikrobiologie-Datenmodells 2027 [DE]",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-pr-mikrobio-allgemeine-bestimmung.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-pr-mikrobio-allgemeine-bestimmung"
      },
      "name" : "MII PR Mikrobio Allgemeine Bestimmung",
      "description" : "Allgemeine Bestimmung beschreibt die Identifikation eines Mikroorganismus oder infektiösen Agens in einer Probe, ohne Einschränkung auf ein vordefiniertes Ziel.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-pr-mikrobio-allgemeine-kultur.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-pr-mikrobio-allgemeine-kultur"
      },
      "name" : "MII PR Mikrobio Allgemeine Kultur",
      "description" : "Allgemeine Kultur beschreibt das Ergebnis einer nicht zielgerichteten mikrobiologischen Kultur, die prüft, ob in der Probe irgendein Mikroorganismus wächst, ohne die Analyse auf einen vordefinierten Erreger zu beschränken.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-pr-mikrobio-antigen-antikoerper-quantitativ.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-pr-mikrobio-antigen-antikoerper-quantitativ"
      },
      "name" : "MII PR Mikrobio Antigen Antikoerper Quantitativ",
      "description" : "Quantitative Antigen-/Antikörperantwort beschreibt die quantitative Messung erregerspezifischer Antigene oder Antikörper in einer Probe, bestimmt mittels immunologischer Verfahren.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-pr-mikrobio-aviditaet.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-pr-mikrobio-aviditaet"
      },
      "name" : "MII PR Mikrobio Aviditaet",
      "description" : "Avidität beschreibt die qualitative Beurteilung der Bindungsstärke von Antikörpern an ein spezifisches Antigen, typischerweise zur Unterscheidung frischer von zurückliegenden Infektionen.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-pr-mikrobio-barlett-score.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-pr-mikrobio-barlett-score"
      },
      "name" : "MII PR Mikrobio Barlett Score",
      "description" : "Barlett-Score beschreibt die qualitative mikroskopische Beurteilung der Eignung von Sputumproben für die mikrobiologische Kultur anhand des Verhältnisses von Entzündungs- zu Epithelzellen.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-pr-mikrobio-ct-wert.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-pr-mikrobio-ct-wert"
      },
      "name" : "MII PR Mikrobio CT Wert",
      "description" : "CT-Wert beschreibt die Quantifizierung des Zyklusschwellenwerts bei Nukleinsäurenachweisen (z. B. Echtzeit-PCR) in einer Probe.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-pr-mikrobio-diagnostic-report.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-pr-mikrobio-diagnostic-report"
      },
      "name" : "MII PR Mikrobio Diagnostic Report",
      "description" : "Mikrobiologischer Befundbericht zur Zusammenfassung und Kontextualisierung zugehöriger mikrobiologischer Untersuchungsergebnisse.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-pr-mikrobio-empfindlichkeit.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-pr-mikrobio-empfindlichkeit"
      },
      "name" : "MII PR Mikrobio Empfindlichkeit",
      "description" : "Empfindlichkeit beschreibt das Ergebnis der phänotypischen Resistenztestung eines Erregers gegenüber antimikrobiellen Substanzen unter Bezug auf ein Normsystem.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-pr-mikrobio-keimzahl.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-pr-mikrobio-keimzahl"
      },
      "name" : "MII PR Mikrobio Keimzahl",
      "description" : "Keimzahl beschreibt die quantitative Bestimmung lebensfähiger Mikroorganismen in einer Probe als koloniebildende Einheiten pro Volumen oder Masse.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-pr-mikrobio-mikroskopie.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-pr-mikrobio-mikroskopie"
      },
      "name" : "MII PR Mikrobio Mikroskopie",
      "description" : "Mikroskopie beschreibt die morphologische Beobachtung von Mikroorganismen in einer Probe mittels mikroskopischer Untersuchung, optional mit Färbetechniken (z. B. Gramfärbung), ohne taxonomische Identifikation.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-pr-mikrobio-molekulare-pathogenlast.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-pr-mikrobio-molekulare-pathogenlast"
      },
      "name" : "MII PR Mikrobio Molekulare Pathogenlast",
      "description" : "Molekulare Pathogenlast beschreibt die quantitative Messung der Nukleinsäurekonzentration eines Erregers in einer Probe, typischerweise als Konzentration pro Volumen.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-pr-mikrobio-mrgn-klasse.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-pr-mikrobio-mrgn-klasse"
      },
      "name" : "MII PR Mikrobio MRGN Klasse",
      "description" : "MRGN-Klasse beschreibt die Einstufung multiresistenter gramnegativer Erreger entsprechend der RKI-Kategorisierung.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-pr-mikrobio-nugent-score.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-pr-mikrobio-nugent-score"
      },
      "name" : "MII PR Mikrobio Nugent Score",
      "description" : "Nugent-Score beschreibt ein Gramfärbungs-basiertes semiquantitatives Punktesystem zur Beurteilung vaginaler Mikrobiotamuster bei bakterieller Vaginose.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-pr-mikrobio-resistenzkategorie-status.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-pr-mikrobio-resistenzkategorie-status"
      },
      "name" : "MII PR Mikrobio Resistenzkategorie Status",
      "description" : "Bewertung eines nachgewiesenen Erregers hinsichtlich einer definierten Resistenzkategorie, z. B. MRSA, VRE, LRE oder LVRE. Die bewertete Kategorie steht in Observation.code, das Ergebnis der Bewertung in Observation.value.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-pr-mikrobio-resistenzmechanismen-determinanten.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-pr-mikrobio-resistenzmechanismen-determinanten"
      },
      "name" : "MII PR Mikrobio Resistenzmechanismen Determinanten",
      "description" : "Resistenzmechanismen/Determinanten beschreibt den Nachweis von Resistenzgenen, Resistenzmutationen, Proteinen oder funktionalen Test (z.B. CIM-Test) in einer Probe oder Isolat als Hinweis auf spezifische Resistenzmechanismen.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-pr-mikrobio-spezifische-bestimmung.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-pr-mikrobio-spezifische-bestimmung"
      },
      "name" : "MII PR Mikrobio Spezifische Bestimmung",
      "description" : "Spezifische Bestimmung beschreibt den qualitativen Nachweis eines vordefinierten mikrobiellen Ziels in einer Probe durch direkte molekulare, immunologische oder biochemische Nachweismethoden sowie durch methodenneutral kodierte Nachweistests. Der kulturbasierte zielgerichtete Nachweis wird über MII_PR_Mikrobio_Spezifische_Kultur abgebildet.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-pr-mikrobio-spezifische-kultur.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-pr-mikrobio-spezifische-kultur"
      },
      "name" : "MII PR Mikrobio Spezifische Kultur",
      "description" : "Spezifische Kultur beschreibt das Ergebnis einer zielgerichteten kulturbasierten Untersuchung, die prüft, ob ein vordefinierter Mikroorganismus in der Probe wächst. Das gesuchte Ziel ist bereits im Untersuchungscode benannt; das Ergebnis ist die Aussage über Wachstum.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-pr-mikrobio-titer.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-pr-mikrobio-titer"
      },
      "name" : "MII PR Mikrobio Titer",
      "description" : "Titer beschreibt eine semiquantitative Messung aus seriellen Verdünnungsreihen, berichtet als Verhältnis (z. B. 1:160).",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-pr-mikrobio-virulenzfaktor.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-pr-mikrobio-virulenzfaktor"
      },
      "name" : "MII PR Mikrobio Virulenzfaktor",
      "description" : "Virulenzfaktor beschreibt den qualitativen Nachweis oder Ausschluss von Virulenzdeterminanten in einer Probe oder einem Isolat.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-pr-mikrobio-voraussichtliche-empfindlichkeit.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-pr-mikrobio-voraussichtliche-empfindlichkeit"
      },
      "name" : "MII PR Mikrobio Voraussichtliche Empfindlichkeit",
      "description" : "Voraussichtliche Empfindlichkeit beschreibt die aus dem Nachweis von Resistenzmechanismen/Genen/Proteinen abgeleitete erwartete Suszeptibilität oder Resistenz gegenüber antimikrobiellen Substanzen.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-labor-laborergebnis-semiquantitativ.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-labor-laborergebnis-semiquantitativ"
      },
      "name" : "MII VS Labor Laborergebnis Semiquantitativ",
      "description" : "Kodierung für semi-quantitative Laborergebnisse",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-mikrobio-allgemeine-bestimmung-ergebnis-snomed.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-mikrobio-allgemeine-bestimmung-ergebnis-snomed"
      },
      "name" : "MII VS Mikrobio Allgemeine Bestimmung Ergebnis [SNOMED]",
      "description" : "Ergebnis-ValueSet fuer die allgemeine Bestimmung: der identifizierte Mikroorganismus oder das negative Ergebnis, wenn kein Erreger identifiziert wurde.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-mikrobio-allgemeine-bestimmung-methode-snomed.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-mikrobio-allgemeine-bestimmung-methode-snomed"
      },
      "name" : "MII VS Mikrobio Allgemeine Bestimmung Methode [SNOMED]",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-mikrobio-allgemeine-kultur-methode-snomed.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-mikrobio-allgemeine-kultur-methode-snomed"
      },
      "name" : "MII VS Mikrobio Allgemeine Kultur Methode [SNOMED]",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-mikrobio-antigen-antikoerper-methode-snomed.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-mikrobio-antigen-antikoerper-methode-snomed"
      },
      "name" : "MII VS Mikrobio Antigen Antikoerper Methode [SNOMED]",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-mikrobio-antigen-antikoerper-quantitativ-einheiten-ucum.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-mikrobio-antigen-antikoerper-quantitativ-einheiten-ucum"
      },
      "name" : "MII VS Mikrobio Antigen Antikoerper Quantitativ Einheiten [UCUM]",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-mikrobio-antigen-antikoerper-quantitative-tests-loinc.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-mikrobio-antigen-antikoerper-quantitative-tests-loinc"
      },
      "name" : "MII VS Mikrobio Antigen Antikoerper Quantitative Tests [LOINC]",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-mikrobio-aviditaet-ergebnis.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-mikrobio-aviditaet-ergebnis"
      },
      "name" : "MII VS Mikrobio Aviditaet Ergebnis",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-mikrobio-aviditaet-tests-loinc.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-mikrobio-aviditaet-tests-loinc"
      },
      "name" : "MII VS Mikrobio Aviditaet Tests [LOINC]",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-mikrobio-barlett-score-loinc.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-mikrobio-barlett-score-loinc"
      },
      "name" : "MII VS Mikrobio Barlett Score [LOINC]",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-mikrobio-befundtyp-loinc.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-mikrobio-befundtyp-loinc"
      },
      "name" : "MII VS Mikrobio Befundtyp [LOINC]",
      "description" : "Sepzalisierte Kodierung von mikrobiologischen Befunden",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-mikrobio-ct-wert-loinc.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-mikrobio-ct-wert-loinc"
      },
      "name" : "MII VS Mikrobio CT Wert [LOINC]",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-mikrobio-data-absent-reason.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-mikrobio-data-absent-reason"
      },
      "name" : "MII VS Mikrobio Data Absent Reason",
      "description" : "Gruende fuer ein fehlendes Untersuchungsergebnis. Ergaenzt die FHIR-Basiscodes um das unbestimmbare Ergebnis, das zuvor ueber value[x] kodiert wurde.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-mikrobio-detected-not-detected-snomed.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-mikrobio-detected-not-detected-snomed"
      },
      "name" : "MII VS Mikrobio Detected Not Detected [SNOMED]",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-mikrobio-empfindlichkeit-einheiten-ucum.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-mikrobio-empfindlichkeit-einheiten-ucum"
      },
      "name" : "MII VS Mikrobio Empfindlichkeit Einheiten [UCUM]",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-mikrobio-empfindlichkeit-phenotyp-loinc.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-mikrobio-empfindlichkeit-phenotyp-loinc"
      },
      "name" : "MII VS Mikrobio Empfindlichkeit Phenotyp [LOINC]",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-mikrobio-empfindlichkeit-genotyp-loinc.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-mikrobio-empfindlichkeit-genotyp-loinc"
      },
      "name" : "MII VS Mikrobio Empfänglichkeit Genotyp [LOINC]",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-mikrobio-keimzahl-einheiten-ucum.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-mikrobio-keimzahl-einheiten-ucum"
      },
      "name" : "MII VS Mikrobio Keimzahl Einheiten [UCUM]",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-mikrobio-keimzahl-loinc.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-mikrobio-keimzahl-loinc"
      },
      "name" : "MII VS Mikrobio Keimzahl [LOINC]",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-mikrobio-kultur-ergebnis-snomed.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-mikrobio-kultur-ergebnis-snomed"
      },
      "name" : "MII VS Mikrobio Kultur Ergebnis [SNOMED]",
      "description" : "Ergebnis-ValueSet fuer die allgemeine und die spezifische Kultur: Wachstum oder kein Wachstum. Ein unbestimmbares Ergebnis wird nicht ueber value[x], sondern ueber Observation.dataAbsentReason abgebildet.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-mikrobio-molekulare-diagnostik-einheiten-ucum.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-mikrobio-molekulare-diagnostik-einheiten-ucum"
      },
      "name" : "MII VS Mikrobio Molekulare Diagnostik Einheiten [UCUM]",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-mikrobio-molekulare-pathogenlast-methode-snomed.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-mikrobio-molekulare-pathogenlast-methode-snomed"
      },
      "name" : "MII VS Mikrobio Molekulare Pathogenlast Methode [SNOMED]",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-mikrobio-molekulare-pathogenlast-tests-loinc.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-mikrobio-molekulare-pathogenlast-tests-loinc"
      },
      "name" : "MII VS Mikrobio Molekulare Pathogenlast Tests [LOINC]",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-mikrobio-morphologie-ergebnis-snomed.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-mikrobio-morphologie-ergebnis-snomed"
      },
      "name" : "MII VS Mikrobio Morphologie Ergebnis [SNOMED]",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-mikrobio-morphologie-methode-snomed.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-mikrobio-morphologie-methode-snomed"
      },
      "name" : "MII VS Mikrobio Morphologie Methode [SNOMED]",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-mikrobio-mrgn-klasse-loinc.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-mikrobio-mrgn-klasse-loinc"
      },
      "name" : "MII VS Mikrobio MRGN Klasse [LOINC]",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-mikrobio-organismen-snomedct.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-mikrobio-organismen-snomedct"
      },
      "name" : "MII VS Mikrobio Organismen [SNOMED CT]",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-mikrobio-resistenzkategorie-status.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-mikrobio-resistenzkategorie-status"
      },
      "name" : "MII VS Mikrobio Resistenzkategorie Status",
      "description" : "Untersuchungscodes fuer die Bewertung eines nachgewiesenen Erregers hinsichtlich einer definierten Resistenzkategorie.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-mikrobio-resistenzkategorie-status-ergebnis.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-mikrobio-resistenzkategorie-status-ergebnis"
      },
      "name" : "MII VS Mikrobio Resistenzkategorie Status Ergebnis",
      "description" : "Ergebnis der Bewertung eines nachgewiesenen Erregers hinsichtlich der in Observation.code angegebenen Resistenzkategorie.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-mikrobio-resistenzmechanismen-determinanten-loinc.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-mikrobio-resistenzmechanismen-determinanten-loinc"
      },
      "name" : "MII VS Mikrobio Resistenzmechanismen Determinanten [LOINC]",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-mikrobio-resistenzmechanismen-methode-snomed.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-mikrobio-resistenzmechanismen-methode-snomed"
      },
      "name" : "MII VS Mikrobio Resistenzmechanismen Methode [SNOMED]",
      "description" : "Methoden für den Nachweis von Resistenzgenen oder Resistenzmutationen (molekulare Verfahren).",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-mikrobio-spezifische-bestimmung-ergebnis-snomed.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-mikrobio-spezifische-bestimmung-ergebnis-snomed"
      },
      "name" : "MII VS Mikrobio Spezifische Bestimmung Ergebnis [SNOMED]",
      "description" : "Ergebnis-ValueSet fuer die spezifische Bestimmung: Nachweis oder Ausschluss des Ziels, das bereits im Untersuchungscode benannt ist.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-mikrobio-spezifische-bestimmung-methode-snomed.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-mikrobio-spezifische-bestimmung-methode-snomed"
      },
      "name" : "MII VS Mikrobio Spezifische Bestimmung Methode [SNOMED]",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-mikrobio-spezifische-bestimmung-tests-loinc.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-mikrobio-spezifische-bestimmung-tests-loinc"
      },
      "name" : "MII VS Mikrobio Spezifische Bestimmung Tests [LOINC]",
      "description" : "Tests-ValueSet fuer die spezifische Bestimmung.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-mikrobio-spezifische-kultur-methode-snomed.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-mikrobio-spezifische-kultur-methode-snomed"
      },
      "name" : "MII VS Mikrobio Spezifische Kultur Methode [SNOMED]",
      "description" : "Methoden-ValueSet fuer die spezifische Kultur. Extensible gebunden, damit staerker spezialisierte Kulturverfahren ergaenzt werden koennen.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-mikrobio-spezifische-kultur-tests-loinc.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-mikrobio-spezifische-kultur-tests-loinc"
      },
      "name" : "MII VS Mikrobio Spezifische Kultur Tests [LOINC]",
      "description" : "Tests-ValueSet fuer die spezifische Kultur: erregerspezifische Kulturnachweise, bei denen das gesuchte Ziel bereits im LOINC-Code benannt ist.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-mikrobio-susceptibility.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-mikrobio-susceptibility"
      },
      "name" : "MII VS Mikrobio Susceptibility",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-mikrobio-susceptibility-norm.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-mikrobio-susceptibility-norm"
      },
      "name" : "MII VS Mikrobio Susceptibility Norm",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-mikrobio-titer-methode-snomed.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-mikrobio-titer-methode-snomed"
      },
      "name" : "MII VS Mikrobio Titer Methode [SNOMED]",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-mikrobio-titer-tests-loinc.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-mikrobio-titer-tests-loinc"
      },
      "name" : "MII VS Mikrobio Titer Tests [LOINC]",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-mikrobio-virulenz-loinc.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-mikrobio-virulenz-loinc"
      },
      "name" : "MII VS Mikrobio Virulenz [LOINC]",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-mikrobio-voraussichtliche-empfindlichkeit.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-mikrobio-voraussichtliche-empfindlichkeit"
      },
      "name" : "MII VS Mikrobio Voraussichtliche Empfindlichkeit",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-mikrobio-allgemeine-bestimmung.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-mikrobio-allgemeine-bestimmung"
      },
      "name" : "mii-exa-mikrobio-allgemeine-bestimmung",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-allgemeine-bestimmung"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-mikrobio-allgemeine-kultur.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-mikrobio-allgemeine-kultur"
      },
      "name" : "mii-exa-mikrobio-allgemeine-kultur",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-allgemeine-kultur"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-mikrobio-antigen-antikoerper-quantitativ.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-mikrobio-antigen-antikoerper-quantitativ"
      },
      "name" : "mii-exa-mikrobio-antigen-antikoerper-quantitativ",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-antigen-antikoerper-quantitativ"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-mikrobio-aviditaet.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-mikrobio-aviditaet"
      },
      "name" : "mii-exa-mikrobio-aviditaet",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-aviditaet"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-mikrobio-barlett-score.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-mikrobio-barlett-score"
      },
      "name" : "mii-exa-mikrobio-barlett-score",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-barlett-score"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-mikrobio-ct-wert.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-mikrobio-ct-wert"
      },
      "name" : "mii-exa-mikrobio-ct-wert",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-ct-wert"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "DiagnosticReport"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "DiagnosticReport-mii-exa-mikrobio-diagnostic-report.html"
      }],
      "reference" : {
        "reference" : "DiagnosticReport/mii-exa-mikrobio-diagnostic-report"
      },
      "name" : "mii-exa-mikrobio-diagnostic-report",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-diagnostic-report"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-mikrobio-empfindlichkeit.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-mikrobio-empfindlichkeit"
      },
      "name" : "mii-exa-mikrobio-empfindlichkeit",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-empfindlichkeit"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-mikrobio-keimzahl.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-mikrobio-keimzahl"
      },
      "name" : "mii-exa-mikrobio-keimzahl",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-keimzahl"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-mikrobio-mikroskopie.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-mikrobio-mikroskopie"
      },
      "name" : "mii-exa-mikrobio-mikroskopie",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-mikroskopie"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-mikrobio-molekulare-pathogenlast.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-mikrobio-molekulare-pathogenlast"
      },
      "name" : "mii-exa-mikrobio-molekulare-pathogenlast",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-molekulare-pathogenlast"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-mikrobio-mrgn-klasse.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-mikrobio-mrgn-klasse"
      },
      "name" : "mii-exa-mikrobio-mrgn-klasse",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-mrgn-klasse"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-mikrobio-nugent-score.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-mikrobio-nugent-score"
      },
      "name" : "mii-exa-mikrobio-nugent-score",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-nugent-score"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-mikrobio-resistenzmechanismen-determinanten.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-mikrobio-resistenzmechanismen-determinanten"
      },
      "name" : "mii-exa-mikrobio-resistenzmechanismen-determinanten",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-resistenzmechanismen-determinanten"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-mikrobio-spezifische-bestimmung.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-mikrobio-spezifische-bestimmung"
      },
      "name" : "mii-exa-mikrobio-spezifische-bestimmung",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-spezifische-bestimmung"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-mikrobio-spezifische-kultur.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-mikrobio-spezifische-kultur"
      },
      "name" : "mii-exa-mikrobio-spezifische-kultur",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-spezifische-kultur"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-mikrobio-titer.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-mikrobio-titer"
      },
      "name" : "mii-exa-mikrobio-titer",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-titer"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-mikrobio-virulenzfaktor.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-mikrobio-virulenzfaktor"
      },
      "name" : "mii-exa-mikrobio-virulenzfaktor",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-virulenzfaktor"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-mikrobio-voraussichtliche-empfindlichkeit.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-mikrobio-voraussichtliche-empfindlichkeit"
      },
      "name" : "mii-exa-mikrobio-voraussichtliche-empfindlichkeit",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-voraussichtliche-empfindlichkeit"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Parameters"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Parameters-mii-param-mikrobio-manifest.html"
      }],
      "reference" : {
        "reference" : "Parameters/mii-param-mikrobio-manifest"
      },
      "name" : "mii-param-mikrobio-manifest",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "SearchParameter"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "SearchParameter-mii-sp-mikrobio-interpretation.html"
      }],
      "reference" : {
        "reference" : "SearchParameter/mii-sp-mikrobio-interpretation"
      },
      "name" : "mii-sp-mikrobio-interpretation",
      "description" : "Suchparameter für die Normkategorie der Empfindlichkeitsextension",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "SearchParameter"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "SearchParameter-mii-sp-mikrobio-observation-titer.html"
      }],
      "reference" : {
        "reference" : "SearchParameter/mii-sp-mikrobio-observation-titer"
      },
      "name" : "mii-sp-mikrobio-observation-titer",
      "description" : "Suche nach der Verduennungsstufe eines Titers. Indiziert den Nenner des Ratio-Werts von MII_PR_Mikrobio_Titer; der Zaehler ist dort fest 1. Ein groesserer Nenner bedeutet einen hoeheren Titer, z. B. findet ?titer=gt160 alle Titer oberhalb von 1:160.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "SearchParameter"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "SearchParameter-mii-sp-mikrobio-observation-triggered-by.html"
      }],
      "reference" : {
        "reference" : "SearchParameter/mii-sp-mikrobio-observation-triggered-by"
      },
      "name" : "mii-sp-mikrobio-observation-triggered-by",
      "description" : "Suche nach der Observation, die eine mikrobiologische Observation ausgelöst hat.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "SearchParameter"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "SearchParameter-ObservationInterpretation.html"
      }],
      "reference" : {
        "reference" : "SearchParameter/ObservationInterpretation"
      },
      "name" : "ObservationInterpretation",
      "description" : "Suche nach der Interpretation einer mikrobiologischen Observation.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-ext-R5-Observation.triggeredBy.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ext-R5-Observation.triggeredBy"
      },
      "name" : "R5: Triggering observation(s) (new)",
      "description" : "R5: `Observation.triggeredBy` (new:BackboneElement)",
      "exampleBoolean" : false
    }],
    "page" : {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
        "valueUrl" : "toc.html"
      }],
      "nameUrl" : "toc.html",
      "title" : "Table of Contents",
      "_title" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de"
          },
          {
            "url" : "content",
            "valueString" : "Inhaltsverzeichnis"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "generation" : "html",
      "page" : [{
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "index.html"
        }],
        "nameUrl" : "index.html",
        "title" : "Home",
        "_title" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "de"
            },
            {
              "url" : "content",
              "valueString" : "Startseite"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        },
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "guidance.html"
        }],
        "nameUrl" : "guidance.html",
        "title" : "Guidance",
        "_title" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "de"
            },
            {
              "url" : "content",
              "valueString" : "Anleitung"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        },
        "generation" : "markdown",
        "page" : [{
          "extension" : [{
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
            "valueUrl" : "implementer-guidance.html"
          }],
          "nameUrl" : "implementer-guidance.html",
          "title" : "Guidance for Implementers",
          "_title" : {
            "extension" : [{
              "extension" : [{
                "url" : "lang",
                "valueCode" : "de"
              },
              {
                "url" : "content",
                "valueString" : "Anleitung für Implementierende"
              }],
              "url" : "http://hl7.org/fhir/StructureDefinition/translation"
            }]
          },
          "generation" : "markdown"
        },
        {
          "extension" : [{
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
            "valueUrl" : "uml-diagrams.html"
          }],
          "nameUrl" : "uml-diagrams.html",
          "title" : "UML Diagrams",
          "_title" : {
            "extension" : [{
              "extension" : [{
                "url" : "lang",
                "valueCode" : "de"
              },
              {
                "url" : "content",
                "valueString" : "UML-Diagramme"
              }],
              "url" : "http://hl7.org/fhir/StructureDefinition/translation"
            }]
          },
          "generation" : "markdown"
        },
        {
          "extension" : [{
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
            "valueUrl" : "profilauswahl-und-abgrenzung.html"
          }],
          "nameUrl" : "profilauswahl-und-abgrenzung.html",
          "title" : "Profile Selection and Delimitation",
          "_title" : {
            "extension" : [{
              "extension" : [{
                "url" : "lang",
                "valueCode" : "de"
              },
              {
                "url" : "content",
                "valueString" : "Profilauswahl und Abgrenzung"
              }],
              "url" : "http://hl7.org/fhir/StructureDefinition/translation"
            }]
          },
          "generation" : "markdown"
        },
        {
          "extension" : [{
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
            "valueUrl" : "fhir-profile.html"
          }],
          "nameUrl" : "fhir-profile.html",
          "title" : "FHIR Profiles - Modelling Notes",
          "_title" : {
            "extension" : [{
              "extension" : [{
                "url" : "lang",
                "valueCode" : "de"
              },
              {
                "url" : "content",
                "valueString" : "FHIR-Profile – Modellierungshinweise"
              }],
              "url" : "http://hl7.org/fhir/StructureDefinition/translation"
            }]
          },
          "generation" : "markdown"
        },
        {
          "extension" : [{
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
            "valueUrl" : "probe.html"
          }],
          "nameUrl" : "probe.html",
          "title" : "Specimen",
          "_title" : {
            "extension" : [{
              "extension" : [{
                "url" : "lang",
                "valueCode" : "de"
              },
              {
                "url" : "content",
                "valueString" : "Probe"
              }],
              "url" : "http://hl7.org/fhir/StructureDefinition/translation"
            }]
          },
          "generation" : "markdown"
        }]
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "security-and-privacy.html"
        }],
        "nameUrl" : "security-and-privacy.html",
        "title" : "Security and Privacy",
        "_title" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "de"
            },
            {
              "url" : "content",
              "valueString" : "Sicherheit und Datenschutz"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        },
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "profiles.html"
        }],
        "nameUrl" : "profiles.html",
        "title" : "Profiles",
        "_title" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "de"
            },
            {
              "url" : "content",
              "valueString" : "Profile"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        },
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "extensions.html"
        }],
        "nameUrl" : "extensions.html",
        "title" : "Extensions",
        "_title" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "de"
            },
            {
              "url" : "content",
              "valueString" : "Extensions"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        },
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "capability-statements.html"
        }],
        "nameUrl" : "capability-statements.html",
        "title" : "Capability Statements",
        "_title" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "de"
            },
            {
              "url" : "content",
              "valueString" : "CapabilityStatements"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        },
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "search-parameters.html"
        }],
        "nameUrl" : "search-parameters.html",
        "title" : "Search Parameters",
        "_title" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "de"
            },
            {
              "url" : "content",
              "valueString" : "Suchparameter"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        },
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "logical-models.html"
        }],
        "nameUrl" : "logical-models.html",
        "title" : "Logical Models",
        "_title" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "de"
            },
            {
              "url" : "content",
              "valueString" : "Logische Modelle"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        },
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "value-sets.html"
        }],
        "nameUrl" : "value-sets.html",
        "title" : "Value Sets",
        "_title" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "de"
            },
            {
              "url" : "content",
              "valueString" : "ValueSets"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        },
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "code-systems.html"
        }],
        "nameUrl" : "code-systems.html",
        "title" : "Code Systems",
        "_title" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "de"
            },
            {
              "url" : "content",
              "valueString" : "CodeSystems"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        },
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "examples.html"
        }],
        "nameUrl" : "examples.html",
        "title" : "Examples",
        "_title" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "de"
            },
            {
              "url" : "content",
              "valueString" : "Beispiele"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        },
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "downloads.html"
        }],
        "nameUrl" : "downloads.html",
        "title" : "Downloads",
        "_title" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "de"
            },
            {
              "url" : "content",
              "valueString" : "Downloads"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        },
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "changes.html"
        }],
        "nameUrl" : "changes.html",
        "title" : "Changelog",
        "_title" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "de"
            },
            {
              "url" : "content",
              "valueString" : "Änderungshistorie"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        },
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "metadata.html"
        }],
        "nameUrl" : "metadata.html",
        "title" : "Metadata Overview",
        "_title" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "de"
            },
            {
              "url" : "content",
              "valueString" : "Metadaten-Übersicht"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        },
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "version-history.html"
        }],
        "nameUrl" : "version-history.html",
        "title" : "Versioning",
        "_title" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "de"
            },
            {
              "url" : "content",
              "valueString" : "Versionierung"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        },
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "ImplementationGuide-mii-ig-mikrobiologie.html"
        }],
        "nameUrl" : "ImplementationGuide-mii-ig-mikrobiologie.html",
        "title" : "MII ImplementationGuide Resource",
        "_title" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "de"
            },
            {
              "url" : "content",
              "valueString" : "MII ImplementationGuide Ressource"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        },
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "translationinfo.html"
        }],
        "nameUrl" : "translationinfo.html",
        "title" : "Translation Information",
        "_title" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "de"
            },
            {
              "url" : "content",
              "valueString" : "Hinweise zur Übersetzung"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        },
        "generation" : "markdown"
      }]
    },
    "parameter" : [{
      "code" : "path-resource",
      "value" : "input/predefined-resources"
    },
    {
      "code" : "path-pages",
      "value" : "input/intro-notes"
    },
    {
      "code" : "path-resource",
      "value" : "input/capabilities"
    },
    {
      "code" : "path-resource",
      "value" : "input/examples"
    },
    {
      "code" : "path-resource",
      "value" : "input/extensions"
    },
    {
      "code" : "path-resource",
      "value" : "input/models"
    },
    {
      "code" : "path-resource",
      "value" : "input/operations"
    },
    {
      "code" : "path-resource",
      "value" : "input/profiles"
    },
    {
      "code" : "path-resource",
      "value" : "input/resources"
    },
    {
      "code" : "path-resource",
      "value" : "input/vocabulary"
    },
    {
      "code" : "path-resource",
      "value" : "input/testing"
    },
    {
      "code" : "path-resource",
      "value" : "input/history"
    },
    {
      "code" : "path-resource",
      "value" : "fsh-generated/resources"
    },
    {
      "code" : "path-pages",
      "value" : "template/config"
    },
    {
      "code" : "path-pages",
      "value" : "input/images"
    },
    {
      "code" : "path-tx-cache",
      "value" : "input-cache/txcache"
    }]
  }
}

```
