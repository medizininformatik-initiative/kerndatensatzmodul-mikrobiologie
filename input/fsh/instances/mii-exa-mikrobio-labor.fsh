// Gemeinsames durchfuehrendes Labor aller Beispiele dieses Moduls, nach dem
// Muster von mii-exa-mikrobio-patient und mii-exa-mikrobio-probe.
//
// Es ersetzt den Freitext, der bisher nur als identifier.assigner.display in den
// Beispielen stand, durch eine aufloesbare Referenz und fuellt zugleich den
// performer, den jede Observation tragen sollte: Ein mikrobiologischer Befund
// ohne durchfuehrendes Labor ist unvollstaendig.
Instance: mii-exa-mikrobio-labor
InstanceOf: Organization
Usage: #example
Title: "MII EXA Mikrobio Labor"
Description: "Durchführendes mikrobiologisches Labor der Beispiele dieses Moduls."
* identifier[0].system = "https://example.org/fhir/sid/test-organizations"
* identifier[0].value = "mibi-labor-1"
* active = true
* name = "Universitätsklinikum Musterstadt"
