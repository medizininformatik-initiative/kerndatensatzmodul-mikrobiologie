Instance: mii-exa-mikrobio-empfindlichkeit
InstanceOf: MII_PR_Mikrobio_Empfindlichkeit
Usage: #example
* identifier[analyseBefundCode].system = "https://example.org/fhir/sid/test-lab-results"
* identifier[analyseBefundCode].value = "empf-1"
* identifier[analyseBefundCode].assigner.identifier.system = "https://www.medizininformatik-initiative.de/fhir/core/CodeSystem/core-location-identifier"
* identifier[analyseBefundCode].assigner.identifier.value = "DIZ-ID"
* status = #final
* category.coding[loinc-observation] = $loinc#26436-6
* category.coding[observation-category] = $observation-category#laboratory
* category.coding[loinc-microbiology-studies] = $loinc#18725-2 "Mikrobiologie"
* code = $loinc#100044-7	//Cefcapene [Susceptibility]
* subject.reference = "Patient/example"
* effectiveDateTime = "2026-04-02T10:00:00+01:00"
* valueQuantity.value = 1
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #mg/L
* valueQuantity.unit = "mg/L"
* interpretation = $v3-ObservationInterpretation#S "Susceptible"
* interpretation.extension[Norm].valueCodeableConcept = $v3-ObservationInterpretation#S "Susceptible"
* specimen.reference = "Specimen/example"
