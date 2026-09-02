Instance: mii-exa-mikrobio-antigen-antikoerper-quantitativ
InstanceOf: MII_PR_Mikrobio_Antigen_Antikoerper_Quantitativ
Usage: #example
* identifier[analyseBefundCode].system = "https://example.org/fhir/sid/test-lab-results"
* identifier[analyseBefundCode].value = "ak-qn-1"
* identifier[analyseBefundCode].assigner.display = "Universitätsklinikum Musterstadt"
* status = #final
* category[observation-category].coding[0] = $observation-category#laboratory "Laboratory"
* category[observation-category].coding[1] = $loinc#26436-6 "Laboratory studies (set)"
* code = $loinc#5193-8 "Hepatitis B virus surface Ab [Units/volume] in Serum or Plasma by Immunoassay"
* subject = Reference(mii-exa-mikrobio-patient)
* effectiveDateTime = "2026-04-02T10:00:00+01:00"
* valueQuantity.value = 42
* valueQuantity.system = $ucum
* valueQuantity.code = #[IU]/L
* valueQuantity.unit = "IU/L"
* method = $sct#726449005 "Immunoassay technique"
* specimen = Reference(mii-exa-mikrobio-probe)
