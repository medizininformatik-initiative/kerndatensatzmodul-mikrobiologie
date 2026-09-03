Instance: mii-exa-mikrobio-allgemeine-kultur
InstanceOf: MII_PR_Mikrobio_Allgemeine_Kultur
Usage: #example
* identifier[analyseBefundCode].system = "https://example.org/fhir/sid/test-lab-results"
* identifier[analyseBefundCode].value = "allg-kultur-1"
* identifier[analyseBefundCode].assigner.display = "Universitätsklinikum Musterstadt"
* status = #final
* category[observation-category].coding[0] = $observation-category#laboratory "Laboratory"
* category[observation-category].coding[1] = $loinc#26436-6 "Laboratory studies (set)"
* code = $loinc#11475-1 "Microorganism identified in Specimen by Culture"
* subject = Reference(mii-exa-mikrobio-patient)
* effectiveDateTime = "2026-04-02T10:00:00+01:00"
* valueCodeableConcept = $sct#365698005 "Organism growth"
* method = $sct#703750006 "Aerobic culture"
* specimen = Reference(mii-exa-mikrobio-probe)
