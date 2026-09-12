// Aus demselben Katalog (Analyt PKINNAT, Kinyounfaerbung, Ergebnis "1-10/GF").
// Hier ist die Faerbung im Code nur als Klasse benannt — "Acid fast stain" —,
// die konkrete Variante steht deshalb in extension[faerbung]. Und hier zeigt
// sich die Aufteilung von Nachweis und Menge: Der Wert beantwortet die Frage
// des Codes, die Stufe steht in component[menge].
Instance: mii-exa-mikrobio-spezifische-mikroskopie-kinyoun-zweiplus
InstanceOf: MII_PR_Mikrobio_Spezifische_Mikroskopie
Usage: #example
Title: "MII EXA Mikrobio Spezifische Mikroskopie Kinyoun zwei plus"
Description: "Kinyounfärbung mit Nachweis säurefester Stäbchen, in der Stufe zwei von drei als Mengenkomponente — entsprechend 1–10 pro Gesichtsfeld."
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
* valueCodeableConcept = $sct#260373001 "Detected (qualifier value)"
* component[menge].valueCodeableConcept = $sct#441517005 "Present two plus out of three plus"
* extension[faerbung].valueCodeableConcept = $sct#36878004 "Acid fast Kinyoun's cold carbolfuchsin stain method"
* specimen = Reference(mii-exa-mikrobio-probe)
