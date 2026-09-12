// Die Faerbung der mikroskopischen Untersuchung. Am 2026-09-12 aus
// Observation.method herausgeloest, auf Rueckmeldung aus dem Labor: Dort standen
// Faerbung und Mikroskopieverfahren in einem Element, das 0..1 ist, sodass nur
// eines von beiden angegeben werden konnte.
//
// WARUM EINE EXTENSION UND NICHT method: Die HL7 EU Lab Semantic Workgroup
// codiert die Faerbung mit < 37926009 |Microbial stain method (procedure)|. Diese
// Hierarchie liegt in keiner der drei Wurzeln des FHIR-Core-ValueSets
// observation-methods (272394005, 129264002, 386053000; gemessen 2026-09-12),
// passt also typmaessig nicht nach Observation.method. Zugleich versteht die
// Workgroup die Faerbung als Teil der Probenaufbereitung und legt sie nach
// Specimen.processing.procedure — ein Weg, der hier nicht gangbar ist, weil er
// eine Specimen-Ressource voraussetzt (Ballotfrage 1) und der Parent von
// MII_PR_Mikrobio_Probe unter processing Lagertemperaturbedingungen
// verpflichtend macht (Ballotfrage 3).
//
// WARUM KEINE KOMPONENTE: component.value[x] ist ein ERGEBNIS der Untersuchung;
// die Faerbung ist Metadatum des Verfahrens. Ausserdem gibt es keinen LOINC-Code
// fuer "eingesetzte Faerbung", es braeuchte also einen zweiten Interimscode.
//
// KONTEXT Observation und nicht Observation.method: Eine Extension an .method
// existiert nur, wenn .method vorhanden ist. Wer mit dem methodenfreien Code
// 105059-0 arbeitet und nur die Faerbung kennt, muesste dann einen
// Methodenwert erfinden, nur damit die Faerbung einen Traeger hat.
Extension: MII_EX_Mikrobio_Faerbung
Id: mii-ex-mikrobio-faerbung
Title: "MII EX Mikrobio Färbung"
Description: "Staining technique used for the microscopic examination, coded with the same SNOMED CT hierarchy as the European laboratory coordination."
* insert PR_CS_VS_Version
* insert Publisher
* ^status = #active
* ^context[0].type = #element
* ^context[0].expression = "Observation"
* value[x] only CodeableConcept
* valueCodeableConcept 1..1 MS
* valueCodeableConcept from MII_VS_Mikrobio_Faerbung_SNOMED (extensible)
* valueCodeableConcept ^short = "Eingesetzte Faerbung, z. B. 62777006 'Gram stain method'. Immer angeben, wenn gefaerbt wurde — auch dann, wenn der Untersuchungscode die Faerbung schon nennt, damit die Angabe unabhaengig von der Codewahl an einer Stelle auswertbar ist."
