ValueSet: MII_VS_Mikrobio_Spezifische_Kultur_Tests_LOINC
Id: mii-vs-mikrobio-spezifische-kultur-tests-loinc
Title: "MII VS Mikrobio Spezifische Kultur Tests [LOINC]"
* insert PR_CS_VS_Version
* insert Publisher
* ^status = #active
* include codes from system $loinc
    where PROPERTY = "LP6850-4" and
      SYSTEM = "LP7735-6" and
      METHOD_TYP = "LP6429-7" and
      CLASS = "LP7819-8" and
      STATUS = "ACTIVE"
