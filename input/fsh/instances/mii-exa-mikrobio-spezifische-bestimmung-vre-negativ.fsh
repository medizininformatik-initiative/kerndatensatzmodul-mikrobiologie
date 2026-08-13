// Negativer VRE-Nachweis ueber einen methodenneutralen Nachweistest: 105904-7 legt die
// Methode nicht fest, daher wird sie ueber Observation.method angegeben. Waere die Methode
// bereits im Code enthalten (z. B. 13316-5, Organism specific culture), gehoerte der Befund
// nach MII_PR_Mikrobio_Spezifische_Kultur.
// Es wird bewusst KEINE Resistenzkategorie-Status-Observation erzeugt: Ein negativer
// Nachweis bedeutet, dass kein Erreger vorliegt. VRE-Status = Negative setzt dagegen einen
// vorliegenden, bewertbaren Erreger voraus.
Instance: mii-exa-mikrobio-spezifische-bestimmung-vre-negativ
InstanceOf: MII_PR_Mikrobio_Spezifische_Bestimmung
Usage: #example
Title: "MII EXA Mikrobio Spezifische Bestimmung VRE negativ"
Description: "Negativer VRE-Nachweis: Der Test auf vancomycinresistente Enterokokken ist negativ."
* identifier[analyseBefundCode].system = "https://example.org/fhir/sid/test-lab-results"
* identifier[analyseBefundCode].value = "spez-best-vre-neg-1"
* identifier[analyseBefundCode].assigner.display = "Universitätsklinikum Musterstadt"
* status = #final
* category[mibi-category].coding[loinc-observation] = $loinc#26436-6
* category[mibi-category].coding[observation-category] = $observation-category#laboratory
* category[mibi-category].coding[loinc-microbiology-studies] = $loinc#18725-2 "Mikrobiologie"
* code = $loinc#105904-7 "Vancomycin resistant enterococcus [Presence] in Specimen"
* subject.reference = "Patient/example"
* effectiveDateTime = "2026-04-02T10:00:00+01:00"
* valueCodeableConcept = $sct#260415000 "Not detected (qualifier value)"
* method = $sct#70601000052104 "Real-time polymerase chain reaction technique (qualifier value)"
* specimen.reference = "Specimen/example"
