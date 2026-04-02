Profile: MII_PR_Mikrobio_Spezifische_Kultur
Parent: MII_PR_Labor_Laboruntersuchung
Id: mii-pr-mikrobio-spezifische-kultur
Title: "MII PR Mikrobio Spezifische Kultur"
Description: "Spezifische Kultur beschreibt das Ergebnis einer zielgerichteten mikrobiologischen Kultur zum Nachweis eines vordefinierten Organismus oder einer Organismengruppe in einer Probe."
* insert MIKRO_OBSERVATION_COMMON
* ^purpose = "Dieses Profil beschreibt die spezifische Kulturdiagnostik eines vordefinierten Organismus." 
* code from MII_VS_Mikrobio_Spezifische_Kultur_Tests_LOINC (extensible)
* value[x] only CodeableConcept
* valueCodeableConcept 1..
* valueCodeableConcept from MII_VS_Mikrobio_Spezifische_Kultur_Ergebnis_SNOMED (extensible)
* method MS
* method = $sct#703752003 // Mikroorganismusspezifische Kulturtechnik
