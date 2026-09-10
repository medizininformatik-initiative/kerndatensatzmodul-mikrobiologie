// Der Fall, der bis 2026-09-10 nicht abbildbar war, aus dem Katalog des
// rueckmeldenden Labors (Analyt PGRAM, Ergebnis "pko1 = wenig grampositive
// Kokken"): Morphologie UND Menge in einer Aussage. Die Morphologie ist der
// Wert, die Menge die Komponente.
//
// Der Code 664-3 traegt die Faerbung, deshalb bleibt Observation.method frei —
// und das Element ist 0..1, koennte Faerbung und Mikroskopieverfahren also
// nicht beide tragen.
Instance: mii-exa-mikrobio-mikroskopie-gram-kokken-wenig
InstanceOf: MII_PR_Mikrobio_Allgemeine_Mikroskopie
Usage: #example
Title: "MII EXA Mikrobio Allgemeine Mikroskopie wenig grampositive Kokken"
Description: "Grampräparat mit wenig grampositiven Kokken: die Morphologie als Ergebnis, die semiquantitative Menge als Komponente."
* identifier[analyseBefundCode].system = "https://example.org/fhir/sid/test-lab-results"
* identifier[analyseBefundCode].value = "mikroskopie-gram-1"
* identifier[analyseBefundCode].assigner = Reference(mii-exa-mikrobio-labor)
* status = #final
* category[observation-category].coding[0] = $observation-category#laboratory "Laboratory"
* category[observation-category].coding[1] = $loinc#26436-6 "Laboratory studies (set)"
* code = $loinc#664-3 "Microscopic observation [Identifier] in Specimen by Gram stain"
* subject = Reference(mii-exa-mikrobio-patient)
* performer = Reference(mii-exa-mikrobio-labor)
* effectiveDateTime = "2026-04-02T10:00:00+01:00"
* valueCodeableConcept = $sct#70003006 "Gram-positive cocci in clusters (finding)"
* component[menge].valueCodeableConcept = $sct#57176003 "Few"
* specimen = Reference(mii-exa-mikrobio-probe)
