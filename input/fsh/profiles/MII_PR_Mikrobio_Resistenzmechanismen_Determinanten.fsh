Profile: MII_PR_Mikrobio_Resistenzmechanismen_Determinanten
Parent: MII_PR_Labor_Laboruntersuchung
Id: mii-pr-mikrobio-resistenzmechanismen-determinanten
Title: "MII PR Microbiology Resistance Mechanisms Determinants"
Description: "Resistance mechanisms / determinants describes the detection of resistance genes, resistance mutations, proteins or functional tests (e.g. CIM test) in a specimen or isolate as an indication of specific resistance mechanisms."
* insert MIKRO_OBSERVATION_COMMON
* ^purpose = "This profile describes the detection of resistance mechanisms and determinants." 
* code from MII_VS_Mikrobio_Resistenzmechanismen_Determinanten_LOINC (extensible)
* value[x] only CodeableConcept
* valueCodeableConcept
* valueCodeableConcept from MII_VS_Mikrobio_Detected_Not_Detected_SNOMED (required)
* method from MII_VS_Mikrobio_Resistenzmechanismen_Methode_SNOMED (extensible)
