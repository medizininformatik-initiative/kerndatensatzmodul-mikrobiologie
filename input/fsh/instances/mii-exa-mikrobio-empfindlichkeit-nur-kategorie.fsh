// Der Fall, den die HL7 EU Lab Semantic Workgroup ausdruecklich zulaesst: Das
// Labor berichtet die Kategorie und hat keine MHK gemessen. Auch keine Methode:
// Ohne Messung gibt es kein Messverfahren.
//
// GEAENDERT AM 2026-09-12. Bis dahin stand die Kategorie hier DOPPELT, in value
// und in interpretation — nicht weil die Aussage zweimal gebraucht wurde, sondern
// weil die Norm nur an interpretation haengen konnte. Seit die Norm auch an
// valueCodeableConcept zulaessig ist, steht sie an derselben Stelle wie die
// Kategorie, und interpretation entfaellt. Den anderen Weg zeigt
// mii-exa-mikrobio-empfindlichkeit: Messwert im Wert, Kategorie samt Norm in
// interpretation.
Instance: mii-exa-mikrobio-empfindlichkeit-nur-kategorie
InstanceOf: MII_PR_Mikrobio_Empfindlichkeit
Usage: #example
Title: "MII EXA Mikrobio Empfindlichkeit nur Kategorie"
Description: "Phänotypische Empfindlichkeitstestung, bei der nur die Kategorie berichtet wird und kein Messwert vorliegt; die Norm steht an derselben Stelle wie die Kategorie."
* identifier[analyseBefundCode].system = "https://example.org/fhir/sid/test-lab-results"
* identifier[analyseBefundCode].value = "empf-nur-kategorie-1"
* identifier[analyseBefundCode].assigner = Reference(mii-exa-mikrobio-labor)
* status = #final
* category[observation-category].coding[0] = $observation-category#laboratory "Laboratory"
* category[observation-category].coding[1] = $loinc#26436-6 "Laboratory studies (set)"
* code = $loinc#100044-7 "Cefcapene [Susceptibility]"
* subject = Reference(mii-exa-mikrobio-patient)
* performer = Reference(mii-exa-mikrobio-labor)
* effectiveDateTime = "2026-04-02T10:00:00+01:00"
* valueCodeableConcept = $v3-ObservationInterpretation#R "Resistant"
* valueCodeableConcept.extension[Norm].valueCodeableConcept = MII_CS_Mikrobio_Susceptibility_NORM#EUCAST "EUCAST"
* specimen = Reference(mii-exa-mikrobio-probe)
