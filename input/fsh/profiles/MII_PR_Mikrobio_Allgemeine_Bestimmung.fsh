Profile: MII_PR_Mikrobio_Allgemeine_Bestimmung
Parent: MII_PR_Labor_Laboruntersuchung
Id: mii-pr-mikrobio-allgemeine-bestimmung
Title: "MII PR Mikrobio Allgemeine Bestimmung"
Description: "Allgemeine Bestimmung beschreibt die Identifikation eines Mikroorganismus oder infektiösen Agens in einer Probe, ohne Einschränkung auf ein vordefiniertes Ziel."
* insert MIKRO_OBSERVATION_COMMON
* code = $loinc#41852-5 // Microorganism or agent identified in Specimen
* value[x] only CodeableConcept
* valueCodeableConcept
* valueCodeableConcept from MII_VS_Mikrobio_Allgemeine_Bestimmung_Ergebnis_SNOMED (extensible)
* valueCodeableConcept ^short = "Identifizierter Mikroorganismus oder 'Not detected', wenn kein Erreger identifiziert wurde. Ein unbestimmbares Ergebnis wird ueber dataAbsentReason abgebildet."
* method from MII_VS_Mikrobio_Allgemeine_Bestimmung_Methode_SNOMED (extensible)
