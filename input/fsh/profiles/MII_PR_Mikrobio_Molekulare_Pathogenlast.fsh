Profile: MII_PR_Mikrobio_Molekulare_Pathogenlast
Parent: MII_PR_Labor_Laboruntersuchung
Id: mii-pr-mikrobio-molekulare-pathogenlast
Title: "MII PR Mikrobio Molekulare Pathogenlast"
Description: "Molekulare Pathogenlast beschreibt die quantitative Messung der Nukleinsäurekonzentration eines Erregers in einer Probe, typischerweise als Konzentration pro Volumen."
* insert MIKRO_OBSERVATION_COMMON
* code from MII_VS_Mikrobio_Molekulare_Pathogenlast_Tests_LOINC (extensible)
* code ^short = "Es werden bevorzugt LOINC-Codes ohne präkoordinierte Specimentype-Angabe verwendet (System = XXX); der Specimentype wird separat über Specimen.type kodiert."
* value[x] only Quantity
* valueQuantity
  * code from MII_VS_Mikrobio_Molekulare_Diagnostik_Einheiten_UCUM (required)
* method from MII_VS_Mikrobio_Molekulare_Pathogenlast_Methode_SNOMED (extensible)
