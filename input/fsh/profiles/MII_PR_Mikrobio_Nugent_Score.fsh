Profile: MII_PR_Mikrobio_Nugent_Score
Parent: MII_PR_Labor_Laboruntersuchung
Id: mii-pr-mikrobio-nugent-score
Title: "MII PR Microbiology Nugent Score"
Description: "Nugent score describes a Gram-stain-based semiquantitative scoring system for assessing vaginal microbiota patterns in bacterial vaginosis."
* insert MIKRO_OBSERVATION_COMMON
* code = $loinc-no-ver#101433-1
* value[x] only Quantity
* valueQuantity obeys nugent-score-0-to-10
* valueQuantity
  * ^comment = "The Nugent score is a dimensionless score from 0 to 10. In UCUM, code = \"1\" is therefore used. The human-readable unit can be given via Quantity.unit, e.g. \"Nugent score\"."
  * code = #1
* method = $sct-no-ver#702661004

Invariant: nugent-score-0-to-10
Description: "Nugent score SHALL be between 0 and 10."
Expression: "value >= 0 and value <= 10"
Severity: #error
