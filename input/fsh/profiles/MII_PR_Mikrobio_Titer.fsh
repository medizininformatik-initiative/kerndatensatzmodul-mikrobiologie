Profile: MII_PR_Mikrobio_Titer
Parent: MII_PR_Labor_Laboruntersuchung
Id: mii-pr-mikrobio-titer
Title: "MII PR Microbiology Titre"
Description: "Titre describes a semiquantitative measurement from serial dilution series, reported as a ratio (e.g. 1:160)."
* insert MIKRO_OBSERVATION_COMMON
* code from MII_VS_Mikrobio_Titer_Tests_LOINC (extensible)
* code ^short = "In serology a pre-coordinated specimen is explicitly permitted — unlike in the other areas of this module, the convention 'System = XXX' does NOT apply here. The European white paper justifies the exception by the fact that only a few materials occur in serology, predominantly serum, so that an uncontrolled growth of codes is not a risk."
* value[x] only Ratio
* valueRatio
  * numerator 1.. MS
    * value = 1
  * denominator 1.. MS
    * value MS
* method from MII_VS_Mikrobio_Titer_Methode_SNOMED (extensible)
