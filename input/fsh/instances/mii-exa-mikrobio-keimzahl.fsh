Instance: mii-exa-mikrobio-keimzahl
InstanceOf: MII_PR_Mikrobio_Keimzahl
Usage: #example
* identifier[analyseBefundCode].system = "https://example.org/fhir/sid/test-lab-results"
* identifier[analyseBefundCode].value = "keimzahl-1"
* identifier[analyseBefundCode].assigner.display = "Universitätsklinikum Musterstadt"
* status = #final
* category[mibi-category].coding[loinc-observation] = $loinc#26436-6 "Laboruntersuchungen"
* category[mibi-category].coding[observation-category] = $observation-category#laboratory "Laboratory"
* category[mibi-category].coding[loinc-microbiology-studies] = $loinc#18725-2 "Mikrobiologie"
* code = $loinc#49223-1 "Colony count [#/volume] in Specimen by Visual count"
* subject.reference = "Patient/example"
* effectiveDateTime = "2026-04-02T10:00:00+01:00"
* valueQuantity.value = 100000
* valueQuantity.system = $ucum
* valueQuantity.code = #/mL
* valueQuantity.unit = "/mL"
* method = $sct#410681005 "Count of entities"
* specimen.reference = "Specimen/example"
