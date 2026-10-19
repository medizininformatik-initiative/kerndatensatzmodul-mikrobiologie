Profile: MII_PR_Mikrobio_Virulenzfaktor
Parent: MII_PR_Labor_Laboruntersuchung
Id: mii-pr-mikrobio-virulenzfaktor
Title: "MII PR Microbiology Virulence Factor"
Description: "Virulence factor describes the qualitative detection or exclusion of virulence determinants in a specimen or an isolate."
* insert MIKRO_OBSERVATION_COMMON
* ^purpose = "This profile describes the detection of virulence factors." 
* code from MII_VS_Mikrobio_Virulenz_LOINC (extensible)
* value[x] only CodeableConcept
* valueCodeableConcept
* valueCodeableConcept from MII_VS_Mikrobio_Detected_Not_Detected_SNOMED (required)
