Profile: MII_PR_Mikrobio_MRGN_Klasse
Parent: MII_PR_Labor_Laboruntersuchung
Id: mii-pr-mikrobio-mrgn-klasse
Title: "MII PR Mikrobio MRGN Klasse"
Description: "MRGN-Klasse beschreibt die Einstufung multiresistenter gramnegativer Erreger entsprechend der RKI-Kategorisierung."
* insert MIKRO_OBSERVATION_COMMON
* ^purpose = "Dieses Profil beschreibt die MRGN-Klasse." 
* code = $loinc#99780-9
* value[x] only CodeableConcept
* valueCodeableConcept
* valueCodeableConcept from MII_VS_Mikrobio_MRGN_Klasse_LOINC (required)
* valueCodeableConcept ^short = "MRGN-Einstufung nach RKI. Wurde das identifizierte Isolat anhand der Empfindlichkeitsbefunde bewertet und ist keiner MRGN-Klasse zuzuordnen, wird 'Keine MRGN-Klasse' verwendet; dies ist vom negativen Ergebnis eines zielgerichteten Erregernachweises zu unterscheiden."
// Wird die Klassifikation aus mehreren Empfindlichkeitsbefunden abgeleitet, ist derivedFrom
// fuer die Beziehung zu diesen Befunden semantisch treffender als die triggeredBy-Extension.
