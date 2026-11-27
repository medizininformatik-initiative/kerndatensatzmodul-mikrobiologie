// Workflow-Beispiel allgemeine Kultur 5/5: aus Identifizierung und den vier
// Empfindlichkeiten abgeleitete MRGN-Klasse. Resistent in drei von vier Gruppen
// (Acylureidopenicilline, Cephalosporine 3./4. Generation, Fluorchinolone),
// Carbapenem sensibel: 3MRGN. derivedFrom und nicht triggeredBy: Die Einstufung
// ist eine Ableitung, keine ausgeloeste Folgeuntersuchung. derivedFrom ist
// zugleich die Zuordnung zum Erreger.
Instance: mii-exa-mikrobio-workflow-urin-05-mrgn-klasse
InstanceOf: MII_PR_Mikrobio_MRGN_Klasse
Usage: #example
Title: "MII EXA Mikrobio Workflow Urin 5 MRGN-Klasse"
Description: "Workflow Urin, Schritt 5: 3MRGN, abgeleitet aus Identifizierung und Empfindlichkeit."
* identifier[analyseBefundCode].system = "https://example.org/fhir/sid/test-lab-results"
* identifier[analyseBefundCode].value = "wf-urin-5"
* identifier[analyseBefundCode].assigner = Reference(mii-exa-mikrobio-labor)
* status = #final
* category[observation-category].coding[0] = $observation-category#laboratory "Laboratory"
* category[observation-category].coding[1] = $loinc#26436-6 "Laboratory studies (set)"
* code = $loinc#99780-9 "Multidrug resistant gram-negative organism classification [Type]"
* subject = Reference(mii-exa-mikrobio-patient)
* performer = Reference(mii-exa-mikrobio-labor)
* effectiveDateTime = "2026-05-06T11:00:00+01:00"
* valueCodeableConcept = $loinc#LA33215-7 "3MRGN"
* derivedFrom[+] = Reference(mii-exa-mikrobio-workflow-urin-02-identifikation)
* derivedFrom[+] = Reference(mii-exa-mikrobio-workflow-urin-04-piperacillin)
* derivedFrom[+] = Reference(mii-exa-mikrobio-workflow-urin-04-cefotaxim)
* derivedFrom[+] = Reference(mii-exa-mikrobio-workflow-urin-04-ciprofloxacin)
* derivedFrom[+] = Reference(mii-exa-mikrobio-workflow-urin-04-meropenem)
* specimen = Reference(mii-exa-mikrobio-probe-urin-isolat)
