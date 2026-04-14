ValueSet: MII_VS_Mikrobio_Titer_Tests_LOINC
Id: mii-vs-mikrobio-titer-tests-loinc
Title: "MII VS Mikrobio Titer Tests [LOINC]"
* insert PR_CS_VS_Version
* insert Publisher
* ^status = #active
* include codes from system $loinc
    where PROPERTY = "LP6881-9" and
      CLASS = "LP7819-8" and
      STATUS = "ACTIVE"
