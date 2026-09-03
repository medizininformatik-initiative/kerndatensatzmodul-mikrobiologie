Instance: mii-exa-mikrobio-empfindlichkeit
InstanceOf: MII_PR_Mikrobio_Empfindlichkeit
Usage: #example
* identifier[analyseBefundCode].system = "https://example.org/fhir/sid/test-lab-results"
* identifier[analyseBefundCode].value = "empf-1"
* identifier[analyseBefundCode].assigner.display = "Universitätsklinikum Musterstadt"
* status = #final
* category[observation-category].coding[0] = $observation-category#laboratory "Laboratory"
* category[observation-category].coding[1] = $loinc#26436-6 "Laboratory studies (set)"
* code = $loinc#100044-7 "Cefcapene [Susceptibility]"
* subject = Reference(mii-exa-mikrobio-patient)
* effectiveDateTime = "2026-04-02T10:00:00+01:00"
* valueQuantity.value = 1
* valueQuantity.system = $ucum
* valueQuantity.code = #mg/L
* valueQuantity.unit = "mg/L"
* interpretation = $v3-ObservationInterpretation#S "Susceptible"
* interpretation.extension[Norm].valueCodeableConcept = MII_CS_Mikrobio_Susceptibility_NORM#EUCAST "EUCAST"
* specimen = Reference(mii-exa-mikrobio-probe)
