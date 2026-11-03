Profile: MII_PR_Mikrobio_LOINC_Ontology_Voraussichtliche_Empfindlichkeit
Parent: MII_PR_Mikrobio_Voraussichtliche_Empfindlichkeit
Id: mii-pr-mikrobio-loinc-ontology-voraussichtliche-empfindlichkeit
Title: "MII PR Microbiology LOINC Ontology Predicted susceptibility"
Description: "Proposal: Observation profile for the request 'Predicted susceptibility', derived from MII_PR_Mikrobio_Voraussichtliche_Empfindlichkeit. Observation.code is bound (required) to the ValueSet MII_VS_Mikrobio_LOINC_Ontology_Susceptibility_Genotype_Predicted, which is defined by ECL over the LOINC Ontology 2026-10-21. Everything else is inherited from the module profile."
// License, CRMI profiles and CRMI extensions are INHERITED from the parent profile; re-inserting
// their ^extension[+] rulesets would duplicate the inherited entries. The version is not inherited.
* insert PR_CS_VS_Version
* insert Publisher
* insert SnomedLicense
* ^status = #draft
* ^experimental = true
* ^date = "2026-11-03"
* code from MII_VS_Mikrobio_LOINC_Ontology_Susceptibility_Genotype_Predicted (required)
* code ^binding.description = "LOINC codes of the request, computed by ECL over the LOINC Ontology 2026-10-21. Predicted susceptibility — by genotype determination technique: `<< 363787002 |Observable entity (observable entity)| : 370130000 |Property (attribute)| = 118588007 |Susceptibility (property) (qualifier value)|, 246501002 |Technique (attribute)| = << 708060009 |Genotype determination technique (qualifier value)|`"
