// KEIN derivedFrom hier, und das ist der Punkt. `A.derivedFrom = B` heisst "A
// entsteht aus B" — der qualitative Nachweis entsteht aus dieser Messung, nicht
// umgekehrt. Der Verweis steht deshalb am Nachweis:
// mii-exa-mikrobio-spezifische-bestimmung-influenza-positiv verweist mit
// derivedFrom hierher. Bis 2026-09-10 stand er hier und zeigte auf einen
// NEGATIVEN Nachweis — falsche Richtung und fachlich unmoeglich, denn ein Ct von
// 21,3 ist ein starkes Positiv.
//
// `derivedFrom` bleibt am Profil trotzdem Must Support: Ein Ct-Wert kann seinerseits
// aus einer vorangegangenen Untersuchung entstehen.
Instance: mii-exa-mikrobio-ct-wert
InstanceOf: MII_PR_Mikrobio_Ct_Wert
Usage: #example
Title: "MII EXA Mikrobio Ct Wert"
Description: "Zyklusschwellenwert einer Echtzeit-PCR auf Influenza A H3."
* identifier[analyseBefundCode].system = "https://example.org/fhir/sid/test-lab-results"
* identifier[analyseBefundCode].value = "ct-1"
* identifier[analyseBefundCode].assigner = Reference(mii-exa-mikrobio-labor)
* status = #final
* category[observation-category].coding[0] = $observation-category#laboratory "Laboratory"
* category[observation-category].coding[1] = $loinc#26436-6 "Laboratory studies (set)"
* code = $loinc#74039-9 "Influenza virus A H3 RNA [Cycle Threshold #] in Specimen by NAA with probe detection"
* subject = Reference(mii-exa-mikrobio-patient)
* performer = Reference(mii-exa-mikrobio-labor)
* effectiveDateTime = "2026-04-02T10:00:00+01:00"
* valueQuantity.value = 21.3
* valueQuantity.unit = "1"
* valueQuantity.system = $ucum
* valueQuantity.code = #1
* method = $sct#70601000052104 "Real-time polymerase chain reaction technique"
* specimen = Reference(mii-exa-mikrobio-probe)
