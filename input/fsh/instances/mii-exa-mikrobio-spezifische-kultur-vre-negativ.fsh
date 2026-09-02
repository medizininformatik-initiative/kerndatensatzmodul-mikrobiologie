// Negativer VRE-Nachweis, kulturell durchgefuehrt. Die Methode ist im LOINC-Code
// enthalten (Organism specific culture), daher wird dieses Profil und nicht
// MII_PR_Mikrobio_Spezifische_Bestimmung verwendet.
Instance: mii-exa-mikrobio-spezifische-kultur-vre-negativ
InstanceOf: MII_PR_Mikrobio_Spezifische_Kultur
Usage: #example
Title: "MII EXA Mikrobio Spezifische Kultur VRE negativ"
Description: "Negativer VRE-Nachweis mittels erregerspezifischer Kultur: kein Wachstum vancomycinresistenter Enterokokken."
* identifier[analyseBefundCode].system = "https://example.org/fhir/sid/test-lab-results"
* identifier[analyseBefundCode].value = "spez-kultur-vre-neg-1"
* identifier[analyseBefundCode].assigner.display = "Universitätsklinikum Musterstadt"
* status = #final
* category[mibi-category].coding[loinc-observation] = $loinc#26436-6 "Laboratory studies (set)"
* category[mibi-category].coding[observation-category] = $observation-category#laboratory "Laboratory"
* category[mibi-category].coding[loinc-microbiology-studies] = $loinc#18725-2 "Microbiology studies (set)"
* code = $loinc#13316-5 "Vancomycin resistant enterococcus [Presence] in Specimen by Organism specific culture"
* subject.reference = "Patient/example"
* effectiveDateTime = "2026-04-02T10:00:00+01:00"
* valueCodeableConcept = $sct#264868006 "No growth (qualifier value)"
* method = $sct#703752003 "Organism specific culture"
* specimen.reference = "Specimen/example"
