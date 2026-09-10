// TODO (2026-09-10): BEBRÜTUNGSDAUER UND -TEMPERATUR — an die europäische
// Arbeitsgruppe zurückzuspiegeln. Gilt für beide Kulturprofile.
//
// Das Datenmodell schlägt im Blatt "Culture General" eine Komponente
// "Incubation Duration" mit 80581-2 und valueQuantity vor und vermerkt selbst
// den Widerspruch: 80581-2 ist ein Zeitstempel-INTERVALL (TmStpRange, verlangt
// Start und Ende), keine Dauer — "New Loinc Concept needed?". Die Temperatur
// kommt im Modell gar nicht vor.
//
// STAND 2026-09-10, nach Messung an R4 Core und am Biobank-Modul: FHIR sieht
// dafür Specimen.processing vor, und die MII hat dort bereits alles Nötige.
//
//   Dauer       Specimen.processing.time[x] als Period. Eine eigene Duration
//               gibt es dort nicht (Specimen.collection.duration meint die
//               Entnahme). Start und Ende sind genau das, was das Datenmodell
//               bei 80581-2 als "mandates for start/enddate" vermerkt — mit
//               Period ist die Anforderung erfüllt und KEIN neuer LOINC-Code
//               nötig.
//   Temperatur  MII_EX_Biobank_Temperaturbedingungen, Context Specimen.processing,
//               Wert als Range (low/high). Also genau das richtige Element und
//               der richtige Datentyp für "35–37 °C".
//
// KORREKTUR einer früheren Annahme dieses Kommentars: Die Aussage, es gäbe
// nichts zu übernehmen, war über hl7.fhir.uv.extensions.r4 5.2.0, R4 Core,
// hl7.fhir.eu.laboratory 2.0.0 und laborbefund rc4 gemessen — das Biobank-Modul
// war nicht darunter, weil es damals noch keine Dependency war. Eine Extension
// auf Observation.method zu definieren, wäre danach eine Neuerfindung neben
// einer vorhandenen Lösung gewesen.
//
// OFFEN bleibt die Implementierbarkeit, nicht die Modellierung: Wenn Labore
// keine Specimen-Ressource erzeugen (Ballotfrage 1), ist Specimen.processing
// unerreichbar, und dann bleibt nur eine Extension auf Observation.method.
// Deshalb steht die Frage als Ballotfrage 4 im Leitfaden und wird der
// europäischen Gruppe gespiegelt.
//
// Bis zur Antwort wird die Bebrütung nicht abgebildet.
Profile: MII_PR_Mikrobio_Allgemeine_Kultur
Parent: MII_PR_Labor_Laboruntersuchung
Id: mii-pr-mikrobio-allgemeine-kultur
Title: "MII PR Mikrobio Allgemeine Kultur"
Description: "Allgemeine Kultur beschreibt das Ergebnis einer nicht zielgerichteten mikrobiologischen Kultur, die prüft, ob in der Probe irgendein Mikroorganismus wächst, ohne die Analyse auf einen vordefinierten Erreger zu beschränken."
* insert MIKRO_OBSERVATION_COMMON
* ^purpose = "Dieses Profil beschreibt die allgemeine Kulturdiagnostik ohne vordefiniertes Ziel." 
* obeys allgemeine-kultur-method-with-neutral-code
* code from MII_VS_Mikrobio_Allgemeine_Kultur_Tests_LOINC (extensible)
* code ^short = "Bevorzugt 11475-1 'Microorganism identified in Specimen by Culture'. 41852-5 'Microorganism or agent identified in Specimen' ist gleichwertig zulaessig, weil das EU-Datenmodell die Methode nach Observation.method auslagert; derselbe Code steht auch bei der Allgemeinen Bestimmung, dort mit einem Organismus als Ergebnis. Bei 41852-5 ist Observation.method deshalb Pflicht (allgemeine-kultur-method-with-neutral-code). Siehe die Seite 'Profilauswahl und Abgrenzung'."
* value[x] only CodeableConcept
* valueCodeableConcept
* valueCodeableConcept from MII_VS_Mikrobio_Kultur_Ergebnis_SNOMED (required)
* method from MII_VS_Mikrobio_Allgemeine_Kultur_Methode_SNOMED (extensible)

// Die Pflicht haengt am Code, der sie ausloest, nicht am Element: Bei 11475-1
// nennt der Code das Verfahren selbst, die Methode fuegt nichts hinzu, und ein
// `method 1..1` wuerde Instanzen brechen, die "Kultur, kein Wachstum" ohne
// aerob/anaerob berichten. Bei 41852-5 weist erst die Methode die Untersuchung
// als Kultur aus.
//
// Nur hier, nicht bei der Allgemeinen Bestimmung: Dort ist 41852-5 der
// Regelfall. Die Asymmetrie loest die Mehrdeutigkeit trotzdem auf — eine
// Instanz mit 41852-5 und ohne Methode kann keine gueltige Kultur sein, also
// ist sie eine Bestimmung. Die Spezifische Kultur ist nicht betroffen: Ihr
// Tests-ValueSet filtert auf METHOD_TYP = LP6429-7, was 41852-5 ausschliesst.
Invariant: allgemeine-kultur-method-with-neutral-code
Description: "If the method-neutral code 41852-5 is used, Observation.method SHALL be present, because only the method identifies the investigation as a culture."
Expression: "code.coding.where(system = 'http://loinc.org' and code = '41852-5').exists() implies method.exists()"
Severity: #error