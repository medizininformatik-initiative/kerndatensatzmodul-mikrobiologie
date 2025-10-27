ValueSet: MII_VS_Mikrobio_Empfindlichkeit_Phenotyp_LOINC
Id: mii-vs-mikrobio-empfindlichkeit-phenotyp-loinc
Title: "MII VS Mikrobio Empfindlichkeit Phenotyp [LOINC]"
* ^status = #active
* ^version = "2025.0.0"
* ^date = "2023-03-02T00:00:00Z"
* include codes from system LOINC
    where CLASS = "LP7755-4" and
    PROPERTY = "LP6870-2" and
    STATUS = "ACTIVE" and
    ORDER_OBS = "Observation"
* exclude codes from system LOINC where METHOD_TYP = "LP28723-2"