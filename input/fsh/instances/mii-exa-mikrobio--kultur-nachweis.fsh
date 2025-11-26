Instance: mii-exa-mikrobio-kultur-nachweis
InstanceOf: MII_PR_Mikrobio_KulturNachweis
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
* code = $loinc#11475-1 "Microorganism identified in Specimen by Culture"
* subject.reference = "Patient/example"
* effectiveDateTime = "2018-11-20T11:05:00+00:00"
* valueCodeableConcept = $sct#260373001 "Detected (qualifier value)"
* specimen
  * reference = "Specimen/blood-specimen"
  * display = "blood specimen in aerobic blood culture bottle"
* component
  * code = $loinc#89248-9
  * valueCodeableConcept = $sct#840533007 "Severe acute respiratory syndrome coronavirus 2 (organism)"