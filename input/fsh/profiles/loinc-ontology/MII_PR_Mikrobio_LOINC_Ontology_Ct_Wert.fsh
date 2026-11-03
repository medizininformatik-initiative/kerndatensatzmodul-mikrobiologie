Profile: MII_PR_Mikrobio_LOINC_Ontology_Ct_Wert
Parent: MII_PR_Mikrobio_Ct_Wert
Id: mii-pr-mikrobio-loinc-ontology-ct-wert
Title: "MII PR Microbiology LOINC Ontology Ct value"
Description: "Proposal: Observation profile for the request 'Ct value', derived from MII_PR_Mikrobio_Ct_Wert. Observation.code is bound (required) to the ValueSet MII_VS_Mikrobio_LOINC_Ontology_Ct_Value_Microbial_Nucleic_Acid, which is defined by ECL over the LOINC Ontology 2026-10-21. Everything else is inherited from the module profile."
// License, CRMI profiles and CRMI extensions are INHERITED from the parent profile; re-inserting
// their ^extension[+] rulesets would duplicate the inherited entries. The version is not inherited.
* insert PR_CS_VS_Version
* insert Publisher
* insert SnomedLicense
* ^status = #draft
* ^experimental = true
* ^date = "2026-11-03"
* code from MII_VS_Mikrobio_LOINC_Ontology_Ct_Value_Microbial_Nucleic_Acid (required)
* code ^binding.description = "LOINC codes of the request, computed by ECL over the LOINC Ontology 2026-10-21. Ct value — threshold number of a microbial nucleic acid: `<< 363787002 |Observable entity (observable entity)| : 370130000 |Property (attribute)| = 1268648001 |Threshold number (property) (qualifier value)|, 246093002 |Component (attribute)| = << 117174000 |Nucleic acid sequence with relative specificity for microorganism (substance)|`"
