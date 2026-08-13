// MRSA-Status = Positive: Staphylococcus aureus identifiziert, Methicillin-/Oxacillin-
// resistenz nachgewiesen. Die Kategorie ist damit erfuellt.
//
// Abzugrenzen vom direkten Nachweis: Eine MRSA-PCR (Spezifische Bestimmung, Detected) oder
// eine MRSA-Kultur (Spezifische Kultur, Organism growth) beantwortet die Frage, OB der
// Erreger vorhanden ist. Dieses Profil bewertet einen bereits vorliegenden Erreger.
Instance: mii-exa-mikrobio-resistenzkategorie-mrsa-positiv
InstanceOf: MII_PR_Mikrobio_Resistenzkategorie_Status
Usage: #example
Title: "MII EXA Mikrobio Resistenzkategorie MRSA positiv"
Description: "Identifizierter Staphylococcus aureus mit nachgewiesener Methicillinresistenz: MRSA-Status Positive."
* identifier[analyseBefundCode].system = "https://example.org/fhir/sid/test-lab-results"
* identifier[analyseBefundCode].value = "reskat-mrsa-pos"
* identifier[analyseBefundCode].assigner.identifier.system = "https://www.medizininformatik-initiative.de/fhir/core/CodeSystem/core-location-identifier"
* identifier[analyseBefundCode].assigner.identifier.value = "DIZ-ID"
* status = #final
* category[mibi-category].coding[loinc-observation] = $loinc#26436-6
* category[mibi-category].coding[observation-category] = $observation-category#laboratory
* category[mibi-category].coding[loinc-microbiology-studies] = $loinc#18725-2 "Mikrobiologie"
* code = MII_CS_Mikrobio_Resistenzkategorie#mrsa-status "MRSA-Status"
* subject.reference = "Patient/example"
* effectiveDateTime = "2026-04-03T15:00:00+01:00"
* valueCodeableConcept = $sct#10828004 "Positive"
* derivedFrom[+].reference = "Observation/mii-exa-mikrobio-allgemeine-bestimmung"
* derivedFrom[+].reference = "Observation/mii-exa-mikrobio-resistenzmechanismen-determinanten"
* specimen.reference = "Specimen/example"
