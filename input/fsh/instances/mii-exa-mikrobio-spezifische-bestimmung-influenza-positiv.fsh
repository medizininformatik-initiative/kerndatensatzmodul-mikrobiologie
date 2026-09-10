// Zeigt die RICHTUNG von derivedFrom. `A.derivedFrom = B` heisst "A entsteht aus
// B": Der qualitative Nachweis entsteht aus der Messung, also traegt DIESES
// Beispiel den Verweis auf den Ct-Wert und nicht umgekehrt. So zeigt es auch das
// Whitepaper im Kapitel "Relationships between diagnostic steps".
//
// Das Codepaar ist absichtlich achsengleich: 49524-2 und 74039-9 unterscheiden
// sich nur in PROPERTY (PrThr gegen ThreshNum) und SCALE_TYP (Ord gegen Qn) —
// dieselbe Komponente, dasselbe System (XXX, also probenneutral) und dieselbe
// Methode (LP6464-4). Es ist eine Untersuchung, aus der zwei Aussagen berichtet
// werden, und nicht zwei Untersuchungen.
Instance: mii-exa-mikrobio-spezifische-bestimmung-influenza-positiv
InstanceOf: MII_PR_Mikrobio_Spezifische_Bestimmung
Usage: #example
Title: "MII EXA Mikrobio Spezifische Bestimmung Influenza positiv"
Description: "Zielgerichteter molekularer Erregernachweis mit positivem Ergebnis, abgeleitet aus dem berichteten Ct-Wert."
* identifier[analyseBefundCode].system = "https://example.org/fhir/sid/test-lab-results"
* identifier[analyseBefundCode].value = "spez-best-2"
* identifier[analyseBefundCode].assigner = Reference(mii-exa-mikrobio-labor)
* status = #final
* category[observation-category].coding[0] = $observation-category#laboratory "Laboratory"
* category[observation-category].coding[1] = $loinc#26436-6 "Laboratory studies (set)"
* code = $loinc#49524-2 "Influenza virus A H3 RNA [Presence] in Specimen by NAA with probe detection"
* subject = Reference(mii-exa-mikrobio-patient)
* performer = Reference(mii-exa-mikrobio-labor)
* effectiveDateTime = "2026-04-02T10:00:00+01:00"
* valueCodeableConcept = $sct#260373001 "Detected (qualifier value)"
* method = $sct#70601000052104 "Real-time polymerase chain reaction technique"
* derivedFrom = Reference(mii-exa-mikrobio-ct-wert)
* specimen = Reference(mii-exa-mikrobio-probe)
