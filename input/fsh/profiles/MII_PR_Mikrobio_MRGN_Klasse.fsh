Profile: MII_PR_Mikrobio_MRGN_Klasse
Parent: MII_PR_Labor_Laboruntersuchung
Id: mii-pr-mikrobio-mrgn-klasse
Title: "MII PR Mikrobio MRGN Klasse"
Description: "MRGN-Klasse beschreibt die Einstufung multiresistenter gramnegativer Erreger entsprechend der RKI-Kategorisierung."
* insert MIKRO_OBSERVATION_COMMON
* ^purpose = "Dieses Profil beschreibt die MRGN-Klasse." 
* code from MII_VS_Mikrobio_MRGN_Klasse_LOINC (required)
* value[x] only CodeableConcept
* valueCodeableConcept
* valueCodeableConcept from MII_VS_Mikrobio_MRGN_Klasse_LOINC (required)
