// LRE-Status = Positive: Enterococcus identifiziert, Linezolidresistenz nachgewiesen.
//
// LRE ist eine eigene Kategorie und nicht mit VRE gleichzusetzen. Ist derselbe Erreger
// zusaetzlich vancomycinresistent, wird dies ueber eine eigene Observation mit
// lvre-status abgebildet (siehe mii-exa-mikrobio-resistenzkategorie-lvre-positiv).
Instance: mii-exa-mikrobio-resistenzkategorie-lre-positiv
InstanceOf: MII_PR_Mikrobio_Resistenzkategorie_Status
Usage: #example
Title: "MII EXA Mikrobio Resistenzkategorie LRE positiv"
Description: "Identifizierter Enterococcus mit nachgewiesener Linezolidresistenz: LRE-Status Positive."
* identifier[analyseBefundCode].system = "https://example.org/fhir/sid/test-lab-results"
* identifier[analyseBefundCode].value = "reskat-lre-pos"
* identifier[analyseBefundCode].assigner.identifier.system = "https://www.medizininformatik-initiative.de/fhir/core/CodeSystem/core-location-identifier"
* identifier[analyseBefundCode].assigner.identifier.value = "DIZ-ID"
* status = #final
* category[mibi-category].coding[loinc-observation] = $loinc#26436-6
* category[mibi-category].coding[observation-category] = $observation-category#laboratory
* category[mibi-category].coding[loinc-microbiology-studies] = $loinc#18725-2 "Mikrobiologie"
* code = MII_CS_Mikrobio_Resistenzkategorie#lre-status "LRE-Status"
* subject.reference = "Patient/example"
* effectiveDateTime = "2026-04-03T15:00:00+01:00"
* valueCodeableConcept = $sct#10828004 "Positive"
* derivedFrom[+].reference = "Observation/mii-exa-mikrobio-workflow-vre-02-identifikation"
* derivedFrom[+].reference = "Observation/mii-exa-mikrobio-empfindlichkeit"
* specimen.reference = "Specimen/example"
