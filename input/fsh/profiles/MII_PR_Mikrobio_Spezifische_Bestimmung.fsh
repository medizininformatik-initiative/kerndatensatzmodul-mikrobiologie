Profile: MII_PR_Mikrobio_Spezifische_Bestimmung
Parent: MII_PR_Labor_Laboruntersuchung
Id: mii-pr-mikrobio-spezifische-bestimmung
Title: "MII PR Mikrobio Spezifische Bestimmung"
Description: "Spezifische Bestimmung beschreibt den qualitativen Nachweis eines vordefinierten mikrobiellen Ziels (z. B. Nukleinsäure, Antigen, Antikörper oder biochemischer Marker) in einer Probe."
* insert MIKRO_OBSERVATION_COMMON
* ^purpose = "Dieses Profil beschreibt die spezifische Bestimmung eines vordefinierten Targets." 
* code from MII_VS_Mikrobio_Spezifische_Bestimmung_Tests_LOINC (extensible)
* value[x] only CodeableConcept
* valueCodeableConcept 1..
* valueCodeableConcept from MII_VS_Mikrobio_Detected_Not_Detected_SNOMED (required)
* method MS
* method from MII_VS_Mikrobio_Spezifische_Bestimmung_Methode_SNOMED (extensible)