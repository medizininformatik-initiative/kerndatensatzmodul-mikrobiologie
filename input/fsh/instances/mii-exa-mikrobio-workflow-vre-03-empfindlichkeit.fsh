// Workflow-Beispiel 3/4 - Empfindlichkeitstestung des identifizierten Isolats.
//
// triggeredBy verweist auf die Identifikation (Schritt 2). Entfaellt der optionale
// Identifikationsschritt, verweist triggeredBy stattdessen direkt auf Schritt 1.
Instance: mii-exa-mikrobio-workflow-vre-03-empfindlichkeit
InstanceOf: MII_PR_Mikrobio_Empfindlichkeit
Usage: #example
Title: "MII EXA Mikrobio Workflow VRE 3 Empfindlichkeit"
Description: "Workflow-Kette VRE, Schritt 3: Vancomycin-Empfindlichkeitstestung des identifizierten Isolats mit dem Ergebnis resistent."
* identifier[analyseBefundCode].system = "https://example.org/fhir/sid/test-lab-results"
* identifier[analyseBefundCode].value = "wf-vre-3"
* identifier[analyseBefundCode].assigner.display = "Universitätsklinikum Musterstadt"
* status = #final
* category[mibi-category].coding[loinc-observation] = $loinc#26436-6
* category[mibi-category].coding[observation-category] = $observation-category#laboratory
* category[mibi-category].coding[loinc-microbiology-studies] = $loinc#18725-2 "Mikrobiologie"
* code = $loinc#524-9 "Vancomycin [Susceptibility] by Minimum inhibitory concentration (MIC)"
* subject.reference = "Patient/example"
* effectiveDateTime = "2026-04-03T14:00:00+01:00"
* extension[triggeredBy-r5].extension[observation].valueReference = Reference(mii-exa-mikrobio-workflow-vre-02-identifikation)
* extension[triggeredBy-r5].extension[type].valueCode = #reflex
* valueQuantity.value = 64
* valueQuantity.system = $ucum
* valueQuantity.code = #mg/L
* valueQuantity.unit = "mg/L"
* interpretation = $v3-ObservationInterpretation#R "Resistant"
* interpretation.extension[Norm].valueCodeableConcept = MII_CS_Mikrobio_Susceptibility_NORM#EUCAST "EUCAST"
* specimen.reference = "Specimen/example"
