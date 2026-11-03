Profile: MII_PR_Mikrobio_LOINC_Ontology_Resistenzmechanismen_Determinanten
Parent: MII_PR_Mikrobio_Resistenzmechanismen_Determinanten
Id: mii-pr-mikrobio-loinc-ontology-resistenzmechanismen
Title: "MII PR Microbiology LOINC Ontology Resistance mechanisms and determinants"
Description: "Proposal: Observation profile for the request 'Resistance mechanisms and determinants', derived from MII_PR_Mikrobio_Resistenzmechanismen_Determinanten. Observation.code is bound (required) to the ValueSet MII_VS_Mikrobio_LOINC_Ontology_Resistant_Organism_Detection, which is defined by ECL over the LOINC Ontology 2026-10-21. Everything else is inherited from the module profile."
// License, CRMI profiles and CRMI extensions are INHERITED from the parent profile; re-inserting
// their ^extension[+] rulesets would duplicate the inherited entries. The version is not inherited.
* insert PR_CS_VS_Version
* insert Publisher
* insert SnomedLicense
* ^status = #draft
* ^experimental = true
* ^date = "2026-11-03"
* code from MII_VS_Mikrobio_LOINC_Ontology_Resistant_Organism_Detection (required)
* code ^binding.description = "LOINC codes of the request, computed by ECL over the LOINC Ontology 2026-10-21. Resistant-organism detection — presence/identity of an antimicrobial resistant organism: `<< 363787002 |Observable entity (observable entity)| : 370130000 |Property (attribute)| = (118589004 |Threshold (property) (qualifier value)| OR 705057003 |Presence (property) (qualifier value)| OR 118584009 |Presence or identity (property) (qualifier value)|), (246093002 |Component (attribute)| = << 409793007 |Antimicrobial resistant bacteria (organism)| OR 704319004 |Inheres in (attribute)| = << 409793007 |Antimicrobial resistant bacteria (organism)|)`"
