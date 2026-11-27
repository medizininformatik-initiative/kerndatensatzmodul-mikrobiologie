// Isolat des E. coli aus der Urinkultur, als eigene Probe (optional, siehe
// probe.md "Isolat als eigene Probe"). Identifizierung, Empfindlichkeit und
// MRGN-Klasse referenzieren das Isolat; Kultur und Keimzahl bleiben an der
// Urinprobe, weil die Keimzahl je Milliliter Urin gilt. collected[x] ist der
// Entnahmezeitpunkt des Urins: FHIR meint den physiologisch relevanten
// Zeitpunkt, und das Biobank-Basisprofil verlangt das Element.
Instance: mii-exa-mikrobio-probe-urin-isolat
InstanceOf: MII_PR_Mikrobio_Probe
Usage: #example
Title: "MII EXA Mikrobio Probe Urin Isolat"
Description: "Isolat des Escherichia coli aus der Urinkultur, parent: Urinprobe."
* identifier[0].system = "https://example.org/fhir/sid/test-specimen"
* identifier[0].value = "probe-urin-1-isolat-1"
* status = #available
* type = $sct#119303007 "Microbial isolate"
* subject = Reference(mii-exa-mikrobio-patient)
* parent = Reference(mii-exa-mikrobio-probe-urin)
* collection.collectedDateTime = "2026-05-04T08:00:00+01:00"
