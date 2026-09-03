Instance: mii-exa-mikrobio-voraussichtliche-empfindlichkeit
InstanceOf: MII_PR_Mikrobio_Voraussichtliche_Empfindlichkeit
Usage: #example
* identifier[analyseBefundCode].system = "https://example.org/fhir/sid/test-lab-results"
* identifier[analyseBefundCode].value = "v-empf-1"
* identifier[analyseBefundCode].assigner.display = "Universitätsklinikum Musterstadt"
* status = #final
* category[observation-category].coding[0] = $observation-category#laboratory "Laboratory"
* category[observation-category].coding[1] = $loinc#26436-6 "Laboratory studies (set)"
// 89489-9 ist WIRKSTOFFSPEZIFISCH (Rifampicin), nicht generisch. Bis 2026-09-02 trug der
// Code hier das Display "Antimicrobial susceptibility predicted from genotype" und behauptete
// damit ein allgemeines Konzept, das er nicht kodiert. Das Beispiel zeigt folglich einen
// Rifampicin-Fall: aus dem Genotyp vorhergesagte Empfindlichkeit gegen Rifampicin.
// Wer ein generisches Beispiel braucht, braucht einen anderen Code — nicht ein anderes Display.
* code = $loinc#89489-9 "rifAMPin [Susceptibility] by Genotype method"
* subject = Reference(mii-exa-mikrobio-patient)
* effectiveDateTime = "2026-04-02T10:00:00+01:00"
* valueCodeableConcept = $v3-ObservationInterpretation#S "Susceptible"
* specimen = Reference(mii-exa-mikrobio-probe)
