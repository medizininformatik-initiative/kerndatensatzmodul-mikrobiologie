ValueSet: MII_VS_Mikrobio_CT_Wert_LOINC
Id: mii-vs-mikrobio-ct-wert-loinc
Title: "MII VS Microbiology Ct Value [LOINC]"
Description: "Test ValueSet for the Ct value: LOINC codes with the property cycle threshold in nucleic acid detection."
* insert PR_CS_VS_Version
* insert Publisher
* ^status = #active
* include codes from system $loinc
    where PROPERTY = "LP188772-0" and
      CLASS = "LP7819-8" and
      STATUS = "ACTIVE"
