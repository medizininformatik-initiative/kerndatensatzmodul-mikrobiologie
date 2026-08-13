ValueSet: MII_VS_Mikrobio_Resistenzkategorie_Status
Id: mii-vs-mikrobio-resistenzkategorie-status
Title: "MII VS Mikrobio Resistenzkategorie Status"
Description: "Untersuchungscodes fuer die Bewertung eines nachgewiesenen Erregers hinsichtlich einer definierten Resistenzkategorie."
* insert PR_CS_VS_Version
* insert Publisher
* ^status = #active
// Ausschliesslich MII-eigene Codes: Weder SNOMED CT noch LOINC enthalten geeignete
// Observable-/Testkonzepte fuer diese Fragestellungen. Recherchestand und verworfene
// Kandidaten sind in MII_CS_Mikrobio_Resistenzkategorie dokumentiert. Sobald ein
// standardisierter Code verfuegbar wird, ist er hier vorrangig aufzunehmen.
* include codes from system MII_CS_Mikrobio_Resistenzkategorie
