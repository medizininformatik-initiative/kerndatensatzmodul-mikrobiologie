// Negative Klassifikation: Das gramnegative Isolat wurde identifiziert, die
// Empfindlichkeitsbefunde wurden bewertet, es ist keiner MRGN-Klasse zuzuordnen.
// Abzugrenzen vom negativen Ergebnis eines zielgerichteten Erregernachweises (siehe
// mii-exa-mikrobio-spezifische-bestimmung-vre-negativ), bei dem gar kein Isolat vorliegt.
// derivedFrom verweist auf die Empfindlichkeitsbefunde, aus denen die Einstufung
// abgeleitet wurde.
Instance: mii-exa-mikrobio-mrgn-klasse-negativ
InstanceOf: MII_PR_Mikrobio_MRGN_Klasse
Usage: #example
Title: "MII EXA Mikrobio MRGN Klasse negativ"
Description: "Identifiziertes gramnegatives Isolat, dessen Empfindlichkeitsbefunde bewertet wurden und das keiner MRGN-Klasse zuzuordnen ist."
* identifier[analyseBefundCode].system = "https://example.org/fhir/sid/test-lab-results"
* identifier[analyseBefundCode].value = "mrgn-neg-1"
* identifier[analyseBefundCode].assigner.display = "Universitätsklinikum Musterstadt"
* status = #final
* category[observation-category].coding[0] = $observation-category#laboratory "Laboratory"
* category[observation-category].coding[1] = $loinc#26436-6 "Laboratory studies (set)"
* code = $loinc#99780-9 "Multidrug resistant gram-negative organism classification [Type]"
* subject = Reference(mii-exa-mikrobio-patient)
* effectiveDateTime = "2026-04-02T10:00:00+01:00"
* valueCodeableConcept = MII_CS_Mikrobio_MRGN_Ergebnis#keine-mrgn-klasse "Keine MRGN-Klasse"
* derivedFrom.reference = "Observation/mii-exa-mikrobio-empfindlichkeit"
* specimen = Reference(mii-exa-mikrobio-probe)
