Profile: MII_PR_Mikrobio_Voraussichtliche_Empfindlichkeit
Parent: MII_PR_Labor_Laboruntersuchung
Id: mii-pr-mikrobio-voraussichtliche-empfindlichkeit
Title: "MII PR Mikrobio Voraussichtliche Empfindlichkeit"
Description: "Voraussichtliche Empfindlichkeit beschreibt eine aus genotypischen Nachweisen abgeleitete erwartete Suszeptibilität oder Resistenz gegenüber antimikrobiellen Substanzen."
* insert MIKRO_OBSERVATION_COMMON
* ^purpose = "Dieses Profil beschreibt die voraussichtliche Empfindlichkeit." 
* code from MII_VS_Mikrobio_Empfaenglichkeit_Genotyp_LOINC (required)
* value[x] only CodeableConcept
* valueCodeableConcept 1..
* valueCodeableConcept from MII_VS_Mikrobio_Voraussichtliche_Empfindlichkeit_SNOMEDCT (required)
