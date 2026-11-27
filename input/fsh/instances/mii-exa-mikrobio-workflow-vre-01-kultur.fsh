// Workflow-Beispiel 1/4 - zielgerichtete Kultur, kultureller Nachweis.
//
// Kette (Abgrenzungsseite, "Diagnostische Kette bei positivem Nachweis"):
//   zielgerichtete Kultur (Spezifische Bestimmung)
//     <- Identifizierung des gewachsenen Isolats (triggeredBy)
//     <- Empfindlichkeit (triggeredBy)
//     <- Resistenzkategorie-Status (derivedFrom)
//
// Auf dem kulturellen Weg steht Detected erst fest, wenn das gewachsene Isolat
// identifiziert und getestet ist; die Identifizierung ist hier deshalb
// Voraussetzung und nicht optional. Ein vorlaeufiges Ergebnis waere eine fruehere
// Version DIESER Observation (status preliminary), keine eigene, verknuepfte.
// Die Verweise laufen trotzdem von den Folgeschritten zur Kultur: Sie ist der
// Untersuchungsschritt, aus dem das Isolat stammt (wie im EU-IG).
//
// Der direkte Nachweis (molekular) ist anders aufgebaut: code 105904-7, value
// Detected, method Real-time PCR; das Ergebnis liegt dort zuerst vor, und bei
// einem erregerspezifischen Nachweis kann die Identifizierung entfallen. Siehe
// mii-exa-mikrobio-spezifische-bestimmung-vre-negativ fuer den Aufbau.
Instance: mii-exa-mikrobio-workflow-vre-01-kultur
InstanceOf: MII_PR_Mikrobio_Spezifische_Bestimmung
Usage: #example
Title: "MII EXA Mikrobio Workflow VRE 1 zielgerichtete Kultur"
Description: "Workflow VRE, Schritt 1: zielgerichtete VRE-Kultur; Detected steht nach Schritt 2 und 3 fest."
* identifier[analyseBefundCode].system = "https://example.org/fhir/sid/test-lab-results"
* identifier[analyseBefundCode].value = "wf-vre-1"
* identifier[analyseBefundCode].assigner = Reference(mii-exa-mikrobio-labor)
* status = #final
* category[observation-category].coding[0] = $observation-category#laboratory "Laboratory"
* category[observation-category].coding[1] = $loinc#26436-6 "Laboratory studies (set)"
* code = $loinc#13316-5 "Vancomycin resistant enterococcus [Presence] in Specimen by Organism specific culture"
* subject = Reference(mii-exa-mikrobio-patient)
* performer = Reference(mii-exa-mikrobio-labor)
* effectiveDateTime = "2026-04-02T10:00:00+01:00"
* valueCodeableConcept = $sct#260373001 "Detected (qualifier value)"
* method = $sct#703752003 "Organism specific culture"
* specimen = Reference(mii-exa-mikrobio-probe)
