Instance: mii-exa-mikrobio-molekulare-diagnostik
InstanceOf: MII_PR_Mikrobio_MolekulareDiagnostik
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
* code.coding[generic-loinc] = $loinc#92253-4 "Mikroorganismus identifiziert in Isolat oder Probenmaterial mittels Molekulargenetik"
* code.coding[specific-loinc] = $loinc#96958-4 "SARS-CoV-2 (COVID-19) N-Gen [Nachweis] in Speichel mittels Nukleinsäureamplifikation mit Sondendetektion mit CDC-Primer-Sondenset N2"
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