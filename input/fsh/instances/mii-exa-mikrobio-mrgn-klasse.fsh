Instance: mii-exa-mikrobio-mrgn-klasse
InstanceOf: MII_PR_Mikrobio_MRGN_Klasse
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
* code = $loinc#99780-9 "Multidrug resistant gram-negative organism classification [Type]"
* subject.reference = "Patient/example"
* effectiveDateTime = "2018-11-20T11:05:00+00:00"
* valueCodeableConcept = $loinc#LA33215-7 "3MRGN"
* specimen
  * reference = "Specimen/isolate"
  * display = "Microbial isolate specimen 2"