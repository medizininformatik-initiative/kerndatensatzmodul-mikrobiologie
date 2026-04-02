Instance: mii-exa-mikrobio-ct-wert
InstanceOf: MII_PR_Mikrobio_Ct_Wert
Usage: #example
* identifier[analyseBefundCode].system = "https://example.org/fhir/sid/test-lab-results"
* identifier[analyseBefundCode].value = "ct-1"
* identifier[analyseBefundCode].assigner.identifier.system = "https://www.medizininformatik-initiative.de/fhir/core/CodeSystem/core-location-identifier"
* identifier[analyseBefundCode].assigner.identifier.value = "DIZ-ID"
* status = #final
* category.coding[loinc-observation] = $loinc#26436-6
* category.coding[observation-category] = $observation-category#laboratory
* category.coding[loinc-microbiology-studies] = $loinc#18725-2 "Mikrobiologie"
* code = $loinc#95563-9
* subject.reference = "Patient/example"
* effectiveDateTime = "2026-04-02T10:00:00+01:00"
* valueQuantity.value = 21.3
* valueQuantity.unit = "1"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #1
* method = $sct#70601000052104
* derivedFrom = Reference(mii-exa-mikrobio-spezifische-bestimmung)
* specimen.reference = "Specimen/example"
