Instance: mii-exa-mikrobio-resistenzmechanismen-determinanten
InstanceOf: MII_PR_Mikrobio_Resistenzmechanismen_Determinanten
Usage: #example
* identifier[analyseBefundCode].system = "https://example.org/fhir/sid/test-lab-results"
* identifier[analyseBefundCode].value = "res-mech-1"
* identifier[analyseBefundCode].assigner.display = "Universitätsklinikum Musterstadt"
* status = #final
* category[observation-category].coding[0] = $observation-category#laboratory "Laboratory"
* category[observation-category].coding[1] = $loinc#26436-6 "Laboratory studies (set)"
* code = $loinc#92249-2 "Microorganism gene tested for [Identifier] by Molecular method"
* subject = Reference(mii-exa-mikrobio-patient)
* effectiveDateTime = "2026-04-02T10:00:00+01:00"
* valueCodeableConcept = $sct#260373001 "Detected (qualifier value)"
* method = $sct#258066000 "Polymerase chain reaction technique"
* specimen = Reference(mii-exa-mikrobio-probe)
