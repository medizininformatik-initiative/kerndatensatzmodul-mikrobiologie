Instance: mii-exa-mikrobio-mre-klasse
InstanceOf: MII_PR_Mikrobio_MRE_Klasse
Usage: #example
* identifier
  * type = $v2-0203#OBI
  * system = "https://example.org/fhir/sid/test-lab-results"
  * value = "59826-8_1234567890"
  * assigner.identifier
    * system = "https://www.medizininformatik-initiative.de/fhir/core/CodeSystem/core-location-identifier"
    * value = "DIZ-ID"
* status = #final
* category
  * coding[0] = $observation-category#laboratory "Laboratory"
  * coding[+] = $loinc#26436-6 "Laboratory studies (set)"
  * coding[+] = $loinc#18725-2 "Microbiology studies"
* code = $sct#1285113001 "Type of antimicrobial resistant organism (observable entity)"
* subject.reference = "Patient/example"
* effectiveDateTime = "2018-11-20T11:05:00+00:00"
* valueCodeableConcept = $sct#710332005 "Multidrug resistant Pseudomonas aeruginosa (organism)"
* specimen
  * reference = "Specimen/isolate"
  * display = "Microbial isolate specimen 2"