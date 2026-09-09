Instance: mii-exa-mikrobio-spezifische-kultur
InstanceOf: MII_PR_Mikrobio_Spezifische_Kultur
Usage: #example
Title: "MII EXA Mikrobio Spezifische Kultur"
Description: "Zielgerichtete kulturelle Untersuchung auf einen vordefinierten Erreger, hier mit Wachstumsnachweis."
* identifier[analyseBefundCode].system = "https://example.org/fhir/sid/test-lab-results"
* identifier[analyseBefundCode].value = "spez-kultur-1"
* identifier[analyseBefundCode].assigner = Reference(mii-exa-mikrobio-labor)
* status = #final
* category[observation-category].coding[0] = $observation-category#laboratory "Laboratory"
* category[observation-category].coding[1] = $loinc#26436-6 "Laboratory studies (set)"
* code = $loinc#6547-4 "Rotavirus identified in Specimen by Organism specific culture"
* subject = Reference(mii-exa-mikrobio-patient)
* performer = Reference(mii-exa-mikrobio-labor)
* effectiveDateTime = "2026-04-02T10:00:00+01:00"
* valueCodeableConcept = $sct#365698005 "Organism growth"
* method = $sct#703752003 "Organism specific culture"
* specimen = Reference(mii-exa-mikrobio-probe)
