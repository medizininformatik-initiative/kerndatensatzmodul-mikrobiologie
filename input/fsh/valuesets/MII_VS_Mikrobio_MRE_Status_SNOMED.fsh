ValueSet: MII_VS_Mikrobio_MRE_Status_SNOMED
Id: mii-vs-mikrobio-mre-status-snomed
Title: "MII VS Mikrobio MRE Status [SNOMED]"
Description: "Ergebnis-ValueSet fuer den MRE-Status: Ja/Nein-Aussage darueber, ob ein bewertetes Isolat als multiresistenter Erreger einzustufen ist."
* insert PR_CS_VS_Version
* insert Publisher
* ^status = #active
// Ist keine ausreichende Bewertung moeglich, wird nicht "No" verwendet, sondern
// Observation.dataAbsentReason (siehe MIKRO_OBSERVATION_COMMON).
* $sct#373066001 "Yes"
* $sct#373067005 "No"
