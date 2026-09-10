// Der Fall, den das EU-Datenmodell in Zeile 46 des Blattes "Phenotypic
// susceptibility" ausdruecklich zulaesst: Das Labor berichtet die Kategorie und
// hat keine MHK gemessen. Beide Invarianten des Profils greifen hier —
// interpretation ist vorhanden, und ihr Coding stimmt mit dem des Werts
// ueberein. Auch keine Methode: Ohne Messung gibt es kein Messverfahren.
Instance: mii-exa-mikrobio-empfindlichkeit-nur-kategorie
InstanceOf: MII_PR_Mikrobio_Empfindlichkeit
Usage: #example
Title: "MII EXA Mikrobio Empfindlichkeit nur Kategorie"
Description: "Phänotypische Empfindlichkeitstestung, bei der nur die Kategorie berichtet wird und kein Messwert vorliegt."
* identifier[analyseBefundCode].system = "https://example.org/fhir/sid/test-lab-results"
* identifier[analyseBefundCode].value = "empf-nur-kategorie-1"
* identifier[analyseBefundCode].assigner = Reference(mii-exa-mikrobio-labor)
* status = #final
* category[observation-category].coding[0] = $observation-category#laboratory "Laboratory"
* category[observation-category].coding[1] = $loinc#26436-6 "Laboratory studies (set)"
* code = $loinc#100044-7 "Cefcapene [Susceptibility]"
* subject = Reference(mii-exa-mikrobio-patient)
* performer = Reference(mii-exa-mikrobio-labor)
* effectiveDateTime = "2026-04-02T10:00:00+01:00"
* valueCodeableConcept = $v3-ObservationInterpretation#R "Resistant"
* interpretation = $v3-ObservationInterpretation#R "Resistant"
* interpretation.extension[Norm].valueCodeableConcept = MII_CS_Mikrobio_Susceptibility_NORM#EUCAST "EUCAST"
* specimen = Reference(mii-exa-mikrobio-probe)
