ValueSet: MII_VS_Mikrobio_Empfaenglichkeit_Genotyp_LOINC
Id: mii-vs-mikrobio-empfindlichkeit-genotyp-loinc
Title: "MII VS Mikrobio Empfänglichkeit Genotyp [LOINC]"
* ^status = #active
* ^version = "2025.0.0"
* ^date = "2023-03-02T00:00:00Z"
* include codes from system LOINC
    where CLASS = "LP7755-4" and
    PROPERTY = "LP6870-2" and
    METHOD_TYP = "LP28723-2"