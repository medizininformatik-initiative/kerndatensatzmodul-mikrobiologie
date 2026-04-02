Profile: MII_PR_Mikrobio_Nugent_Score
Parent: MII_PR_Labor_Laboruntersuchung
Id: mii-pr-mikrobio-nugent-score
Title: "MII PR Mikrobio Nugent Score"
Description: "Nugent-Score beschreibt ein Gramfärbungs-basiertes semiquantitatives Punktesystem zur Beurteilung vaginaler Mikrobiotamuster bei bakterieller Vaginose."
* insert MIKRO_OBSERVATION_COMMON
* code = $loinc#101433-1
* value[x] only Quantity
* valueQuantity 1..
  * value 1..
  * unit 1..
  * unit = "1"
  * system 1..
  * system = "http://unitsofmeasure.org" (exactly)
  * code 1..
  * code = #1
* method MS
* method = $sct#702661004
