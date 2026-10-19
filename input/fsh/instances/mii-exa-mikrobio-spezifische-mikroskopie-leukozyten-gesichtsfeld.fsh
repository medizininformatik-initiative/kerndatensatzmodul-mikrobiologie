// Dieselbe Frage wie beim kategorialen Fall, anderes Antwortformat: Das Labor
// berichtet Leukozyten sowohl als "wenig / maessig viel / reichlich" als auch
// als Zaehlung je Gesichtsfeld (Analyt PGRAM, Ergebnis "leu5 = Leuko 10-25/GF").
// Deshalb laesst die Mengenkomponente neben CodeableConcept auch Quantity und
// Range zu. Der Wert bleibt in beiden Faellen der Nachweis.
//
// /[HPF] ist ein gueltiger UCUM-Code, gegen UCUM 2.2 nachgemessen.
Instance: mii-exa-mikrobio-spezifische-mikroskopie-leukozyten-gesichtsfeld
InstanceOf: MII_PR_Mikrobio_Spezifische_Mikroskopie
Usage: #example
Title: "MII EXA Microbiology Specific Microscopy Leukocytes per Field of View"
Description: "Leukocytes detected in the Gram-stained smear, with the quantity as a count per high-power field — 10 to 25 — instead of a semiquantitative grade."
* identifier[analyseBefundCode].system = "https://example.org/fhir/sid/test-lab-results"
* identifier[analyseBefundCode].value = "spez-mikroskopie-leuko-1"
* identifier[analyseBefundCode].assigner = Reference(mii-exa-mikrobio-labor)
* status = #final
* category[observation-category].coding[0] = $observation-category#laboratory "Laboratory"
* category[observation-category].coding[1] = $loinc#26436-6 "Laboratory studies (set)"
* code = $loinc#72163-9 "Leukocytes [Presence] in Specimen by Gram stain"
* extension[faerbung].valueCodeableConcept = $sct#62777006 "Gram stain method"
* subject = Reference(mii-exa-mikrobio-patient)
* performer = Reference(mii-exa-mikrobio-labor)
* effectiveDateTime = "2026-04-02T10:00:00+01:00"
* valueCodeableConcept = $sct#260373001 "Detected (qualifier value)"
* component[menge].code = $sct#103392008 "Semi-quantitative value"
* component[menge].valueRange.low.value = 10
* component[menge].valueRange.low.unit = "per high-power field"
* component[menge].valueRange.low.system = "http://unitsofmeasure.org"
* component[menge].valueRange.low.code = #/[HPF]
* component[menge].valueRange.high.value = 25
* component[menge].valueRange.high.unit = "per high-power field"
* component[menge].valueRange.high.system = "http://unitsofmeasure.org"
* component[menge].valueRange.high.code = #/[HPF]
* specimen = Reference(mii-exa-mikrobio-probe)
