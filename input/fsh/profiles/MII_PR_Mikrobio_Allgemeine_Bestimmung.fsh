Profile: MII_PR_Mikrobio_Allgemeine_Bestimmung
Parent: MII_PR_Labor_Laboruntersuchung
Id: mii-pr-mikrobio-allgemeine-bestimmung
Title: "MII PR Mikrobio Allgemeine Bestimmung"
Description: "Allgemeine Bestimmung beschreibt die Identifikation eines Mikroorganismus oder infektiösen Agens in einer Probe, ohne Einschränkung auf ein vordefiniertes Ziel."
* insert MIKRO_OBSERVATION_COMMON
* code = $loinc#41852-5
* value[x] only CodeableConcept
* valueCodeableConcept 1.. MS
* valueCodeableConcept from MII_VS_Mikrobio_Organismen_SNOMEDCT (extensible)
* interpretation ..0
* method 1.. MS
* method from MII_VS_Mikrobio_Allgemeine_Bestimmung_Methode_SNOMED (extensible)
