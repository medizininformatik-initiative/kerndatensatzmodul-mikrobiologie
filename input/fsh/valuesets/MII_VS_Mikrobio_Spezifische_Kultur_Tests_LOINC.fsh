ValueSet: MII_VS_Mikrobio_Spezifische_Kultur_Tests_LOINC
Id: mii-vs-mikrobio-spezifische-kultur-tests-loinc
Title: "MII VS Mikrobio Spezifische Kultur Tests [LOINC]"
Description: "Tests-ValueSet fuer die spezifische Kultur: erregerspezifische Kulturnachweise, bei denen das gesuchte Ziel bereits im LOINC-Code benannt ist."
* insert PR_CS_VS_Version
* insert Publisher
* ^status = #active
// PROPERTY = LP6850-4 (Prid) liefert die "[Identifier]"-Terme (Scale Nom),
// PROPERTY = LP217195-9 (PrThr) die "[Presence]"-Terme (Scale Ord). Beide Varianten sind in
// der Praxis gebraeuchlich und beide funktionieren mit dem Ergebnis-Binding auf
// MII_VS_Mikrobio_Kultur_Ergebnis_SNOMED (Organism growth / No growth). Die PrThr-Terme
// enthalten die erregerspezifischen Nachweis-Codes, u. a. 13316-5 (VRE) und 13317-3 (MRSA),
// und sind damit Voraussetzung fuer negative Nachweisergebnisse (Issue #84).
* include codes from system $loinc
    where PROPERTY = "LP6850-4" and
      METHOD_TYP = "LP6429-7" and
      CLASS = "LP7819-8" and
      STATUS = "ACTIVE"
* include codes from system $loinc
    where PROPERTY = "LP217195-9" and
      METHOD_TYP = "LP6429-7" and
      CLASS = "LP7819-8" and
      STATUS = "ACTIVE"

// AUSSCHLUeSSE. Das EU-Datenmodell markiert diese vier im Blatt "Culture
// Specific" (Zeilen 50-53, Spalte F) mit "Remove", und zu Recht: Eine
// durchnummerierte Mykobakterienart ist kein benanntes Ziel, "Mycobacterium sp
// # 3" sagt einem Auswerter nichts.
//
// Gemessen am 2026-09-10: Alle vier sind in LOINC noch STATUS = ACTIVE, der
// Filter oben wirft sie also NICHT heraus — sie muessen einzeln ausgeschlossen
// werden. Ihre uebrigen Achsen (CLASS MICRO, PROPERTY Prid, METHOD_TYP Organism
// specific culture) treffen den Filter vollstaendig.
* exclude $loinc#44851-4 "Mycobacterium sp # 2 identified in Specimen by Organism specific culture"
* exclude $loinc#44852-2 "Mycobacterium sp # 3 identified in Specimen by Organism specific culture"
* exclude $loinc#44854-8 "Mycobacterium sp # 4 identified in Specimen by Organism specific culture"
* exclude $loinc#44855-5 "Mycobacterium sp # 5 identified in Specimen by Organism specific culture"
