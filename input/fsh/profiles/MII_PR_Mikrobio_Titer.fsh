Profile: MII_PR_Mikrobio_Titer
Parent: MII_PR_Labor_Laboruntersuchung
Id: mii-pr-mikrobio-titer
Title: "MII PR Mikrobio Titer"
Description: "Titer beschreibt eine semiquantitative Messung aus seriellen Verdünnungsreihen, berichtet als Verhältnis (z. B. 1:160)."
* insert MIKRO_OBSERVATION_COMMON
* code from MII_VS_Mikrobio_Titer_Tests_LOINC (extensible)
* code ^short = "In der Serologie ist ein praekoordiniertes Specimen ausdruecklich zulaessig — anders als in den uebrigen Bereichen dieses Moduls gilt die Konvention 'System = XXX' hier NICHT. Das europaeische Whitepaper begruendet die Ausnahme damit, dass in der Serologie nur wenige Materialien vorkommen, ueberwiegend Serum, und ein Code-Wildwuchs deshalb nicht droht."
* value[x] only Ratio
* valueRatio
  * numerator 1.. MS
    * value = 1
  * denominator 1.. MS
    * value MS
* method from MII_VS_Mikrobio_Titer_Methode_SNOMED (extensible)
