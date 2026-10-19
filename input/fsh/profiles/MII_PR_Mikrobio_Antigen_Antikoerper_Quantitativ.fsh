Profile: MII_PR_Mikrobio_Antigen_Antikoerper_Quantitativ
Parent: MII_PR_Labor_Laboruntersuchung
Id: mii-pr-mikrobio-antigen-antikoerper-quantitativ
Title: "MII PR Microbiology Antigen Antibody Quantitative"
Description: "Quantitative antigen/antibody response describes the quantitative measurement of pathogen-specific antigens or antibodies in a specimen, determined by immunological procedures."
* insert MIKRO_OBSERVATION_COMMON
* code from MII_VS_Mikrobio_Antigen_Antikoerper_Quantitative_Tests_LOINC (extensible)
* code ^short = "In serology a pre-coordinated specimen is explicitly permitted — unlike in the other areas of this module, the convention 'System = XXX' does NOT apply here. The European white paper justifies the exception by the fact that only a few materials occur in serology, predominantly serum, so that an uncontrolled growth of codes is not a risk."
* value[x] only Quantity
* valueQuantity
  * code ^short = "Preferably a unit with LITRE as the denominator — ng/L, pg/L, ug/L, [IU]/L, [arb'U]/L. The European white paper recommends the litre for serology because the NPU system uses it consistently. The mL variants remain permitted because [IU]/mL is widespread internationally."
  * code from MII_VS_Mikrobio_Antigen_Antikoerper_Quantitativ_Einheiten_UCUM (extensible)
* method from MII_VS_Mikrobio_Antigen_Antikoerper_Methode_SNOMED (extensible)
