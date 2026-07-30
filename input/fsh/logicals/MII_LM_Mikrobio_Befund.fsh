// Mikrobiologischer Befund, abgeleitet aus MII_PR_Mikrobio_Diagnostic_Report.
// Id und ^url entsprechen weiterhin dem ursprünglichen Gesamtmodell, damit bestehende Verweise gültig bleiben.
Logical: MII_LM_Mikrobio_Befund
Parent: Element
Id: mii-lm-mikrobio-logical-model
Title: "MII LM Mikrobio Befund"
Description: "Logical Model des mikrobiologischen Befunds für die grafische Darstellung des Mikrobiologie-Datenmodells 2027 [DE]"
* insert PR_CS_VS_Version
* insert Publisher
* ^url = "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-lm-mikrobio-logical-model-de"
* ^type = "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-lm-mikrobio-logical-model-de"
* . ^short = "Mikrobiologischer Befund"
* . ^definition = "Mikrobiologischer Befundbericht, der zusammengehörige mikrobiologische Untersuchungsergebnisse zusammenfasst und kontextualisiert."

* Identifikation 1..* Identifier "Identifikation" "Eindeutiger Identifikator des Befunds."
* Status 1..1 code "Status" "Status des Befunds (z. B. vorläufig, final, korrigiert)."
* Befundtyp 0..1 CodeableConcept "Befundtyp" "Fachliche Einordnung des mikrobiologischen Befunds (LOINC)."
* Patient 1..1 Reference(Patient) "Patient" "Patient, auf den sich der Befund bezieht."
* KlinischerBezugszeitpunkt 1..1 dateTime "Klinischer Bezugszeitpunkt" "Zeitpunkt, auf den sich der Befund inhaltlich bezieht (in der Regel der Zeitpunkt der Probenentnahme)."
* QuelleKlinischerBezugszeitpunkt 0..1 Coding "Quelle des klinischen Bezugszeitpunkts" "Gibt an, worauf sich der klinische Bezugszeitpunkt bezieht, z. B. Zeitpunkt der Probenentnahme oder Laboreingang."
* Dokumentationszeitpunkt 0..1 dateTime "Dokumentationszeitpunkt" "Zeitpunkt, zu dem der Befund freigegeben bzw. verfügbar gemacht wurde."
* Anforderung 0..1 Reference(ServiceRequest) "Anforderung" "Zugrunde liegende Laboranforderung."
* Befundinterpret 0..* Reference(Practitioner) "Befundinterpret" "Person, die den Befund fachlich beurteilt und verantwortet."
* Probenmaterial 0..* Reference(Specimen) "Probenmaterial" "Probenmaterialien, auf denen der Befund beruht."
* Untersuchung 0..* Reference(MII_LM_Mikrobio_Untersuchung) "Untersuchung" "Die im Befund enthaltenen mikrobiologischen Untersuchungen."
