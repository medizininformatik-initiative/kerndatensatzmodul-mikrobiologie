// Die Gegenstueck-Haelfte zu MII_PR_Mikrobio_Allgemeine_Mikroskopie, gebaut nach
// derselben offen/gezielt-Achse wie Kultur und Bestimmung. Das EU-Datenmodell
// benennt beide Haelften seit der Fassung vom 2026-09-10 ausdruecklich als
// "Profile 1" und "Profile 2" (Blatt "Microscopy", Zellen F3 und F4).
//
// Es ist KEIN Methodenschnitt — beide Haelften sind Mikroskopie. Getrennt sind
// sie durch Frage und Ergebnistyp, also nach der Regel dieses Moduls:
//
//   offen    "was ist zu sehen?"        -> Morphologie, nominal
//   gezielt  "ist X da, und wie viel?"  -> Mengenstufe, ordinal
//
// Deshalb liegt das hier NICHT bei MII_PR_Mikrobio_Spezifische_Bestimmung, obwohl
// beide zielgerichtet sind: Die antwortet Detected/Not detected, diese eine
// Stufe. Derselbe Grund, aus dem die Keimzahl nicht in der Kultur steckt.
Profile: MII_PR_Mikrobio_Spezifische_Mikroskopie
Parent: MII_PR_Labor_Laboruntersuchung
Id: mii-pr-mikrobio-spezifische-mikroskopie
Title: "MII PR Mikrobio Spezifische Mikroskopie"
Description: "Spezifische Mikroskopie beschreibt den mikroskopischen Nachweis eines im Untersuchungscode benannten Objekts — etwa säurefester Stäbchen oder von Leukozyten — mit der semiquantitativen Stufe als Ergebnis."
* insert MIKRO_OBSERVATION_COMMON
* ^purpose = "Dieses Profil beschreibt die zielgerichtete Mikroskopie, bei der das gesuchte Objekt im Untersuchungscode steht und das Ergebnis der Nachweis oder Ausschluss dieses Objekts ist; wie viel davon gesehen wurde, steht in der Mengenkomponente."
* code from MII_VS_Mikrobio_Spezifische_Mikroskopie_Tests_LOINC (extensible)
* code ^short = "Ordinaler LOINC-Code, der das gesuchte Objekt und die Faerbung benennt, z. B. 87243-2 'Microscopic observation [Presence] in Specimen by Auramine fluorochrome stain'. Steht das Objekt NICHT im Code, sondern soll als Ergebnis berichtet werden, ist die Allgemeine Mikroskopie das richtige Profil."
// DER WERT IST DER NACHWEIS, NICHT DIE STUFE. Bis 2026-09-12 stand hier die
// semiquantitative Stufe, mit der Begruendung, ein ordinaler Code mache die
// Stufe zur Antwort. Das haelt der Messung nicht stand: 72357-7, 87243-2 und
// 72163-9 sind SCALE_TYP LP7751-3 (Ord) mit PROPERTY LP217195-9 (PrThr,
// "Presence or Threshold") — LOINC-Ord heisst "geordnete Antworten", und
// Present/Absent ist genauso ordinal wie eine Stufenskala. Die Frage des Codes
// ist der Nachweis.
//
// Das Modellblatt "Microscopy" sagt dasselbe, und zwar zweimal: Ergebniszeile
// "present/absent for specific", Interpretationszeile "no intepretation". Die
// Stufe steht deshalb in component[menge], die Interpretation bleibt leer.
//
// Dieselbe Liste wie bei der Spezifischen Bestimmung, weil es dieselbe Frage
// ist. Getrennt bleiben die beiden Profile durch das Subjekt — hier ein
// mikroskopisch sichtbares Objekt, Wirtszellen oder ein Parasit, dort eine
// benannte Erregerspezies — und durch die Mengenkomponente.
* value[x] only CodeableConcept
* valueCodeableConcept
* valueCodeableConcept from MII_VS_Mikrobio_Detected_Not_Detected_SNOMED (extensible)
* valueCodeableConcept ^short = "Nachweis oder Ausschluss des im Code benannten Objekts. Die Menge des Gesehenen gehoert NICHT hierher, sondern in component[menge]. Liefert die Untersuchung gar keine verwertbare Aussage, dataAbsentReason."

// MENGE. Definition in MIKRO_MENGE_KOMPONENTE, gemeinsam mit der Allgemeinen
// Mikroskopie: dieselbe Aussage, deshalb dieselben Regeln. Sie traegt die
// semiquantitative Stufe und die Zaehlung je Gesichtsfeld.
* insert MIKRO_MENGE_KOMPONENTE

// FAERBUNG. Die Codes dieses Profils nennen die Faerbung meist selbst — 87243-2
// und 72357-7 tun es. Sie wird trotzdem angegeben: nur so ist sie unabhaengig
// von der Codewahl auswertbar, und nur so ist die konkrete Variante zu sehen,
// wo der Code lediglich die Klasse nennt ("Acid fast stain" gegen Kinyoun).
* extension contains MII_EX_Mikrobio_Faerbung named faerbung 0..1 MS
* extension[faerbung] ^short = "Eingesetzte Faerbung. Immer angeben, wenn gefaerbt wurde — auch wenn der Untersuchungscode sie schon nennt."

// Bewusst dieselbe Liste wie bei der Allgemeinen Mikroskopie: Es ist dasselbe
// Verfahren, nur auf eine andere Frage angewandt.
* method from MII_VS_Mikrobio_Morphologie_Methode_SNOMED (extensible)
* method ^short = "Das mikroskopische Verfahren. Die Faerbung gehoert NICHT hierher, sondern in extension[faerbung]."
