// Mikrobiologischer Befund, abgeleitet aus MII_PR_Mikrobio_Diagnostic_Report.
// Id und ^url entsprechen weiterhin dem ursprünglichen Gesamtmodell, damit bestehende Verweise gültig bleiben.
Logical: MII_LM_Mikrobio_Befund
Parent: Element
Id: mii-lm-mikrobio-logical-model
Title: "MII LM Microbiology Report"
Description: "Logical model of the microbiological report for the graphical representation of the 2027 microbiology data model"
* insert PR_CS_VS_Version
* insert Publisher
* ^url = "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-lm-mikrobio-logical-model-de"
* ^type = "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-lm-mikrobio-logical-model-de"
* . ^short = "Microbiological report"
* . ^definition = "Microbiological report that summarises and contextualises related microbiological investigation results."

* Identifikation 1..* Identifier "Identification" "Unique identifier of the report."
* Status 1..1 code "Status" "Status of the report (e.g. preliminary, final, corrected)."
* Befundtyp 0..* CodeableConcept "Report type" "Clinical classification of the microbiological report (LOINC). Multiple entries if the report covers several study types, e.g. bacteriological and mycological."
* Patient 1..1 Reference(Patient) "Patient" "Patient to whom the report relates."
* KlinischerBezugszeitpunkt 1..1 dateTime "Clinical reference time" "Time to which the content of the report relates (usually the time of specimen collection)."
* QuelleKlinischerBezugszeitpunkt 0..1 Coding "Source of the clinical reference time" "Indicates what the clinical reference time refers to, e.g. time of specimen collection or receipt in the laboratory."
* Dokumentationszeitpunkt 0..1 dateTime "Documentation time" "Time at which the report was released or made available."
* Anforderung 0..1 Reference(ServiceRequest) "Order" "Underlying laboratory order."
* Befundinterpret 0..* Reference(Practitioner) "Report interpreter" "Person who clinically assesses and is responsible for the report."
* Probenmaterial 0..* Reference(Specimen) "Specimen material" "Specimen materials on which the report is based."
* Untersuchung 0..* Reference(MII_LM_Mikrobio_Untersuchung) "Investigation" "The microbiological investigations contained in the report."
