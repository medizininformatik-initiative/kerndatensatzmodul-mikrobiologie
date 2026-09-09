ValueSet: MII_VS_Mikrobio_CT_Wert_LOINC
Id: mii-vs-mikrobio-ct-wert-loinc
Title: "MII VS Mikrobio CT Wert [LOINC]"
Description: "Tests-ValueSet für den Ct-Wert: LOINC-Codes mit der Eigenschaft Zyklusschwellenwert bei Nukleinsäurenachweisen."
* insert PR_CS_VS_Version
* insert Publisher
* ^status = #active
* include codes from system $loinc
    where PROPERTY = "LP188772-0" and
      CLASS = "LP7819-8" and
      STATUS = "ACTIVE"
