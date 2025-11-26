ValueSet: MII_VS_Mikrobio_Empfindlichkeit_Phenotyp_LOINC
Id: mii-vs-mikrobio-empfindlichkeit-phenotyp-loinc
Title: "MII VS Mikrobio Empfindlichkeit Phenotyp [LOINC]"
* insert PR_CS_VS_Version
* insert Publisher
* ^status = #active
* ^date = "2023-03-02T00:00:00Z"
* include codes from system $loinc
    where CLASS = "LP7755-4" and
    PROPERTY = "LP6870-2" and
    STATUS = "ACTIVE" and
    METHOD_TYP exists false