// VRE-Status = Positive als Abschluss der diagnostischen Kette in den
// mii-exa-mikrobio-workflow-vre-*-Beispielen: Enterococcus faecium identifiziert
// (Schritt 2), Vancomycinresistenz nachgewiesen (Schritt 3).
//
// derivedFrom zeigt die vollstaendige Ableitung. triggeredBy waere hier falsch: Die
// Bewertung ist keine ausgeloeste Folgeuntersuchung, sondern eine fachliche Ableitung.
//
// Der Erreger und seine Einzelresistenz werden bewusst NICHT wiederholt - beides steht
// bereits in den referenzierten Untersuchungen.
Instance: mii-exa-mikrobio-resistenzkategorie-vre-positiv
InstanceOf: MII_PR_Mikrobio_Resistenzkategorie_Status
Usage: #example
Title: "MII EXA Mikrobio Resistenzkategorie VRE positiv"
Description: "Identifizierter Enterococcus faecium mit nachgewiesener Vancomycinresistenz: VRE-Status Positive, abgeleitet aus Identifikation und Empfindlichkeitstestung."
* identifier[analyseBefundCode].system = "https://example.org/fhir/sid/test-lab-results"
* identifier[analyseBefundCode].value = "reskat-vre-pos"
* identifier[analyseBefundCode].assigner.display = "Universitätsklinikum Musterstadt"
* status = #final
* category[mibi-category].coding[loinc-observation] = $loinc#26436-6
* category[mibi-category].coding[observation-category] = $observation-category#laboratory
* category[mibi-category].coding[loinc-microbiology-studies] = $loinc#18725-2 "Mikrobiologie"
* code = MII_CS_Mikrobio_Resistenzkategorie#vre-status "VRE-Status"
* subject.reference = "Patient/example"
* effectiveDateTime = "2026-04-03T15:00:00+01:00"
* valueCodeableConcept = $sct#10828004 "Positive"
* derivedFrom[+].reference = "Observation/mii-exa-mikrobio-workflow-vre-02-identifikation"
* derivedFrom[+].reference = "Observation/mii-exa-mikrobio-workflow-vre-03-empfindlichkeit"
* specimen.reference = "Specimen/example"
