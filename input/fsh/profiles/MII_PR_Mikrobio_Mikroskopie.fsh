Profile: MII_PR_Mikrobio_Mikroskopie
Parent: MII_PR_Labor_Laboruntersuchung
Id: mii-pr-mikrobio-mikroskopie
Title: "MII PR Mikrobio Mikroskopie"
Description: "Mikroskopie beschreibt die morphologische Beobachtung von Mikroorganismen in einer Probe mittels mikroskopischer Untersuchung, optional mit Färbetechniken (z. B. Gramfärbung), ohne taxonomische Identifikation."
* insert MIKRO_OBSERVATION_COMMON
* ^purpose = "Dieses Profil beschreibt mikroskopische Beobachtungen der Morphologie." 
* code = $loinc#105059-0
* value[x] only CodeableConcept
* valueCodeableConcept 1..
* valueCodeableConcept from MII_VS_Mikrobio_Morphologie_Ergebnis_SNOMED (required)
* method MS
* method from MII_VS_Mikrobio_Morphologie_Methode_SNOMED (required)
