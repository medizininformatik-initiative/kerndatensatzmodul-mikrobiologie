Profile: MII_PR_Mikrobio_Antigen_Antikoerper_Quantitativ
Parent: MII_PR_Labor_Laboruntersuchung
Id: mii-pr-mikrobio-antigen-antikoerper-quantitativ
Title: "MII PR Mikrobio Antigen Antikoerper Quantitativ"
Description: "Quantitative Antigen-/Antikörperantwort beschreibt die quantitative Messung erregerspezifischer Antigene oder Antikörper in einer Probe, bestimmt mittels immunologischer Verfahren."
* insert MIKRO_OBSERVATION_COMMON
* code from MII_VS_Mikrobio_Antigen_Antikoerper_Quantitative_Tests_LOINC (extensible)
* code ^short = "In der Serologie ist ein praekoordiniertes Specimen ausdruecklich zulaessig — anders als in den uebrigen Bereichen dieses Moduls gilt die Konvention 'System = XXX' hier NICHT. Das europaeische Whitepaper begruendet die Ausnahme damit, dass in der Serologie nur wenige Materialien vorkommen, ueberwiegend Serum, und ein Code-Wildwuchs deshalb nicht droht."
* value[x] only Quantity
* valueQuantity
  * code ^short = "Bevorzugt eine Einheit mit LITER als Nenner — ng/L, pg/L, ug/L, [IU]/L, [arb'U]/L. Das europaeische Whitepaper empfiehlt fuer die Serologie den Liter, weil das NPU-System ihn durchgaengig verwendet. Die mL-Varianten bleiben zulaessig, weil [IU]/mL international verbreitet ist."
  * code from MII_VS_Mikrobio_Antigen_Antikoerper_Quantitativ_Einheiten_UCUM (extensible)
* method from MII_VS_Mikrobio_Antigen_Antikoerper_Methode_SNOMED (extensible)
