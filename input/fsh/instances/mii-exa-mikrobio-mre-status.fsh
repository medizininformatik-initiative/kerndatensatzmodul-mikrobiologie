// MRE-Status = No: Das Isolat liegt vor und wurde hinsichtlich der relevanten
// MRE-Kriterien vollstaendig bewertet; keine der im Implementierungsleitfaden
// festgelegten Kategorien ist erfuellt.
//
// Abzugrenzen vom negativen Ergebnis eines zielgerichteten Erregernachweises (siehe
// mii-exa-mikrobio-spezifische-bestimmung-vre-negativ): Dort liegt gar kein Isolat vor,
// und diese Observation entfaellt.
//
// Waere keine ausreichende Bewertung moeglich, stuende hier nicht "No", sondern
// dataAbsentReason.
Instance: mii-exa-mikrobio-mre-status
InstanceOf: MII_PR_Mikrobio_MRE_Status
Usage: #example
Title: "MII EXA Mikrobio MRE Status negativ"
Description: "Bewertetes Isolat, das keine der im Implementierungsleitfaden festgelegten MRE-Kategorien erfüllt."
* identifier[analyseBefundCode].system = "https://example.org/fhir/sid/test-lab-results"
* identifier[analyseBefundCode].value = "mre-status-1"
* identifier[analyseBefundCode].assigner.identifier.system = "https://www.medizininformatik-initiative.de/fhir/core/CodeSystem/core-location-identifier"
* identifier[analyseBefundCode].assigner.identifier.value = "DIZ-ID"
* status = #final
* category[mibi-category].coding[loinc-observation] = $loinc#26436-6
* category[mibi-category].coding[observation-category] = $observation-category#laboratory
* category[mibi-category].coding[loinc-microbiology-studies] = $loinc#18725-2 "Mikrobiologie"
* code = MII_CS_Mikrobio_Untersuchungscode#mre-status "MRE-Status"
* subject.reference = "Patient/example"
* effectiveDateTime = "2026-04-02T10:00:00+01:00"
* valueCodeableConcept = $sct#373067005 "No"
// Bewertungsgrundlage: Empfindlichkeitsbefund und die MRGN-Klassifikation, die ihrerseits
// "Keine MRGN-Klasse" ergeben hat.
* derivedFrom[+].reference = "Observation/mii-exa-mikrobio-empfindlichkeit"
* derivedFrom[+].reference = "Observation/mii-exa-mikrobio-mrgn-klasse-negativ"
* specimen.reference = "Specimen/example"
