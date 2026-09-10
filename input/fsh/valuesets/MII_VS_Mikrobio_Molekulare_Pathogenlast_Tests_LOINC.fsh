ValueSet: MII_VS_Mikrobio_Molekulare_Pathogenlast_Tests_LOINC
Id: mii-vs-mikrobio-molekulare-pathogenlast-tests-loinc
Title: "MII VS Mikrobio Molekulare Pathogenlast Tests [LOINC]"
Description: "Tests-ValueSet für die molekulare Pathogenlast: quantitative LOINC-Codes für die Nukleinsäurekonzentration eines Erregers."
* insert PR_CS_VS_Version
* insert Publisher
* ^status = #active
// Der Filter setzt SCALE_TYP = Qn (LP7753-9) — genau die Achse, die das Blatt
// "Molecular techniques" in seinem Block "Quantification Procedure" verlangt —
// und verengt dann ueber die fuenf molekularen METHOD_TYP-Werte.
//
// ABWEICHUNG IN DER TECHNIK, nicht in der Absicht: Das Blatt verengt in Zeile 20
// stattdessen ueber "component: (DNA or RNA)". Beide Wege treffen dasselbe Ziel,
// aber nicht dieselbe Menge — ueber die Komponente kaeme eine molekulare
// Quantifizierung mit herein, deren Methode nicht in unseren fuenf steht, und
// ueber die Methode kommen Codes herein, deren Komponente nicht wortwoertlich
// DNA oder RNA heisst. Welcher Weg gemeint ist, ist der Gruppe gemeldet.
* include codes from system $loinc
    where SCALE_TYP = "LP7753-9" and
      METHOD_TYP = "LP6464-4" and
      CLASS = "LP7819-8" and
      STATUS = "ACTIVE"
* include codes from system $loinc
    where SCALE_TYP = "LP7753-9" and
      METHOD_TYP = "LP6404-0" and
      CLASS = "LP7819-8" and
      STATUS = "ACTIVE"
* include codes from system $loinc
    where SCALE_TYP = "LP7753-9" and
      METHOD_TYP = "LP6462-8" and
      CLASS = "LP7819-8" and
      STATUS = "ACTIVE"
* include codes from system $loinc
    where SCALE_TYP = "LP7753-9" and
      METHOD_TYP = "LP6463-6" and
      CLASS = "LP7819-8" and
      STATUS = "ACTIVE"
* include codes from system $loinc
    where SCALE_TYP = "LP7753-9" and
      METHOD_TYP = "LP208998-7" and
      CLASS = "LP7819-8" and
      STATUS = "ACTIVE"