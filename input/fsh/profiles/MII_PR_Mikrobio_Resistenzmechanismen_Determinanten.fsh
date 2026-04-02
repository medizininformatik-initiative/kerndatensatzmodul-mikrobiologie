Profile: MII_PR_Mikrobio_Resistenzmechanismen_Determinanten
Parent: MII_PR_Labor_Laboruntersuchung
Id: mii-pr-mikrobio-resistenzmechanismen-determinanten
Title: "MII PR Mikrobio Resistenzmechanismen Determinanten"
Description: "Resistenzmechanismen/Determinanten beschreibt den Nachweis von Resistenzgenen oder Resistenzmutationen in einer Probe als Hinweis auf spezifische Resistenzmechanismen."
* insert MIKRO_OBSERVATION_COMMON
* ^purpose = "Dieses Profil beschreibt den Nachweis von Resistenzmechanismen und Determinanten." 
* code from MII_VS_Mikrobio_Resistenzmechanismen_Determinanten_LOINC (extensible)
* value[x] only CodeableConcept
* valueCodeableConcept 1.. MS
* valueCodeableConcept from MII_VS_Mikrobio_Detected_Not_Detected_SNOMED (required)
* interpretation ..0
* method from MII_VS_Mikrobio_Spezifische_Bestimmung_Methode_SNOMED (extensible)
