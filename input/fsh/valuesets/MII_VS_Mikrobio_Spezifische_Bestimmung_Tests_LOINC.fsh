ValueSet: MII_VS_Mikrobio_Spezifische_Bestimmung_Tests_LOINC
Id: mii-vs-mikrobio-spezifische-bestimmung-tests-loinc
Title: "MII VS Mikrobio Spezifische Bestimmung Tests [LOINC]"
Description: "Tests-ValueSet fuer die spezifische Bestimmung."
* insert PR_CS_VS_Version
* insert Publisher
* ^status = #active
// PROPERTY = LP6850-4 (Prid) liefert die "[Identifier]"-Terme (Scale Nom),
// PROPERTY = LP217195-9 (PrThr) die "[Presence]"-Terme (Scale Ord). Beide Varianten sind
// gebraeuchlich und beide funktionieren mit dem Ergebnis-Binding auf
// MII_VS_Mikrobio_Spezifische_Bestimmung_Ergebnis_SNOMED (Detected / Not detected).
// Die PrThr-Terme werden fuer negative Nachweisergebnisse benoetigt (Issue #84).
* include codes from system $loinc
    where PROPERTY = "LP6850-4" and
      METHOD_TYP = "LP6462-8" and
      CLASS = "LP7819-8" and
      STATUS = "ACTIVE"
* include codes from system $loinc
    where PROPERTY = "LP217195-9" and
      METHOD_TYP = "LP6462-8" and
      CLASS = "LP7819-8" and
      STATUS = "ACTIVE"
* include codes from system $loinc
    where PROPERTY = "LP6850-4" and
      METHOD_TYP = "LP6464-4" and
      CLASS = "LP7819-8" and
      STATUS = "ACTIVE"
* include codes from system $loinc
    where PROPERTY = "LP217195-9" and
      METHOD_TYP = "LP6464-4" and
      CLASS = "LP7819-8" and
      STATUS = "ACTIVE"
* include codes from system $loinc
    where PROPERTY = "LP6850-4" and
      METHOD_TYP = "LP6463-6" and
      CLASS = "LP7819-8" and
      STATUS = "ACTIVE"
* include codes from system $loinc
    where PROPERTY = "LP217195-9" and
      METHOD_TYP = "LP6463-6" and
      CLASS = "LP7819-8" and
      STATUS = "ACTIVE"
* include codes from system $loinc
    where PROPERTY = "LP6850-4" and
      METHOD_TYP = "LP208998-7" and
      CLASS = "LP7819-8" and
      STATUS = "ACTIVE"
* include codes from system $loinc
    where PROPERTY = "LP217195-9" and
      METHOD_TYP = "LP208998-7" and
      CLASS = "LP7819-8" and
      STATUS = "ACTIVE"
* include codes from system $loinc
    where PROPERTY = "LP6850-4" and
      METHOD_TYP = "LP6404-0" and
      CLASS = "LP7819-8" and
      STATUS = "ACTIVE"
* include codes from system $loinc
    where PROPERTY = "LP217195-9" and
      METHOD_TYP = "LP6404-0" and
      CLASS = "LP7819-8" and
      STATUS = "ACTIVE"
* include codes from system $loinc
    where PROPERTY = "LP6850-4" and
      METHOD_TYP = "LP150045-5" and
      CLASS = "LP7819-8" and
      STATUS = "ACTIVE"
* include codes from system $loinc
    where PROPERTY = "LP217195-9" and
      METHOD_TYP = "LP150045-5" and
      CLASS = "LP7819-8" and
      STATUS = "ACTIVE"
* include codes from system $loinc
    where PROPERTY = "LP6850-4" and
      METHOD_TYP = "LP6323-2" and
      CLASS = "LP7819-8" and
      STATUS = "ACTIVE"
* include codes from system $loinc
    where PROPERTY = "LP217195-9" and
      METHOD_TYP = "LP6323-2" and
      CLASS = "LP7819-8" and
      STATUS = "ACTIVE"
* include codes from system $loinc
    where PROPERTY = "LP6850-4" and
      METHOD_TYP = "LP217197-5" and
      CLASS = "LP7819-8" and
      STATUS = "ACTIVE"
* include codes from system $loinc
    where PROPERTY = "LP217195-9" and
      METHOD_TYP = "LP217197-5" and
      CLASS = "LP7819-8" and
      STATUS = "ACTIVE"
* include codes from system $loinc
    where PROPERTY = "LP6850-4" and
      METHOD_TYP = "LP6106-1" and
      CLASS = "LP7819-8" and
      STATUS = "ACTIVE"
* include codes from system $loinc
    where PROPERTY = "LP217195-9" and
      METHOD_TYP = "LP6106-1" and
      CLASS = "LP7819-8" and
      STATUS = "ACTIVE"
// METHOD_TYP LP6429-7 (erregerspezifische Kultur) ist nach
// MII_VS_Mikrobio_Spezifische_Kultur_Tests_LOINC ausgelagert
//
// Einzelcodes, die von den Filtern oben nicht erfasst werden. Die Zuordnung zum Profil
// richtet sich nach der Semantik (Nachweis eines vordefinierten Erregers); die LOINC-CLASS
// ist nur das Werkzeug zur Erzeugung des ValueSets, nicht das Zuordnungskriterium.
//
// 105904-7 ist methodenneutral (METHOD_TYP leer) und matcht daher keinen Filter oben.
// Fuer den VRE-Nachweis, wenn die Methode nicht im Code festgelegt ist; die tatsaechlich
// verwendete Methode wird ueber Observation.method angegeben.
* $loinc#105904-7 "Vancomycin resistant enterococcus [Presence] in Specimen"
// 35492-8 ist ein Erregernachweis, wird von LOINC aber unter CLASS = LP7755-4 (ABXBACT)
// gefuehrt und daher nicht ueber CLASS = LP7819-8 erfasst.
* $loinc#35492-8 "Methicillin resistant Staphylococcus aureus (MRSA) DNA [Presence] in Specimen by NAA with probe detection"
