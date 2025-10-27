Instance: mii-exa-mikrobio-serologie-immunologie
InstanceOf: MII_PR_Mikrobio_Serologie_Immunologie
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
* code
  * coding[0] = $loinc#50697-2 "Influenza-Virus A Antigen [Nachweis oder Identität] in Isolat"
  * coding[+] = $sct#252318005
* subject.reference = "Patient/example"
* effectiveDateTime = "2018-11-20T11:05:00+00:00"
* valueCodeableConcept = $sct#10828004 "Positive"
* specimen
  * reference = "Specimen/isolate"
  * display = "Microbial isolate specimen 2"