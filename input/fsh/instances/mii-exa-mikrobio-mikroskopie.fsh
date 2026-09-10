Instance: mii-exa-mikrobio-mikroskopie
InstanceOf: MII_PR_Mikrobio_Allgemeine_Mikroskopie
Usage: #example
Title: "MII EXA Mikrobio Allgemeine Mikroskopie"
Description: "Mikroskopischer Befund als morphologische Gruppe: grampositive Kokken in Haufen."
* identifier[analyseBefundCode].system = "https://example.org/fhir/sid/test-lab-results"
* identifier[analyseBefundCode].value = "mikroskopie-1"
* identifier[analyseBefundCode].assigner = Reference(mii-exa-mikrobio-labor)
* status = #final
* category[observation-category].coding[0] = $observation-category#laboratory "Laboratory"
* category[observation-category].coding[1] = $loinc#26436-6 "Laboratory studies (set)"
* code = $loinc#105059-0 "Microscopic observation [Identifier] in Specimen"
* subject = Reference(mii-exa-mikrobio-patient)
* performer = Reference(mii-exa-mikrobio-labor)
* effectiveDateTime = "2026-04-02T10:00:00+01:00"
* valueCodeableConcept = $sct#70003006 "Gram-positive cocci in clusters (finding)"
* method = $sct#278289002 "Microscopy technique"
* specimen = Reference(mii-exa-mikrobio-probe)
