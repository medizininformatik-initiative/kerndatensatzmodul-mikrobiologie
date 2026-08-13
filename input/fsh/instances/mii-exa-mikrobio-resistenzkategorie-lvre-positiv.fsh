// LVRE-Status = Positive: Enterococcus identifiziert, sowohl Linezolid- als auch
// Vancomycinresistenz nachgewiesen.
//
// LVRE ist eine eigenstaendige Kategorie. Sind fuer denselben Erreger auch VRE- und
// LRE-Status dokumentiert, sind diese ebenfalls Positive - die Kategorien schliessen sich
// nicht gegenseitig aus.
Instance: mii-exa-mikrobio-resistenzkategorie-lvre-positiv
InstanceOf: MII_PR_Mikrobio_Resistenzkategorie_Status
Usage: #example
Title: "MII EXA Mikrobio Resistenzkategorie LVRE positiv"
Description: "Identifizierter Enterococcus mit nachgewiesener Linezolid- und Vancomycinresistenz: LVRE-Status Positive."
* identifier[analyseBefundCode].system = "https://example.org/fhir/sid/test-lab-results"
* identifier[analyseBefundCode].value = "reskat-lvre-pos"
* identifier[analyseBefundCode].assigner.identifier.system = "https://www.medizininformatik-initiative.de/fhir/core/CodeSystem/core-location-identifier"
* identifier[analyseBefundCode].assigner.identifier.value = "DIZ-ID"
* status = #final
* category[mibi-category].coding[loinc-observation] = $loinc#26436-6
* category[mibi-category].coding[observation-category] = $observation-category#laboratory
* category[mibi-category].coding[loinc-microbiology-studies] = $loinc#18725-2 "Mikrobiologie"
* code = MII_CS_Mikrobio_Resistenzkategorie#lvre-status "LVRE-Status"
* subject.reference = "Patient/example"
* effectiveDateTime = "2026-04-03T15:00:00+01:00"
* valueCodeableConcept = $sct#10828004 "Positive"
* derivedFrom[+].reference = "Observation/mii-exa-mikrobio-workflow-vre-02-identifikation"
* derivedFrom[+].reference = "Observation/mii-exa-mikrobio-workflow-vre-03-empfindlichkeit"
* derivedFrom[+].reference = "Observation/mii-exa-mikrobio-empfindlichkeit"
* specimen.reference = "Specimen/example"
