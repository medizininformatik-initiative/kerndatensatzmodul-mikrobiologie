Profile: MII_PR_Mikrobio_LOINC_Ontology_Keimzahl
Parent: MII_PR_Mikrobio_Keimzahl
Id: mii-pr-mikrobio-loinc-ontology-keimzahl
Title: "MII PR Microbiology LOINC Ontology Colony count"
Description: "Proposal: Observation profile for the request 'Colony count', derived from MII_PR_Mikrobio_Keimzahl. Observation.code is bound (required) to the ValueSet MII_VS_Mikrobio_LOINC_Ontology_Colony_Count_Organism, which is defined by ECL over the LOINC Ontology 2026-10-21. Everything else is inherited from the module profile."
// License, CRMI profiles and CRMI extensions are INHERITED from the parent profile; re-inserting
// their ^extension[+] rulesets would duplicate the inherited entries. The version is not inherited.
* insert PR_CS_VS_Version
* insert Publisher
* insert SnomedLicense
* ^status = #draft
* ^experimental = true
* ^date = "2026-11-03"
* code from MII_VS_Mikrobio_LOINC_Ontology_Colony_Count_Organism (required)
* code ^binding.description = "LOINC codes of the request, computed by ECL over the LOINC Ontology 2026-10-21. Colony count — number concentration of an organism: `<< 363787002 |Observable entity (observable entity)| : 370130000 |Property (attribute)| = (118550005 |Number concentration (property) (qualifier value)| OR 705056007 |Logarithmic number concentration (property) (qualifier value)|), (246093002 |Component (attribute)| = << 410607006 |Organism (organism)| OR 704319004 |Inheres in (attribute)| = << 410607006 |Organism (organism)|)`"
