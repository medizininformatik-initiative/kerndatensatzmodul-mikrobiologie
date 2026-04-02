Profile: MII_PR_Mikrobio_Virulenzfaktor
Parent: MII_PR_Labor_Laboruntersuchung
Id: mii-pr-mikrobio-virulenzfaktor
Title: "MII PR Mikrobio Virulenzfaktor"
Description: "Virulenzfaktor beschreibt den qualitativen Nachweis oder Ausschluss von Virulenzdeterminanten in einer Probe."
* insert MIKRO_OBSERVATION_COMMON
* ^purpose = "Dieses Profil beschreibt den Nachweis von Virulenzfaktoren." 
* code from MII_VS_Mikrobio_Virulenz_LOINC (extensible)
* value[x] only CodeableConcept
* valueCodeableConcept 1.. MS
* valueCodeableConcept from MII_VS_Mikrobio_Detected_Not_Detected_SNOMED (required)
* interpretation ..0
