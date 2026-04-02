Profile: MII_PR_Mikrobio_Ct_Wert
Parent: MII_PR_Labor_Laboruntersuchung
Id: mii-pr-mikrobio-ct-wert
Title: "MII PR Mikrobio CT Wert"
Description: "CT-Wert beschreibt die Quantifizierung des Zyklusschwellenwerts bei Nukleinsäurenachweisen (z. B. Echtzeit-PCR) in einer Probe."
* insert MIKRO_OBSERVATION_COMMON
* code from MII_VS_Mikrobio_CT_Wert_LOINC (extensible)
* value[x] only Quantity
* valueQuantity 1..
  * value 1..
  * unit 1..
  * system 1..
  * system = $ucum (exactly)
  * code 1..
  * code = #1
* method MS
* method = $sct#70601000052104 // Cycle Treshold für Nukleinsäurenachweis in Probenmaterial bei Polymerase-Kettenreaktion in Echtzeit
* derivedFrom MS
