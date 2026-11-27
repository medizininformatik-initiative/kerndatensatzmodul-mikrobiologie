// Workflow-Beispiel allgemeine Kultur 1/5: Die Kultur stellt fest, DASS etwas
// waechst, nicht WAS. Sie traegt keinen Verweis auf die Folgeschritte; die
// Beziehungen stehen immer an der spaeteren Untersuchung.
Instance: mii-exa-mikrobio-workflow-urin-01-kultur
InstanceOf: MII_PR_Mikrobio_Allgemeine_Kultur
Usage: #example
Title: "MII EXA Mikrobio Workflow Urin 1 Kultur"
Description: "Workflow Urin, Schritt 1: aerobe Urinkultur mit Wachstum."
* identifier[analyseBefundCode].system = "https://example.org/fhir/sid/test-lab-results"
* identifier[analyseBefundCode].value = "wf-urin-1"
* identifier[analyseBefundCode].assigner = Reference(mii-exa-mikrobio-labor)
* status = #final
* category[observation-category].coding[0] = $observation-category#laboratory "Laboratory"
* category[observation-category].coding[1] = $loinc#26436-6 "Laboratory studies (set)"
* code = $loinc#11475-1 "Microorganism identified in Specimen by Culture"
* subject = Reference(mii-exa-mikrobio-patient)
* performer = Reference(mii-exa-mikrobio-labor)
* effectiveDateTime = "2026-05-05T08:00:00+01:00"
* valueCodeableConcept = $sct#365698005 "Organism growth"
* method = $sct#703750006 "Aerobic culture"
* specimen = Reference(mii-exa-mikrobio-probe-urin)
