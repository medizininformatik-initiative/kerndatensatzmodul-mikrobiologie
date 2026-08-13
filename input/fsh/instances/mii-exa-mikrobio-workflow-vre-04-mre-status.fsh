// Workflow-Beispiel 4/4 - abgeleiteter MRE-Status.
//
// derivedFrom und nicht triggeredBy: Der MRE-Status entsteht durch fachliche Bewertung der
// vorliegenden Befunde, er ist keine ausgeloeste Folgeuntersuchung.
//
// Der Status wiederholt bewusst NICHT den Erreger oder die konkrete Resistenz - beides ist
// bereits in Schritt 2 (Identifikation: Enterococcus faecium) und Schritt 3
// (Empfindlichkeit: Vancomycin resistent) abgebildet. Die Aussage hier ist ausschliesslich:
// Dieses Isolat erfuellt die Kriterien einer im Implementierungsleitfaden festgelegten
// MRE-Kategorie, hier VRE.
Instance: mii-exa-mikrobio-workflow-vre-04-mre-status
InstanceOf: MII_PR_Mikrobio_MRE_Status
Usage: #example
Title: "MII EXA Mikrobio Workflow VRE 4 MRE Status"
Description: "Workflow-Kette VRE, Schritt 4: aus Identifikation und Empfindlichkeit abgeleiteter positiver MRE-Status."
* identifier[analyseBefundCode].system = "https://example.org/fhir/sid/test-lab-results"
* identifier[analyseBefundCode].value = "wf-vre-4"
* identifier[analyseBefundCode].assigner.identifier.system = "https://www.medizininformatik-initiative.de/fhir/core/CodeSystem/core-location-identifier"
* identifier[analyseBefundCode].assigner.identifier.value = "DIZ-ID"
* status = #final
* category[mibi-category].coding[loinc-observation] = $loinc#26436-6
* category[mibi-category].coding[observation-category] = $observation-category#laboratory
* category[mibi-category].coding[loinc-microbiology-studies] = $loinc#18725-2 "Mikrobiologie"
* code = MII_CS_Mikrobio_Untersuchungscode#mre-status "MRE-Status"
* subject.reference = "Patient/example"
* effectiveDateTime = "2026-04-03T15:00:00+01:00"
* valueCodeableConcept = $sct#373066001 "Yes"
* derivedFrom[+].reference = "Observation/mii-exa-mikrobio-workflow-vre-02-identifikation"
* derivedFrom[+].reference = "Observation/mii-exa-mikrobio-workflow-vre-03-empfindlichkeit"
* specimen.reference = "Specimen/example"
