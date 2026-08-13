Instance: mii-exa-mikrobio-virulenzfaktor
InstanceOf: MII_PR_Mikrobio_Virulenzfaktor
Usage: #example
* identifier[analyseBefundCode].system = "https://example.org/fhir/sid/test-lab-results"
* identifier[analyseBefundCode].value = "virulenz-1"
* identifier[analyseBefundCode].assigner.display = "Universitätsklinikum Musterstadt"
* status = #final
* category[mibi-category].coding[loinc-observation] = $loinc#26436-6 "Laboruntersuchungen"
* category[mibi-category].coding[observation-category] = $observation-category#laboratory "Laboratory"
* category[mibi-category].coding[loinc-microbiology-studies] = $loinc#18725-2 "Mikrobiologie"
* code = $loinc#87402-4 "Escherichia coli aidA-I gene [Presence] in Isolate by NAA with probe detection"
* subject.reference = "Patient/example"
* effectiveDateTime = "2026-04-02T10:00:00+01:00"
* valueCodeableConcept = $sct#260415000 "Not detected (qualifier value)"
* specimen.reference = "Specimen/example"
