Instance: mii-exa-mikrobio-keimzahl
InstanceOf: MII_PR_Mikrobio_Keimzahl
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
  * coding[0] = $loinc#26436-6 "Laboratory studies (set)"
  * coding[+] = $observation-category#laboratory "Laboratory"
  * coding[+] = $loinc#18725-2 "Microbiology studies (set)"
* code = $loinc#49223-1 "Colony count [#/volume] in Unspecified specimen by Visual count"
* subject.reference = "Patient/example"
* effectiveDateTime = "2018-11-20T11:05:00+00:00"
* valueQuantity = 1000000 '[CFU]/mL' "CFU/ml"
* specimen
  * reference = "Specimen/isolate"
  * display = "Microbial isolate specimen 2"