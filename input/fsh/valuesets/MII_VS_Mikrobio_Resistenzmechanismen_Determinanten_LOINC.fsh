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
