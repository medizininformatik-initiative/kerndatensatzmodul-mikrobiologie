ValueSet: MII_VS_Mikrobio_Allgemeine_Bestimmung_Tests_LOINC
Id: mii-vs-mikrobio-allgemeine-bestimmung-tests-loinc
Title: "MII VS Mikrobio Allgemeine Bestimmung Tests [LOINC]"
Description: "Tests-ValueSet für die allgemeine Bestimmung: LOINC-Codes für die ungerichtete Identifizierung eines Mikroorganismus. Bevorzugt wird 41852-5; die übrigen Codes sind gleichwertig zulässig, wo das Labor die Erregergruppe oder das Sequenzierziel im Code benennt."
* insert PR_CS_VS_Version
* insert Publisher
* ^status = #active
// Aus dem EU-Datenmodell, Blatt "Phenotypic Identification" (EU-Zeilen). 41852-5
// ist dort als "preferred" markiert — nicht als einziger zulaessiger Code. FHIR
// kennt keine Praeferenz je Code innerhalb eines ValueSets: Die Bindungsstaerke
// gilt fuer die ganze Menge, und keine der vier an
// ValueSet.compose.include.concept zulaessigen Extensions bedeutet "bevorzugt".
// Die Praeferenz steht daher im ^short des Profils, wo ein Implementierer sie
// liest.
* $loinc#41852-5 "Microorganism or agent identified in Specimen"
* $loinc#23667-9 "Bacteria identified in Specimen"
* $loinc#42805-2 "Fungus identified in Specimen"
* $loinc#41461-5 "Virus identified in Specimen"
// Aus dem Blatt "Molecular techniques", Block "Identification Procedure
// (General sequencing)". Sie gehoeren hierher, weil das Blatt zum Ergebnis
// woertlich sagt: "SCT: same value set as for Phenotypic identification" —
// dieselbe Frage, dasselbe Ergebnis, anderes Verfahren. Ohne diese beiden Codes
// waere sequenzierungsbasierte Identifizierung im Modul nicht ausdrueckbar.
* $loinc#66885-5 "Bacteria identified based on 16S rRNA gene [Identifier] in Specimen by Sequencing"
* $loinc#101534-6 "Fungal 18s rRNA gene [Identifier] in Specimen by Sequencing"
// NOCH NICHT VERFUEGBAR, im Datenmodell angefordert:
//   - ein LOINC-Code "Parasite identified in Specimen" (im Blatt als "missing"
//     vermerkt) — die Reihe Bakterien/Pilze/Viren ist ohne ihn unvollstaendig.
//   - ein neuer Code "Microorganism nucleic acid genome or sequence identified
//     in specimen or isolate" (PrID), der allgemeine DNA- und RNA-Sequenzierung
//     abdecken soll.
