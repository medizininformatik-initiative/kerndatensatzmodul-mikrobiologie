Instance: mii-exa-mikrobio-molekulare-pathogenlast
InstanceOf: MII_PR_Mikrobio_Molekulare_Pathogenlast
Usage: #example
* identifier[analyseBefundCode].system = "https://example.org/fhir/sid/test-lab-results"
* identifier[analyseBefundCode].value = "pathogenlast-1"
* identifier[analyseBefundCode].assigner.identifier.system = "https://www.medizininformatik-initiative.de/fhir/core/CodeSystem/core-location-identifier"
* identifier[analyseBefundCode].assigner.identifier.value = "DIZ-ID"
* status = #final
* category.coding[loinc-observation] = $loinc#26436-6
* category.coding[observation-category] = $observation-category#laboratory
* category.coding[loinc-microbiology-studies] = $loinc#18725-2 "Mikrobiologie"
* code = $loinc#94009-8
* subject.reference = "Patient/example"
* effectiveDateTime = "2026-04-02T10:00:00+01:00"
* valueQuantity.value = 350000
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #{Copies}/mL
* valueQuantity.unit = "{Copies}/mL"
* method = $sct#70601000052104
* specimen.reference = "Specimen/example"
