# MII ImplementationGuide Resource - MII Implementation Guide Microbiology v2027.0.0-ballot2

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

* [ISO 3166-1 Codes for the representation of names of countries and their subdivisions — Part 1: Country code](http://terminology.hl7.org/6.3.0/CodeSystem-ISO3166Part1.html): [ExtensionObservation_TriggeredBy](StructureDefinition-ext-R5-Observation.triggeredBy.md), [MII_CPS_Mikrobio_Metadata](CapabilityStatement-mii-cps-mikrobio-metadata.md)... Show 82 more, [MII_CS_Mikrobio_MRGN_Ergebnis](CodeSystem-mii-cs-mikrobio-mrgn-ergebnis.md), [MII_CS_Mikrobio_Resistenzkategorie](CodeSystem-mii-cs-mikrobio-resistenzkategorie.md), [MII_CS_Mikrobio_Susceptibility_NORM](CodeSystem-mii-cs-mikrobio-susceptibility-norm.md), [MII_EX_Mikrobio_Empfindlichkeit_Norm](StructureDefinition-mii-ex-mikrobio-empfindlichkeit-norm.md), [MII_EX_Mikrobio_Faerbung](StructureDefinition-mii-ex-mikrobio-faerbung.md), [MII_IG_Mikrobiologie](index.md), [MII_LM_Mikrobio_Befund](StructureDefinition-mii-lm-mikrobio-logical-model.md), [MII_LM_Mikrobio_Untersuchung](StructureDefinition-mii-lm-mikrobio-untersuchung.md), [MII_LM_Mikrobio_Untersuchungsarten](StructureDefinition-mii-lm-mikrobio-untersuchungsarten.md), [MII_PR_Mikrobio_Allgemeine_Bestimmung](StructureDefinition-mii-pr-mikrobio-allgemeine-bestimmung.md), [MII_PR_Mikrobio_Allgemeine_Kultur](StructureDefinition-mii-pr-mikrobio-allgemeine-kultur.md), [MII_PR_Mikrobio_Allgemeine_Mikroskopie](StructureDefinition-mii-pr-mikrobio-mikroskopie.md), [MII_PR_Mikrobio_Antigen_Antikoerper_Quantitativ](StructureDefinition-mii-pr-mikrobio-antigen-antikoerper-quantitativ.md), [MII_PR_Mikrobio_Aviditaet](StructureDefinition-mii-pr-mikrobio-aviditaet.md), [MII_PR_Mikrobio_Bartlett_Score](StructureDefinition-mii-pr-mikrobio-bartlett-score.md), [MII_PR_Mikrobio_Ct_Wert](StructureDefinition-mii-pr-mikrobio-ct-wert.md), [MII_PR_Mikrobio_Diagnostic_Report](StructureDefinition-mii-pr-mikrobio-diagnostic-report.md), [MII_PR_Mikrobio_Empfindlichkeit](StructureDefinition-mii-pr-mikrobio-empfindlichkeit.md), [MII_PR_Mikrobio_Keimzahl](StructureDefinition-mii-pr-mikrobio-keimzahl.md), [MII_PR_Mikrobio_MRGN_Klasse](StructureDefinition-mii-pr-mikrobio-mrgn-klasse.md), [MII_PR_Mikrobio_Molekulare_Pathogenlast](StructureDefinition-mii-pr-mikrobio-molekulare-pathogenlast.md), [MII_PR_Mikrobio_Nugent_Score](StructureDefinition-mii-pr-mikrobio-nugent-score.md), [MII_PR_Mikrobio_Probe](StructureDefinition-mii-pr-mikrobio-probe.md), [MII_PR_Mikrobio_Resistenzkategorie_Status](StructureDefinition-mii-pr-mikrobio-resistenzkategorie-status.md), [MII_PR_Mikrobio_Resistenzmechanismen_Determinanten](StructureDefinition-mii-pr-mikrobio-resistenzmechanismen-determinanten.md), [MII_PR_Mikrobio_Spezifische_Bestimmung](StructureDefinition-mii-pr-mikrobio-spezifische-bestimmung.md), [MII_PR_Mikrobio_Spezifische_Mikroskopie](StructureDefinition-mii-pr-mikrobio-spezifische-mikroskopie.md), [MII_PR_Mikrobio_Titer](StructureDefinition-mii-pr-mikrobio-titer.md), [MII_PR_Mikrobio_Virulenzfaktor](StructureDefinition-mii-pr-mikrobio-virulenzfaktor.md), [MII_PR_Mikrobio_Voraussichtliche_Empfindlichkeit](StructureDefinition-mii-pr-mikrobio-voraussichtliche-empfindlichkeit.md), [MII_SP_Mikrobio_NormKategorie](SearchParameter-mii-sp-mikrobio-interpretation.md), [MII_SP_Mikrobio_Observation_Titer](SearchParameter-mii-sp-mikrobio-observation-titer.md), [MII_SP_Mikrobio_Observation_TriggeredBy](SearchParameter-mii-sp-mikrobio-observation-triggered-by.md), [MII_VS_Labor_Laborergebnis_Semiquantitativ](ValueSet-mii-vs-labor-laborergebnis-semiquantitativ.md), [MII_VS_Mikrobio_Allgemeine_Bestimmung_Ergebnis_SNOMED](ValueSet-mii-vs-mikrobio-allgemeine-bestimmung-ergebnis-snomed.md), [MII_VS_Mikrobio_Allgemeine_Bestimmung_Methode_SNOMED](ValueSet-mii-vs-mikrobio-allgemeine-bestimmung-methode-snomed.md), [MII_VS_Mikrobio_Allgemeine_Bestimmung_Tests_LOINC](ValueSet-mii-vs-mikrobio-allgemeine-bestimmung-tests-loinc.md), [MII_VS_Mikrobio_Allgemeine_Kultur_Methode_SNOMED](ValueSet-mii-vs-mikrobio-allgemeine-kultur-methode-snomed.md), [MII_VS_Mikrobio_Allgemeine_Kultur_Tests_LOINC](ValueSet-mii-vs-mikrobio-allgemeine-kultur-tests-loinc.md), [MII_VS_Mikrobio_Allgemeine_Mikroskopie_Tests_LOINC](ValueSet-mii-vs-mikrobio-allgemeine-mikroskopie-tests-loinc.md), [MII_VS_Mikrobio_Antigen_Antikoerper_Methode_SNOMED](ValueSet-mii-vs-mikrobio-antigen-antikoerper-methode-snomed.md), [MII_VS_Mikrobio_Antigen_Antikoerper_Quantitativ_Einheiten_UCUM](ValueSet-mii-vs-mikrobio-antigen-antikoerper-quantitativ-einheiten-ucum.md), [MII_VS_Mikrobio_Antigen_Antikoerper_Quantitative_Tests_LOINC](ValueSet-mii-vs-mikrobio-antigen-antikoerper-quantitative-tests-loinc.md), [MII_VS_Mikrobio_Aviditaet_Ergebnis](ValueSet-mii-vs-mikrobio-aviditaet-ergebnis.md), [MII_VS_Mikrobio_Aviditaet_Tests_LOINC](ValueSet-mii-vs-mikrobio-aviditaet-tests-loinc.md), [MII_VS_Mikrobio_Bartlett_Score_LOINC](ValueSet-mii-vs-mikrobio-bartlett-score-loinc.md), [MII_VS_Mikrobio_Befundtyp_LOINC](ValueSet-mii-vs-mikrobio-befundtyp-loinc.md), [MII_VS_Mikrobio_CT_Wert_LOINC](ValueSet-mii-vs-mikrobio-ct-wert-loinc.md), [MII_VS_Mikrobio_Data_Absent_Reason](ValueSet-mii-vs-mikrobio-data-absent-reason.md), [MII_VS_Mikrobio_Detected_Not_Detected_SNOMED](ValueSet-mii-vs-mikrobio-detected-not-detected-snomed.md), [MII_VS_Mikrobio_Empfaenglichkeit_Genotyp_LOINC](ValueSet-mii-vs-mikrobio-empfindlichkeit-genotyp-loinc.md), [MII_VS_Mikrobio_Empfindlichkeit_Einheiten_UCUM](ValueSet-mii-vs-mikrobio-empfindlichkeit-einheiten-ucum.md), [MII_VS_Mikrobio_Empfindlichkeit_Methode_SNOMED](ValueSet-mii-vs-mikrobio-empfindlichkeit-methode-snomed.md), [MII_VS_Mikrobio_Empfindlichkeit_Phenotyp_LOINC](ValueSet-mii-vs-mikrobio-empfindlichkeit-phenotyp-loinc.md), [MII_VS_Mikrobio_Faerbung_SNOMED](ValueSet-mii-vs-mikrobio-faerbung-snomed.md), [MII_VS_Mikrobio_Keimzahl_Einheiten_UCUM](ValueSet-mii-vs-mikrobio-keimzahl-einheiten-ucum.md), [MII_VS_Mikrobio_Keimzahl_LOINC](ValueSet-mii-vs-mikrobio-keimzahl-loinc.md), [MII_VS_Mikrobio_Kultur_Ergebnis_SNOMED](ValueSet-mii-vs-mikrobio-kultur-ergebnis-snomed.md), [MII_VS_Mikrobio_MRGN_Klasse_LOINC](ValueSet-mii-vs-mikrobio-mrgn-klasse-loinc.md), [MII_VS_Mikrobio_Mikroskopie_Gesichtsfeld_Einheiten_UCUM](ValueSet-mii-vs-mikrobio-mikroskopie-gesichtsfeld-einheiten-ucum.md), [MII_VS_Mikrobio_Mikroskopie_Semiquantitativ_SNOMED](ValueSet-mii-vs-mikrobio-mikroskopie-semiquantitativ-snomed.md), [MII_VS_Mikrobio_Molekulare_Diagnostik_Einheiten_UCUM](ValueSet-mii-vs-mikrobio-molekulare-diagnostik-einheiten-ucum.md), [MII_VS_Mikrobio_Molekulare_Pathogenlast_Methode_SNOMED](ValueSet-mii-vs-mikrobio-molekulare-pathogenlast-methode-snomed.md), [MII_VS_Mikrobio_Molekulare_Pathogenlast_Tests_LOINC](ValueSet-mii-vs-mikrobio-molekulare-pathogenlast-tests-loinc.md), [MII_VS_Mikrobio_Morphologie_Ergebnis_SNOMED](ValueSet-mii-vs-mikrobio-morphologie-ergebnis-snomed.md), [MII_VS_Mikrobio_Morphologie_Methode_SNOMED](ValueSet-mii-vs-mikrobio-morphologie-methode-snomed.md), [MII_VS_Mikrobio_Organismen_SNOMEDCT](ValueSet-mii-vs-mikrobio-organismen-snomedct.md), [MII_VS_Mikrobio_Resistenzkategorie_Status](ValueSet-mii-vs-mikrobio-resistenzkategorie-status.md), [MII_VS_Mikrobio_Resistenzkategorie_Status_Ergebnis](ValueSet-mii-vs-mikrobio-resistenzkategorie-status-ergebnis.md), [MII_VS_Mikrobio_Resistenzmechanismen_Determinanten_LOINC](ValueSet-mii-vs-mikrobio-resistenzmechanismen-determinanten-loinc.md), [MII_VS_Mikrobio_Resistenzmechanismen_Methode_SNOMED](ValueSet-mii-vs-mikrobio-resistenzmechanismen-methode-snomed.md), [MII_VS_Mikrobio_Spezifische_Bestimmung_Ergebnis_SNOMED](ValueSet-mii-vs-mikrobio-spezifische-bestimmung-ergebnis-snomed.md), [MII_VS_Mikrobio_Spezifische_Bestimmung_Methode_SNOMED](ValueSet-mii-vs-mikrobio-spezifische-bestimmung-methode-snomed.md), [MII_VS_Mikrobio_Spezifische_Bestimmung_Tests_LOINC](ValueSet-mii-vs-mikrobio-spezifische-bestimmung-tests-loinc.md), [MII_VS_Mikrobio_Spezifische_Mikroskopie_Tests_LOINC](ValueSet-mii-vs-mikrobio-spezifische-mikroskopie-tests-loinc.md), [MII_VS_Mikrobio_Susceptibility](ValueSet-mii-vs-mikrobio-susceptibility.md), [MII_VS_Mikrobio_Susceptibility_NORM](ValueSet-mii-vs-mikrobio-susceptibility-norm.md), [MII_VS_Mikrobio_Titer_Methode_SNOMED](ValueSet-mii-vs-mikrobio-titer-methode-snomed.md), [MII_VS_Mikrobio_Titer_Tests_LOINC](ValueSet-mii-vs-mikrobio-titer-tests-loinc.md), [MII_VS_Mikrobio_Virulenz_LOINC](ValueSet-mii-vs-mikrobio-virulenz-loinc.md), [MII_VS_Mikrobio_Voraussichtliche_Empfindlichkeit](ValueSet-mii-vs-mikrobio-voraussichtliche-empfindlichkeit.md) and [ObservationInterpretation](SearchParameter-ObservationInterpretation.md)


* The UCUM codes, UCUM table (regardless of format), and UCUM Specification are copyright 1999-2009, Regenstrief Institute, Inc. and the Unified Codes for Units of Measures (UCUM) Organization. All rights reserved. [https://ucum.org/trac/wiki/TermsOfUse](https://ucum.org/trac/wiki/TermsOfUse)

* [Unified Code for Units of Measure (UCUM)](http://hl7.org/fhir/uv/xver-r5.r4/0.1.0/CodeSystem-v3-ucum.html): [MII_PR_Mikrobio_Allgemeine_Mikroskopie](StructureDefinition-mii-pr-mikrobio-mikroskopie.md), [MII_PR_Mikrobio_Antigen_Antikoerper_Quantitativ](StructureDefinition-mii-pr-mikrobio-antigen-antikoerper-quantitativ.md)... Show 19 more, [MII_PR_Mikrobio_Empfindlichkeit](StructureDefinition-mii-pr-mikrobio-empfindlichkeit.md), [MII_PR_Mikrobio_Keimzahl](StructureDefinition-mii-pr-mikrobio-keimzahl.md), [MII_PR_Mikrobio_Molekulare_Pathogenlast](StructureDefinition-mii-pr-mikrobio-molekulare-pathogenlast.md), [MII_PR_Mikrobio_Spezifische_Mikroskopie](StructureDefinition-mii-pr-mikrobio-spezifische-mikroskopie.md), [MII_VS_Mikrobio_Antigen_Antikoerper_Quantitativ_Einheiten_UCUM](ValueSet-mii-vs-mikrobio-antigen-antikoerper-quantitativ-einheiten-ucum.md), [MII_VS_Mikrobio_Empfindlichkeit_Einheiten_UCUM](ValueSet-mii-vs-mikrobio-empfindlichkeit-einheiten-ucum.md), [MII_VS_Mikrobio_Keimzahl_Einheiten_UCUM](ValueSet-mii-vs-mikrobio-keimzahl-einheiten-ucum.md), [MII_VS_Mikrobio_Mikroskopie_Gesichtsfeld_Einheiten_UCUM](ValueSet-mii-vs-mikrobio-mikroskopie-gesichtsfeld-einheiten-ucum.md), [MII_VS_Mikrobio_Molekulare_Diagnostik_Einheiten_UCUM](ValueSet-mii-vs-mikrobio-molekulare-diagnostik-einheiten-ucum.md), [Observation/mii-exa-mikrobio-antigen-antikoerper-quantitativ](Observation-mii-exa-mikrobio-antigen-antikoerper-quantitativ.md), [Observation/mii-exa-mikrobio-aviditaet](Observation-mii-exa-mikrobio-aviditaet.md), [Observation/mii-exa-mikrobio-ct-wert](Observation-mii-exa-mikrobio-ct-wert.md), [Observation/mii-exa-mikrobio-empfindlichkeit](Observation-mii-exa-mikrobio-empfindlichkeit.md), [Observation/mii-exa-mikrobio-keimzahl](Observation-mii-exa-mikrobio-keimzahl.md), [Observation/mii-exa-mikrobio-keimzahl-katheterspitze](Observation-mii-exa-mikrobio-keimzahl-katheterspitze.md), [Observation/mii-exa-mikrobio-molekulare-pathogenlast](Observation-mii-exa-mikrobio-molekulare-pathogenlast.md), [Observation/mii-exa-mikrobio-nugent-score](Observation-mii-exa-mikrobio-nugent-score.md), [Observation/mii-exa-mikrobio-spezifische-mikroskopie-leukozyten-gesichtsfeld](Observation-mii-exa-mikrobio-spezifische-mikroskopie-leukozyten-gesichtsfeld.md) and [Observation/mii-exa-mikrobio-workflow-vre-03-empfindlichkeit](Observation-mii-exa-mikrobio-workflow-vre-03-empfindlichkeit.md)


* This material contains content from [LOINC](http://loinc.org). LOINC is copyright © 1995-2020, Regenstrief Institute, Inc. and the Logical Observation Identifiers Names and Codes (LOINC) Committee and is available at no cost under the [license](http://loinc.org/license). LOINC® is a registered United States trademark of Regenstrief Institute, Inc.

* [LOINC](http://terminology.hl7.org/6.3.0/CodeSystem-v3-loinc.html): [DiagnosticReport/mii-exa-mikrobio-diagnostic-report](DiagnosticReport-mii-exa-mikrobio-diagnostic-report.md), [MII_PR_Mikrobio_Allgemeine_Bestimmung](StructureDefinition-mii-pr-mikrobio-allgemeine-bestimmung.md)... Show 71 more, [MII_PR_Mikrobio_Allgemeine_Kultur](StructureDefinition-mii-pr-mikrobio-allgemeine-kultur.md), [MII_PR_Mikrobio_Allgemeine_Mikroskopie](StructureDefinition-mii-pr-mikrobio-mikroskopie.md), [MII_PR_Mikrobio_Antigen_Antikoerper_Quantitativ](StructureDefinition-mii-pr-mikrobio-antigen-antikoerper-quantitativ.md), [MII_PR_Mikrobio_Aviditaet](StructureDefinition-mii-pr-mikrobio-aviditaet.md), [MII_PR_Mikrobio_Bartlett_Score](StructureDefinition-mii-pr-mikrobio-bartlett-score.md), [MII_PR_Mikrobio_Ct_Wert](StructureDefinition-mii-pr-mikrobio-ct-wert.md), [MII_PR_Mikrobio_Diagnostic_Report](StructureDefinition-mii-pr-mikrobio-diagnostic-report.md), [MII_PR_Mikrobio_Empfindlichkeit](StructureDefinition-mii-pr-mikrobio-empfindlichkeit.md), [MII_PR_Mikrobio_Keimzahl](StructureDefinition-mii-pr-mikrobio-keimzahl.md), [MII_PR_Mikrobio_MRGN_Klasse](StructureDefinition-mii-pr-mikrobio-mrgn-klasse.md), [MII_PR_Mikrobio_Molekulare_Pathogenlast](StructureDefinition-mii-pr-mikrobio-molekulare-pathogenlast.md), [MII_PR_Mikrobio_Nugent_Score](StructureDefinition-mii-pr-mikrobio-nugent-score.md), [MII_PR_Mikrobio_Resistenzkategorie_Status](StructureDefinition-mii-pr-mikrobio-resistenzkategorie-status.md), [MII_PR_Mikrobio_Resistenzmechanismen_Determinanten](StructureDefinition-mii-pr-mikrobio-resistenzmechanismen-determinanten.md), [MII_PR_Mikrobio_Spezifische_Bestimmung](StructureDefinition-mii-pr-mikrobio-spezifische-bestimmung.md), [MII_PR_Mikrobio_Spezifische_Mikroskopie](StructureDefinition-mii-pr-mikrobio-spezifische-mikroskopie.md), [MII_PR_Mikrobio_Titer](StructureDefinition-mii-pr-mikrobio-titer.md), [MII_PR_Mikrobio_Virulenzfaktor](StructureDefinition-mii-pr-mikrobio-virulenzfaktor.md), [MII_PR_Mikrobio_Voraussichtliche_Empfindlichkeit](StructureDefinition-mii-pr-mikrobio-voraussichtliche-empfindlichkeit.md), [MII_VS_Mikrobio_Allgemeine_Bestimmung_Tests_LOINC](ValueSet-mii-vs-mikrobio-allgemeine-bestimmung-tests-loinc.md), [MII_VS_Mikrobio_Allgemeine_Kultur_Tests_LOINC](ValueSet-mii-vs-mikrobio-allgemeine-kultur-tests-loinc.md), [MII_VS_Mikrobio_Allgemeine_Mikroskopie_Tests_LOINC](ValueSet-mii-vs-mikrobio-allgemeine-mikroskopie-tests-loinc.md), [MII_VS_Mikrobio_Antigen_Antikoerper_Quantitative_Tests_LOINC](ValueSet-mii-vs-mikrobio-antigen-antikoerper-quantitative-tests-loinc.md), [MII_VS_Mikrobio_Aviditaet_Tests_LOINC](ValueSet-mii-vs-mikrobio-aviditaet-tests-loinc.md), [MII_VS_Mikrobio_Bartlett_Score_LOINC](ValueSet-mii-vs-mikrobio-bartlett-score-loinc.md), [MII_VS_Mikrobio_Befundtyp_LOINC](ValueSet-mii-vs-mikrobio-befundtyp-loinc.md), [MII_VS_Mikrobio_CT_Wert_LOINC](ValueSet-mii-vs-mikrobio-ct-wert-loinc.md), [MII_VS_Mikrobio_Empfaenglichkeit_Genotyp_LOINC](ValueSet-mii-vs-mikrobio-empfindlichkeit-genotyp-loinc.md), [MII_VS_Mikrobio_Empfindlichkeit_Phenotyp_LOINC](ValueSet-mii-vs-mikrobio-empfindlichkeit-phenotyp-loinc.md), [MII_VS_Mikrobio_Keimzahl_LOINC](ValueSet-mii-vs-mikrobio-keimzahl-loinc.md), [MII_VS_Mikrobio_MRGN_Klasse_LOINC](ValueSet-mii-vs-mikrobio-mrgn-klasse-loinc.md), [MII_VS_Mikrobio_Molekulare_Pathogenlast_Tests_LOINC](ValueSet-mii-vs-mikrobio-molekulare-pathogenlast-tests-loinc.md), [MII_VS_Mikrobio_Resistenzmechanismen_Determinanten_LOINC](ValueSet-mii-vs-mikrobio-resistenzmechanismen-determinanten-loinc.md), [MII_VS_Mikrobio_Spezifische_Bestimmung_Tests_LOINC](ValueSet-mii-vs-mikrobio-spezifische-bestimmung-tests-loinc.md), [MII_VS_Mikrobio_Spezifische_Mikroskopie_Tests_LOINC](ValueSet-mii-vs-mikrobio-spezifische-mikroskopie-tests-loinc.md), [MII_VS_Mikrobio_Titer_Tests_LOINC](ValueSet-mii-vs-mikrobio-titer-tests-loinc.md), [MII_VS_Mikrobio_Virulenz_LOINC](ValueSet-mii-vs-mikrobio-virulenz-loinc.md), [Observation/mii-exa-mikrobio-allgemeine-bestimmung](Observation-mii-exa-mikrobio-allgemeine-bestimmung.md), [Observation/mii-exa-mikrobio-allgemeine-kultur](Observation-mii-exa-mikrobio-allgemeine-kultur.md), [Observation/mii-exa-mikrobio-allgemeine-kultur-methodenneutral](Observation-mii-exa-mikrobio-allgemeine-kultur-methodenneutral.md), [Observation/mii-exa-mikrobio-antigen-antikoerper-quantitativ](Observation-mii-exa-mikrobio-antigen-antikoerper-quantitativ.md), [Observation/mii-exa-mikrobio-aviditaet](Observation-mii-exa-mikrobio-aviditaet.md), [Observation/mii-exa-mikrobio-bartlett-score](Observation-mii-exa-mikrobio-bartlett-score.md), [Observation/mii-exa-mikrobio-ct-wert](Observation-mii-exa-mikrobio-ct-wert.md), [Observation/mii-exa-mikrobio-empfindlichkeit](Observation-mii-exa-mikrobio-empfindlichkeit.md), [Observation/mii-exa-mikrobio-empfindlichkeit-nur-kategorie](Observation-mii-exa-mikrobio-empfindlichkeit-nur-kategorie.md), [Observation/mii-exa-mikrobio-keimzahl](Observation-mii-exa-mikrobio-keimzahl.md), [Observation/mii-exa-mikrobio-keimzahl-katheterspitze](Observation-mii-exa-mikrobio-keimzahl-katheterspitze.md), [Observation/mii-exa-mikrobio-mikroskopie](Observation-mii-exa-mikrobio-mikroskopie.md), [Observation/mii-exa-mikrobio-mikroskopie-gram-kokken-wenig](Observation-mii-exa-mikrobio-mikroskopie-gram-kokken-wenig.md), [Observation/mii-exa-mikrobio-molekulare-pathogenlast](Observation-mii-exa-mikrobio-molekulare-pathogenlast.md), [Observation/mii-exa-mikrobio-mrgn-klasse](Observation-mii-exa-mikrobio-mrgn-klasse.md), [Observation/mii-exa-mikrobio-mrgn-klasse-negativ](Observation-mii-exa-mikrobio-mrgn-klasse-negativ.md), [Observation/mii-exa-mikrobio-nugent-score](Observation-mii-exa-mikrobio-nugent-score.md), [Observation/mii-exa-mikrobio-resistenzkategorie-vre-negativ](Observation-mii-exa-mikrobio-resistenzkategorie-vre-negativ.md), [Observation/mii-exa-mikrobio-resistenzkategorie-vre-positiv](Observation-mii-exa-mikrobio-resistenzkategorie-vre-positiv.md), [Observation/mii-exa-mikrobio-resistenzmechanismen-determinanten](Observation-mii-exa-mikrobio-resistenzmechanismen-determinanten.md), [Observation/mii-exa-mikrobio-spezifische-bestimmung](Observation-mii-exa-mikrobio-spezifische-bestimmung.md), [Observation/mii-exa-mikrobio-spezifische-bestimmung-influenza-positiv](Observation-mii-exa-mikrobio-spezifische-bestimmung-influenza-positiv.md), [Observation/mii-exa-mikrobio-spezifische-bestimmung-vre-negativ](Observation-mii-exa-mikrobio-spezifische-bestimmung-vre-negativ.md), [Observation/mii-exa-mikrobio-spezifische-kultur](Observation-mii-exa-mikrobio-spezifische-kultur.md), [Observation/mii-exa-mikrobio-spezifische-kultur-vre-negativ](Observation-mii-exa-mikrobio-spezifische-kultur-vre-negativ.md), [Observation/mii-exa-mikrobio-spezifische-mikroskopie-auramin-negativ](Observation-mii-exa-mikrobio-spezifische-mikroskopie-auramin-negativ.md), [Observation/mii-exa-mikrobio-spezifische-mikroskopie-kinyoun-zweiplus](Observation-mii-exa-mikrobio-spezifische-mikroskopie-kinyoun-zweiplus.md), [Observation/mii-exa-mikrobio-spezifische-mikroskopie-leukozyten-gesichtsfeld](Observation-mii-exa-mikrobio-spezifische-mikroskopie-leukozyten-gesichtsfeld.md), [Observation/mii-exa-mikrobio-titer](Observation-mii-exa-mikrobio-titer.md), [Observation/mii-exa-mikrobio-virulenzfaktor](Observation-mii-exa-mikrobio-virulenzfaktor.md), [Observation/mii-exa-mikrobio-voraussichtliche-empfindlichkeit](Observation-mii-exa-mikrobio-voraussichtliche-empfindlichkeit.md), [Observation/mii-exa-mikrobio-workflow-vre-01-kultur](Observation-mii-exa-mikrobio-workflow-vre-01-kultur.md), [Observation/mii-exa-mikrobio-workflow-vre-02-identifikation](Observation-mii-exa-mikrobio-workflow-vre-02-identifikation.md) and [Observation/mii-exa-mikrobio-workflow-vre-03-empfindlichkeit](Observation-mii-exa-mikrobio-workflow-vre-03-empfindlichkeit.md)


* This material contains content that is copyright of SNOMED International. Implementers of these specifications must have the appropriate SNOMED CT Affiliate license - for more information contact [https://www.snomed.org/get-snomed](https://www.snomed.org/get-snomed) or [info@snomed.org](mailto:info@snomed.org).

* [SNOMED Clinical Terms&reg; (SNOMED CT&reg;)](http://hl7.org/fhir/R4/codesystem-snomedct.html): [MII_EX_Mikrobio_Faerbung](StructureDefinition-mii-ex-mikrobio-faerbung.md), [MII_PR_Mikrobio_Allgemeine_Bestimmung](StructureDefinition-mii-pr-mikrobio-allgemeine-bestimmung.md)... Show 71 more, [MII_PR_Mikrobio_Allgemeine_Kultur](StructureDefinition-mii-pr-mikrobio-allgemeine-kultur.md), [MII_PR_Mikrobio_Allgemeine_Mikroskopie](StructureDefinition-mii-pr-mikrobio-mikroskopie.md), [MII_PR_Mikrobio_Antigen_Antikoerper_Quantitativ](StructureDefinition-mii-pr-mikrobio-antigen-antikoerper-quantitativ.md), [MII_PR_Mikrobio_Aviditaet](StructureDefinition-mii-pr-mikrobio-aviditaet.md), [MII_PR_Mikrobio_Bartlett_Score](StructureDefinition-mii-pr-mikrobio-bartlett-score.md), [MII_PR_Mikrobio_Ct_Wert](StructureDefinition-mii-pr-mikrobio-ct-wert.md), [MII_PR_Mikrobio_Empfindlichkeit](StructureDefinition-mii-pr-mikrobio-empfindlichkeit.md), [MII_PR_Mikrobio_Keimzahl](StructureDefinition-mii-pr-mikrobio-keimzahl.md), [MII_PR_Mikrobio_MRGN_Klasse](StructureDefinition-mii-pr-mikrobio-mrgn-klasse.md), [MII_PR_Mikrobio_Molekulare_Pathogenlast](StructureDefinition-mii-pr-mikrobio-molekulare-pathogenlast.md), [MII_PR_Mikrobio_Nugent_Score](StructureDefinition-mii-pr-mikrobio-nugent-score.md), [MII_PR_Mikrobio_Probe](StructureDefinition-mii-pr-mikrobio-probe.md), [MII_PR_Mikrobio_Resistenzkategorie_Status](StructureDefinition-mii-pr-mikrobio-resistenzkategorie-status.md), [MII_PR_Mikrobio_Resistenzmechanismen_Determinanten](StructureDefinition-mii-pr-mikrobio-resistenzmechanismen-determinanten.md), [MII_PR_Mikrobio_Spezifische_Bestimmung](StructureDefinition-mii-pr-mikrobio-spezifische-bestimmung.md), [MII_PR_Mikrobio_Spezifische_Mikroskopie](StructureDefinition-mii-pr-mikrobio-spezifische-mikroskopie.md), [MII_PR_Mikrobio_Titer](StructureDefinition-mii-pr-mikrobio-titer.md), [MII_PR_Mikrobio_Virulenzfaktor](StructureDefinition-mii-pr-mikrobio-virulenzfaktor.md), [MII_PR_Mikrobio_Voraussichtliche_Empfindlichkeit](StructureDefinition-mii-pr-mikrobio-voraussichtliche-empfindlichkeit.md), [MII_VS_Labor_Laborergebnis_Semiquantitativ](ValueSet-mii-vs-labor-laborergebnis-semiquantitativ.md), [MII_VS_Mikrobio_Allgemeine_Bestimmung_Ergebnis_SNOMED](ValueSet-mii-vs-mikrobio-allgemeine-bestimmung-ergebnis-snomed.md), [MII_VS_Mikrobio_Allgemeine_Bestimmung_Methode_SNOMED](ValueSet-mii-vs-mikrobio-allgemeine-bestimmung-methode-snomed.md), [MII_VS_Mikrobio_Allgemeine_Kultur_Methode_SNOMED](ValueSet-mii-vs-mikrobio-allgemeine-kultur-methode-snomed.md), [MII_VS_Mikrobio_Antigen_Antikoerper_Methode_SNOMED](ValueSet-mii-vs-mikrobio-antigen-antikoerper-methode-snomed.md), [MII_VS_Mikrobio_Aviditaet_Ergebnis](ValueSet-mii-vs-mikrobio-aviditaet-ergebnis.md), [MII_VS_Mikrobio_Data_Absent_Reason](ValueSet-mii-vs-mikrobio-data-absent-reason.md), [MII_VS_Mikrobio_Detected_Not_Detected_SNOMED](ValueSet-mii-vs-mikrobio-detected-not-detected-snomed.md), [MII_VS_Mikrobio_Empfindlichkeit_Methode_SNOMED](ValueSet-mii-vs-mikrobio-empfindlichkeit-methode-snomed.md), [MII_VS_Mikrobio_Faerbung_SNOMED](ValueSet-mii-vs-mikrobio-faerbung-snomed.md), [MII_VS_Mikrobio_Kultur_Ergebnis_SNOMED](ValueSet-mii-vs-mikrobio-kultur-ergebnis-snomed.md), [MII_VS_Mikrobio_Mikroskopie_Semiquantitativ_SNOMED](ValueSet-mii-vs-mikrobio-mikroskopie-semiquantitativ-snomed.md), [MII_VS_Mikrobio_Molekulare_Pathogenlast_Methode_SNOMED](ValueSet-mii-vs-mikrobio-molekulare-pathogenlast-methode-snomed.md), [MII_VS_Mikrobio_Morphologie_Ergebnis_SNOMED](ValueSet-mii-vs-mikrobio-morphologie-ergebnis-snomed.md), [MII_VS_Mikrobio_Morphologie_Methode_SNOMED](ValueSet-mii-vs-mikrobio-morphologie-methode-snomed.md), [MII_VS_Mikrobio_Organismen_SNOMEDCT](ValueSet-mii-vs-mikrobio-organismen-snomedct.md), [MII_VS_Mikrobio_Resistenzkategorie_Status_Ergebnis](ValueSet-mii-vs-mikrobio-resistenzkategorie-status-ergebnis.md), [MII_VS_Mikrobio_Resistenzmechanismen_Methode_SNOMED](ValueSet-mii-vs-mikrobio-resistenzmechanismen-methode-snomed.md), [MII_VS_Mikrobio_Spezifische_Bestimmung_Ergebnis_SNOMED](ValueSet-mii-vs-mikrobio-spezifische-bestimmung-ergebnis-snomed.md), [MII_VS_Mikrobio_Spezifische_Bestimmung_Methode_SNOMED](ValueSet-mii-vs-mikrobio-spezifische-bestimmung-methode-snomed.md), [MII_VS_Mikrobio_Susceptibility](ValueSet-mii-vs-mikrobio-susceptibility.md), [MII_VS_Mikrobio_Titer_Methode_SNOMED](ValueSet-mii-vs-mikrobio-titer-methode-snomed.md), [Observation/mii-exa-mikrobio-allgemeine-bestimmung](Observation-mii-exa-mikrobio-allgemeine-bestimmung.md), [Observation/mii-exa-mikrobio-allgemeine-kultur](Observation-mii-exa-mikrobio-allgemeine-kultur.md), [Observation/mii-exa-mikrobio-allgemeine-kultur-methodenneutral](Observation-mii-exa-mikrobio-allgemeine-kultur-methodenneutral.md), [Observation/mii-exa-mikrobio-antigen-antikoerper-quantitativ](Observation-mii-exa-mikrobio-antigen-antikoerper-quantitativ.md), [Observation/mii-exa-mikrobio-aviditaet](Observation-mii-exa-mikrobio-aviditaet.md), [Observation/mii-exa-mikrobio-bartlett-score](Observation-mii-exa-mikrobio-bartlett-score.md), [Observation/mii-exa-mikrobio-ct-wert](Observation-mii-exa-mikrobio-ct-wert.md), [Observation/mii-exa-mikrobio-keimzahl](Observation-mii-exa-mikrobio-keimzahl.md), [Observation/mii-exa-mikrobio-keimzahl-katheterspitze](Observation-mii-exa-mikrobio-keimzahl-katheterspitze.md), [Observation/mii-exa-mikrobio-mikroskopie](Observation-mii-exa-mikrobio-mikroskopie.md), [Observation/mii-exa-mikrobio-mikroskopie-gram-kokken-wenig](Observation-mii-exa-mikrobio-mikroskopie-gram-kokken-wenig.md), [Observation/mii-exa-mikrobio-molekulare-pathogenlast](Observation-mii-exa-mikrobio-molekulare-pathogenlast.md), [Observation/mii-exa-mikrobio-nugent-score](Observation-mii-exa-mikrobio-nugent-score.md), [Observation/mii-exa-mikrobio-resistenzkategorie-vre-negativ](Observation-mii-exa-mikrobio-resistenzkategorie-vre-negativ.md), [Observation/mii-exa-mikrobio-resistenzkategorie-vre-positiv](Observation-mii-exa-mikrobio-resistenzkategorie-vre-positiv.md), [Observation/mii-exa-mikrobio-resistenzmechanismen-determinanten](Observation-mii-exa-mikrobio-resistenzmechanismen-determinanten.md), [Observation/mii-exa-mikrobio-spezifische-bestimmung](Observation-mii-exa-mikrobio-spezifische-bestimmung.md), [Observation/mii-exa-mikrobio-spezifische-bestimmung-influenza-positiv](Observation-mii-exa-mikrobio-spezifische-bestimmung-influenza-positiv.md), [Observation/mii-exa-mikrobio-spezifische-bestimmung-vre-negativ](Observation-mii-exa-mikrobio-spezifische-bestimmung-vre-negativ.md), [Observation/mii-exa-mikrobio-spezifische-kultur](Observation-mii-exa-mikrobio-spezifische-kultur.md), [Observation/mii-exa-mikrobio-spezifische-kultur-vre-negativ](Observation-mii-exa-mikrobio-spezifische-kultur-vre-negativ.md), [Observation/mii-exa-mikrobio-spezifische-mikroskopie-auramin-negativ](Observation-mii-exa-mikrobio-spezifische-mikroskopie-auramin-negativ.md), [Observation/mii-exa-mikrobio-spezifische-mikroskopie-kinyoun-zweiplus](Observation-mii-exa-mikrobio-spezifische-mikroskopie-kinyoun-zweiplus.md), [Observation/mii-exa-mikrobio-spezifische-mikroskopie-leukozyten-gesichtsfeld](Observation-mii-exa-mikrobio-spezifische-mikroskopie-leukozyten-gesichtsfeld.md), [Observation/mii-exa-mikrobio-titer](Observation-mii-exa-mikrobio-titer.md), [Observation/mii-exa-mikrobio-virulenzfaktor](Observation-mii-exa-mikrobio-virulenzfaktor.md), [Observation/mii-exa-mikrobio-workflow-vre-01-kultur](Observation-mii-exa-mikrobio-workflow-vre-01-kultur.md), [Observation/mii-exa-mikrobio-workflow-vre-02-identifikation](Observation-mii-exa-mikrobio-workflow-vre-02-identifikation.md), [Specimen/mii-exa-mikrobio-probe](Specimen-mii-exa-mikrobio-probe.md) and [Specimen/mii-exa-mikrobio-probe-katheterspitze](Specimen-mii-exa-mikrobio-probe-katheterspitze.md)


* This material derives from the HL7 Terminology (THO). THO is copyright ©1989+ Health Level Seven International and is made available under the CC0 designation. For more licensing information see: [https://terminology.hl7.org/license.html](https://terminology.hl7.org/license.html)

* [Observation Category Codes](http://terminology.hl7.org/7.2.0/CodeSystem-observation-category.html): [MII_PR_Mikrobio_Allgemeine_Bestimmung](StructureDefinition-mii-pr-mikrobio-allgemeine-bestimmung.md), [MII_PR_Mikrobio_Allgemeine_Kultur](StructureDefinition-mii-pr-mikrobio-allgemeine-kultur.md)... Show 51 more, [MII_PR_Mikrobio_Allgemeine_Mikroskopie](StructureDefinition-mii-pr-mikrobio-mikroskopie.md), [MII_PR_Mikrobio_Antigen_Antikoerper_Quantitativ](StructureDefinition-mii-pr-mikrobio-antigen-antikoerper-quantitativ.md), [MII_PR_Mikrobio_Aviditaet](StructureDefinition-mii-pr-mikrobio-aviditaet.md), [MII_PR_Mikrobio_Bartlett_Score](StructureDefinition-mii-pr-mikrobio-bartlett-score.md), [MII_PR_Mikrobio_Ct_Wert](StructureDefinition-mii-pr-mikrobio-ct-wert.md), [MII_PR_Mikrobio_Empfindlichkeit](StructureDefinition-mii-pr-mikrobio-empfindlichkeit.md), [MII_PR_Mikrobio_Keimzahl](StructureDefinition-mii-pr-mikrobio-keimzahl.md), [MII_PR_Mikrobio_MRGN_Klasse](StructureDefinition-mii-pr-mikrobio-mrgn-klasse.md), [MII_PR_Mikrobio_Molekulare_Pathogenlast](StructureDefinition-mii-pr-mikrobio-molekulare-pathogenlast.md), [MII_PR_Mikrobio_Nugent_Score](StructureDefinition-mii-pr-mikrobio-nugent-score.md), [MII_PR_Mikrobio_Resistenzkategorie_Status](StructureDefinition-mii-pr-mikrobio-resistenzkategorie-status.md), [MII_PR_Mikrobio_Resistenzmechanismen_Determinanten](StructureDefinition-mii-pr-mikrobio-resistenzmechanismen-determinanten.md), [MII_PR_Mikrobio_Spezifische_Bestimmung](StructureDefinition-mii-pr-mikrobio-spezifische-bestimmung.md), [MII_PR_Mikrobio_Spezifische_Mikroskopie](StructureDefinition-mii-pr-mikrobio-spezifische-mikroskopie.md), [MII_PR_Mikrobio_Titer](StructureDefinition-mii-pr-mikrobio-titer.md), [MII_PR_Mikrobio_Virulenzfaktor](StructureDefinition-mii-pr-mikrobio-virulenzfaktor.md), [MII_PR_Mikrobio_Voraussichtliche_Empfindlichkeit](StructureDefinition-mii-pr-mikrobio-voraussichtliche-empfindlichkeit.md), [Observation/mii-exa-mikrobio-allgemeine-bestimmung](Observation-mii-exa-mikrobio-allgemeine-bestimmung.md), [Observation/mii-exa-mikrobio-allgemeine-kultur](Observation-mii-exa-mikrobio-allgemeine-kultur.md), [Observation/mii-exa-mikrobio-allgemeine-kultur-methodenneutral](Observation-mii-exa-mikrobio-allgemeine-kultur-methodenneutral.md), [Observation/mii-exa-mikrobio-antigen-antikoerper-quantitativ](Observation-mii-exa-mikrobio-antigen-antikoerper-quantitativ.md), [Observation/mii-exa-mikrobio-aviditaet](Observation-mii-exa-mikrobio-aviditaet.md), [Observation/mii-exa-mikrobio-bartlett-score](Observation-mii-exa-mikrobio-bartlett-score.md), [Observation/mii-exa-mikrobio-ct-wert](Observation-mii-exa-mikrobio-ct-wert.md), [Observation/mii-exa-mikrobio-empfindlichkeit](Observation-mii-exa-mikrobio-empfindlichkeit.md), [Observation/mii-exa-mikrobio-empfindlichkeit-nur-kategorie](Observation-mii-exa-mikrobio-empfindlichkeit-nur-kategorie.md), [Observation/mii-exa-mikrobio-keimzahl](Observation-mii-exa-mikrobio-keimzahl.md), [Observation/mii-exa-mikrobio-keimzahl-katheterspitze](Observation-mii-exa-mikrobio-keimzahl-katheterspitze.md), [Observation/mii-exa-mikrobio-mikroskopie](Observation-mii-exa-mikrobio-mikroskopie.md), [Observation/mii-exa-mikrobio-mikroskopie-gram-kokken-wenig](Observation-mii-exa-mikrobio-mikroskopie-gram-kokken-wenig.md), [Observation/mii-exa-mikrobio-molekulare-pathogenlast](Observation-mii-exa-mikrobio-molekulare-pathogenlast.md), [Observation/mii-exa-mikrobio-mrgn-klasse](Observation-mii-exa-mikrobio-mrgn-klasse.md), [Observation/mii-exa-mikrobio-mrgn-klasse-negativ](Observation-mii-exa-mikrobio-mrgn-klasse-negativ.md), [Observation/mii-exa-mikrobio-nugent-score](Observation-mii-exa-mikrobio-nugent-score.md), [Observation/mii-exa-mikrobio-resistenzkategorie-vre-negativ](Observation-mii-exa-mikrobio-resistenzkategorie-vre-negativ.md), [Observation/mii-exa-mikrobio-resistenzkategorie-vre-positiv](Observation-mii-exa-mikrobio-resistenzkategorie-vre-positiv.md), [Observation/mii-exa-mikrobio-resistenzmechanismen-determinanten](Observation-mii-exa-mikrobio-resistenzmechanismen-determinanten.md), [Observation/mii-exa-mikrobio-spezifische-bestimmung](Observation-mii-exa-mikrobio-spezifische-bestimmung.md), [Observation/mii-exa-mikrobio-spezifische-bestimmung-influenza-positiv](Observation-mii-exa-mikrobio-spezifische-bestimmung-influenza-positiv.md), [Observation/mii-exa-mikrobio-spezifische-bestimmung-vre-negativ](Observation-mii-exa-mikrobio-spezifische-bestimmung-vre-negativ.md), [Observation/mii-exa-mikrobio-spezifische-kultur](Observation-mii-exa-mikrobio-spezifische-kultur.md), [Observation/mii-exa-mikrobio-spezifische-kultur-vre-negativ](Observation-mii-exa-mikrobio-spezifische-kultur-vre-negativ.md), [Observation/mii-exa-mikrobio-spezifische-mikroskopie-auramin-negativ](Observation-mii-exa-mikrobio-spezifische-mikroskopie-auramin-negativ.md), [Observation/mii-exa-mikrobio-spezifische-mikroskopie-kinyoun-zweiplus](Observation-mii-exa-mikrobio-spezifische-mikroskopie-kinyoun-zweiplus.md), [Observation/mii-exa-mikrobio-spezifische-mikroskopie-leukozyten-gesichtsfeld](Observation-mii-exa-mikrobio-spezifische-mikroskopie-leukozyten-gesichtsfeld.md), [Observation/mii-exa-mikrobio-titer](Observation-mii-exa-mikrobio-titer.md), [Observation/mii-exa-mikrobio-virulenzfaktor](Observation-mii-exa-mikrobio-virulenzfaktor.md), [Observation/mii-exa-mikrobio-voraussichtliche-empfindlichkeit](Observation-mii-exa-mikrobio-voraussichtliche-empfindlichkeit.md), [Observation/mii-exa-mikrobio-workflow-vre-01-kultur](Observation-mii-exa-mikrobio-workflow-vre-01-kultur.md), [Observation/mii-exa-mikrobio-workflow-vre-02-identifikation](Observation-mii-exa-mikrobio-workflow-vre-02-identifikation.md) and [Observation/mii-exa-mikrobio-workflow-vre-03-empfindlichkeit](Observation-mii-exa-mikrobio-workflow-vre-03-empfindlichkeit.md)
* [diagnosticServiceSectionId](http://terminology.hl7.org/7.2.0/CodeSystem-v2-0074.html): [DiagnosticReport/mii-exa-mikrobio-diagnostic-report](DiagnosticReport-mii-exa-mikrobio-diagnostic-report.md), [MII_PR_Mikrobio_Allgemeine_Bestimmung](StructureDefinition-mii-pr-mikrobio-allgemeine-bestimmung.md)... Show 53 more, [MII_PR_Mikrobio_Allgemeine_Kultur](StructureDefinition-mii-pr-mikrobio-allgemeine-kultur.md), [MII_PR_Mikrobio_Allgemeine_Mikroskopie](StructureDefinition-mii-pr-mikrobio-mikroskopie.md), [MII_PR_Mikrobio_Antigen_Antikoerper_Quantitativ](StructureDefinition-mii-pr-mikrobio-antigen-antikoerper-quantitativ.md), [MII_PR_Mikrobio_Aviditaet](StructureDefinition-mii-pr-mikrobio-aviditaet.md), [MII_PR_Mikrobio_Bartlett_Score](StructureDefinition-mii-pr-mikrobio-bartlett-score.md), [MII_PR_Mikrobio_Ct_Wert](StructureDefinition-mii-pr-mikrobio-ct-wert.md), [MII_PR_Mikrobio_Diagnostic_Report](StructureDefinition-mii-pr-mikrobio-diagnostic-report.md), [MII_PR_Mikrobio_Empfindlichkeit](StructureDefinition-mii-pr-mikrobio-empfindlichkeit.md), [MII_PR_Mikrobio_Keimzahl](StructureDefinition-mii-pr-mikrobio-keimzahl.md), [MII_PR_Mikrobio_MRGN_Klasse](StructureDefinition-mii-pr-mikrobio-mrgn-klasse.md), [MII_PR_Mikrobio_Molekulare_Pathogenlast](StructureDefinition-mii-pr-mikrobio-molekulare-pathogenlast.md), [MII_PR_Mikrobio_Nugent_Score](StructureDefinition-mii-pr-mikrobio-nugent-score.md), [MII_PR_Mikrobio_Resistenzkategorie_Status](StructureDefinition-mii-pr-mikrobio-resistenzkategorie-status.md), [MII_PR_Mikrobio_Resistenzmechanismen_Determinanten](StructureDefinition-mii-pr-mikrobio-resistenzmechanismen-determinanten.md), [MII_PR_Mikrobio_Spezifische_Bestimmung](StructureDefinition-mii-pr-mikrobio-spezifische-bestimmung.md), [MII_PR_Mikrobio_Spezifische_Mikroskopie](StructureDefinition-mii-pr-mikrobio-spezifische-mikroskopie.md), [MII_PR_Mikrobio_Titer](StructureDefinition-mii-pr-mikrobio-titer.md), [MII_PR_Mikrobio_Virulenzfaktor](StructureDefinition-mii-pr-mikrobio-virulenzfaktor.md), [MII_PR_Mikrobio_Voraussichtliche_Empfindlichkeit](StructureDefinition-mii-pr-mikrobio-voraussichtliche-empfindlichkeit.md), [Observation/mii-exa-mikrobio-allgemeine-bestimmung](Observation-mii-exa-mikrobio-allgemeine-bestimmung.md), [Observation/mii-exa-mikrobio-allgemeine-kultur](Observation-mii-exa-mikrobio-allgemeine-kultur.md), [Observation/mii-exa-mikrobio-allgemeine-kultur-methodenneutral](Observation-mii-exa-mikrobio-allgemeine-kultur-methodenneutral.md), [Observation/mii-exa-mikrobio-antigen-antikoerper-quantitativ](Observation-mii-exa-mikrobio-antigen-antikoerper-quantitativ.md), [Observation/mii-exa-mikrobio-aviditaet](Observation-mii-exa-mikrobio-aviditaet.md), [Observation/mii-exa-mikrobio-bartlett-score](Observation-mii-exa-mikrobio-bartlett-score.md), [Observation/mii-exa-mikrobio-ct-wert](Observation-mii-exa-mikrobio-ct-wert.md), [Observation/mii-exa-mikrobio-empfindlichkeit](Observation-mii-exa-mikrobio-empfindlichkeit.md), [Observation/mii-exa-mikrobio-empfindlichkeit-nur-kategorie](Observation-mii-exa-mikrobio-empfindlichkeit-nur-kategorie.md), [Observation/mii-exa-mikrobio-keimzahl](Observation-mii-exa-mikrobio-keimzahl.md), [Observation/mii-exa-mikrobio-keimzahl-katheterspitze](Observation-mii-exa-mikrobio-keimzahl-katheterspitze.md), [Observation/mii-exa-mikrobio-mikroskopie](Observation-mii-exa-mikrobio-mikroskopie.md), [Observation/mii-exa-mikrobio-mikroskopie-gram-kokken-wenig](Observation-mii-exa-mikrobio-mikroskopie-gram-kokken-wenig.md), [Observation/mii-exa-mikrobio-molekulare-pathogenlast](Observation-mii-exa-mikrobio-molekulare-pathogenlast.md), [Observation/mii-exa-mikrobio-mrgn-klasse](Observation-mii-exa-mikrobio-mrgn-klasse.md), [Observation/mii-exa-mikrobio-mrgn-klasse-negativ](Observation-mii-exa-mikrobio-mrgn-klasse-negativ.md), [Observation/mii-exa-mikrobio-nugent-score](Observation-mii-exa-mikrobio-nugent-score.md), [Observation/mii-exa-mikrobio-resistenzkategorie-vre-negativ](Observation-mii-exa-mikrobio-resistenzkategorie-vre-negativ.md), [Observation/mii-exa-mikrobio-resistenzkategorie-vre-positiv](Observation-mii-exa-mikrobio-resistenzkategorie-vre-positiv.md), [Observation/mii-exa-mikrobio-resistenzmechanismen-determinanten](Observation-mii-exa-mikrobio-resistenzmechanismen-determinanten.md), [Observation/mii-exa-mikrobio-spezifische-bestimmung](Observation-mii-exa-mikrobio-spezifische-bestimmung.md), [Observation/mii-exa-mikrobio-spezifische-bestimmung-influenza-positiv](Observation-mii-exa-mikrobio-spezifische-bestimmung-influenza-positiv.md), [Observation/mii-exa-mikrobio-spezifische-bestimmung-vre-negativ](Observation-mii-exa-mikrobio-spezifische-bestimmung-vre-negativ.md), [Observation/mii-exa-mikrobio-spezifische-kultur](Observation-mii-exa-mikrobio-spezifische-kultur.md), [Observation/mii-exa-mikrobio-spezifische-kultur-vre-negativ](Observation-mii-exa-mikrobio-spezifische-kultur-vre-negativ.md), [Observation/mii-exa-mikrobio-spezifische-mikroskopie-auramin-negativ](Observation-mii-exa-mikrobio-spezifische-mikroskopie-auramin-negativ.md), [Observation/mii-exa-mikrobio-spezifische-mikroskopie-kinyoun-zweiplus](Observation-mii-exa-mikrobio-spezifische-mikroskopie-kinyoun-zweiplus.md), [Observation/mii-exa-mikrobio-spezifische-mikroskopie-leukozyten-gesichtsfeld](Observation-mii-exa-mikrobio-spezifische-mikroskopie-leukozyten-gesichtsfeld.md), [Observation/mii-exa-mikrobio-titer](Observation-mii-exa-mikrobio-titer.md), [Observation/mii-exa-mikrobio-virulenzfaktor](Observation-mii-exa-mikrobio-virulenzfaktor.md), [Observation/mii-exa-mikrobio-voraussichtliche-empfindlichkeit](Observation-mii-exa-mikrobio-voraussichtliche-empfindlichkeit.md), [Observation/mii-exa-mikrobio-workflow-vre-01-kultur](Observation-mii-exa-mikrobio-workflow-vre-01-kultur.md), [Observation/mii-exa-mikrobio-workflow-vre-02-identifikation](Observation-mii-exa-mikrobio-workflow-vre-02-identifikation.md) and [Observation/mii-exa-mikrobio-workflow-vre-03-empfindlichkeit](Observation-mii-exa-mikrobio-workflow-vre-03-empfindlichkeit.md)
* [identifierType](http://terminology.hl7.org/7.2.0/CodeSystem-v2-0203.html): [DiagnosticReport/mii-exa-mikrobio-diagnostic-report](DiagnosticReport-mii-exa-mikrobio-diagnostic-report.md), [MII_PR_Mikrobio_Allgemeine_Bestimmung](StructureDefinition-mii-pr-mikrobio-allgemeine-bestimmung.md)... Show 53 more, [MII_PR_Mikrobio_Allgemeine_Kultur](StructureDefinition-mii-pr-mikrobio-allgemeine-kultur.md), [MII_PR_Mikrobio_Allgemeine_Mikroskopie](StructureDefinition-mii-pr-mikrobio-mikroskopie.md), [MII_PR_Mikrobio_Antigen_Antikoerper_Quantitativ](StructureDefinition-mii-pr-mikrobio-antigen-antikoerper-quantitativ.md), [MII_PR_Mikrobio_Aviditaet](StructureDefinition-mii-pr-mikrobio-aviditaet.md), [MII_PR_Mikrobio_Bartlett_Score](StructureDefinition-mii-pr-mikrobio-bartlett-score.md), [MII_PR_Mikrobio_Ct_Wert](StructureDefinition-mii-pr-mikrobio-ct-wert.md), [MII_PR_Mikrobio_Diagnostic_Report](StructureDefinition-mii-pr-mikrobio-diagnostic-report.md), [MII_PR_Mikrobio_Empfindlichkeit](StructureDefinition-mii-pr-mikrobio-empfindlichkeit.md), [MII_PR_Mikrobio_Keimzahl](StructureDefinition-mii-pr-mikrobio-keimzahl.md), [MII_PR_Mikrobio_MRGN_Klasse](StructureDefinition-mii-pr-mikrobio-mrgn-klasse.md), [MII_PR_Mikrobio_Molekulare_Pathogenlast](StructureDefinition-mii-pr-mikrobio-molekulare-pathogenlast.md), [MII_PR_Mikrobio_Nugent_Score](StructureDefinition-mii-pr-mikrobio-nugent-score.md), [MII_PR_Mikrobio_Resistenzkategorie_Status](StructureDefinition-mii-pr-mikrobio-resistenzkategorie-status.md), [MII_PR_Mikrobio_Resistenzmechanismen_Determinanten](StructureDefinition-mii-pr-mikrobio-resistenzmechanismen-determinanten.md), [MII_PR_Mikrobio_Spezifische_Bestimmung](StructureDefinition-mii-pr-mikrobio-spezifische-bestimmung.md), [MII_PR_Mikrobio_Spezifische_Mikroskopie](StructureDefinition-mii-pr-mikrobio-spezifische-mikroskopie.md), [MII_PR_Mikrobio_Titer](StructureDefinition-mii-pr-mikrobio-titer.md), [MII_PR_Mikrobio_Virulenzfaktor](StructureDefinition-mii-pr-mikrobio-virulenzfaktor.md), [MII_PR_Mikrobio_Voraussichtliche_Empfindlichkeit](StructureDefinition-mii-pr-mikrobio-voraussichtliche-empfindlichkeit.md), [Observation/mii-exa-mikrobio-allgemeine-bestimmung](Observation-mii-exa-mikrobio-allgemeine-bestimmung.md), [Observation/mii-exa-mikrobio-allgemeine-kultur](Observation-mii-exa-mikrobio-allgemeine-kultur.md), [Observation/mii-exa-mikrobio-allgemeine-kultur-methodenneutral](Observation-mii-exa-mikrobio-allgemeine-kultur-methodenneutral.md), [Observation/mii-exa-mikrobio-antigen-antikoerper-quantitativ](Observation-mii-exa-mikrobio-antigen-antikoerper-quantitativ.md), [Observation/mii-exa-mikrobio-aviditaet](Observation-mii-exa-mikrobio-aviditaet.md), [Observation/mii-exa-mikrobio-bartlett-score](Observation-mii-exa-mikrobio-bartlett-score.md), [Observation/mii-exa-mikrobio-ct-wert](Observation-mii-exa-mikrobio-ct-wert.md), [Observation/mii-exa-mikrobio-empfindlichkeit](Observation-mii-exa-mikrobio-empfindlichkeit.md), [Observation/mii-exa-mikrobio-empfindlichkeit-nur-kategorie](Observation-mii-exa-mikrobio-empfindlichkeit-nur-kategorie.md), [Observation/mii-exa-mikrobio-keimzahl](Observation-mii-exa-mikrobio-keimzahl.md), [Observation/mii-exa-mikrobio-keimzahl-katheterspitze](Observation-mii-exa-mikrobio-keimzahl-katheterspitze.md), [Observation/mii-exa-mikrobio-mikroskopie](Observation-mii-exa-mikrobio-mikroskopie.md), [Observation/mii-exa-mikrobio-mikroskopie-gram-kokken-wenig](Observation-mii-exa-mikrobio-mikroskopie-gram-kokken-wenig.md), [Observation/mii-exa-mikrobio-molekulare-pathogenlast](Observation-mii-exa-mikrobio-molekulare-pathogenlast.md), [Observation/mii-exa-mikrobio-mrgn-klasse](Observation-mii-exa-mikrobio-mrgn-klasse.md), [Observation/mii-exa-mikrobio-mrgn-klasse-negativ](Observation-mii-exa-mikrobio-mrgn-klasse-negativ.md), [Observation/mii-exa-mikrobio-nugent-score](Observation-mii-exa-mikrobio-nugent-score.md), [Observation/mii-exa-mikrobio-resistenzkategorie-vre-negativ](Observation-mii-exa-mikrobio-resistenzkategorie-vre-negativ.md), [Observation/mii-exa-mikrobio-resistenzkategorie-vre-positiv](Observation-mii-exa-mikrobio-resistenzkategorie-vre-positiv.md), [Observation/mii-exa-mikrobio-resistenzmechanismen-determinanten](Observation-mii-exa-mikrobio-resistenzmechanismen-determinanten.md), [Observation/mii-exa-mikrobio-spezifische-bestimmung](Observation-mii-exa-mikrobio-spezifische-bestimmung.md), [Observation/mii-exa-mikrobio-spezifische-bestimmung-influenza-positiv](Observation-mii-exa-mikrobio-spezifische-bestimmung-influenza-positiv.md), [Observation/mii-exa-mikrobio-spezifische-bestimmung-vre-negativ](Observation-mii-exa-mikrobio-spezifische-bestimmung-vre-negativ.md), [Observation/mii-exa-mikrobio-spezifische-kultur](Observation-mii-exa-mikrobio-spezifische-kultur.md), [Observation/mii-exa-mikrobio-spezifische-kultur-vre-negativ](Observation-mii-exa-mikrobio-spezifische-kultur-vre-negativ.md), [Observation/mii-exa-mikrobio-spezifische-mikroskopie-auramin-negativ](Observation-mii-exa-mikrobio-spezifische-mikroskopie-auramin-negativ.md), [Observation/mii-exa-mikrobio-spezifische-mikroskopie-kinyoun-zweiplus](Observation-mii-exa-mikrobio-spezifische-mikroskopie-kinyoun-zweiplus.md), [Observation/mii-exa-mikrobio-spezifische-mikroskopie-leukozyten-gesichtsfeld](Observation-mii-exa-mikrobio-spezifische-mikroskopie-leukozyten-gesichtsfeld.md), [Observation/mii-exa-mikrobio-titer](Observation-mii-exa-mikrobio-titer.md), [Observation/mii-exa-mikrobio-virulenzfaktor](Observation-mii-exa-mikrobio-virulenzfaktor.md), [Observation/mii-exa-mikrobio-voraussichtliche-empfindlichkeit](Observation-mii-exa-mikrobio-voraussichtliche-empfindlichkeit.md), [Observation/mii-exa-mikrobio-workflow-vre-01-kultur](Observation-mii-exa-mikrobio-workflow-vre-01-kultur.md), [Observation/mii-exa-mikrobio-workflow-vre-02-identifikation](Observation-mii-exa-mikrobio-workflow-vre-02-identifikation.md) and [Observation/mii-exa-mikrobio-workflow-vre-03-empfindlichkeit](Observation-mii-exa-mikrobio-workflow-vre-03-empfindlichkeit.md)
* [ObservationInterpretation](http://terminology.hl7.org/7.2.0/CodeSystem-v3-ObservationInterpretation.html): [MII_PR_Mikrobio_Aviditaet](StructureDefinition-mii-pr-mikrobio-aviditaet.md), [MII_PR_Mikrobio_Empfindlichkeit](StructureDefinition-mii-pr-mikrobio-empfindlichkeit.md)... Show 10 more, [MII_PR_Mikrobio_Voraussichtliche_Empfindlichkeit](StructureDefinition-mii-pr-mikrobio-voraussichtliche-empfindlichkeit.md), [MII_VS_Mikrobio_Aviditaet_Ergebnis](ValueSet-mii-vs-mikrobio-aviditaet-ergebnis.md), [MII_VS_Mikrobio_Susceptibility](ValueSet-mii-vs-mikrobio-susceptibility.md), [MII_VS_Mikrobio_Voraussichtliche_Empfindlichkeit](ValueSet-mii-vs-mikrobio-voraussichtliche-empfindlichkeit.md), [Observation/mii-exa-mikrobio-aviditaet](Observation-mii-exa-mikrobio-aviditaet.md), [Observation/mii-exa-mikrobio-empfindlichkeit](Observation-mii-exa-mikrobio-empfindlichkeit.md), [Observation/mii-exa-mikrobio-empfindlichkeit-nur-kategorie](Observation-mii-exa-mikrobio-empfindlichkeit-nur-kategorie.md), [Observation/mii-exa-mikrobio-keimzahl-katheterspitze](Observation-mii-exa-mikrobio-keimzahl-katheterspitze.md), [Observation/mii-exa-mikrobio-voraussichtliche-empfindlichkeit](Observation-mii-exa-mikrobio-voraussichtliche-empfindlichkeit.md) and [Observation/mii-exa-mikrobio-workflow-vre-03-empfindlichkeit](Observation-mii-exa-mikrobio-workflow-vre-03-empfindlichkeit.md)


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
    "url" : "http://hl7.org/fhir/StructureDefinition/resource-approvalDate",
    "valueDate" : "2026-09-14"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/resource-lastReviewDate",
    "valueDate" : "2026-09-14"
  },
  {
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
      "valueString" : "2027.0.0-ballot2"
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
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-author",
    "valueContactDetail" : {
      "telecom" : [{
        "system" : "email",
        "value" : "pw@gefyra.de"
      }]
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
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-topic",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl",
        "code" : "C16851"
      }]
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-topic",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl",
        "code" : "C217438"
      }]
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-topic",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl",
        "code" : "C25294"
      }]
    }
  }],
  "url" : "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/ImplementationGuide/mii-ig-mikrobiologie",
  "version" : "2027.0.0-ballot2",
  "name" : "MII_IG_Mikrobiologie",
  "title" : "MII Implementation Guide Microbiology",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-09-14",
  "publisher" : "Medizininformatik Initiative",
  "_publisher" : {
    "extension" : [{
      "extension" : [{
        "url" : "lang",
        "valueCode" : "de"
      },
      {
        "url" : "content",
        "valueString" : "Medizininformatik Initiative"
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/translation"
    }]
  },
  "contact" : [{
    "name" : "Medizininformatik Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de"
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
    "id" : "de_medizininformatikinitiative_kerndatensatz_laborbefund",
    "uri" : "https://www.medizininformatik-initiative.de/fhir/core/modul-labor/ImplementationGuide/mii-ig-labor",
    "packageId" : "de.medizininformatikinitiative.kerndatensatz.laborbefund",
    "version" : "2027.0.0-ballot"
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
    "version" : "2.0.1"
  },
  {
    "id" : "hl7_fhir_uv_extensions_r4",
    "uri" : "http://hl7.org/fhir/extensions/ImplementationGuide/hl7.fhir.uv.extensions",
    "packageId" : "hl7.fhir.uv.extensions.r4",
    "version" : "5.2.0"
  },
  {
    "id" : "hl7_terminology_r4",
    "uri" : "http://terminology.hl7.org/ImplementationGuide/hl7.terminology",
    "packageId" : "hl7.terminology.r4",
    "version" : "7.1.0"
  },
  {
    "id" : "de_medizininformatikinitiative_kerndatensatz_biobank",
    "uri" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/ImplementationGuide/mii-ig-biobank",
    "packageId" : "de.medizininformatikinitiative.kerndatensatz.biobank",
    "version" : "2027.0.0-ballot"
  }],
  "definition" : {
    "extension" : [{
      "extension" : [{
        "url" : "code",
        "valueString" : "copyrightyear"
      },
      {
        "url" : "value",
        "valueString" : "2019+"
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
        "valueString" : "ballot"
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
        "valueString" : "2019+"
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
        "valueString" : "ballot"
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
        "valueString" : "Parameters"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Parameters-mii-param-mikrobio-manifest.html"
      }],
      "reference" : {
        "reference" : "Parameters/mii-param-mikrobio-manifest"
      },
      "name" : "Expansion Parameters Manifest",
      "description" : "Gepinnte CodeSystem-Versionen, gegen die jedes ValueSet dieses Leitfadens expandiert wird.",
      "exampleBoolean" : false
    },
    {
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
      "name" : "MII CPS Microbiology Metadata",
      "description" : "CapabilityStatement for the MII Microbiology module 2027.",
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
      "name" : "MII CS Microbiology MRGN Result",
      "description" : "CodeSystem for results of the MRGN classification that cannot be represented with LOINC. The LOINC answer list LL6195-3 for 99780-9 contains only 2MRGN, 3MRGN and 4MRGN and therefore no negative value.",
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
      "name" : "MII CS Microbiology Resistance Category",
      "description" : "Investigation codes (Observation.code) for assessing a detected pathogen with regard to a defined resistance category. Each code names the assessed category; the result of the assessment is in Observation.value.",
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
      "name" : "MII CS Microbiology Susceptibility Norm",
      "description" : "CodeSystem for coding the norms used to interpret the susceptibility of microorganisms to antimicrobial substances.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-ex-mikrobio-faerbung.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-ex-mikrobio-faerbung"
      },
      "name" : "MII EX Microbiology Staining",
      "description" : "Staining technique used for the microscopic examination, coded with the same SNOMED CT hierarchy as the European laboratory coordination.",
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
      "name" : "MII EX Microbiology Susceptibility Norm",
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
        "valueUri" : "Observation-mii-exa-mikrobio-antigen-antikoerper-quantitativ.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-mikrobio-antigen-antikoerper-quantitativ"
      },
      "name" : "MII EXA Microbiology Antigen Antibody Quantitative",
      "description" : "Quantitative antibody determination in serum, using the example of hepatitis B surface antibodies.",
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
      "name" : "MII EXA Microbiology Avidity",
      "description" : "Avidity determination of CMV IgG antibodies; the measured value stays in value, the classification is in interpretation.",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-aviditaet"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-mikrobio-bartlett-score.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-mikrobio-bartlett-score"
      },
      "name" : "MII EXA Microbiology Bartlett Score",
      "description" : "Bartlett score of a sputum specimen to assess whether it is suitable for culture.",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-bartlett-score"
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
      "name" : "MII EXA Microbiology Colony Count",
      "description" : "Colony count as colony-forming units per millilitre.",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-keimzahl"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-mikrobio-keimzahl-katheterspitze.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-mikrobio-keimzahl-katheterspitze"
      },
      "name" : "MII EXA Microbiology Colony Count Catheter Tip",
      "description" : "Colony count of a catheter tip in colony-forming units without a denominator. The reference quantity is in Specimen.type.",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-keimzahl"
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
      "name" : "MII EXA Microbiology Ct Value",
      "description" : "Cycle threshold of a real-time PCR for influenza A H3.",
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
      "name" : "MII EXA Microbiology Diagnostic Report",
      "description" : "Microbiological report that summarises the associated investigations.",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-diagnostic-report"
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
      "name" : "MII EXA Microbiology General Culture",
      "description" : "Untargeted culture with growth detected, aerobic culture.",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-allgemeine-kultur"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-mikrobio-allgemeine-kultur-methodenneutral.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-mikrobio-allgemeine-kultur-methodenneutral"
      },
      "name" : "MII EXA Microbiology General Culture Method-Neutral Code",
      "description" : "Untargeted culture without growth using the method-neutral investigation code 41852-5: only the method identifies the investigation as a culture.",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-allgemeine-kultur"
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
      "name" : "MII EXA Microbiology General Determination",
      "description" : "Untargeted pathogen identification from a specimen, declared as a reflex follow-up investigation of the general culture.",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-allgemeine-bestimmung"
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
      "name" : "MII EXA Microbiology General Microscopy",
      "description" : "Microscopic finding as a morphological group: Gram-positive cocci in clusters.",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-mikroskopie"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-mikrobio-mikroskopie-gram-kokken-wenig.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-mikrobio-mikroskopie-gram-kokken-wenig"
      },
      "name" : "MII EXA Microbiology General Microscopy Few Gram-Positive Cocci",
      "description" : "Gram-stained smear with few Gram-positive cocci: the morphology as the result, the semiquantitative quantity as a component.",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-mikroskopie"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Organization"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Organization-mii-exa-mikrobio-labor.html"
      }],
      "reference" : {
        "reference" : "Organization/mii-exa-mikrobio-labor"
      },
      "name" : "MII EXA Microbiology Laboratory",
      "description" : "The microbiology laboratory that performs the tests in this module's examples.",
      "exampleBoolean" : true
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
      "name" : "MII EXA Microbiology Molecular Pathogen Load",
      "description" : "Quantitative molecular pathogen load, using the example of CMV DNA in copies per millilitre.",
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
      "name" : "MII EXA Microbiology MRGN Class",
      "description" : "MRGN classification of a Gram-negative isolate with the result 2MRGN.",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-mrgn-klasse"
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
      "name" : "MII EXA Microbiology MRGN Class Negative",
      "description" : "Identified Gram-negative isolate whose susceptibility results were assessed and which cannot be assigned to any MRGN class.",
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
      "name" : "MII EXA Microbiology Nugent Score",
      "description" : "Nugent score of a vaginal specimen for assessing bacterial vaginosis.",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-nugent-score"
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
      "name" : "MII EXA Microbiology Patient",
      "description" : "Minimal subject for the examples of this module. No profile, no demographics — Patient is the responsibility of the Person module.",
      "exampleBoolean" : true
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
      "name" : "MII EXA Microbiology Predicted Susceptibility",
      "description" : "Predicted susceptibility to rifampicin derived from the genotype.",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-voraussichtliche-empfindlichkeit"
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
      "name" : "MII EXA Microbiology Resistance Category VRE Negative",
      "description" : "Identified Enterococcus without vancomycin resistance: VRE status Negative.",
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
      "name" : "MII EXA Microbiology Resistance Category VRE Positive",
      "description" : "Identified Enterococcus faecium with detected vancomycin resistance: VRE status Positive, derived from identification and susceptibility testing.",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-resistenzkategorie-status"
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
      "name" : "MII EXA Microbiology Resistance Mechanisms Determinants",
      "description" : "Molecular detection of a resistance determinant by PCR.",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-resistenzmechanismen-determinanten"
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
      "name" : "MII EXA Microbiology Specific Culture",
      "description" : "Targeted detection of a predefined pathogen, performed by culture and positive here.",
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
      "name" : "MII EXA Microbiology Specific Culture VRE Negative",
      "description" : "Negative VRE test by pathogen-specific culture.",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-spezifische-bestimmung"
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
      "name" : "MII EXA Microbiology Specific Determination",
      "description" : "Targeted molecular pathogen test with a negative result.",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-spezifische-bestimmung"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-mikrobio-spezifische-bestimmung-influenza-positiv.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-mikrobio-spezifische-bestimmung-influenza-positiv"
      },
      "name" : "MII EXA Microbiology Specific Determination Influenza Positive",
      "description" : "Targeted molecular pathogen detection with a positive result, derived from the reported Ct value.",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-spezifische-bestimmung"
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
      "name" : "MII EXA Microbiology Specific Determination VRE Negative",
      "description" : "Negative VRE test: the test for vancomycin-resistant enterococci is negative.",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-spezifische-bestimmung"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-mikrobio-spezifische-mikroskopie-auramin-negativ.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-mikrobio-spezifische-mikroskopie-auramin-negativ"
      },
      "name" : "MII EXA Microbiology Specific Microscopy Auramine Negative",
      "description" : "Auramine stain without detection of acid-fast bacilli: the negative case of specific microscopy.",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-spezifische-mikroskopie"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-mikrobio-spezifische-mikroskopie-kinyoun-zweiplus.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-mikrobio-spezifische-mikroskopie-kinyoun-zweiplus"
      },
      "name" : "MII EXA Microbiology Specific Microscopy Kinyoun Two Plus",
      "description" : "Kinyoun stain with detection of acid-fast bacilli, with grade two of three as the quantity component — corresponding to 1–10 per field of view.",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-spezifische-mikroskopie"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-mikrobio-spezifische-mikroskopie-leukozyten-gesichtsfeld.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-mikrobio-spezifische-mikroskopie-leukozyten-gesichtsfeld"
      },
      "name" : "MII EXA Microbiology Specific Microscopy Leukocytes per Field of View",
      "description" : "Leukocytes detected in the Gram-stained smear, with the quantity as a count per high-power field — 10 to 25 — instead of a semiquantitative grade.",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-spezifische-mikroskopie"
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
      "name" : "MII EXA Microbiology Specimen",
      "description" : "Generic specimen material for the examples of this module. The type is deliberately unspecific because the same specimen carries examples of different investigation types.",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-probe"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Specimen"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Specimen-mii-exa-mikrobio-probe-katheterspitze.html"
      }],
      "reference" : {
        "reference" : "Specimen/mii-exa-mikrobio-probe-katheterspitze"
      },
      "name" : "MII EXA Microbiology Specimen Catheter Tip",
      "description" : "Catheter tip as specimen material. It has neither volume nor mass and is therefore itself the reference quantity of the colony count.",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-probe"
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
      "name" : "MII EXA Microbiology Susceptibility",
      "description" : "Phenotypic susceptibility testing with MIC in mg/L; the category with its norm is in interpretation.",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-empfindlichkeit"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-mikrobio-empfindlichkeit-nur-kategorie.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-mikrobio-empfindlichkeit-nur-kategorie"
      },
      "name" : "MII EXA Microbiology Susceptibility Category Only",
      "description" : "Phenotypic susceptibility testing in which only the category is reported and no measured value is available; the norm is in the same place as the category.",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-empfindlichkeit"
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
      "name" : "MII EXA Microbiology Titre",
      "description" : "Titre determination as a dilution ratio, using the example of rubella virus antibodies.",
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
      "name" : "MII EXA Microbiology Virulence Factor",
      "description" : "Test for a virulence factor gene with a negative result.",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-virulenzfaktor"
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
      "name" : "MII EXA Microbiology Workflow VRE 1 Culture Positive",
      "description" : "VRE workflow chain, step 1: positive VRE detection by pathogen-specific culture.",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-spezifische-bestimmung"
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
      "name" : "MII EXA Microbiology Workflow VRE 2 Identification",
      "description" : "VRE workflow chain, step 2: further identification of the isolate as Enterococcus faecium, triggered by the positive detection.",
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
      "name" : "MII EXA Microbiology Workflow VRE 3 Susceptibility",
      "description" : "VRE workflow chain, step 3: vancomycin susceptibility testing of the identified isolate with the result resistant.",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-empfindlichkeit"
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
      "name" : "MII LM Microbiology Investigation",
      "description" : "Common information of all microbiological investigations",
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
      "name" : "MII LM Microbiology Investigation Types",
      "description" : "Specialisations of the microbiological investigation for the graphical representation of the 2027 microbiology data model",
      "exampleBoolean" : false
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
      "name" : "MII LM Microbiology Report",
      "description" : "Logical model of the microbiological report for the graphical representation of the 2027 microbiology data model",
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
      "name" : "MII PR Microbiology Antigen Antibody Quantitative",
      "description" : "Quantitative antigen/antibody response describes the quantitative measurement of pathogen-specific antigens or antibodies in a specimen, determined by immunological procedures.",
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
      "name" : "MII PR Microbiology Avidity",
      "description" : "Avidity describes the qualitative assessment of the binding strength of antibodies to a specific antigen, typically to distinguish recent from past infections.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-pr-mikrobio-bartlett-score.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-pr-mikrobio-bartlett-score"
      },
      "name" : "MII PR Microbiology Bartlett Score",
      "description" : "Bartlett score describes the qualitative microscopic assessment of the suitability of sputum specimens for microbiological culture based on the ratio of inflammatory to epithelial cells.",
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
      "name" : "MII PR Microbiology Colony Count",
      "description" : "Colony count describes the quantitative determination of viable microorganisms in a specimen as colony-forming units per volume, per mass or as a count per specimen.",
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
      "name" : "MII PR Microbiology Ct Value",
      "description" : "Ct value describes the quantification of the cycle threshold in nucleic acid detection (e.g. real-time PCR) in a specimen.",
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
      "name" : "MII PR Microbiology Diagnostic Report",
      "description" : "Microbiological report for summarising and contextualising associated microbiological investigation results.",
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
      "name" : "MII PR Microbiology General Culture",
      "description" : "General culture describes the result of an untargeted microbiological culture that checks whether any microorganism grows in the specimen, without restricting the analysis to a predefined pathogen.",
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
      "name" : "MII PR Microbiology General Determination (Identification)",
      "description" : "General determination describes the identification of a microorganism or infectious agent in a specimen, without restriction to a predefined target.",
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
      "name" : "MII PR Microbiology General Microscopy",
      "description" : "General microscopy describes the morphological observation of microorganisms in a specimen by microscopic examination, optionally with staining techniques (e.g. Gram stain). The result is a morphological group, not a species.",
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
      "name" : "MII PR Microbiology Molecular Pathogen Load",
      "description" : "Molecular pathogen load describes the quantitative measurement of the nucleic acid concentration of a pathogen in a specimen, typically as a concentration per volume.",
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
      "name" : "MII PR Microbiology MRGN Class",
      "description" : "MRGN class describes the classification of multidrug-resistant Gram-negative pathogens according to the RKI categorisation.",
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
      "name" : "MII PR Microbiology Nugent Score",
      "description" : "Nugent score describes a Gram-stain-based semiquantitative scoring system for assessing vaginal microbiota patterns in bacterial vaginosis.",
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
      "name" : "MII PR Microbiology Predicted Susceptibility",
      "description" : "Predicted susceptibility describes the expected susceptibility or resistance to antimicrobial substances derived from genotypic resistance detections.",
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
      "name" : "MII PR Microbiology Resistance Category Status",
      "description" : "Assessment of a detected pathogen with regard to a defined resistance category, e.g. MRSA, VRE, LRE or LVRE. The assessed category is in Observation.code, the result of the assessment in Observation.value.",
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
      "name" : "MII PR Microbiology Resistance Mechanisms Determinants",
      "description" : "Resistance mechanisms / determinants describes the detection of resistance genes, resistance mutations, proteins or functional tests (e.g. CIM test) in a specimen or isolate as an indication of specific resistance mechanisms.",
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
      "name" : "MII PR Microbiology Specific Determination",
      "description" : "Specific determination describes the qualitative detection of a predefined microbial target in a specimen by direct molecular, immunological or biochemical detection methods and by detection tests with method-neutral codes. Culture-based targeted detection also belongs here; the procedure is stated in the investigation code and in Observation.method.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-pr-mikrobio-spezifische-mikroskopie.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-pr-mikrobio-spezifische-mikroskopie"
      },
      "name" : "MII PR Microbiology Specific Microscopy",
      "description" : "Specific microscopy describes the microscopic detection of an object named in the investigation code — such as acid-fast bacilli or leukocytes — with the semiquantitative grade as the result.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-pr-mikrobio-probe.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-pr-mikrobio-probe"
      },
      "name" : "MII PR Microbiology Specimen",
      "description" : "Specimen describes the material examined microbiologically. The profile derives from the biospecimen base profile of the MII Biobank module and adds the expectations of microbiological diagnostics.",
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
      "name" : "MII PR Microbiology Susceptibility",
      "description" : "Susceptibility describes the result of phenotypic resistance testing of a pathogen against antimicrobial substances with reference to an interpretive standard (e.g. EUCAST, CLSI).",
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
      "name" : "MII PR Microbiology Titre",
      "description" : "Titre describes a semiquantitative measurement from serial dilution series, reported as a ratio (e.g. 1:160).",
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
      "name" : "MII PR Microbiology Virulence Factor",
      "description" : "Virulence factor describes the qualitative detection or exclusion of virulence determinants in a specimen or an isolate.",
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
      "name" : "MII VS Laboratory Result Semiquantitative",
      "description" : "Coding for semi-quantitative laboratory results",
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
      "name" : "MII VS Microbiology Antigen Antibody Method [SNOMED]",
      "description" : "Method ValueSet for quantitative antigen and antibody tests and for avidity determination: immunological detection procedures.",
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
      "name" : "MII VS Microbiology Antigen Antibody Quantitative Tests [LOINC]",
      "description" : "Test ValueSet for quantitative antigen and antibody tests: LOINC codes for measuring pathogen-specific antigens or antibodies.",
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
      "name" : "MII VS Microbiology Antigen Antibody Quantitative Units [UCUM]",
      "description" : "Unit ValueSet for quantitative antigen and antibody tests (UCUM). Bound to Observation.valueQuantity.code.",
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
      "name" : "MII VS Microbiology Avidity Result",
      "description" : "Assessment ValueSet for avidity: categorical classification of the avidity index as low, borderline or high. Low avidity indicates a recent infection.",
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
      "name" : "MII VS Microbiology Avidity Tests [LOINC]",
      "description" : "Test ValueSet for avidity determination: LOINC codes for avidity tests including the target antigen.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-mikrobio-bartlett-score-loinc.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-mikrobio-bartlett-score-loinc"
      },
      "name" : "MII VS Microbiology Bartlett Score [LOINC]",
      "description" : "Result ValueSet for the Bartlett score: score categories from +3 to -1 that rate the ratio of inflammatory to epithelial cells and thus the suitability of a sputum specimen for culture.",
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
      "name" : "MII VS Microbiology Colony Count Units [UCUM]",
      "description" : "Unit ValueSet for colony counting (UCUM): colony-forming units per volume, per mass or as a count per specimen.",
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
      "name" : "MII VS Microbiology Colony Count [LOINC]",
      "description" : "Test ValueSet for colony counting: LOINC codes for the quantitative determination of viable microorganisms.",
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
      "name" : "MII VS Microbiology Ct Value [LOINC]",
      "description" : "Test ValueSet for the Ct value: LOINC codes with the property cycle threshold in nucleic acid detection.",
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
      "name" : "MII VS Microbiology Culture Result [SNOMED]",
      "description" : "Result ValueSet for general and specific culture: growth, no growth or an equivocal result. How much has grown is not stated by this ValueSet but by the colony count. An indeterminable result is represented not via value[x] but via Observation.dataAbsentReason.",
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
      "name" : "MII VS Microbiology Data Absent Reason",
      "description" : "Reasons for a missing investigation result. Supplements the FHIR base codes with the indeterminable result that was previously coded via value[x].",
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
      "name" : "MII VS Microbiology Detected Not Detected [SNOMED]",
      "description" : "Result ValueSet for targeted qualitative detections: detected or not detected. An indeterminable result is represented not here but via Observation.dataAbsentReason.",
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
      "name" : "MII VS Microbiology General Culture Method [SNOMED]",
      "description" : "Method ValueSet for general culture: culture procedures without restriction to a predefined pathogen, including aerobic and anaerobic incubation.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-mikrobio-allgemeine-kultur-tests-loinc.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-mikrobio-allgemeine-kultur-tests-loinc"
      },
      "name" : "MII VS Microbiology General Culture Tests [LOINC]",
      "description" : "Test ValueSet for general culture: LOINC codes for untargeted culture investigation. 11475-1 is preferred because the code names the procedure itself; 41852-5 is equally permitted.",
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
      "name" : "MII VS Microbiology General Determination Method [SNOMED]",
      "description" : "Method ValueSet for general determination: non-culture-based procedures for identifying a pathogen without a predefined target, such as microscopy or MALDI-TOF.",
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
      "name" : "MII VS Microbiology General Determination Result [SNOMED]",
      "description" : "Result ValueSet for general determination: the identified microorganism, or the negative result if no pathogen was identified.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-mikrobio-allgemeine-bestimmung-tests-loinc.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-mikrobio-allgemeine-bestimmung-tests-loinc"
      },
      "name" : "MII VS Microbiology General Determination Tests [LOINC]",
      "description" : "Test ValueSet for general determination: LOINC codes for the untargeted identification of a microorganism. 41852-5 is preferred; the remaining codes are equally permitted where the laboratory names the pathogen group or the sequencing target in the code.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-mikrobio-allgemeine-mikroskopie-tests-loinc.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-mikrobio-allgemeine-mikroskopie-tests-loinc"
      },
      "name" : "MII VS Microbiology General Microscopy Tests [LOINC]",
      "description" : "Test ValueSet for general microscopy: nominal LOINC codes for microscopic observation whose result is the morphology seen. 105059-0 is preferred because it is method-neutral; the codes with a stain in the name (Gram, acid-fast, rhodamine-auramine) are equally permitted and leave Observation.method free in return.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-mikrobio-mikroskopie-gesichtsfeld-einheiten-ucum.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-mikrobio-mikroskopie-gesichtsfeld-einheiten-ucum"
      },
      "name" : "MII VS Microbiology Microscopy Field of View Units [UCUM]",
      "description" : "Units for the count per field of view in the quantity component of microscopy.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-mikrobio-mikroskopie-semiquantitativ-snomed.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-mikrobio-mikroskopie-semiquantitativ-snomed"
      },
      "name" : "MII VS Microbiology Microscopy Semiquantitative [SNOMED]",
      "description" : "Quantity ValueSet for microscopy: the semiquantitative grade in which a microscopic finding was seen.",
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
      "name" : "MII VS Microbiology Molecular Diagnostics Units [UCUM]",
      "description" : "Unit ValueSet for molecular pathogen load (UCUM): concentration units such as copies per millilitre.",
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
      "name" : "MII VS Microbiology Molecular Pathogen Load Method [SNOMED]",
      "description" : "Method ValueSet for molecular pathogen load: amplification procedures for quantifying pathogen nucleic acid.",
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
      "name" : "MII VS Microbiology Molecular Pathogen Load Tests [LOINC]",
      "description" : "Test ValueSet for molecular pathogen load: quantitative LOINC codes for the nucleic acid concentration of a pathogen.",
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
      "name" : "MII VS Microbiology Morphology Method [SNOMED]",
      "description" : "Method ValueSet for microscopy: the microscopic procedures used. The stain is stated not here but in the extension MII_EX_Mikrobio_Faerbung.",
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
      "name" : "MII VS Microbiology Morphology Result [SNOMED]",
      "description" : "Result ValueSet for microscopy: the morphological group observed microscopically, such as Gram-positive cocci in clusters or Gram-negative rods. A species identification does not belong here, even if it was made microscopically.",
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
      "name" : "MII VS Microbiology MRGN Class [LOINC]",
      "description" : "Result ValueSet for the MRGN classification: 2MRGN, 3MRGN and 4MRGN according to the RKI categorisation. The negative classification is in the module's own CodeSystem, because the LOINC answer list does not carry it.",
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
      "name" : "MII VS Microbiology Organisms [SNOMED CT]",
      "description" : "Organism ValueSet: the SNOMED CT hierarchies from which an identified pathogen may come. Not bound directly, but included in the result ValueSets of the determination profiles.",
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
      "name" : "MII VS Microbiology Predicted Susceptibility",
      "description" : "Result ValueSet for predicted susceptibility: the predicted category susceptible, intermediate or resistant derived from genotypic detections.",
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
      "name" : "MII VS Microbiology Report Type [LOINC]",
      "description" : "Specialised coding of microbiological reports",
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
      "name" : "MII VS Microbiology Resistance Category Status",
      "description" : "Investigation codes for assessing a detected pathogen with regard to a defined resistance category.",
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
      "name" : "MII VS Microbiology Resistance Category Status Result",
      "description" : "Result of assessing a detected pathogen with regard to the resistance category given in Observation.code.",
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
      "name" : "MII VS Microbiology Resistance Mechanisms Determinants [LOINC]",
      "description" : "Test ValueSet for resistance mechanisms and determinants: LOINC codes for the detection of resistance genes, resistance proteins and functional resistance tests.",
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
      "name" : "MII VS Microbiology Resistance Mechanisms Method [SNOMED]",
      "description" : "Methods for detecting resistance mechanisms and determinants: molecular, immunological and functional procedures.",
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
      "name" : "MII VS Microbiology Specific Determination Method [SNOMED]",
      "description" : "Method ValueSet for specific determination: non-culture-based procedures for targeted pathogen detection, such as amplification, immunoassay or agglutination.",
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
      "name" : "MII VS Microbiology Specific Determination Result [SNOMED]",
      "description" : "Result ValueSet for specific determination: detection or exclusion of the target already named in the investigation code, including the grey-zone findings weakly positive and equivocal. An indeterminable result is represented not via value[x] but via Observation.dataAbsentReason.",
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
      "name" : "MII VS Microbiology Specific Determination Tests [LOINC]",
      "description" : "Test ValueSet for specific determination.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-mikrobio-spezifische-mikroskopie-tests-loinc.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-mikrobio-spezifische-mikroskopie-tests-loinc"
      },
      "name" : "MII VS Microbiology Specific Microscopy Tests [LOINC]",
      "description" : "Test ValueSet for specific microscopy: ordinal LOINC codes in which the object sought and the staining technique are named in the code; the result is the detection, the quantity is in the quantity component.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-mikrobio-faerbung-snomed.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-mikrobio-faerbung-snomed"
      },
      "name" : "MII VS Microbiology Staining [SNOMED]",
      "description" : "Staining procedures of the microscopic examination, e.g. Gram stain or Kinyoun stain.",
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
      "name" : "MII VS Microbiology Susceptibility",
      "description" : "Assessment ValueSet for phenotypic susceptibility testing: the categories susceptible, intermediate, susceptible, increased exposure, resistant and non-susceptible.",
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
      "name" : "MII VS Microbiology Susceptibility Genotype [LOINC]",
      "description" : "Test ValueSet for predicted susceptibility: LOINC codes for the predicted efficacy of an antimicrobial substance derived from the genotype.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-mikrobio-empfindlichkeit-methode-snomed.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-mikrobio-empfindlichkeit-methode-snomed"
      },
      "name" : "MII VS Microbiology Susceptibility Method [SNOMED]",
      "description" : "Method ValueSet for phenotypic susceptibility testing: the procedures used to measure a minimum inhibitory concentration or an inhibition zone diameter.",
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
      "name" : "MII VS Microbiology Susceptibility Norm",
      "description" : "Norm ValueSet for susceptibility testing: the interpretive standard (e.g. EUCAST, CLSI) on whose breakpoints a category is based. Bound to the extension MII_EX_Mikrobio_Empfindlichkeit_Norm.",
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
      "name" : "MII VS Microbiology Susceptibility Phenotype [LOINC]",
      "description" : "Test ValueSet for phenotypic susceptibility testing: LOINC codes of the antimicrobial substance tested.",
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
      "name" : "MII VS Microbiology Susceptibility Units [UCUM]",
      "description" : "Unit ValueSet for phenotypic susceptibility testing (UCUM): minimum inhibitory concentration in mg/L or inhibition zone diameter in mm.",
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
      "name" : "MII VS Microbiology Titre Method [SNOMED]",
      "description" : "Method ValueSet for titre determination: serial dilution procedures.",
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
      "name" : "MII VS Microbiology Titre Tests [LOINC]",
      "description" : "Test ValueSet for titre determination: LOINC codes for semiquantitative measurements from dilution series.",
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
      "name" : "MII VS Microbiology Virulence [LOINC]",
      "description" : "Test ValueSet for virulence factors: LOINC codes for the detection or exclusion of virulence determinants.",
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
      "description" : "Search parameter for the norm category of the susceptibility extension",
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
      "description" : "Search by the dilution step of a titre. Indexes the denominator of the Ratio value of MII_PR_Mikrobio_Titer; the numerator is fixed at 1 there. A larger denominator means a higher titre, e.g. ?titer=gt160 finds all titres above 1:160.",
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
      "description" : "Search by the Observation that triggered a microbiological Observation.",
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
      "description" : "Search by the interpretation of a microbiological Observation.",
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
            "valueUrl" : "researcher-guidance.html"
          }],
          "nameUrl" : "researcher-guidance.html",
          "title" : "Guidance for Researchers",
          "_title" : {
            "extension" : [{
              "extension" : [{
                "url" : "lang",
                "valueCode" : "de"
              },
              {
                "url" : "content",
                "valueString" : "Anleitung für Forschende"
              }],
              "url" : "http://hl7.org/fhir/StructureDefinition/translation"
            }]
          },
          "generation" : "markdown"
        },
        {
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
            "valueUrl" : "interpretation.html"
          }],
          "nameUrl" : "interpretation.html",
          "title" : "Interpretation",
          "_title" : {
            "extension" : [{
              "extension" : [{
                "url" : "lang",
                "valueCode" : "de"
              },
              {
                "url" : "content",
                "valueString" : "Interpretation"
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
