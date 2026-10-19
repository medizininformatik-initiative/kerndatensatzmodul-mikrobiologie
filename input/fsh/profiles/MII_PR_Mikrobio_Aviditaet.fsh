Profile: MII_PR_Mikrobio_Aviditaet
Parent: MII_PR_Labor_Laboruntersuchung
Id: mii-pr-mikrobio-aviditaet
Title: "MII PR Microbiology Avidity"
Description: "Avidity describes the qualitative assessment of the binding strength of antibodies to a specific antigen, typically to distinguish recent from past infections."
* insert MIKRO_OBSERVATION_COMMON
* code from MII_VS_Mikrobio_Aviditaet_Tests_LOINC (extensible)
* code ^short = "In serology a pre-coordinated specimen is explicitly permitted — unlike in the other areas of this module, the convention 'System = XXX' does NOT apply here. The European white paper justifies the exception by the fact that only a few materials occur in serology, predominantly serum, so that an uncontrolled growth of codes is not a risk."
* value[x] only Quantity
* valueQuantity
  * unit = "%"
  * code = #%
* interpretation from MII_VS_Mikrobio_Aviditaet_Ergebnis (required)
* method from MII_VS_Mikrobio_Antigen_Antikoerper_Methode_SNOMED (extensible)
