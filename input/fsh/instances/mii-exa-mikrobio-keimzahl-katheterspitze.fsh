// Keimzahl OHNE Nenner. Bei Katheterspitzen (Roll-Platten-Verfahren nach Maki)
// gibt es weder Volumen noch Masse, auf die sich der Wert beziehen könnte: das
// Ergebnis ist eine Anzahl, und die Bezugsgröße ist die Probe selbst.
//
// Deshalb hier
//   code          564-5 "Colony count [#]" statt 49223-1 "Colony count [#/volume]"
//   valueQuantity [CFU] statt [CFU]/mL
//   specimen      eine eigene Instanz mit dem Typ Katheterspitze
// Zum Vergleich das übliche Konzentrationsbeispiel: mii-exa-mikrobio-keimzahl.
//
// interpretation trägt die Bewertung: Ab 15 KBE je Segment gilt der Befund als
// signifikant. Einen Code für diese Schwellenwertaussage gibt es nicht — SNOMED
// kennt nur Wachstumsdichte (Heavy/Moderate/Scanty/No growth) und
// Wachstumspräsenz (88458008), und beides ist etwas anderes: Eine Spitze mit
// 5 KBE zeigt Wachstum, ist aber nicht signifikant. Genutzt wird deshalb
// `A "Abnormal"`, die FHIR-Standardaussage "der Messwert überschreitet die
// Entscheidungsgrenze".
//
// Der Code liegt außerhalb von MII_VS_Labor_Laborergebnis_Semiquantitativ. Das
// ist zulässig, weil die Bindung extensible ist und das gebundene ValueSet eine
// Dichteskala (+/++/+++) führt, in der eine Schwellenwertaussage nicht vorkommt.
Instance: mii-exa-mikrobio-keimzahl-katheterspitze
InstanceOf: MII_PR_Mikrobio_Keimzahl
Usage: #example
Title: "MII EXA Mikrobio Keimzahl Katheterspitze"
Description: "Keimzahl einer Katheterspitze in koloniebildenden Einheiten ohne Nenner. Die Bezugsgröße steht in Specimen.type."
* identifier[analyseBefundCode].system = "https://example.org/fhir/sid/test-lab-results"
* identifier[analyseBefundCode].value = "keimzahl-katheterspitze-1"
* identifier[analyseBefundCode].assigner.display = "Universitätsklinikum Musterstadt"
* status = #final
* category[observation-category].coding[0] = $observation-category#laboratory "Laboratory"
* category[observation-category].coding[1] = $loinc#26436-6 "Laboratory studies (set)"
* code = $loinc#564-5 "Colony count [#] in Specimen by Visual count"
* subject = Reference(mii-exa-mikrobio-patient)
* effectiveDateTime = "2026-04-02T10:00:00+01:00"
* valueQuantity.value = 32
* valueQuantity.system = $ucum
* valueQuantity.code = #[CFU]
* valueQuantity.unit = "CFU"
* interpretation = $v3-ObservationInterpretation#A "Abnormal"
* method = $sct#410681005 "Count of entities"
* specimen = Reference(mii-exa-mikrobio-probe-katheterspitze)
