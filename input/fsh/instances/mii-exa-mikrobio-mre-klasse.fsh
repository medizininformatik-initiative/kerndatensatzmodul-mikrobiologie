Instance: mii-exa-mikrobio-mre-klasse
InstanceOf: MII_PR_Mikrobio_MRE_Klasse
Usage: #example
* identifier[analyseBefundCode].system = "https://example.org/fhir/sid/test-lab-results"
* identifier[analyseBefundCode].value = "59826-8_1234567890"
* identifier[analyseBefundCode].assigner.identifier.system = "https://www.medizininformatik-initiative.de/fhir/core/CodeSystem/core-location-identifier"
* identifier[analyseBefundCode].assigner.identifier.value = "DIZ-ID"
* status = #final
* category.coding[loinc-observation] = $loinc#26436-6
* category.coding[observation-category] = $observation-category#laboratory
* category.coding[loinc-microbiology-studies] = $loinc#18725-2 "Mikrobiologie"
* code = $sct#1285113001 "Type of antimicrobial resistant organism (observable entity)"
* subject.reference = "Patient/example"
* effectiveDateTime = "2026-04-02T10:00:00+01:00"
* valueCodeableConcept = $sct#409795000
* specimen.reference = "Specimen/example"
