Instance: mii-exa-mikrobio-barlett-score
InstanceOf: MII_PR_Mikrobio_Barlett_Score
Usage: #example
* identifier[analyseBefundCode].system = "https://example.org/fhir/sid/test-lab-results"
* identifier[analyseBefundCode].value = "barlett-1"
* identifier[analyseBefundCode].assigner.display = "Universitätsklinikum Musterstadt"
* status = #final
* category[mibi-category].coding[loinc-observation] = $loinc#26436-6 "Laboratory studies (set)"
* category[mibi-category].coding[observation-category] = $observation-category#laboratory "Laboratory"
* category[mibi-category].coding[loinc-microbiology-studies] = $loinc#18725-2 "Microbiology studies (set)"
* code = $loinc#75371-5 "Bartlett score of Sputum Qualitative by Light microscopy"
* subject.reference = "Patient/example"
* effectiveDateTime = "2026-04-02T10:00:00+01:00"
* valueCodeableConcept = $loinc#LA21390-2 "+1 Active inflammation"
* method = $sct#702661004 "Light microscopy"
* specimen.reference = "Specimen/example"
