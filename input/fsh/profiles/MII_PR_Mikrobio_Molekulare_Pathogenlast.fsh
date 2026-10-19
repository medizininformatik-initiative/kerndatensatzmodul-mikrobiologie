Profile: MII_PR_Mikrobio_Molekulare_Pathogenlast
Parent: MII_PR_Labor_Laboruntersuchung
Id: mii-pr-mikrobio-molekulare-pathogenlast
Title: "MII PR Microbiology Molecular Pathogen Load"
Description: "Molecular pathogen load describes the quantitative measurement of the nucleic acid concentration of a pathogen in a specimen, typically as a concentration per volume."
* insert MIKRO_OBSERVATION_COMMON
* code from MII_VS_Mikrobio_Molekulare_Pathogenlast_Tests_LOINC (extensible)
* code ^short = "LOINC codes without a pre-coordinated specimen type are preferred (System = XXX); the specimen type is coded separately via Specimen.type."
* value[x] only Quantity
* valueQuantity
  * code from MII_VS_Mikrobio_Molekulare_Diagnostik_Einheiten_UCUM (extensible)
* method from MII_VS_Mikrobio_Molekulare_Pathogenlast_Methode_SNOMED (extensible)
