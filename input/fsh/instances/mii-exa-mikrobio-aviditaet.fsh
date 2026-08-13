Instance: mii-exa-mikrobio-aviditaet
InstanceOf: MII_PR_Mikrobio_Aviditaet
Usage: #example
* identifier[analyseBefundCode].system = "https://example.org/fhir/sid/test-lab-results"
* identifier[analyseBefundCode].value = "avid-1"
* identifier[analyseBefundCode].assigner.display = "Universitätsklinikum Musterstadt"
* status = #final
* category[mibi-category].coding[loinc-observation] = $loinc#26436-6 "Laboruntersuchungen"
* category[mibi-category].coding[observation-category] = $observation-category#laboratory "Laboratory"
* category[mibi-category].coding[loinc-microbiology-studies] = $loinc#18725-2 "Mikrobiologie"
* code = $loinc#52984-2 "Cytomegalovirus IgG Ab avidity [Ratio] in Serum or Plasma by Immunoassay"
* subject.reference = "Patient/example"
* effectiveDateTime = "2026-04-02T10:00:00+01:00"
* valueQuantity.value = 35
* valueQuantity.unit = "%"
* valueQuantity.system = $ucum
* valueQuantity.code = #%
* interpretation = $v3-ObservationInterpretation#L "Low"
* method = $sct#726449005 "Immunoassay technique"
* specimen.reference = "Specimen/example"
