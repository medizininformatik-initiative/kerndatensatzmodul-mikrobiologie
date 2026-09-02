Instance: mii-exa-mikrobio-virulenzfaktor
InstanceOf: MII_PR_Mikrobio_Virulenzfaktor
Usage: #example
* identifier[analyseBefundCode].system = "https://example.org/fhir/sid/test-lab-results"
* identifier[analyseBefundCode].value = "virulenz-1"
* identifier[analyseBefundCode].assigner.display = "Universitätsklinikum Musterstadt"
* status = #final
* category[observation-category].coding[0] = $observation-category#laboratory "Laboratory"
* category[observation-category].coding[1] = $loinc#26436-6 "Laboratory studies (set)"
* code = $loinc#87402-4 "Escherichia coli aidA-I gene [Presence] in Isolate by NAA with probe detection"
* subject = Reference(mii-exa-mikrobio-patient)
* effectiveDateTime = "2026-04-02T10:00:00+01:00"
* valueCodeableConcept = $sct#260415000 "Not detected (qualifier value)"
* specimen = Reference(mii-exa-mikrobio-probe)
