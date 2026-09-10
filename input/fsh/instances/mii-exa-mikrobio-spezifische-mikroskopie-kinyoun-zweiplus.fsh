// Aus demselben Katalog (Analyt PKINNAT, Kinyounfaerbung, Ergebnis "1-10/GF").
// Hier ist die Faerbung im Code nur als Klasse benannt — "Acid fast stain" —,
// die konkrete Variante steht deshalb in Observation.method. Und hier zeigt
// sich, warum die Stufe der WERT ist und nicht die Interpretation: Sie ist die
// Antwort auf die Frage des ordinalen Codes.
Instance: mii-exa-mikrobio-spezifische-mikroskopie-kinyoun-zweiplus
InstanceOf: MII_PR_Mikrobio_Spezifische_Mikroskopie
Usage: #example
Title: "MII EXA Mikrobio Spezifische Mikroskopie Kinyoun zwei plus"
Description: "Kinyounfärbung mit säurefesten Stäbchen in der Stufe zwei von drei, entsprechend 1–10 pro Gesichtsfeld."
* identifier[analyseBefundCode].system = "https://example.org/fhir/sid/test-lab-results"
* identifier[analyseBefundCode].value = "spez-mikroskopie-kinyoun-1"
* identifier[analyseBefundCode].assigner = Reference(mii-exa-mikrobio-labor)
* status = #final
* category[observation-category].coding[0] = $observation-category#laboratory "Laboratory"
* category[observation-category].coding[1] = $loinc#26436-6 "Laboratory studies (set)"
* code = $loinc#72357-7 "Microscopic observation [Presence] in Specimen by Acid fast stain"
* subject = Reference(mii-exa-mikrobio-patient)
* performer = Reference(mii-exa-mikrobio-labor)
* effectiveDateTime = "2026-04-02T10:00:00+01:00"
* valueCodeableConcept = $sct#441517005 "Present two plus out of three plus"
* method = $sct#708128003 "Acid fast Kinyoun's cold carbolfuchsin stain technique"
* specimen = Reference(mii-exa-mikrobio-probe)
