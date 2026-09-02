// Workflow-Beispiel 1/4 - positiver zielgerichteter Nachweis.
//
// Kette: Positiver zielgerichteter Nachweis (Spezifische Kultur oder Spezifische Bestimmung)
//        -> ggf. weiterfuehrende Identifikation
//        -> Empfindlichkeit
//        -> Klassifikation
//
// "ggf." ist fachlich wichtig: Bei einem bereits erregerspezifischen Nachweis ist das Ziel
// im Testcode definiert, eine separate Identifikation ist dann nicht zwingend. Sie wird hier
// gezeigt, weil die Speziesdifferenzierung (E. faecium vs. E. faecalis) klinisch relevant
// ist; entfaellt sie, verweist die Empfindlichkeit direkt auf diese Observation.
//
// Der nicht-kulturelle Weg ist identisch aufgebaut, nur mit
// MII_PR_Mikrobio_Spezifische_Bestimmung, code 105904-7, value Detected und
// method Real-time PCR - siehe mii-exa-mikrobio-spezifische-bestimmung-vre-negativ
// fuer den Aufbau dieses Profils.
Instance: mii-exa-mikrobio-workflow-vre-01-kultur
InstanceOf: MII_PR_Mikrobio_Spezifische_Kultur
Usage: #example
Title: "MII EXA Mikrobio Workflow VRE 1 Kultur positiv"
Description: "Workflow-Kette VRE, Schritt 1: positiver VRE-Nachweis mittels erregerspezifischer Kultur."
* identifier[analyseBefundCode].system = "https://example.org/fhir/sid/test-lab-results"
* identifier[analyseBefundCode].value = "wf-vre-1"
* identifier[analyseBefundCode].assigner.display = "Universitätsklinikum Musterstadt"
* status = #final
* category[mibi-category].coding[loinc-observation] = $loinc#26436-6 "Laboratory studies (set)"
* category[mibi-category].coding[observation-category] = $observation-category#laboratory "Laboratory"
* category[mibi-category].coding[loinc-microbiology-studies] = $loinc#18725-2 "Microbiology studies (set)"
* code = $loinc#13316-5 "Vancomycin resistant enterococcus [Presence] in Specimen by Organism specific culture"
* subject = Reference(mii-exa-mikrobio-patient)
* effectiveDateTime = "2026-04-02T10:00:00+01:00"
* valueCodeableConcept = $sct#365698005 "Organism growth"
* method = $sct#703752003 "Organism specific culture"
* specimen = Reference(mii-exa-mikrobio-probe)
