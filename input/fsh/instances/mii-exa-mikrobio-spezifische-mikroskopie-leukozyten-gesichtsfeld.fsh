// Dieselbe Frage wie beim kategorialen Fall, anderes Antwortformat: Das Labor
// berichtet Leukozyten sowohl als "wenig / maessig viel / reichlich" als auch
// als Zaehlung je Gesichtsfeld (Analyt PGRAM, Ergebnis "leu5 = Leuko 10-25/GF").
// Deshalb laesst dieses Profil neben CodeableConcept auch Quantity und Range zu.
//
// /[HPF] ist ein gueltiger UCUM-Code, gegen UCUM 2.2 nachgemessen.
Instance: mii-exa-mikrobio-spezifische-mikroskopie-leukozyten-gesichtsfeld
InstanceOf: MII_PR_Mikrobio_Spezifische_Mikroskopie
Usage: #example
Title: "MII EXA Mikrobio Spezifische Mikroskopie Leukozyten je Gesichtsfeld"
Description: "Leukozyten im Grampräparat als Zählung je Gesichtsfeld, 10 bis 25, statt als semiquantitative Stufe."
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
* valueRange.low.value = 10
* valueRange.low.unit = "je Gesichtsfeld"
* valueRange.low.system = "http://unitsofmeasure.org"
* valueRange.low.code = #/[HPF]
* valueRange.high.value = 25
* valueRange.high.unit = "je Gesichtsfeld"
* valueRange.high.system = "http://unitsofmeasure.org"
* valueRange.high.code = #/[HPF]
* specimen = Reference(mii-exa-mikrobio-probe)
