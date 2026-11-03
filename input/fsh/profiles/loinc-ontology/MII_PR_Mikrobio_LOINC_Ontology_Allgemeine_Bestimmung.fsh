Profile: MII_PR_Mikrobio_LOINC_Ontology_Allgemeine_Bestimmung
Parent: MII_PR_Mikrobio_Allgemeine_Bestimmung
Id: mii-pr-mikrobio-loinc-ontology-allgemeine-bestimmung
Title: "MII PR Microbiology LOINC Ontology General determination"
Description: "Proposal: Observation profile for the request 'General determination', derived from MII_PR_Mikrobio_Allgemeine_Bestimmung. Observation.code is bound (required) to the ValueSet MII_VS_Mikrobio_LOINC_Ontology_Organism_Identity_Any_Technique, which is defined by ECL over the LOINC Ontology 2026-10-21. Everything else is inherited from the module profile."
// License, CRMI profiles and CRMI extensions are INHERITED from the parent profile; re-inserting
// their ^extension[+] rulesets would duplicate the inherited entries. The version is not inherited.
* insert PR_CS_VS_Version
* insert Publisher
* insert SnomedLicense
* ^status = #draft
* ^experimental = true
* ^date = "2026-11-03"
* code from MII_VS_Mikrobio_LOINC_Ontology_Organism_Identity_Any_Technique (required)
* code ^binding.description = "LOINC codes of the request, computed by ECL over the LOINC Ontology 2026-10-21. General determination — organism identity, any technique: `<< 363787002 |Observable entity (observable entity)| : 370130000 |Property (attribute)| = 118584009 |Presence or identity (property) (qualifier value)|, 704319004 |Inheres in (attribute)| = << 410607006 |Organism (organism)|`"
