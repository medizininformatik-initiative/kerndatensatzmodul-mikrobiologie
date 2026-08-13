Instance: mii-exa-mikrobio-spezifische-kultur
InstanceOf: MII_PR_Mikrobio_Spezifische_Kultur
Usage: #example
* identifier[analyseBefundCode].system = "https://example.org/fhir/sid/test-lab-results"
* identifier[analyseBefundCode].value = "spez-kultur-1"
* identifier[analyseBefundCode].assigner.display = "Universitätsklinikum Musterstadt"
* status = #final
* category[mibi-category].coding[loinc-observation] = $loinc#26436-6
* category[mibi-category].coding[observation-category] = $observation-category#laboratory
* category[mibi-category].coding[loinc-microbiology-studies] = $loinc#18725-2 "Mikrobiologie"
* code = $loinc#6547-4 "Rotavirus identified in Specimen by Organism specific culture"
* subject.reference = "Patient/example"
* effectiveDateTime = "2026-04-02T10:00:00+01:00"
* valueCodeableConcept = $sct#365698005 "Organism growth"
* method = $sct#703752003
* specimen.reference = "Specimen/example"
