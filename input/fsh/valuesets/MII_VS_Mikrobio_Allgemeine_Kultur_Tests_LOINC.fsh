ValueSet: MII_VS_Mikrobio_Allgemeine_Kultur_Tests_LOINC
Id: mii-vs-mikrobio-allgemeine-kultur-tests-loinc
Title: "MII VS Mikrobio Allgemeine Kultur Tests [LOINC]"
Description: "Tests-ValueSet für die allgemeine Kultur: LOINC-Codes für die ungerichtete kulturelle Untersuchung. Bevorzugt wird 11475-1, weil der Code das Verfahren selbst benennt; 41852-5 ist gleichwertig zulässig."
* insert PR_CS_VS_Version
* insert Publisher
* ^status = #active
// Blatt "Culture General" der Fassung vom 2026-09-10: 41852-5 ist dort
// "Preferred" (Zeile 3, Koordination "Post"), 11475-1 "Allowed" (Zeile 5,
// "Post weak"). In der Vorgaengerfassung war es umgekehrt. Grund der Umkehr ist
// der Grundsatz "Precoordination should be left out!" (Zelle D12): Die Methode
// gehoert nach Observation.method, der Testcode bleibt methodenneutral.
//
// 41852-5 ist auf dem Blatt "Phenotypic Identification" (Zeile 21) EBENFALLS
// "preferred" — derselbe Code fuer zwei Profile mit unvereinbaren
// Ergebnisbindungen.
//
// DAS WHITEPAPER WIDERSPRICHT SICH HIER SELBST, und zwar zwischen zwei Kapiteln:
//
//   "Core Principles"   "If it can be found by culture, the LOINC-codes
//                       '41852-5 Microorganism or agent identified in specimen'
//                       is preferred."
//   "Culture and Detection by Culture", Summary of Coding Recommendations:
//                       "Use WEAK PRE-COORDINATION BY METHOD: distinguish
//                       'general culture' from 'specific (taxon-targeted)
//                       culture.'"
//
// Ein Code mit "by Culture" ist schwach praekoordiniert — das Workbook nennt
// 11475-1 in E5 und E7 woertlich "Post weak", genau der Begriff des
// Kulturkapitels. 41852-5 traegt gar keine Methode, das ist volle
// Postkoordination. Das Kulturkapitel stuetzt also 11475-1, das Grundsatzkapitel
// 41852-5.
//
// Vorbehalt: "weak pre-coordination by method" ist ein knapper Stichpunkt, und
// diese Lesart stuetzt sich auf die Begriffsgleichheit mit dem Workbook. Der
// Widerspruch zwischen den Kapiteln besteht aber unabhaengig davon, welche
// Lesart stimmt.
//
// Wir folgen dem Kulturkapitel, und zwar aus einem Grund, den KEINE der Stellen
// adressiert: Keine sagt, wie ein Empfaenger die Allgemeine Kultur von der
// Allgemeinen Bestimmung unterscheidet, wenn beide denselben Code fuehren.
// 11475-1 macht die Kultur am Code erkennbar und loest das ohne Zusatzregel.
// 41852-5 bleibt zulaessig, verlangt dann aber Observation.method (Invariant
// allgemeine-kultur-method-with-neutral-code).
//
// Zur Unterscheidbarkeit beider Profile siehe "Profilauswahl und Abgrenzung".
* $loinc#11475-1 "Microorganism identified in Specimen by Culture"
* $loinc#41852-5 "Microorganism or agent identified in Specimen"
