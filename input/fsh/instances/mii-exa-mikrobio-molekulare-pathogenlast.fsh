Instance: mii-exa-mikrobio-molekulare-pathogenlast
InstanceOf: MII_PR_Mikrobio_Molekulare_Pathogenlast
Usage: #example
* identifier[analyseBefundCode].system = "https://example.org/fhir/sid/test-lab-results"
* identifier[analyseBefundCode].value = "pathogenlast-1"
* identifier[analyseBefundCode].assigner.display = "Universitätsklinikum Musterstadt"
* status = #final
* category[mibi-category].coding[loinc-observation] = $loinc#26436-6 "Laboratory studies (set)"
* category[mibi-category].coding[observation-category] = $observation-category#laboratory "Laboratory"
* category[mibi-category].coding[loinc-microbiology-studies] = $loinc#18725-2 "Microbiology studies (set)"
* code = $loinc#33006-8 "Cytomegalovirus DNA [#/volume] (viral load) in Specimen by NAA with probe detection"
* subject.reference = "Patient/example"
* effectiveDateTime = "2026-04-02T10:00:00+01:00"
* valueQuantity.value = 350000
* valueQuantity.system = $ucum
* valueQuantity.code = #1/mL
* valueQuantity.unit = "Copies/mL"
* method = $sct#70601000052104 "Real-time polymerase chain reaction technique"
* specimen.reference = "Specimen/example"
