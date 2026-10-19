ValueSet: MII_VS_Mikrobio_Resistenzkategorie_Status
Id: mii-vs-mikrobio-resistenzkategorie-status
Title: "MII VS Microbiology Resistance Category Status"
Description: "Investigation codes for assessing a detected pathogen with regard to a defined resistance category."
* insert PR_CS_VS_Version
* insert Publisher
* ^status = #active
// Ausschliesslich MII-eigene Codes: Weder SNOMED CT noch LOINC enthalten geeignete
// Observable-/Testkonzepte fuer diese Fragestellungen. Recherchestand und verworfene
// Kandidaten sind in MII_CS_Mikrobio_Resistenzkategorie dokumentiert. Sobald ein
// standardisierter Code verfuegbar wird, ist er hier vorrangig aufzunehmen.
* include codes from system MII_CS_Mikrobio_Resistenzkategorie
