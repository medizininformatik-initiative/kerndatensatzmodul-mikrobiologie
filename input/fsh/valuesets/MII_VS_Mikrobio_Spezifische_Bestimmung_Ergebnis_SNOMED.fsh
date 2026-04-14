ValueSet: MII_VS_Mikrobio_Spezifische_Bestimmung_Ergebnis_SNOMED
Id: mii-vs-mikrobio-spezifische-bestimmung-ergebnis-snomed
Title: "MII VS Mikrobio Spezifische Bestimmung Ergebnis [SNOMED]"
Description: "Ergebnis-ValueSet fuer die spezifische Bestimmung."
* insert PR_CS_VS_Version
* insert Publisher
* ^status = #active
* include codes from valueset MII_VS_Mikrobio_Detected_Not_Detected_SNOMED
* $sct#10828004 "Positive (qualifier value)"
* $sct#264868006 "No growth (qualifier value)"
* $sct#82334004 "Indeterminate (qualifier value)"
* include codes from valueset MII_VS_Mikrobio_Organismen_SNOMEDCT
