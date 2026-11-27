// Workflow-Beispiel allgemeine Kultur 4/5, Ciprofloxacin. Aufbau und Begruendung
// siehe mii-exa-mikrobio-workflow-urin-04-piperacillin.
Instance: mii-exa-mikrobio-workflow-urin-04-ciprofloxacin
InstanceOf: MII_PR_Mikrobio_Empfindlichkeit
Usage: #example
Title: "MII EXA Mikrobio Workflow Urin 4 Ciprofloxacin"
Description: "Workflow Urin, Schritt 4: Ciprofloxacin-Empfindlichkeit des Escherichia coli, MHK 4 mg/L, R nach EUCAST."
* identifier[analyseBefundCode].system = "https://example.org/fhir/sid/test-lab-results"
* identifier[analyseBefundCode].value = "wf-urin-4-cip"
* identifier[analyseBefundCode].assigner = Reference(mii-exa-mikrobio-labor)
* status = #final
* category[observation-category].coding[0] = $observation-category#laboratory "Laboratory"
* category[observation-category].coding[1] = $loinc#26436-6 "Laboratory studies (set)"
* code = $loinc#18906-8 "Ciprofloxacin [Susceptibility]"
* subject = Reference(mii-exa-mikrobio-patient)
* performer = Reference(mii-exa-mikrobio-labor)
* effectiveDateTime = "2026-05-06T10:00:00+01:00"
* extension[triggeredBy-r5].extension[observation].valueReference = Reference(mii-exa-mikrobio-workflow-urin-02-identifikation)
* extension[triggeredBy-r5].extension[type].valueCode = #reflex
* valueQuantity.value = 4
* valueQuantity.system = $ucum
* valueQuantity.code = #mg/L
* valueQuantity.unit = "mg/L"
* interpretation = $v3-ObservationInterpretation#R "Resistant"
* interpretation.extension[Norm].valueCodeableConcept = MII_CS_Mikrobio_Susceptibility_NORM#EUCAST "EUCAST"
* specimen = Reference(mii-exa-mikrobio-probe-urin-isolat)
