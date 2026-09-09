Instance: mii-exa-mikrobio-barlett-score
InstanceOf: MII_PR_Mikrobio_Barlett_Score
Usage: #example
Title: "MII EXA Mikrobio Barlett Score"
Description: "Barlett-Score einer Sputumprobe zur Beurteilung, ob sie für die Kultur geeignet ist."
* identifier[analyseBefundCode].system = "https://example.org/fhir/sid/test-lab-results"
* identifier[analyseBefundCode].value = "barlett-1"
* identifier[analyseBefundCode].assigner = Reference(mii-exa-mikrobio-labor)
* status = #final
* category[observation-category].coding[0] = $observation-category#laboratory "Laboratory"
* category[observation-category].coding[1] = $loinc#26436-6 "Laboratory studies (set)"
* code = $loinc#75371-5 "Bartlett score of Sputum Qualitative by Light microscopy"
* subject = Reference(mii-exa-mikrobio-patient)
* performer = Reference(mii-exa-mikrobio-labor)
* effectiveDateTime = "2026-04-02T10:00:00+01:00"
* valueCodeableConcept = $loinc#LA21390-2 "+1 Active inflammation"
* method = $sct#702661004 "Light microscopy"
* specimen = Reference(mii-exa-mikrobio-probe)
