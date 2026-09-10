// Der methodenneutrale Weg des EU-Datenmodells: 41852-5 sagt nicht, WIE
// untersucht wurde, deshalb weist erst Observation.method die Untersuchung als
// Kultur aus — genau das verlangt das Invariant
// allgemeine-kultur-method-with-neutral-code. Das Labor unterscheidet aerobe und
// anaerobe Bebruetung nicht und verwendet daher den oberbegrifflichen
// Methodencode 702658000.
Instance: mii-exa-mikrobio-allgemeine-kultur-methodenneutral
InstanceOf: MII_PR_Mikrobio_Allgemeine_Kultur
Usage: #example
Title: "MII EXA Mikrobio Allgemeine Kultur methodenneutraler Code"
Description: "Ungerichtete kulturelle Anzucht ohne Wachstum mit dem methodenneutralen Untersuchungscode 41852-5: Erst die Methode weist die Untersuchung als Kultur aus."
* identifier[analyseBefundCode].system = "https://example.org/fhir/sid/test-lab-results"
* identifier[analyseBefundCode].value = "allg-kultur-2"
* identifier[analyseBefundCode].assigner = Reference(mii-exa-mikrobio-labor)
* status = #final
* category[observation-category].coding[0] = $observation-category#laboratory "Laboratory"
* category[observation-category].coding[1] = $loinc#26436-6 "Laboratory studies (set)"
* code = $loinc#41852-5 "Microorganism or agent identified in Specimen"
* subject = Reference(mii-exa-mikrobio-patient)
* performer = Reference(mii-exa-mikrobio-labor)
* effectiveDateTime = "2026-04-02T10:00:00+01:00"
* valueCodeableConcept = $sct#264868006 "No growth (qualifier value)"
* method = $sct#702658000 "Microbial culture technique"
* specimen = Reference(mii-exa-mikrobio-probe)
