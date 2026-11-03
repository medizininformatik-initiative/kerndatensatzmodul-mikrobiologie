Profile: MII_PR_Mikrobio_LOINC_Ontology_Molekulare_Pathogenlast
Parent: MII_PR_Mikrobio_Molekulare_Pathogenlast
Id: mii-pr-mikrobio-loinc-ontology-molekulare-pathogenlast
Title: "MII PR Microbiology LOINC Ontology Molecular pathogen load"
Description: "Proposal: Observation profile for the request 'Molecular pathogen load', derived from MII_PR_Mikrobio_Molekulare_Pathogenlast. Observation.code is bound (required) to the ValueSet MII_VS_Mikrobio_LOINC_Ontology_Pathogen_Load_Any_Technique, which is defined by ECL over the LOINC Ontology 2026-10-21. Everything else is inherited from the module profile."
// License, CRMI profiles and CRMI extensions are INHERITED from the parent profile; re-inserting
// their ^extension[+] rulesets would duplicate the inherited entries. The version is not inherited.
* insert PR_CS_VS_Version
* insert Publisher
* insert SnomedLicense
* ^status = #draft
* ^experimental = true
* ^date = "2026-11-03"
* code from MII_VS_Mikrobio_LOINC_Ontology_Pathogen_Load_Any_Technique (required)
* code ^binding.description = "LOINC codes of the request, computed by ECL over the LOINC Ontology 2026-10-21. Pathogen load — quantitative microbial nucleic acid, any technique: `<< 363787002 |Observable entity (observable entity)| : 370130000 |Property (attribute)| = (118550005 |Number concentration (property) (qualifier value)| OR 705056007 |Logarithmic number concentration (property) (qualifier value)| OR 118569000 |Arbitrary concentration (property) (qualifier value)| OR 762918005 |Logarithmic arbitrary concentration (property) (qualifier value)|), 246093002 |Component (attribute)| = << 117174000 |Nucleic acid sequence with relative specificity for microorganism (substance)|`"
