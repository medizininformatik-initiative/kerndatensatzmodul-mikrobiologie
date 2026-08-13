// LRE-Status = Negative: Enterococcus identifiziert und auf Linezolid getestet, kein
// Nachweis einer Linezolidresistenz.
//
// Dieses Beispiel zeigt zusammen mit mii-exa-mikrobio-resistenzkategorie-vre-positiv den
// Regelfall: Fuer denselben Enterococcus werden nur die fachlich anwendbaren Kategorien
// dokumentiert (VRE-Status Positive, LRE-Status Negative). Ein MRSA-Status wird fuer einen
// Enterococcus NICHT erzeugt.
Instance: mii-exa-mikrobio-resistenzkategorie-lre-negativ
InstanceOf: MII_PR_Mikrobio_Resistenzkategorie_Status
Usage: #example
Title: "MII EXA Mikrobio Resistenzkategorie LRE negativ"
Description: "Identifizierter Enterococcus ohne Linezolidresistenz: LRE-Status Negative."
* identifier[analyseBefundCode].system = "https://example.org/fhir/sid/test-lab-results"
* identifier[analyseBefundCode].value = "reskat-lre-neg"
* identifier[analyseBefundCode].assigner.identifier.system = "https://www.medizininformatik-initiative.de/fhir/core/CodeSystem/core-location-identifier"
* identifier[analyseBefundCode].assigner.identifier.value = "DIZ-ID"
* status = #final
* category[mibi-category].coding[loinc-observation] = $loinc#26436-6
* category[mibi-category].coding[observation-category] = $observation-category#laboratory
* category[mibi-category].coding[loinc-microbiology-studies] = $loinc#18725-2 "Mikrobiologie"
* code = MII_CS_Mikrobio_Resistenzkategorie#lre-status "LRE-Status"
* subject.reference = "Patient/example"
* effectiveDateTime = "2026-04-03T15:00:00+01:00"
* valueCodeableConcept = $sct#260385009 "Negative"
* derivedFrom[+].reference = "Observation/mii-exa-mikrobio-workflow-vre-02-identifikation"
* derivedFrom[+].reference = "Observation/mii-exa-mikrobio-empfindlichkeit"
* specimen.reference = "Specimen/example"
