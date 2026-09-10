Profile: MII_PR_Mikrobio_Aviditaet
Parent: MII_PR_Labor_Laboruntersuchung
Id: mii-pr-mikrobio-aviditaet
Title: "MII PR Mikrobio Aviditaet"
Description: "Avidität beschreibt die qualitative Beurteilung der Bindungsstärke von Antikörpern an ein spezifisches Antigen, typischerweise zur Unterscheidung frischer von zurückliegenden Infektionen."
* insert MIKRO_OBSERVATION_COMMON
* code from MII_VS_Mikrobio_Aviditaet_Tests_LOINC (extensible)
* code ^short = "In der Serologie ist ein praekoordiniertes Specimen ausdruecklich zulaessig — anders als in den uebrigen Bereichen dieses Moduls gilt die Konvention 'System = XXX' hier NICHT. Das europaeische Whitepaper begruendet die Ausnahme damit, dass in der Serologie nur wenige Materialien vorkommen, ueberwiegend Serum, und ein Code-Wildwuchs deshalb nicht droht."
* value[x] only Quantity
* valueQuantity
  * unit = "%"
  * code = #%
* interpretation from MII_VS_Mikrobio_Aviditaet_Ergebnis (required)
* method from MII_VS_Mikrobio_Antigen_Antikoerper_Methode_SNOMED (extensible)
