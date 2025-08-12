Instance: mii-exa-mikrobio-molekulare-diagnostik
InstanceOf: MII_PR_Mikrobio_Molekulare_Diagnostik
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
* code = $loinc#92253-4 "Microorganism identified in Isolate or Specimen by Molecular genetics method"
* subject.reference = "Patient/example"
* effectiveDateTime = "2018-11-20T11:05:00+00:00"
* valueCodeableConcept = $sct#10828004 "Positive"
* specimen
  * reference = "Specimen/pooled-serum"
  * display = "30 serum"
* component[0]
  * code = $loinc#89248-9
  * valueCodeableConcept = $sct#840533007 "Severe acute respiratory syndrome coronavirus 2 (organism)"
* component[+]
  * code = $sct#1268647006
  * valueQuantity
    * value = 30
    * unit = "{Ct_value}"