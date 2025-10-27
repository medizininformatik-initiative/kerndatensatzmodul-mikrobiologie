Instance: mii-exa-mikrobio-empfindlichkeit
InstanceOf: MII_PR_Mikrobio_Empfindlichkeit
Usage: #example
* identifier[analyseBefundCode]
  * system = "https://example.org/fhir/sid/test-lab-results"
  * value = "59826-8_1234567890"
  * assigner.identifier
    * system = "https://www.medizininformatik-initiative.de/fhir/core/CodeSystem/core-location-identifier"
    * value = "DIZ-ID"
* status = #final
* category
  * coding[loinc-observation] = $loinc#26436-6 "Laboruntersuchungen"
  * coding[observation-category] = $observation-category#laboratory "Laboratory"
  * coding[loinc-microbiology-studies] = $loinc#18725-2 "Mikrobiologie"
* code = $loinc#18868-0 "Aztreonam [Empfindlichkeit]"
* subject.reference = "Patient/example"
* effectiveDateTime = "2018-11-20T11:05:00+00:00"
* valueQuantity = 32 'mg/L' "mg/L"
* interpretation.coding = $v3-ObservationInterpretation#R "Resistant"
  * version = "2019"
* specimen
  * reference = "Specimen/isolate"
  * display = "Microbial isolate specimen (specimen)"