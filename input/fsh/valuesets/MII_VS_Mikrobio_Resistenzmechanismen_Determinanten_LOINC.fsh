ValueSet: MII_VS_Mikrobio_Resistenzmechanismen_Determinanten_LOINC
Id: mii-vs-mikrobio-resistenzmechanismen-determinanten-loinc
Title: "MII VS Mikrobio Resistenzmechanismen Determinanten [LOINC]"
Description: "Tests-ValueSet für Resistenzmechanismen und Determinanten: LOINC-Codes für den Nachweis von Resistenzgenen, Resistenzproteinen und funktionalen Resistenztests."
* insert PR_CS_VS_Version
* insert Publisher
* ^status = #active
* include codes from system $loinc
    where PROPERTY = "LP217195-9" and
      CLASS = "LP7755-4" and
      STATUS = "ACTIVE"

// Die Carbapenemase-Schnelltests des EU-Datenmodells liegen in der LOINC-Klasse
// MICRO (LP7819-8), nicht in ABXBACT (LP7755-4) — am 2026-09-10 gegen LOINC 2.82
// nachgemessen. Der Filter oben erfasst sie deshalb NICHT, obwohl das Modul die
// zugehoerigen Verfahren (Lateral-Flow-Immunoassays) im Methoden-ValueSet fuehrt.
// Methode ja, Code nein waere ein Widerspruch im eigenen Modul.
//
// Aufgezaehlt statt den Filter auf CLASS = MICRO zu weiten: Zusammen mit
// PROPERTY = PrThr finge MICRO jeden gezielten Erregernachweis mit ein und
// riss die Grenze zu MII_VS_Mikrobio_Spezifische_Bestimmung_Tests_LOINC ein.
// Das EU-Datenmodell zaehlt sie aus demselben Grund einzeln auf.
* $loinc#86930-5 "Carbapenemase [Presence] in Isolate"
* $loinc#101673-2 "KPC carbapenemase [Presence] in Isolate by Rapid immunoassay"
* $loinc#101675-7 "IMP Carbapenemase [Presence] in Isolate by Rapid immunoassay"
* $loinc#101677-3 "NDM Carbapenemase [Presence] in Isolate by Rapid immunoassay"
* $loinc#101676-5 "VIM Carbapenemase [Presence] in Isolate by Rapid immunoassay"
* $loinc#101674-0 "OXA-48-like carbapenemase [Presence] in Isolate by Rapid immunoassay"

// AUSSCHLUeSSE — zwei verschiedene Gruende.
//
// 1. Zu allgemein: Beide Codes benennen KEIN Ziel ("irgendeine Mutation",
//    "Determinanten der Resistenz"). Ein gezieltes Profil braucht ein benanntes
//    Ziel, sonst ist `Detected` eine leere Aussage. Das EU-Datenmodell schliesst
//    genau diese beiden aus — und damit die einzigen Codes, mit denen sich eine
//    OFFENE Resistenzbestimmung ausdruecken liesse. Die Luecke ist bewusst und
//    unbesetzt (offener Punkt O1 der Ableitungsanalyse).
* exclude $loinc#92246-8 "Microorganism resistance mutation detected [Presence] by Molecular method"
* exclude $loinc#108153-8 "Genetic determinants of antimicrobial resistance [Presence] in Specimen by NAA with non-probe detection"
// 2. Falsches Subjekt: 35492-8 weist einen ERREGER nach, keine Determinante, und
//    ist daher in MII_VS_Mikrobio_Spezifische_Bestimmung_Tests_LOINC aufgenommen.
* exclude $loinc#35492-8 "Methicillin resistant Staphylococcus aureus (MRSA) DNA [Presence] in Specimen by NAA with probe detection"
