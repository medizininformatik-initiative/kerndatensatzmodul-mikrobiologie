Instance: mii-exa-mikrobio-diagnostic-report
InstanceOf: MII_PR_Mikrobio_Diagnostic_Report
Usage: #example
* identifier[befund].type.coding[fillerV2] = $v2-0203#FILL
* identifier[befund].system = "https://example.org/fhir/sid/test-befund"
* identifier[befund].value = "mikrobio-dr-1"
* identifier[befund].assigner.identifier.system = "https://www.medizininformatik-initiative.de/fhir/core/CodeSystem/core-location-identifier"
* identifier[befund].assigner.identifier.value = "DIZ-ID"
* status = #final
* category[lab-category].coding[0] = http://terminology.hl7.org/CodeSystem/v2-0074#LAB
* category[lab-category].coding[1] = $loinc#26436-6 "Laboruntersuchungen"
* category[lab-category].coding[snomed-microbiology-studies] = $sct#4341000179107
* code.coding[loinc-labReport] = $loinc#11502-2 "Laborbericht"
* basedOn[0].reference = "ServiceRequest/111"
* subject.reference = "Patient/111"
* effectiveDateTime = "2026-04-02T10:00:00+01:00"
* issued = "2026-04-02T10:30:00+01:00"
* result[0] = Reference(mii-exa-mikrobio-allgemeine-kultur)
