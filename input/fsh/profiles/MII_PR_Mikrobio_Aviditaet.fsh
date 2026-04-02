Profile: MII_PR_Mikrobio_Aviditaet
Parent: MII_PR_Labor_Laboruntersuchung
Id: mii-pr-mikrobio-aviditaet
Title: "MII PR Mikrobio Aviditaet"
Description: "Avidität beschreibt die qualitative Beurteilung der Bindungsstärke von Antikörpern an ein spezifisches Antigen, typischerweise zur Unterscheidung frischer von zurückliegenden Infektionen."
* insert MIKRO_OBSERVATION_COMMON
* code from MII_VS_Mikrobio_Aviditaet_Tests_LOINC (extensible)
* value[x] only Quantity
* valueQuantity 1..
  * value 1..
  * unit 1..
  * unit = "%"
  * system 1..
  * system = "http://unitsofmeasure.org" (exactly)
  * code 1..
  * code = #%
* interpretation 1..
* interpretation from MII_VS_Mikrobio_Aviditaet_Ergebnis_SNOMED (required)
* method MS
* method from MII_VS_Mikrobio_Antigen_Antikoerper_Methode_SNOMED (extensible)
