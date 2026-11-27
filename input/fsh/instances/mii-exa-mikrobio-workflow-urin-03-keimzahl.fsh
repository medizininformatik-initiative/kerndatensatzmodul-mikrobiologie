// Workflow-Beispiel allgemeine Kultur 3/5: die Keimzahl des E. coli.
//
// Die Keimzahl traegt selbst keinen Verweis; die Identifizierung (Schritt 2)
// referenziert sie ueber hasMember (Entscheidung 2026-11-26). Begruendung dort und auf
// der Abgrenzungsseite, "Mehrere Ergebnisse zusammenfassen". specimen bleibt der
// Urin, weil die Zahl je Milliliter Urin gilt.
Instance: mii-exa-mikrobio-workflow-urin-03-keimzahl
InstanceOf: MII_PR_Mikrobio_Keimzahl
Usage: #example
Title: "MII EXA Mikrobio Workflow Urin 3 Keimzahl"
Description: "Workflow Urin, Schritt 3: Keimzahl des Escherichia coli, 10⁵ [CFU]/mL."
* identifier[analyseBefundCode].system = "https://example.org/fhir/sid/test-lab-results"
* identifier[analyseBefundCode].value = "wf-urin-3"
* identifier[analyseBefundCode].assigner = Reference(mii-exa-mikrobio-labor)
* status = #final
* category[observation-category].coding[0] = $observation-category#laboratory "Laboratory"
* category[observation-category].coding[1] = $loinc#26436-6 "Laboratory studies (set)"
* code = $loinc#49223-1 "Colony count [#/volume] in Specimen by Visual count"
* subject = Reference(mii-exa-mikrobio-patient)
* performer = Reference(mii-exa-mikrobio-labor)
* effectiveDateTime = "2026-05-05T08:00:00+01:00"
* valueQuantity.value = 100000
* valueQuantity.system = $ucum
* valueQuantity.code = #[CFU]/mL
* valueQuantity.unit = "[CFU]/mL"
* method = $sct#410681005 "Count of entities"
* specimen = Reference(mii-exa-mikrobio-probe-urin)
