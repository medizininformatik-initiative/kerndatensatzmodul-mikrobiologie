ValueSet: MII_VS_Mikrobio_Keimzahl_LOINC
Id: mii-vs-mikrobio-keimzahl-loinc
Title: "MII VS Mikrobio Keimzahl [LOINC]"
Description: "Tests-ValueSet für die Keimzahlbestimmung: LOINC-Codes für die quantitative Bestimmung lebensfähiger Mikroorganismen."
* insert PR_CS_VS_Version
* insert Publisher
* ^status = #active
// WARUM DIE KEIMZAHL EIN EIGENES PROFIL IST, obwohl das EU-Datenmodell sie in
// denselben Block zoege. Das Blatt "Molecular techniques" fuehrt einen Block
// "Quantification Procedure" mit drei Filtervarianten (Zeilen 19-21) und nennt
// in Zeile 17 die Eigenschaften "AcNc or NcNc or threshold (CT)".
//
// Am 2026-09-10 gemessen liegen diese vier Codes auf ALLEN DREI Achsen der
// weitesten Variante D19 ("All codes with any method",
// class: micro system:XXX Scale: Qn):
//
//   49223-1  CLASS MICRO  PROPERTY NCnc  SCALE Qn  METHOD VC
//   564-5    CLASS MICRO  PROPERTY Num   SCALE Qn  METHOD VC
//   38436-2  CLASS MICRO  PROPERTY NCnt  SCALE Qn  METHOD VC
//   699-9    CLASS MICRO  PROPERTY NCnc  SCALE Qn  METHOD Microscopic count
//
// NCnc steht in Zeile 17 ausdruecklich. Die kulturelle Keimzahl faellt also
// nicht durch einen unscharfen Filter mit hinein, sondern auf der Achse, die
// das Blatt selbst benennt.
//
// Das Blatt hat sich aber nicht entschieden: D20 verengt auf
// "component: (DNA or RNA)" und schliesst die Keimzahl damit aus, D21 zusaetzlich
// auf methodenfreie Codes. Dieses Modul entscheidet nach seiner eigenen Regel —
// Ergebnisraum, nicht Verfahren: KBE je Volumen, je Masse oder je Probe ist ein
// anderer Ergebnisraum als Kopien je Volumen, mit anderen Einheiten. Deshalb
// zwei Profile, wie auch Titer und Antigen-/Antikoerpertest getrennt sind.
* $loinc#49223-1  "Colony count [#/volume] in Specimen by Visual count"
* $loinc#564-5  "Colony count [#] in Specimen by Visual count"
* $loinc#38436-2  "Colony count [#/mass] in Specimen by Visual count"
* $loinc#699-9  "Organism count [#/volume] in Specimen by Microscopic count"
