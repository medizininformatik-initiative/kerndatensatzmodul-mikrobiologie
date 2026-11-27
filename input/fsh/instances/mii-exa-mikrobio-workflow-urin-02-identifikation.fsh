// Workflow-Beispiel allgemeine Kultur 2/5: Die Identifizierung benennt, was in
// Schritt 1 gewachsen ist, und verweist darauf zurueck.
//
// hasMember auf die Keimzahl: Zahl und Identifizierung sind zwei Schritte
// (Auszaehlung an der Platte, MALDI-TOF), deshalb zwei Observations und keine
// Komponente; hasMember sagt, dass sie zusammengehoeren.
//
// specimen zeigt auf das Isolat, nicht auf den Urin. Bei einem einzigen Erreger
// waere weder das noch der Verweis noetig; das Beispiel zeigt beide Wege.
Instance: mii-exa-mikrobio-workflow-urin-02-identifikation
InstanceOf: MII_PR_Mikrobio_Allgemeine_Bestimmung
Usage: #example
Title: "MII EXA Mikrobio Workflow Urin 2 Identifikation"
Description: "Workflow Urin, Schritt 2: Escherichia coli per MALDI-TOF; führt die Keimzahl über hasMember."
* identifier[analyseBefundCode].system = "https://example.org/fhir/sid/test-lab-results"
* identifier[analyseBefundCode].value = "wf-urin-2"
* identifier[analyseBefundCode].assigner = Reference(mii-exa-mikrobio-labor)
* status = #final
* category[observation-category].coding[0] = $observation-category#laboratory "Laboratory"
* category[observation-category].coding[1] = $loinc#26436-6 "Laboratory studies (set)"
* code = $loinc#41852-5 "Microorganism or agent identified in Specimen"
* subject = Reference(mii-exa-mikrobio-patient)
* performer = Reference(mii-exa-mikrobio-labor)
* effectiveDateTime = "2026-05-05T09:00:00+01:00"
* extension[triggeredBy-r5].extension[observation].valueReference = Reference(mii-exa-mikrobio-workflow-urin-01-kultur)
* extension[triggeredBy-r5].extension[type].valueCode = #reflex
* valueCodeableConcept = $sct#112283007 "Escherichia coli"
* method = $sct#83581000052107 "Matrix assisted laser desorption ionization time of flight mass spectrometry technique (qualifier value)"
* hasMember = Reference(mii-exa-mikrobio-workflow-urin-03-keimzahl)
* specimen = Reference(mii-exa-mikrobio-probe-urin-isolat)
