Instance: mii-exa-mikrobio-allgemeine-bestimmung
InstanceOf: MII_PR_Mikrobio_Allgemeine_Bestimmung
Usage: #example
* identifier[analyseBefundCode].system = "https://example.org/fhir/sid/test-lab-results"
* identifier[analyseBefundCode].value = "allg-best-1"
* identifier[analyseBefundCode].assigner.identifier.system = "https://www.medizininformatik-initiative.de/fhir/core/CodeSystem/core-location-identifier"
* identifier[analyseBefundCode].assigner.identifier.value = "DIZ-ID"
* status = #final
* category[mibi-category].coding[loinc-observation] = $loinc#26436-6
* category[mibi-category].coding[observation-category] = $observation-category#laboratory
* category[mibi-category].coding[loinc-microbiology-studies] = $loinc#18725-2 "Mikrobiologie"
* code = $loinc#41852-5
* subject.reference = "Patient/example"
* effectiveDateTime = "2026-04-02T10:00:00+01:00"
* extension[triggeredBy-r5].extension[observation].valueReference = Reference(mii-exa-mikrobio-allgemeine-kultur)
* extension[triggeredBy-r5].extension[type].valueCode = #reflex
* valueCodeableConcept = $sct#52499004
* method = $sct#278289002
* specimen.reference = "Specimen/example"
