Profile: MII_PR_Mikrobio_Keimzahl
Parent: MII_PR_Labor_Laboruntersuchung
Id: mii-pr-mikrobio-keimzahl
Title: "MII PR Mikrobio Keimzahl"
Description: "Keimzahl beschreibt die quantitative Bestimmung lebensfähiger Mikroorganismen in einer Probe als koloniebildende Einheiten pro Volumen oder Masse."
* insert MIKRO_OBSERVATION_COMMON
* ^purpose = "Dieses Profil beschreibt die Keimzahlbestimmung." 
* code from MII_VS_Mikrobio_Keimzahl_LOINC (required)
* value[x] only Quantity
* valueQuantity
  * code from MII_VS_Mikrobio_Keimzahl_Einheiten_UCUM (required)
* method = $sct#410681005 // Count of entities (property) (qualifier value)
