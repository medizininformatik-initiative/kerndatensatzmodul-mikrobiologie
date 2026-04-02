Profile: MII_PR_Mikrobio_Empfindlichkeit
Parent: MII_PR_Labor_Laboruntersuchung
Id: mii-pr-mikrobio-empfindlichkeit
Title: "MII PR Mikrobio Empfindlichkeit"
Description: "Empfindlichkeit beschreibt das Ergebnis der phänotypischen Resistenztestung eines Erregers gegenüber antimikrobiellen Substanzen unter Bezug auf ein Normsystem."
* insert MIKRO_OBSERVATION_COMMON
* ^purpose = "Dieses Profil beschreibt die phänotypische Empfindlichkeitstestung." 
* code from MII_VS_Mikrobio_Empfindlichkeit_Phenotyp_LOINC (required)
* value[x] only Quantity
* valueQuantity
  * value 1..
  * unit 1..
  * system 1..
  * system = $ucum (exactly)
  * code 1..
  * code from MII_VS_Mikrobio_Empfindlichkeit_Einheiten_UCUM (required)
* interpretation 1..
* interpretation from MII_VS_Mikrobio_Susceptibility (extensible)
* interpretation.extension contains MII_EX_Mikrobio_Empfindlichkeit_Norm named Norm 1..1 MS
