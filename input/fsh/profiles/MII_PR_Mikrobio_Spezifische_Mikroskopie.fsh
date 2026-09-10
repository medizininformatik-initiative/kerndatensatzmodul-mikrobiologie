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
* ^purpose = "Dieses Profil beschreibt die zielgerichtete Mikroskopie, bei der das gesuchte Objekt und die Färbetechnik im Untersuchungscode stehen und das Ergebnis die Menge des Gesehenen ist."
* code from MII_VS_Mikrobio_Spezifische_Mikroskopie_Tests_LOINC (extensible)
* code ^short = "Ordinaler LOINC-Code, der das gesuchte Objekt und die Faerbung benennt, z. B. 87243-2 'Microscopic observation [Presence] in Specimen by Auramine fluorochrome stain'. Steht das Objekt NICHT im Code, sondern soll als Ergebnis berichtet werden, ist die Allgemeine Mikroskopie das richtige Profil."
// DREI ERGEBNISFORMEN FUER DIESELBE FRAGE. Das Labor, dessen Katalog diesem
// Profil zugrunde liegt, berichtet dasselbe Analyt in zwei Formaten: leu1-leu3
// kategorial ("wenig", "maessig viel"), leu4-leu6 als Zaehlung je Gesichtsfeld
// ("<10/GF", "10-25/GF"). Dieselbe Frage, zwei Antwortformate — deshalb sind
// beide zugelassen und nicht nur das kategoriale.
//
// /[HPF] ("per high power field") ist ein gueltiger UCUM-Code, am 2026-09-10
// gegen UCUM 2.2 nachgemessen. Die Gesichtsfeldangabe braucht also keine
// Hilfskonstruktion.
//
// Das EU-Datenmodell kennt nur die kategoriale Form (Blatt "Microscopy",
// Zeile 15); die Zaehlung je Gesichtsfeld fehlt dort und ist zurueckgemeldet.
* value[x] only CodeableConcept or Quantity or Range
* valueCodeableConcept
* valueCodeableConcept from MII_VS_Mikrobio_Mikroskopie_Semiquantitativ_SNOMED (extensible)
* valueCodeableConcept ^short = "Semiquantitative Stufe des im Code benannten Objekts. Weil der Untersuchungscode ordinal ist, ist die Stufe der Wert — nicht die Interpretation und keine Komponente. Wurde untersucht und nichts gesehen, wird 'None' oder 'No organisms seen' berichtet; liefert die Untersuchung gar keine verwertbare Aussage, dataAbsentReason."
* valueQuantity ^short = "Zaehlung je Gesichtsfeld, UCUM-Einheit /[HPF]. Fuer offene Grenzen wird Quantity.comparator verwendet, z. B. '<10/GF' als comparator = '<', value = 10."
* valueRange ^short = "Zaehlung je Gesichtsfeld als Intervall, UCUM-Einheit /[HPF] — z. B. '10-25/GF' als low = 10, high = 25."
// Bewusst dieselbe Liste wie bei der Allgemeinen Mikroskopie: Es ist dasselbe
// Verfahren, nur auf eine andere Frage angewandt. Steht die Faerbung schon im
// Code — bei 87243-2 und 72357-7 ist das der Fall —, ist die Methode entbehrlich.
* method from MII_VS_Mikrobio_Morphologie_Methode_SNOMED (extensible)
* method ^short = "Entbehrlich, wo die Faerbung bereits im Untersuchungscode steht. Sonst wie bei der Allgemeinen Mikroskopie: bevorzugt die Faerbetechnik, weil Observation.method 0..1 ist und nur eines von Faerbung und Mikroskopieverfahren hineinpasst."
