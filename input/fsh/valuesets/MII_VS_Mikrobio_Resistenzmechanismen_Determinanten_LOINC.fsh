ValueSet: MII_VS_Mikrobio_Resistenzmechanismen_Determinanten_LOINC
Id: mii-vs-mikrobio-resistenzmechanismen-determinanten-loinc
Title: "MII VS Mikrobio Resistenzmechanismen Determinanten [LOINC]"
* insert PR_CS_VS_Version
* insert Publisher
* ^status = #active
* include codes from system $loinc
    where PROPERTY = "LP217195-9" and
      CLASS = "LP7755-4" and
      STATUS = "ACTIVE"
// Der CLASS-Filter erfasst neben Resistenzdeterminanten auch den Erregernachweis 35492-8.
// Die Zuordnung zum Profil richtet sich nach der Semantik: 35492-8 weist einen Erreger nach,
// keine Resistenzdeterminante, und ist daher in
// MII_VS_Mikrobio_Spezifische_Bestimmung_Tests_LOINC als Einzelcode aufgenommen.
* exclude $loinc#35492-8 "Methicillin resistant Staphylococcus aureus (MRSA) DNA [Presence] in Specimen by NAA with probe detection"
