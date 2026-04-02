Profile: MII_PR_Mikrobio_Barlett_Score
Parent: MII_PR_Labor_Laboruntersuchung
Id: mii-pr-mikrobio-barlett-score
Title: "MII PR Mikrobio Barlett Score"
Description: "Barlett-Score beschreibt die qualitative mikroskopische Beurteilung der Eignung von Sputumproben für die mikrobiologische Kultur anhand des Verhältnisses von Entzündungs- zu Epithelzellen."
* insert MIKRO_OBSERVATION_COMMON
* code = $loinc#75371-5
* value[x] only CodeableConcept
* valueCodeableConcept 1.. MS
* valueCodeableConcept from MII_VS_Mikrobio_Barlett_Score_LOINC (extensible)
* interpretation ..0
* method 1.. MS
* method = $sct#702661004
