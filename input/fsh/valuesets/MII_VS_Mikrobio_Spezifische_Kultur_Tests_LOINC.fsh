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
