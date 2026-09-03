Instance: mii-exa-mikrobio-keimzahl
InstanceOf: MII_PR_Mikrobio_Keimzahl
Usage: #example
* identifier[analyseBefundCode].system = "https://example.org/fhir/sid/test-lab-results"
* identifier[analyseBefundCode].value = "keimzahl-1"
* identifier[analyseBefundCode].assigner.display = "Universitätsklinikum Musterstadt"
* status = #final
* category[observation-category].coding[0] = $observation-category#laboratory "Laboratory"
* category[observation-category].coding[1] = $loinc#26436-6 "Laboratory studies (set)"
* code = $loinc#49223-1 "Colony count [#/volume] in Specimen by Visual count"
* subject = Reference(mii-exa-mikrobio-patient)
* effectiveDateTime = "2026-04-02T10:00:00+01:00"
* valueQuantity.value = 100000
* valueQuantity.system = $ucum
* valueQuantity.code = #/mL
* valueQuantity.unit = "/mL"
* method = $sct#410681005 "Count of entities"
* specimen = Reference(mii-exa-mikrobio-probe)
