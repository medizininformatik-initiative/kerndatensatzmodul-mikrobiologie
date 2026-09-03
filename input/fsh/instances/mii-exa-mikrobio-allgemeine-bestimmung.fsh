Instance: mii-exa-mikrobio-allgemeine-bestimmung
InstanceOf: MII_PR_Mikrobio_Allgemeine_Bestimmung
Usage: #example
* identifier[analyseBefundCode].system = "https://example.org/fhir/sid/test-lab-results"
* identifier[analyseBefundCode].value = "allg-best-1"
* identifier[analyseBefundCode].assigner.display = "Universitätsklinikum Musterstadt"
* status = #final
* category[observation-category].coding[0] = $observation-category#laboratory "Laboratory"
* category[observation-category].coding[1] = $loinc#26436-6 "Laboratory studies (set)"
* code = $loinc#41852-5 "Microorganism or agent identified in Specimen"
* subject = Reference(mii-exa-mikrobio-patient)
* effectiveDateTime = "2026-04-02T10:00:00+01:00"
* extension[triggeredBy-r5].extension[observation].valueReference = Reference(mii-exa-mikrobio-allgemeine-kultur)
* extension[triggeredBy-r5].extension[type].valueCode = #reflex
* valueCodeableConcept = $sct#52499004 "Pseudomonas aeruginosa"
* method = $sct#278289002 "Microscopy technique"
* specimen = Reference(mii-exa-mikrobio-probe)
