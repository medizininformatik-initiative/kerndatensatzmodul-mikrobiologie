Instance: mii-exa-mikrobio-mikroskopie
InstanceOf: MII_PR_Mikrobio_Mikroskopie
Usage: #example
* identifier[analyseBefundCode].system = "https://example.org/fhir/sid/test-lab-results"
* identifier[analyseBefundCode].value = "mikroskopie-1"
* identifier[analyseBefundCode].assigner.display = "Universitätsklinikum Musterstadt"
* status = #final
* category[mibi-category].coding[loinc-observation] = $loinc#26436-6 "Laboratory studies (set)"
* category[mibi-category].coding[observation-category] = $observation-category#laboratory "Laboratory"
* category[mibi-category].coding[loinc-microbiology-studies] = $loinc#18725-2 "Microbiology studies (set)"
* code = $loinc#105059-0 "Microscopic observation [Identifier] in Specimen"
* subject = Reference(mii-exa-mikrobio-patient)
* effectiveDateTime = "2026-04-02T10:00:00+01:00"
* valueCodeableConcept = $sct#70003006 "Gram-positive cocci in clusters (finding)"
* method = $sct#278289002 "Microscopy technique"
* specimen = Reference(mii-exa-mikrobio-probe)
