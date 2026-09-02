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
// RESOLVED 2026-09-02: the ① OPEN question below was decided in favour of a real
// Patient example. mii-exa-mikrobio-patient now exists and every example in the
// module — this report and all 26 Observations — references it, which also cleared
// the 52 unresolvable-reference errors the Observations carried. The contained
// placeholder mii-exa-mikrobio-patient-inline was removed with it.
//
// The cost is the one the migration named: the module's published artefact set now
// carries two examples the source did not have (Patient and Specimen). That was the
// operator's call on 2026-09-02, taken knowingly. Patient is still modelled by the
// Person module; this example claims no profile and adds no demography.
//
// The renderer defect itself is UNFIXED upstream and still worth reporting:
// DiagnosticReportRenderer.populateSubjectSummary has no null check.
// ─────────────────────────────────────────────────────────────────────────────

Instance: mii-exa-mikrobio-diagnostic-report
InstanceOf: MII_PR_Mikrobio_Diagnostic_Report
Usage: #example
* identifier[befund].type.coding[fillerV2] = $v2-0203#FILL "Filler Identifier"
* identifier[befund].system = "https://example.org/fhir/sid/test-befund"
* identifier[befund].value = "mikrobio-dr-1"
* identifier[befund].assigner.display = "Universitätsklinikum Musterstadt"
* status = #final
// Drei eigenstaendige Kategorien: die des Parents (Labor, zwei Pflicht-Codings),
// die mikrobiologische, und der Befundtyp.
* category[v2-lab].coding[0] = $v2-0074#LAB "Laboratory"
* category[v2-lab].coding[1] = $loinc#26436-6 "Laboratory studies (set)"
* category[mibi-category] = $v2-0074#MB "Microbiology"
* category[mibi-sub-category] = $loinc#92894-5 "Microbiology - bacterial studies"
* code.coding[loinc-labReport] = $loinc#11502-2 "Laboratory report"
// basedOn ist Pflicht (min=1 aus DiagnosticReportLab), zeigte aber auf
// "ServiceRequest/111", das nichts auflöste. ServiceRequest wird von diesem Modul
// nicht verantwortet, deshalb steht hier die Anforderungsnummer als
// Reference.identifier statt einer literalen Referenz — genau der FHIR-Weg, auf
// eine Ressource zu verweisen, die man nicht mitliefert. Ein drittes Fremdbeispiel
// wird so vermieden, die Pflichtangabe bleibt erfüllt.
* basedOn[0].identifier.type.coding[0] = $v2-0203#PLAC "Placer Identifier"
* basedOn[0].identifier.system = "https://example.org/fhir/sid/test-anforderung"
* basedOn[0].identifier.value = "111"
* subject = Reference(mii-exa-mikrobio-patient)
* effectiveDateTime = "2026-04-02T10:00:00+01:00"
* issued = "2026-04-02T10:30:00+01:00"
* result[0] = Reference(mii-exa-mikrobio-allgemeine-kultur)
