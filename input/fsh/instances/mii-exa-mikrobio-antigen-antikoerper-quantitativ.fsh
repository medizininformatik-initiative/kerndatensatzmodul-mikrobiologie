Instance: mii-exa-mikrobio-antigen-antikoerper-quantitativ
InstanceOf: MII_PR_Mikrobio_Antigen_Antikoerper_Quantitativ
Usage: #example
* identifier[analyseBefundCode].system = "https://example.org/fhir/sid/test-lab-results"
* identifier[analyseBefundCode].value = "ak-qn-1"
* identifier[analyseBefundCode].assigner.identifier.system = "https://www.medizininformatik-initiative.de/fhir/core/CodeSystem/core-location-identifier"
* identifier[analyseBefundCode].assigner.identifier.value = "DIZ-ID"
* status = #final
* category.coding[loinc-observation] = $loinc#26436-6
* category.coding[observation-category] = $observation-category#laboratory
* category.coding[loinc-microbiology-studies] = $loinc#18725-2 "Mikrobiologie"
* code = $loinc#94507-1
* subject.reference = "Patient/example"
* effectiveDateTime = "2026-04-02T10:00:00+01:00"
* valueQuantity.value = 42
* valueQuantity.system = $ucum
* valueQuantity.code = #[IU]/mL
* valueQuantity.unit = "[IU]/mL"
* method = $sct#726449005
* specimen.reference = "Specimen/example"
