Profile: MII_PR_Mikrobio_Titer
Parent: MII_PR_Labor_Laboruntersuchung
Id: mii-pr-mikrobio-titer
Title: "MII PR Mikrobio Titer"
Description: "Titer beschreibt eine semiquantitative Messung aus seriellen Verdünnungsreihen, berichtet als Verhältnis (z. B. 1:160)."
* insert MIKRO_OBSERVATION_COMMON
* code from MII_VS_Mikrobio_Titer_Tests_LOINC (extensible)
* value[x] only Ratio
* valueRatio 1..
  * numerator 1..
    * value = 1
  * denominator 1..
    * value 1.. MS
* method MS
* method from MII_VS_Mikrobio_Titer_Methode_SNOMED (extensible)
