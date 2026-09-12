// Negativer VRE-Nachweis, kulturell durchgefuehrt. Die Methode ist im LOINC-Code
// enthalten (Organism specific culture); das Ergebnis ist trotzdem "Not detected" und
// nicht "No growth", weil die Kultur schon im Code steht — siehe Ballotfrage 7 im Intro
// des Profils.
Instance: mii-exa-mikrobio-spezifische-kultur-vre-negativ
InstanceOf: MII_PR_Mikrobio_Spezifische_Bestimmung
Usage: #example
Title: "MII EXA Mikrobio Spezifische Kultur VRE negativ"
Description: "Negativer VRE-Nachweis mittels erregerspezifischer Kultur."
* identifier[analyseBefundCode].system = "https://example.org/fhir/sid/test-lab-results"
* identifier[analyseBefundCode].value = "spez-kultur-vre-neg-1"
* identifier[analyseBefundCode].assigner = Reference(mii-exa-mikrobio-labor)
* status = #final
* category[observation-category].coding[0] = $observation-category#laboratory "Laboratory"
* category[observation-category].coding[1] = $loinc#26436-6 "Laboratory studies (set)"
* code = $loinc#13316-5 "Vancomycin resistant enterococcus [Presence] in Specimen by Organism specific culture"
* subject = Reference(mii-exa-mikrobio-patient)
* performer = Reference(mii-exa-mikrobio-labor)
* effectiveDateTime = "2026-04-02T10:00:00+01:00"
* valueCodeableConcept = $sct#260415000 "Not detected (qualifier value)"
* method = $sct#703752003 "Organism specific culture"
* specimen = Reference(mii-exa-mikrobio-probe)
