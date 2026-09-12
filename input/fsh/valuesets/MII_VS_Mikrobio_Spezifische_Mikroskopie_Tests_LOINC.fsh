ValueSet: MII_VS_Mikrobio_Spezifische_Mikroskopie_Tests_LOINC
Id: mii-vs-mikrobio-spezifische-mikroskopie-tests-loinc
Title: "MII VS Mikrobio Spezifische Mikroskopie Tests [LOINC]"
Description: "Tests-ValueSet für die spezifische Mikroskopie: ordinale LOINC-Codes, bei denen das gesuchte Objekt und die Färbetechnik im Code benannt sind und das Ergebnis die semiquantitative Stufe ist."
* insert PR_CS_VS_Version
* insert Publisher
* ^status = #active
// ABLEITUNG DES FILTERS — sie folgt NICHT dem Blatt "Microscopy", weil dessen
// Beschreibung so nicht umsetzbar ist. Gemessen am 2026-09-10 gegen LOINC:
//
//   Code      CLASS            PROPERTY  SCALE_TYP  METHOD_TYP
//   105059-0  LP7819-8 MICRO   Prid      Nom        (keiner)
//   664-3     LP7819-8 MICRO   Prid      Nom        LP6301-8 Gram stain
//   72357-7   LP7819-8 MICRO   PrThr     Ord        LP6094-9 Acid fast stain
//   87243-2   LP7819-8 MICRO   PrThr     Ord        LP262570-7 Auramine
//   72163-9   LP7803-2 HEM/BC  PrThr     Ord        LP6301-8 Gram stain
//
// Daraus drei Korrekturen am Blatt:
//   1. "METHOD_TYP microscopy" gibt es nicht. METHOD_TYP traegt die FAERBUNG,
//      und die ist je Code eine andere.
//   2. CLASS = MICRO verliert die Wirtszellen: 72163-9 liegt in HEM/BC. Ein
//      CLASS-Filter allein findet Leukozyten, Erythrozyten und Epithelien nicht.
//   3. Die saubere Trennlinie zwischen offener und spezifischer Mikroskopie ist
//      SCALE_TYP: Nom traegt das gesehene Objekt als Ergebnis, Ord die Stufe.
//
// Umgesetzt als ein include je Faerbung — dasselbe Muster wie in
// MII_VS_Mikrobio_Spezifische_Bestimmung_Tests_LOINC —, weil ein Filter auf
// CLASS + PrThr + Ord ohne METHOD_TYP auch die ordinalen Kultur- und
// Molekularcodes einfinge und die Grenze zu den dortigen Tests-ValueSets
// einriss.
//
// UNVOLLSTAENDIG UND ABSICHTLICH SO: Die drei Faerbungen sind die, die im
// Katalog des rueckmeldenden Labors vorkommen. LOINC kennt weitere
// (Tuschepraeparat, KOH, Giemsa, Calcofluor). Sie werden ergaenzt, wenn ein
// Labor sie belegt — geraten wird hier nichts.
// NOTIZ, NICHT IM GUIDE SICHTBAR (FSH-Kommentare rendert der Publisher nie):
// Rueckmeldung vom 2026-09-11 zu 72357-7 "Microscopic observation [Presence] in
// Specimen by Acid fast stain" — bei diesem ordinalen Code ist nicht erkennbar,
// welche Frage die Antworten None / few / moderate eigentlich beantworten; eine
// Antwortliste ist in LOINC nicht hinterlegt, und der nominale Nachbar 11545-1
// ist deutlich hoeher gerankt. Das ist eine LOINC-Frage und keine dieses Moduls;
// bewusst NICHT durch eine Modellaenderung verdeckt und bewusst nicht als
// Ballotfrage aufgenommen. Wird gegebenenfalls als Ballotkommentar oder an die
// europaeische Gruppe eingebracht.
* include codes from system $loinc
    where PROPERTY = "LP217195-9" and
      SCALE_TYP = "LP7751-3" and
      METHOD_TYP = "LP6301-8" and
      STATUS = "ACTIVE"
* include codes from system $loinc
    where PROPERTY = "LP217195-9" and
      SCALE_TYP = "LP7751-3" and
      METHOD_TYP = "LP6094-9" and
      STATUS = "ACTIVE"
* include codes from system $loinc
    where PROPERTY = "LP217195-9" and
      SCALE_TYP = "LP7751-3" and
      METHOD_TYP = "LP262570-7" and
      STATUS = "ACTIVE"
