// Workflow-Beispiel allgemeine Kultur 4/5: Antibiogramm des E. coli, je
// Substanz eine Observation (piperacillin, cefotaxim, ciprofloxacin,
// meropenem). Die vier Substanzen decken die Gruppen ab, nach denen die
// MRGN-Klasse in Schritt 5 eingestuft wird. Jede Empfindlichkeit verweist mit
// triggeredBy auf die Identifizierung: Das ist die Zuordnung zum Erreger, die
// bei mehreren Erregern aus einer Probe Pflicht ist. Kein Organizer: Die
// Empfindlichkeiten stehen einzeln, wie in den uebrigen Beispielen.
//
// comparator: Eine MHK ausserhalb des getesteten Bereichs liest sich ohne ihn
// als exakter Wert (so auch das EU-IG).
Instance: mii-exa-mikrobio-workflow-urin-04-piperacillin
InstanceOf: MII_PR_Mikrobio_Empfindlichkeit
Usage: #example
Title: "MII EXA Mikrobio Workflow Urin 4 Piperacillin"
Description: "Workflow Urin, Schritt 4: Piperacillin-Empfindlichkeit des Escherichia coli, MHK > 64 mg/L, R nach EUCAST."
* identifier[analyseBefundCode].system = "https://example.org/fhir/sid/test-lab-results"
* identifier[analyseBefundCode].value = "wf-urin-4-pip"
* identifier[analyseBefundCode].assigner = Reference(mii-exa-mikrobio-labor)
* status = #final
* category[observation-category].coding[0] = $observation-category#laboratory "Laboratory"
* category[observation-category].coding[1] = $loinc#26436-6 "Laboratory studies (set)"
* code = $loinc#18969-6 "Piperacillin [Susceptibility]"
* subject = Reference(mii-exa-mikrobio-patient)
* performer = Reference(mii-exa-mikrobio-labor)
* effectiveDateTime = "2026-05-06T10:00:00+01:00"
* extension[triggeredBy-r5].extension[observation].valueReference = Reference(mii-exa-mikrobio-workflow-urin-02-identifikation)
* extension[triggeredBy-r5].extension[type].valueCode = #reflex
* valueQuantity.value = 64
* valueQuantity.comparator = #>
* valueQuantity.system = $ucum
* valueQuantity.code = #mg/L
* valueQuantity.unit = "mg/L"
* interpretation = $v3-ObservationInterpretation#R "Resistant"
* interpretation.extension[Norm].valueCodeableConcept = MII_CS_Mikrobio_Susceptibility_NORM#EUCAST "EUCAST"
* specimen = Reference(mii-exa-mikrobio-probe-urin-isolat)
