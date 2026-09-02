// Workflow-Beispiel 2/4 - optionale weiterfuehrende Identifikation.
//
// Dieser Schritt ist NICHT zwingend: Bei einem erregerspezifischen Nachweis ist das Ziel
// bereits im Testcode benannt. Er wird hier dokumentiert, weil die Speziesdifferenzierung
// zusaetzliche Information liefert. Entfaellt er, verweist Schritt 3 (Empfindlichkeit)
// direkt auf Schritt 1 und Schritt 4 fuehrt ihn nicht in derivedFrom.
//
// triggeredBy mit type = reflex: Diese Untersuchung wurde aufgrund des Ergebnisses der
// vorangegangenen Untersuchung als Folgediagnostik durchgefuehrt.
Instance: mii-exa-mikrobio-workflow-vre-02-identifikation
InstanceOf: MII_PR_Mikrobio_Allgemeine_Bestimmung
Usage: #example
Title: "MII EXA Mikrobio Workflow VRE 2 Identifikation"
Description: "Workflow-Kette VRE, Schritt 2: weiterführende Identifikation des Isolats als Enterococcus faecium, ausgelöst durch den positiven Nachweis."
* identifier[analyseBefundCode].system = "https://example.org/fhir/sid/test-lab-results"
* identifier[analyseBefundCode].value = "wf-vre-2"
* identifier[analyseBefundCode].assigner.display = "Universitätsklinikum Musterstadt"
* status = #final
* category[mibi-category].coding[loinc-observation] = $loinc#26436-6 "Laboratory studies (set)"
* category[mibi-category].coding[observation-category] = $observation-category#laboratory "Laboratory"
* category[mibi-category].coding[loinc-microbiology-studies] = $loinc#18725-2 "Microbiology studies (set)"
* code = $loinc#41852-5 "Microorganism or agent identified in Specimen"
* subject.reference = "Patient/example"
* effectiveDateTime = "2026-04-03T09:00:00+01:00"
* extension[triggeredBy-r5].extension[observation].valueReference = Reference(mii-exa-mikrobio-workflow-vre-01-kultur)
* extension[triggeredBy-r5].extension[type].valueCode = #reflex
* valueCodeableConcept = $sct#90272000 "Enterococcus faecium"
* method = $sct#83581000052107 "Matrix assisted laser desorption ionization time of flight mass spectrometry technique (qualifier value)"
* specimen.reference = "Specimen/example"
