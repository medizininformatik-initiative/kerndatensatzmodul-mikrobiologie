Instance: mii-exa-mikrobio-mre-klasse
InstanceOf: MII_PR_Mikrobio_MRE_Klasse
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
* code = $sct#1285113001 "Type of antimicrobial resistant organism (observable entity)"
* subject.reference = "Patient/example"
* effectiveDateTime = "2018-11-20T11:05:00+00:00"
* valueCodeableConcept = $sct#710332005 "Multidrug-resistant Pseudomonas aeruginosa"
* specimen
  * reference = "Specimen/isolate"
  * display = "Microbial isolate specimen 2"