// VRE-Status = Negative: Enterococcus identifiziert und hinsichtlich der
// Vancomycinresistenz ausreichend bewertet; die Kriterien sind nicht erfuellt.
//
// Abzugrenzen von mii-exa-mikrobio-spezifische-kultur-vre-negativ: Dort ist das Ergebnis
// eines VRE-Nachweistests negativ, es liegt also gar kein Isolat vor. Hier liegt ein
// Enterococcus vor, er ist nur kein VRE.
Instance: mii-exa-mikrobio-resistenzkategorie-vre-negativ
InstanceOf: MII_PR_Mikrobio_Resistenzkategorie_Status
Usage: #example
Title: "MII EXA Mikrobio Resistenzkategorie VRE negativ"
Description: "Identifizierter Enterococcus ohne Vancomycinresistenz: VRE-Status Negative."
* identifier[analyseBefundCode].system = "https://example.org/fhir/sid/test-lab-results"
* identifier[analyseBefundCode].value = "reskat-vre-neg"
* identifier[analyseBefundCode].assigner.display = "Universitätsklinikum Musterstadt"
* status = #final
* category[mibi-category].coding[loinc-observation] = $loinc#26436-6 "Laboratory studies (set)"
* category[mibi-category].coding[observation-category] = $observation-category#laboratory "Laboratory"
* category[mibi-category].coding[loinc-microbiology-studies] = $loinc#18725-2 "Microbiology studies (set)"
* code = MII_CS_Mikrobio_Resistenzkategorie#vre-status "VRE-Status"
* subject = Reference(mii-exa-mikrobio-patient)
* effectiveDateTime = "2026-04-03T15:00:00+01:00"
* valueCodeableConcept = $sct#260385009 "Negative"
* derivedFrom[+].reference = "Observation/mii-exa-mikrobio-workflow-vre-02-identifikation"
* derivedFrom[+].reference = "Observation/mii-exa-mikrobio-empfindlichkeit"
* specimen = Reference(mii-exa-mikrobio-probe)
