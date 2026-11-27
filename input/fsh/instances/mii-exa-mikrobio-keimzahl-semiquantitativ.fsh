// Semiquantitative Keimzahl ohne Zaehlung, wie sie beim Ausstrich berichtet wird
// (Ballotkommentierung, 2026-11-26): ordinaler Code 565-2, Wert aus dem
// Semiquantitativ-ValueSet des Labormoduls.
Instance: mii-exa-mikrobio-keimzahl-semiquantitativ
InstanceOf: MII_PR_Mikrobio_Keimzahl
Usage: #example
Title: "MII EXA Mikrobio Keimzahl semiquantitativ"
Description: "Semiquantitative Keimzahl ohne Zählung: ++ beim Ausstrich."
* identifier[analyseBefundCode].system = "https://example.org/fhir/sid/test-lab-results"
* identifier[analyseBefundCode].value = "keimzahl-semiquant-1"
* identifier[analyseBefundCode].assigner = Reference(mii-exa-mikrobio-labor)
* status = #final
* category[observation-category].coding[0] = $observation-category#laboratory "Laboratory"
* category[observation-category].coding[1] = $loinc#26436-6 "Laboratory studies (set)"
* code = $loinc#565-2 "Colony count [#] in Specimen Qualitative by Visual count"
* subject = Reference(mii-exa-mikrobio-patient)
* performer = Reference(mii-exa-mikrobio-labor)
* effectiveDateTime = "2026-04-02T10:00:00+01:00"
* valueCodeableConcept = $sct#260348001 "Present ++ out of ++++ (qualifier value)"
* specimen = Reference(mii-exa-mikrobio-probe)
