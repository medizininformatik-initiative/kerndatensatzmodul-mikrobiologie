Profile: MII_PR_Mikrobio_LOINC_Ontology_Antigen_Antikoerper_Quantitativ
Parent: MII_PR_Mikrobio_Antigen_Antikoerper_Quantitativ
Id: mii-pr-mikrobio-loinc-ontology-antigen-antikoerper-quantitativ
Title: "MII PR Microbiology LOINC Ontology Quantitative antigen and antibody tests"
Description: "Proposal: Observation profile for the request 'Quantitative antigen and antibody tests', derived from MII_PR_Mikrobio_Antigen_Antikoerper_Quantitativ. Observation.code is bound (required) to the ValueSet MII_VS_Mikrobio_LOINC_Ontology_Ab_Ag_Quantitative, which is defined by ECL over the LOINC Ontology 2026-10-21. Everything else is inherited from the module profile."
// License, CRMI profiles and CRMI extensions are INHERITED from the parent profile; re-inserting
// their ^extension[+] rulesets would duplicate the inherited entries. The version is not inherited.
* insert PR_CS_VS_Version
* insert Publisher
* insert SnomedLicense
* ^status = #draft
* ^experimental = true
* ^date = "2026-11-03"
* code from MII_VS_Mikrobio_LOINC_Ontology_Ab_Ag_Quantitative (required)
* code ^binding.description = "LOINC codes of the request, computed by ECL over the LOINC Ontology 2026-10-21. Serology quantitative — concentration of a pathogen antibody or antigen: `<< 363787002 |Observable entity (observable entity)| : 370130000 |Property (attribute)| = (118569000 |Arbitrary concentration (property) (qualifier value)| OR 118539007 |Mass concentration (property) (qualifier value)| OR 118556004 |Substance concentration (property) (qualifier value)| OR 118550005 |Number concentration (property) (qualifier value)|), 246093002 |Component (attribute)| = (<< 312301006 |Infective organism antibody (substance)| OR << 116633006 |Microbial antigen (substance)|)`"
