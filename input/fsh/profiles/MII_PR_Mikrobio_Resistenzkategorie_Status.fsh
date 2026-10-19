Profile: MII_PR_Mikrobio_Resistenzkategorie_Status
Parent: MII_PR_Labor_Laboruntersuchung
Id: mii-pr-mikrobio-resistenzkategorie-status
Title: "MII PR Microbiology Resistance Category Status"
Description: "Assessment of a detected pathogen with regard to a defined resistance category, e.g. MRSA, VRE, LRE or LVRE. The assessed category is in Observation.code, the result of the assessment in Observation.value."
// Loest das bisherige Profil mii-pr-mikrobio-mre-klasse ab. Dort war der Wert der
// konkrete resistente Organismus (z. B. MRSA, VRE) aus dem SNOMED-Unterbaum
// "antimicrobial resistant organism". Das duplizierte Erreger- und Resistenzinformationen,
// die bereits ueber Identifikation, Empfindlichkeit und Resistenzmechanismen abgebildet
// sind, und war semantisch breiter als "MRE": Einzelsubstanzresistenzen wie
// 838510005 "Linezolid resistant Enterococcus" bedeuten nicht automatisch Multiresistenz.
* insert MIKRO_OBSERVATION_COMMON
* ^purpose = "This profile represents the assessment of a pathogen with regard to a defined resistance category, derived from the underlying microbiological investigations. It does not replace a targeted pathogen detection: whether a pathogen is present at all is represented via MII_PR_Mikrobio_Spezifische_Bestimmung or MII_PR_Mikrobio_Spezifische_Kultur."
* code 1..1 MS
* code from MII_VS_Mikrobio_Resistenzkategorie_Status (required)
* code ^short = "Assessed resistance category, e.g. MRSA status. Only categories that are clinically applicable to the pathogen at hand are documented; no MRSA status is generated for an Enterococcus."
* value[x] only CodeableConcept
* valueCodeableConcept 1..1 MS
* valueCodeableConcept from MII_VS_Mikrobio_Resistenzkategorie_Status_Ergebnis (required)
* valueCodeableConcept ^short = "Positive: the pathogen meets the criteria of the category given in code. Negative: the pathogen was sufficiently assessed on the basis of the relevant investigations and does not meet the criteria. If the category cannot be sufficiently assessed, Negative is not stated; instead dataAbsentReason is set or no status Observation is created."
// Die Kategorienbewertung ist eine abgeleitete fachliche Aussage: Sie entsteht durch
// Bewertung mehrerer Untersuchungen, nicht durch eine ausgeloeste Folgeuntersuchung. Deshalb
// derivedFrom und nicht die triggeredBy-Extension.
//
// Kein 1..-Constraint: Wird der Status unmittelbar aus einem bereits kategorisierten
// Laborbefund uebernommen, liegen die zugrunde liegenden Untersuchungen im sendenden
// System ggf. nicht als eigene Observations vor. Die Angabe ist deshalb SHOULD und
// nicht SHALL.
* derivedFrom 0..* MS
* derivedFrom ^short = "Investigations from which the assessment was derived: pathogen identification, susceptibility testing and resistance mechanisms / determinants. These investigations SHOULD be stated so that the basis of the assessment is traceable. They may be omitted if the status is taken directly from an already categorised laboratory report and the individual investigations are not available as separate Observations."
* extension[triggeredBy-r5] ^short = "Only for follow-up diagnostics that were actually triggered. The clinical derivation of the category assessment is represented not here but via derivedFrom."
