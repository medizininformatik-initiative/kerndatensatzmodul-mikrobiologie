// Eigene Specimen-Instanz, weil der Probentyp hier fachlich trägt: Die
// Katheterspitze IST die Bezugsgröße der Keimzahl. Das gemeinsame
// mii-exa-mikrobio-probe ist absichtlich generisch und könnte das nicht zeigen.
Instance: mii-exa-mikrobio-probe-katheterspitze
InstanceOf: Specimen
Usage: #example
Title: "MII EXA Mikrobio Probe Katheterspitze"
Description: "Katheterspitze als Probenmaterial. Sie hat weder Volumen noch Masse und ist damit selbst die Bezugsgröße der Keimzahl."
* identifier[0].system = "https://example.org/fhir/sid/test-specimen"
* identifier[0].value = "probe-katheterspitze-1"
* status = #available
* type = $sct#119312009 "Catheter tip submitted as specimen"
* subject = Reference(mii-exa-mikrobio-patient)
* receivedTime = "2026-04-02T08:30:00+01:00"
