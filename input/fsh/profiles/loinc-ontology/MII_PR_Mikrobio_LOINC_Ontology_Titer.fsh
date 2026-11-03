Profile: MII_PR_Mikrobio_LOINC_Ontology_Titer
Parent: MII_PR_Mikrobio_Titer
Id: mii-pr-mikrobio-loinc-ontology-titer
Title: "MII PR Microbiology LOINC Ontology Titre"
Description: "Proposal: Observation profile for the request 'Titre', derived from MII_PR_Mikrobio_Titer. Observation.code is bound (required) to the ValueSet MII_VS_Mikrobio_LOINC_Ontology_Titer_Infective_Antibody, which is defined by ECL over the LOINC Ontology 2026-10-21. Everything else is inherited from the module profile."
// License, CRMI profiles and CRMI extensions are INHERITED from the parent profile; re-inserting
// their ^extension[+] rulesets would duplicate the inherited entries. The version is not inherited.
* insert PR_CS_VS_Version
* insert Publisher
* insert SnomedLicense
* ^status = #draft
* ^experimental = true
* ^date = "2026-11-03"
* code from MII_VS_Mikrobio_LOINC_Ontology_Titer_Infective_Antibody (required)
* code ^binding.description = "LOINC codes of the request, computed by ECL over the LOINC Ontology 2026-10-21. Titre — pathogen antibody titre: `<< 363787002 |Observable entity (observable entity)| : 370130000 |Property (attribute)| = 118590008 |Dilution factor expressed as titer (property) (qualifier value)|, 246093002 |Component (attribute)| = << 312301006 |Infective organism antibody (substance)|`"
