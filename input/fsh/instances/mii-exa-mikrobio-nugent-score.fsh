Instance: mii-exa-mikrobio-nugent-score
InstanceOf: MII_PR_Mikrobio_Nugent_Score
Usage: #example
* identifier[analyseBefundCode].system = "https://example.org/fhir/sid/test-lab-results"
* identifier[analyseBefundCode].value = "nugent-1"
* identifier[analyseBefundCode].assigner.display = "Universitätsklinikum Musterstadt"
* status = #final
* category[mibi-category].coding[loinc-observation] = $loinc#26436-6 "Laboruntersuchungen"
* category[mibi-category].coding[observation-category] = $observation-category#laboratory "Laboratory"
* category[mibi-category].coding[loinc-microbiology-studies] = $loinc#18725-2 "Mikrobiologie"
* code = $loinc#101433-1 "Bacterial vaginosis score in Vaginal fluid Qualitative by Nugent"
* subject.reference = "Patient/example"
* effectiveDateTime = "2026-04-02T10:00:00+01:00"
* valueQuantity.value = 7
* valueQuantity.unit = "1"
* valueQuantity.system = $ucum
* valueQuantity.code = #1
* method = $sct#702661004 "Light microscopy"
* specimen.reference = "Specimen/example"
