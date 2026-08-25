// ─────────────────────────────────────────────────────────────────────────────
// MIGRATION 2026-08-25 — BUILD FIX, agreed at Gate A. NOT a modelling change.
//
// The source example carried `subject.reference = "Patient/111"`, which resolves
// to nothing: this module ships no Patient, and Patient belongs to the Person
// module. Simplifier rendered that silently. IG Publisher 2.3.2 does not: its
// DiagnosticReportRenderer.populateSubjectSummary has no null check and throws a
// NullPointerException that ABORTS the whole build. Measured on 2026-08-25:
//   * subject.reference = "Patient/111"  -> build aborts
//   * subject.display only, no reference -> build aborts (it is resolvability,
//                                           not the reference, that matters)
//   * subject resolvable                 -> build completes
// The 26 Observation examples carry the same dangling reference and render fine,
// so this is a renderer defect specific to DiagnosticReport.
//
// The contained form was chosen because it keeps the module's PUBLISHED artefact
// set identical to the source — a separate Patient example would add an artefact
// this module does not own. Revert this block and the `subject` line together.
// ① OPEN: decide the intended long-term form (contained, a real Patient example,
// or a reference into the Person module) and report the renderer defect upstream.
// ─────────────────────────────────────────────────────────────────────────────
Instance: mii-exa-mikrobio-patient-inline
InstanceOf: Patient
Usage: #inline
Description: "Contained placeholder subject — see the note in mii-exa-mikrobio-diagnostic-report.fsh."
* identifier[0].system = "https://example.org/fhir/sid/test-patient"
* identifier[0].value = "111"

Instance: mii-exa-mikrobio-diagnostic-report
InstanceOf: MII_PR_Mikrobio_Diagnostic_Report
Usage: #example
* identifier[befund].type.coding[fillerV2] = $v2-0203#FILL "Filler Identifier"
* identifier[befund].system = "https://example.org/fhir/sid/test-befund"
* identifier[befund].value = "mikrobio-dr-1"
* identifier[befund].assigner.display = "Universitätsklinikum Musterstadt"
* status = #final
* category[lab-category].coding[0] = http://terminology.hl7.org/CodeSystem/v2-0074#LAB "Laboratory"
* category[lab-category].coding[+] = $loinc#26436-6 "Laboruntersuchungen"
* category[mibi-category] = $v2-0074#MB "Microbiology"
* category[mibi-sub-category] = $loinc#92894-5 "Microbiology - bacterial studies"
* code.coding[loinc-labReport] = $loinc#11502-2 "Laborbericht"
* basedOn[0].reference = "ServiceRequest/111"
* contained[0] = mii-exa-mikrobio-patient-inline
* subject = Reference(mii-exa-mikrobio-patient-inline) // MIGRATION: was "Patient/111" — see the note above
* effectiveDateTime = "2026-04-02T10:00:00+01:00"
* issued = "2026-04-02T10:30:00+01:00"
* result[0] = Reference(mii-exa-mikrobio-allgemeine-kultur)
