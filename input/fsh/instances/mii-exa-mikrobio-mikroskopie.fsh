Instance: mii-exa-mikrobio-mikroskopie
InstanceOf: MII_PR_Mikrobio_Mikroskopie
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
* code = $sct#117259009 "Microscopy (procedure)"
* subject.reference = "Patient/example"
* effectiveDateTime = "2018-11-20T11:05:00+00:00"
* valueCodeableConcept = $sct#260373001 "Detected (qualifier value)"
* method = $sct#67047002 "Microbial wet smear (procedure)"
* specimen
  * reference = "Specimen/isolate"
  * display = "Microbial isolate specimen 2"
* component
  * code = $loinc#89248-9 "Microorganism identified event index case"
  * valueCodeableConcept = $sct#52499004 "Pseudomonas aeruginosa (organism)"