Profile: MII_PR_Mikrobio_Allgemeine_Bestimmung
Parent: MII_PR_Labor_Laboruntersuchung
Id: mii-pr-mikrobio-allgemeine-bestimmung
Title: "MII PR Microbiology General Determination (Identification)"
Description: "General determination describes the identification of a microorganism or infectious agent in a specimen, without restriction to a predefined target."
* insert MIKRO_OBSERVATION_COMMON
* code from MII_VS_Mikrobio_Allgemeine_Bestimmung_Tests_LOINC (extensible)
* code ^short = "Preferably 41852-5 'Microorganism or agent identified in Specimen'. If the laboratory names the pathogen group (bacteria, fungi, viruses) or the sequencing target (16S, 18S rRNA) in the code, the corresponding codes are equally permitted. LOINC codes without a pre-coordinated specimen type are preferred (System = XXX); the specimen type is coded separately via Specimen.type."
* value[x] only CodeableConcept
* valueCodeableConcept
* valueCodeableConcept from MII_VS_Mikrobio_Allgemeine_Bestimmung_Ergebnis_SNOMED (extensible)
* valueCodeableConcept ^short = "Identified microorganism, or 'Not detected' if no pathogen was identified. An indeterminable result is represented via dataAbsentReason."
* method from MII_VS_Mikrobio_Allgemeine_Bestimmung_Methode_SNOMED (extensible)
