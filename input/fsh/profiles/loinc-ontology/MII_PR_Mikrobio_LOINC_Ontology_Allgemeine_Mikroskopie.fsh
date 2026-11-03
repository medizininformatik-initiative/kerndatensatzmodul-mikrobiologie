Profile: MII_PR_Mikrobio_LOINC_Ontology_Allgemeine_Mikroskopie
Parent: MII_PR_Mikrobio_Allgemeine_Mikroskopie
Id: mii-pr-mikrobio-loinc-ontology-allgemeine-mikroskopie
Title: "MII PR Microbiology LOINC Ontology General microscopy"
Description: "Proposal: Observation profile for the request 'General microscopy', derived from MII_PR_Mikrobio_Allgemeine_Mikroskopie. Observation.code is bound (required) to the ValueSet MII_VS_Mikrobio_LOINC_Ontology_Allgemeine_Mikroskopie, which is defined by ECL over the LOINC Ontology 2026-10-21. Everything else is inherited from the module profile."
// License, CRMI profiles and CRMI extensions are INHERITED from the parent profile; re-inserting
// their ^extension[+] rulesets would duplicate the inherited entries. The version is not inherited.
* insert PR_CS_VS_Version
* insert Publisher
* insert SnomedLicense
* ^status = #draft
* ^experimental = true
* ^date = "2026-11-03"
* code from MII_VS_Mikrobio_LOINC_Ontology_Allgemeine_Mikroskopie (required)
* code ^binding.description = "LOINC codes of the request, computed by ECL over the LOINC Ontology 2026-10-21. General microscopy — nominal finding by microscopy or staining technique: `<< 363787002 |Observable entity (observable entity)| : 370130000 |Property (attribute)| = 118584009 |Presence or identity (property) (qualifier value)|, 370132008 |Scale type (attribute)| = 117362005 |Nominal value (qualifier value)|, 246501002 |Technique (attribute)| = (<< 278289002 |Microscopy technique (qualifier value)| OR << 703857004 |Staining technique (qualifier value)|)`; General microscopy — method-neutral 'finding in specimen' pattern: `<< 363787002 |Observable entity (observable entity)| : 370130000 |Property (attribute)| = 118584009 |Presence or identity (property) (qualifier value)|, 370132008 |Scale type (attribute)| = 117362005 |Nominal value (qualifier value)|, 704319004 |Inheres in (attribute)| = << 123038009 |Specimen (specimen)|`"
