Instance: mii-exa-mikrobio-ct-wert
InstanceOf: MII_PR_Mikrobio_Ct_Wert
Usage: #example
* identifier[analyseBefundCode].system = "https://example.org/fhir/sid/test-lab-results"
* identifier[analyseBefundCode].value = "ct-1"
* identifier[analyseBefundCode].assigner.display = "Universitätsklinikum Musterstadt"
* status = #final
* category[mibi-category].coding[loinc-observation] = $loinc#26436-6 "Laboratory studies (set)"
* category[mibi-category].coding[observation-category] = $observation-category#laboratory "Laboratory"
* category[mibi-category].coding[loinc-microbiology-studies] = $loinc#18725-2 "Microbiology studies (set)"
* code = $loinc#74039-9 "Influenza virus A H3 RNA [Cycle Threshold #] in Specimen by NAA with probe detection"
* subject = Reference(mii-exa-mikrobio-patient)
* effectiveDateTime = "2026-04-02T10:00:00+01:00"
* valueQuantity.value = 21.3
* valueQuantity.unit = "1"
* valueQuantity.system = $ucum
* valueQuantity.code = #1
* method = $sct#70601000052104 "Real-time polymerase chain reaction technique"
* derivedFrom = Reference(mii-exa-mikrobio-spezifische-bestimmung)
* specimen = Reference(mii-exa-mikrobio-probe)
