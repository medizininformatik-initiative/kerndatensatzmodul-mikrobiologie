Profile: MII_PR_Mikrobio_Nugent_Score
Parent: MII_PR_Labor_Laboruntersuchung
Id: mii-pr-mikrobio-nugent-score
Title: "MII PR Mikrobio Nugent Score"
Description: "Nugent-Score beschreibt ein Gramfärbungs-basiertes semiquantitatives Punktesystem zur Beurteilung vaginaler Mikrobiotamuster bei bakterieller Vaginose."
* insert MIKRO_OBSERVATION_COMMON
* code = $loinc#101433-1
* value[x] only Quantity
* valueQuantity obeys nugent-score-0-to-10
* valueQuantity
  * ^comment = "Der Nugent Score ist ein dimensionsloser Score von 0 bis 10. In UCUM wird daher code = \"1\" verwendet. Die menschenlesbare Einheit kann über Quantity.unit, z. B. \"Nugent score\", angegeben werden."
  * code = #1
* method = $sct#702661004

Invariant: nugent-score-0-to-10
Description: "Nugent score SHALL be between 0 and 10."
Expression: "value >= 0 and value <= 10"
Severity: #error
