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
Title: "MII PR Microbiology Specific Microscopy"
Description: "Specific microscopy describes the microscopic detection of an object named in the investigation code — such as acid-fast bacilli or leukocytes — with the semiquantitative grade as the result."
* insert MIKRO_OBSERVATION_COMMON
* ^purpose = "This profile describes targeted microscopy, in which the object sought is in the investigation code and the result is the detection or exclusion of that object; how much of it was seen is in the quantity component."
* code from MII_VS_Mikrobio_Spezifische_Mikroskopie_Tests_LOINC (extensible)
* code ^short = "Ordinal LOINC code naming the object sought and the stain, e.g. 87243-2 'Microscopic observation [Presence] in Specimen by Auramine fluorochrome stain'. If the object is NOT in the code but is to be reported as the result, General microscopy is the right profile."
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
* valueCodeableConcept ^short = "Detection or exclusion of the object named in the code. The quantity seen does NOT belong here but in component[menge]. If the investigation yields no usable statement at all, dataAbsentReason."

// MENGE. Definition in MIKRO_MENGE_KOMPONENTE, gemeinsam mit der Allgemeinen
// Mikroskopie: dieselbe Aussage, deshalb dieselben Regeln. Sie traegt die
// semiquantitative Stufe und die Zaehlung je Gesichtsfeld.
* insert MIKRO_MENGE_KOMPONENTE

// FAERBUNG. Die Codes dieses Profils nennen die Faerbung meist selbst — 87243-2
// und 72357-7 tun es. Sie wird trotzdem angegeben: nur so ist sie unabhaengig
// von der Codewahl auswertbar, und nur so ist die konkrete Variante zu sehen,
// wo der Code lediglich die Klasse nennt ("Acid fast stain" gegen Kinyoun).
* extension contains MII_EX_Mikrobio_Faerbung named faerbung 0..1 MS
* extension[faerbung] ^short = "Staining technique used. Always state it when a stain was applied — even when the investigation code already names it."

// Bewusst dieselbe Liste wie bei der Allgemeinen Mikroskopie: Es ist dasselbe
// Verfahren, nur auf eine andere Frage angewandt.
* method from MII_VS_Mikrobio_Morphologie_Methode_SNOMED (extensible)
* method ^short = "The microscopic procedure. The stain does NOT belong here but in extension[faerbung]."
