Profile: MII_PR_Mikrobio_Resistenzkategorie_Status
Parent: MII_PR_Labor_Laboruntersuchung
Id: mii-pr-mikrobio-resistenzkategorie-status
Title: "MII PR Mikrobio Resistenzkategorie Status"
Description: "Bewertung eines nachgewiesenen Erregers hinsichtlich einer definierten Resistenzkategorie, z. B. MRSA, VRE, LRE oder LVRE. Die bewertete Kategorie steht in Observation.code, das Ergebnis der Bewertung in Observation.value."
// Loest das bisherige Profil mii-pr-mikrobio-mre-klasse ab. Dort war der Wert der
// konkrete resistente Organismus (z. B. MRSA, VRE) aus dem SNOMED-Unterbaum
// "antimicrobial resistant organism". Das duplizierte Erreger- und Resistenzinformationen,
// die bereits ueber Identifikation, Empfindlichkeit und Resistenzmechanismen abgebildet
// sind, und war semantisch breiter als "MRE": Einzelsubstanzresistenzen wie
// 838510005 "Linezolid resistant Enterococcus" bedeuten nicht automatisch Multiresistenz.
* insert MIKRO_OBSERVATION_COMMON
* ^purpose = "Dieses Profil bildet die aus den zugrunde liegenden mikrobiologischen Untersuchungen abgeleitete Bewertung eines Erregers hinsichtlich einer definierten Resistenzkategorie ab. Es ersetzt keinen zielgerichteten Erregernachweis: Ob ein Erreger überhaupt vorhanden ist, wird über MII_PR_Mikrobio_Spezifische_Bestimmung bzw. MII_PR_Mikrobio_Spezifische_Kultur abgebildet."
* code 1..1 MS
* code from MII_VS_Mikrobio_Resistenzkategorie_Status (required)
* code ^short = "Bewertete Resistenzkategorie, z. B. MRSA-Status. Es werden ausschließlich Kategorien dokumentiert, die für den vorliegenden Erreger fachlich anwendbar sind; für einen Enterococcus wird kein MRSA-Status erzeugt."
* value[x] only CodeableConcept
* valueCodeableConcept 1..1 MS
* valueCodeableConcept from MII_VS_Mikrobio_Resistenzkategorie_Status_Ergebnis (required)
* valueCodeableConcept ^short = "Positive: Der Erreger erfüllt die Kriterien der in code angegebenen Kategorie. Negative: Der Erreger wurde anhand der relevanten Untersuchungen ausreichend bewertet und erfüllt die Kriterien nicht. Kann die Kategorie nicht ausreichend bewertet werden, wird nicht Negative angegeben, sondern dataAbsentReason gesetzt oder keine Status-Observation erzeugt."
// Die Kategorienbewertung ist eine abgeleitete fachliche Aussage: Sie entsteht durch
// Bewertung mehrerer Untersuchungen, nicht durch eine ausgeloeste Folgeuntersuchung. Deshalb
// derivedFrom und nicht die triggeredBy-Extension.
//
// Kein 1..-Constraint: Wird der Status unmittelbar aus einem bereits kategorisierten
// Laborbefund uebernommen, liegen die zugrunde liegenden Untersuchungen im sendenden
// System ggf. nicht als eigene Observations vor. Die Angabe ist deshalb SHOULD und
// nicht SHALL.
* derivedFrom 0..* MS
* derivedFrom ^short = "Untersuchungen, aus denen die Bewertung abgeleitet wurde: Erregeridentifikation, Empfindlichkeitstestung und Resistenzmechanismen/Determinanten. Diese Untersuchungen SOLLTEN angegeben werden, damit die Bewertungsgrundlage nachvollziehbar ist. Sie dürfen entfallen, wenn der Status unmittelbar aus einem bereits kategorisierten Laborbefund übernommen wird und die Einzeluntersuchungen nicht als eigene Observations vorliegen."
* extension[triggeredBy-r5] ^short = "Nur für eine tatsächlich ausgelöste Folgediagnostik. Die fachliche Ableitung der Kategorienbewertung wird nicht hierüber, sondern über derivedFrom abgebildet."
