Instance: mii-exa-mikrobio-nugent-score
InstanceOf: MII_PR_Mikrobio_Nugent_Score
Usage: #example
Title: "MII EXA Mikrobio Nugent Score"
Description: "Nugent-Score einer Vaginalprobe zur Beurteilung einer bakteriellen Vaginose."
* identifier[analyseBefundCode].system = "https://example.org/fhir/sid/test-lab-results"
* identifier[analyseBefundCode].value = "nugent-1"
* identifier[analyseBefundCode].assigner = Reference(mii-exa-mikrobio-labor)
* status = #final
* category[observation-category].coding[0] = $observation-category#laboratory "Laboratory"
* category[observation-category].coding[1] = $loinc#26436-6 "Laboratory studies (set)"
* code = $loinc#101433-1 "Bacterial vaginosis score in Vaginal fluid Qualitative by Nugent"
* subject = Reference(mii-exa-mikrobio-patient)
* performer = Reference(mii-exa-mikrobio-labor)
* effectiveDateTime = "2026-04-02T10:00:00+01:00"
* valueQuantity.value = 7
* valueQuantity.unit = "1"
* valueQuantity.system = $ucum
* valueQuantity.code = #1
* method = $sct#702661004 "Light microscopy"
* specimen = Reference(mii-exa-mikrobio-probe)
