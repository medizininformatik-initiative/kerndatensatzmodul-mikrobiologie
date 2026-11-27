Profile: MII_PR_Mikrobio_MRGN_Klasse
Parent: MII_PR_Labor_Laboruntersuchung
Id: mii-pr-mikrobio-mrgn-klasse
Title: "MII PR Mikrobio MRGN Klasse"
Description: "MRGN-Klasse beschreibt die Einstufung multiresistenter gramnegativer Erreger entsprechend der RKI-Kategorisierung."
* insert MIKRO_OBSERVATION_COMMON
* ^purpose = "Dieses Profil beschreibt die MRGN-Klasse." 
* code = $loinc-no-ver#99780-9
* value[x] only CodeableConcept
* valueCodeableConcept
* valueCodeableConcept from MII_VS_Mikrobio_MRGN_Klasse_LOINC (required)
* valueCodeableConcept ^short = "MRGN-Einstufung nach RKI. Wurde das identifizierte Isolat anhand der Empfindlichkeitsbefunde bewertet und ist keiner MRGN-Klasse zuzuordnen, wird 'Keine MRGN-Klasse' verwendet; dies ist vom negativen Ergebnis eines zielgerichteten Erregernachweises zu unterscheiden."
// Die MRGN-Einstufung ist eine abgeleitete fachliche Aussage: Sie entsteht durch Bewertung
// mehrerer Empfindlichkeitsbefunde, nicht durch eine ausgeloeste Folgeuntersuchung. Deshalb
// derivedFrom und nicht die triggeredBy-Extension — dieselbe Begruendung wie bei
// MII_PR_Mikrobio_Resistenzkategorie_Status, und deshalb hier auch dieselben Regeln.
//
// Kein 1..-Constraint: Wird die Klasse unmittelbar aus einem bereits eingestuften
// Laborbefund uebernommen, liegen die zugrunde liegenden Empfindlichkeitsbefunde im
// sendenden System ggf. nicht als eigene Observations vor. Die Angabe ist deshalb SHOULD
// und nicht SHALL.
// Ausnahme seit der Ballotkommentierung (2026-11-26): Wurden aus einer Probe
// mehrere Erreger identifiziert, MUSS die Zuordnung erkennbar sein, ueber
// derivedFrom oder eine gemeinsame Isolat-Probe. Keine Invariante: Ob eine Probe
// mehrere Erreger ergab, ist an einer einzelnen Observation nicht pruefbar.
* derivedFrom 0..* MS
* derivedFrom ^short = "Grundlagen der Einstufung: Empfindlichkeitsbefunde, ggf. die Identifizierung. Bei mehreren Erregern aus der Probe Pflicht, sofern specimen nicht auf dieselbe Isolat-Probe zeigt; sonst SOLLTEN sie angegeben werden. Dürfen entfallen, wenn die Klasse aus einem bereits eingestuften Befund übernommen wird."
* extension[triggeredBy-r5] ^short = "Nur für eine tatsächlich ausgelöste Folgediagnostik. Die fachliche Ableitung der MRGN-Einstufung wird nicht hierüber, sondern über derivedFrom abgebildet."
