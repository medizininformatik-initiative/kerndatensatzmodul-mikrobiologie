// Aus dem realen Ergebniskatalog eines deutschen Labors (Analyt PAURA,
// Auraminfaerbung, Ergebnis "sf neg"). Die Faerbung steht im Code, daher keine
// Methode.
Instance: mii-exa-mikrobio-spezifische-mikroskopie-auramin-negativ
InstanceOf: MII_PR_Mikrobio_Spezifische_Mikroskopie
Usage: #example
Title: "MII EXA Mikrobio Spezifische Mikroskopie Auramin negativ"
Description: "Auraminfärbung ohne Nachweis säurefester Stäbchen: der negative Fall der spezifischen Mikroskopie."
* identifier[analyseBefundCode].system = "https://example.org/fhir/sid/test-lab-results"
* identifier[analyseBefundCode].value = "spez-mikroskopie-auramin-neg-1"
* identifier[analyseBefundCode].assigner = Reference(mii-exa-mikrobio-labor)
* status = #final
* category[observation-category].coding[0] = $observation-category#laboratory "Laboratory"
* category[observation-category].coding[1] = $loinc#26436-6 "Laboratory studies (set)"
* code = $loinc#87243-2 "Microscopic observation [Presence] in Specimen by Auramine fluorochrome stain"
* subject = Reference(mii-exa-mikrobio-patient)
* performer = Reference(mii-exa-mikrobio-labor)
* effectiveDateTime = "2026-04-02T10:00:00+01:00"
* valueCodeableConcept = $sct#260413007 "None"
* specimen = Reference(mii-exa-mikrobio-probe)
