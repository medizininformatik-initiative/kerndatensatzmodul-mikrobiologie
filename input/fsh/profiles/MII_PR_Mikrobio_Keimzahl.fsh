Profile: MII_PR_Mikrobio_Keimzahl
Parent: MII_PR_Labor_Laboruntersuchung
Id: mii-pr-mikrobio-keimzahl
Title: "MII PR Microbiology Colony Count"
Description: "Colony count describes the quantitative determination of viable microorganisms in a specimen as colony-forming units per volume, per mass or as a count per specimen."
* insert MIKRO_OBSERVATION_COMMON
* ^purpose = "This profile describes colony counting." 
* code from MII_VS_Mikrobio_Keimzahl_LOINC (extensible)
* value[x] only Quantity
* valueQuantity
  * code from MII_VS_Mikrobio_Keimzahl_Einheiten_UCUM (extensible)
  * code ^short = "Preferably a unit WITH the CFU annotation: [CFU]/mL per volume, [CFU]/g per mass, [CFU] per specimen. The unannotated forms /mL, /g and 1 say less — in UCUM /mL literally means 'per millilitre' and not WHAT per millilitre, and 1 is the dimensionless unity. They remain permitted because up to 2025.0.2 they were the only option; the migration path is mechanical. For specimen materials without a volume or mass reference, such as catheter tips, [CFU] is used and the reference quantity is in Specimen.type."
* method = $sct-no-ver#410681005 // Count of entities (property) (qualifier value)
* interpretation from MII_VS_Labor_Laborergebnis_Semiquantitativ (extensible)
