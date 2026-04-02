Profile: MII_PR_Mikrobio_MRE_Klasse
Parent: MII_PR_Labor_Laboruntersuchung
Id: mii-pr-mikrobio-mre-klasse
Title: "MII PR Mikrobio MRE Klasse"
Description: "MRE-Klasse beschreibt die Klassifikation multiresistenter Erreger in mikrobiologischen Befunden."
* insert MIKRO_OBSERVATION_COMMON
* ^purpose = "Dieses Profil beschreibt die MRE-Klasse." 
* code = $loinc#94745-7
* value[x] only CodeableConcept
* valueCodeableConcept 1..
* valueCodeableConcept from MII_VS_Mikrobio_MRE_Klasse_SNOMEDCT (required)
