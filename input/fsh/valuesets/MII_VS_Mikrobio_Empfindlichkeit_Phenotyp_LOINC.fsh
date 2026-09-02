ValueSet: MII_VS_Mikrobio_Empfindlichkeit_Phenotyp_LOINC
Id: mii-vs-mikrobio-empfindlichkeit-phenotyp-loinc
Title: "MII VS Mikrobio Empfindlichkeit Phenotyp [LOINC]"
Description: "Tests-ValueSet für die phänotypische Empfindlichkeitstestung: LOINC-Codes der getesteten antimikrobiellen Substanz."
* insert PR_CS_VS_Version
* insert Publisher
* ^status = #active
* ^date = "2023-03-02T00:00:00Z"
// TODO: klaeren, ob die Trennung phaenotypisch/genotypisch terminologisch erhalten bleiben soll.
// Bis 2025.0.1 schloss dieses ValueSet METHOD_TYP = "LP28723-2" aus; genau ueber diese Methode ist
// MII_VS_Mikrobio_Empfaenglichkeit_Genotyp_LOINC definiert. Ohne den exclude ist dieses VS eine
// Obermenge des Genotyp-VS, und mii-pr-mikrobio-empfindlichkeit und
// mii-pr-mikrobio-voraussichtliche-empfindlichkeit sind terminologisch nicht mehr unterscheidbar.
// Ebenfalls entfallen: ORDER_OBS = "Observation". Dem Genotyp-VS fehlt zudem STATUS = "ACTIVE".
* include codes from system $loinc
    where CLASS = "LP7755-4" and
    PROPERTY = "LP6870-2" and
    STATUS = "ACTIVE"
