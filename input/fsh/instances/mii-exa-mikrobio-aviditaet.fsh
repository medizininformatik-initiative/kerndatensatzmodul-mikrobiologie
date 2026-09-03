Instance: mii-exa-mikrobio-aviditaet
InstanceOf: MII_PR_Mikrobio_Aviditaet
Usage: #example
* identifier[analyseBefundCode].system = "https://example.org/fhir/sid/test-lab-results"
* identifier[analyseBefundCode].value = "avid-1"
* identifier[analyseBefundCode].assigner.display = "Universitätsklinikum Musterstadt"
* status = #final
* category[observation-category].coding[0] = $observation-category#laboratory "Laboratory"
* category[observation-category].coding[1] = $loinc#26436-6 "Laboratory studies (set)"
* code = $loinc#52984-2 "Cytomegalovirus IgG Ab avidity [Ratio] in Serum or Plasma by Immunoassay"
* subject = Reference(mii-exa-mikrobio-patient)
* effectiveDateTime = "2026-04-02T10:00:00+01:00"
* valueQuantity.value = 35
* valueQuantity.unit = "%"
* valueQuantity.system = $ucum
* valueQuantity.code = #%
* interpretation = $v3-ObservationInterpretation#L "Low"
* method = $sct#726449005 "Immunoassay technique"
* specimen = Reference(mii-exa-mikrobio-probe)
