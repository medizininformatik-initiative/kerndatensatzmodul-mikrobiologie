Instance: mii-exa-mikrobio-titer
InstanceOf: MII_PR_Mikrobio_Titer
Usage: #example
* identifier[analyseBefundCode].system = "https://example.org/fhir/sid/test-lab-results"
* identifier[analyseBefundCode].value = "titer-1"
* identifier[analyseBefundCode].assigner.display = "Universitätsklinikum Musterstadt"
* status = #final
* category[observation-category].coding[0] = $observation-category#laboratory "Laboratory"
* category[observation-category].coding[1] = $loinc#26436-6 "Laboratory studies (set)"
* code = $loinc#22497-2 "Rubella virus Ab [Titer] in Serum"
* subject = Reference(mii-exa-mikrobio-patient)
* effectiveDateTime = "2026-04-02T10:00:00+01:00"
* valueRatio.numerator.value = 1
* valueRatio.denominator.value = 160
* method = $sct#708104000 "Agglutination technique"
* specimen = Reference(mii-exa-mikrobio-probe)
