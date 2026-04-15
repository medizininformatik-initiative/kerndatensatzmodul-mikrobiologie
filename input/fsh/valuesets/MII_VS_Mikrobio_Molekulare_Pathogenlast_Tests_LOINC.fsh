ValueSet: MII_VS_Mikrobio_Molekulare_Pathogenlast_Tests_LOINC
Id: mii-vs-mikrobio-molekulare-pathogenlast-tests-loinc
Title: "MII VS Mikrobio Molekulare Pathogenlast Tests [LOINC]"
* insert PR_CS_VS_Version
* insert Publisher
* ^status = #active
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