Instance: mii-exa-mikrobio-empfindlichkeit
InstanceOf: MII_PR_Mikrobio_Empfindlichkeit
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
  * coding[+] = $loinc#18725-2 "Microbiology studies (set)"
* code = $loinc#18868-0 "Aztreonam [Susceptibility]"
* subject.reference = "Patient/example"
* effectiveDateTime = "2018-11-20T11:05:00+00:00"
* valueQuantity = 32 'mg/L' "mg/L"
* interpretation.coding = $mii-vs-mikrobio-eucast-eucast#R "Resistant: A microorganism is categorised as Resistant when there is a high likelihood of therapeutic failure even when there is increased exposure."
  * version = "2019"
* specimen
  * reference = "Specimen/isolate"
  * display = "Microbial isolate specimen (specimen)"