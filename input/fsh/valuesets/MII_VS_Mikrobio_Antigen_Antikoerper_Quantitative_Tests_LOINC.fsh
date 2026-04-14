ValueSet: MII_VS_Mikrobio_Antigen_Antikoerper_Quantitative_Tests_LOINC
Id: mii-vs-mikrobio-antigen-antikoerper-quantitative-tests-loinc
Title: "MII VS Mikrobio Antigen Antikoerper Quantitative Tests [LOINC]"
* insert PR_CS_VS_Version
* insert Publisher
* ^status = #active
* include codes from system $loinc
    where SCALE_TYP = "LP7753-9" and
      METHOD_TYP = "LP217197-5" and
      CLASS = "LP7819-8" and
      STATUS = "ACTIVE"
* include codes from system $loinc
    where SCALE_TYP = "LP7753-9" and
      METHOD_TYP = "LP6106-1" and
      CLASS = "LP7819-8" and
      STATUS = "ACTIVE"
* include codes from system $loinc
    where SCALE_TYP = "LP7753-9" and
      METHOD_TYP = "LP6274-7" and
      CLASS = "LP7819-8" and
      STATUS = "ACTIVE"
* include codes from system $loinc
    where SCALE_TYP = "LP7753-9" and
      METHOD_TYP = "LP28800-8" and
      CLASS = "LP7819-8" and
      STATUS = "ACTIVE"
* include codes from system $loinc
    where SCALE_TYP = "LP7753-9" and
      METHOD_TYP = "LP6304-2" and
      CLASS = "LP7819-8" and
      STATUS = "ACTIVE"
* include codes from system $loinc
    where SCALE_TYP = "LP7753-9" and
      METHOD_TYP = "LP6320-8" and
      CLASS = "LP7819-8" and
      STATUS = "ACTIVE"
* include codes from system $loinc
    where SCALE_TYP = "LP7753-9" and
      METHOD_TYP = "LP6323-2" and
      CLASS = "LP7819-8" and
      STATUS = "ACTIVE"
* include codes from system $loinc
    where SCALE_TYP = "LP7753-9" and
      METHOD_TYP = "LP6360-4" and
      CLASS = "LP7819-8" and
      STATUS = "ACTIVE"
* include codes from system $loinc
    where SCALE_TYP = "LP7753-9" and
      METHOD_TYP = "LP6416-4" and
      CLASS = "LP7819-8" and
      STATUS = "ACTIVE"
