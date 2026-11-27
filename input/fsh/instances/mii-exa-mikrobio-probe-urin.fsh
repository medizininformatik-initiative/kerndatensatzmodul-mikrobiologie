// Urinprobe fuer die Workflow-Kette allgemeine Kultur. Ein eigener, konkreter
// Probentyp statt der generischen mii-exa-mikrobio-probe, weil die Keimzahl je
// Milliliter nur mit einem Fluessigmaterial Sinn ergibt.
Instance: mii-exa-mikrobio-probe-urin
InstanceOf: MII_PR_Mikrobio_Probe
Usage: #example
Title: "MII EXA Mikrobio Probe Urin"
Description: "Mittelstrahlurin, Probe der Workflow-Kette allgemeine Kultur."
* identifier[0].system = "https://example.org/fhir/sid/test-specimen"
* identifier[0].value = "probe-urin-1"
* status = #available
* type = $sct#258574006 "Mid-stream urine specimen"
* subject = Reference(mii-exa-mikrobio-patient)
* receivedTime = "2026-05-04T08:30:00+01:00"
* collection.collectedDateTime = "2026-05-04T08:00:00+01:00"
