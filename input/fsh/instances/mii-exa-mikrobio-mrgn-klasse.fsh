Instance: mii-exa-mikrobio-mrgn-klasse
InstanceOf: MII_PR_Mikrobio_MRGN_Klasse
Usage: #example
* identifier[analyseBefundCode].system = "https://example.org/fhir/sid/test-lab-results"
* identifier[analyseBefundCode].value = "59826-8_1234567890"
* identifier[analyseBefundCode].assigner.display = "Universitätsklinikum Musterstadt"
* status = #final
* category[observation-category].coding[0] = $observation-category#laboratory "Laboratory"
* category[observation-category].coding[1] = $loinc#26436-6 "Laboratory studies (set)"
* code = $loinc#99780-9 "Multidrug resistant gram-negative organism classification [Type]"
* subject = Reference(mii-exa-mikrobio-patient)
* effectiveDateTime = "2026-04-02T10:00:00+01:00"
* valueCodeableConcept = $loinc#LA33214-0 "2MRGN"
* specimen = Reference(mii-exa-mikrobio-probe)
