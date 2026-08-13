// MRSA-Status = Negative: Staphylococcus aureus identifiziert und hinsichtlich der
// Methicillinresistenz ausreichend bewertet; die Kriterien sind nicht erfuellt.
//
// Negative bedeutet hier NICHT, dass kein Erreger nachgewiesen wurde - der Erreger liegt
// vor. Waere die Methicillinresistenz nicht bewertbar gewesen, stuende hier nicht
// "Negative", sondern dataAbsentReason.
Instance: mii-exa-mikrobio-resistenzkategorie-mrsa-negativ
InstanceOf: MII_PR_Mikrobio_Resistenzkategorie_Status
Usage: #example
Title: "MII EXA Mikrobio Resistenzkategorie MRSA negativ"
Description: "Identifizierter Staphylococcus aureus ohne Methicillinresistenz: MRSA-Status Negative."
* identifier[analyseBefundCode].system = "https://example.org/fhir/sid/test-lab-results"
* identifier[analyseBefundCode].value = "reskat-mrsa-neg"
* identifier[analyseBefundCode].assigner.display = "Universitätsklinikum Musterstadt"
* status = #final
* category[mibi-category].coding[loinc-observation] = $loinc#26436-6
* category[mibi-category].coding[observation-category] = $observation-category#laboratory
* category[mibi-category].coding[loinc-microbiology-studies] = $loinc#18725-2 "Mikrobiologie"
* code = MII_CS_Mikrobio_Resistenzkategorie#mrsa-status "MRSA-Status"
* subject.reference = "Patient/example"
* effectiveDateTime = "2026-04-03T15:00:00+01:00"
* valueCodeableConcept = $sct#260385009 "Negative"
* derivedFrom[+].reference = "Observation/mii-exa-mikrobio-allgemeine-bestimmung"
* derivedFrom[+].reference = "Observation/mii-exa-mikrobio-empfindlichkeit"
* specimen.reference = "Specimen/example"
