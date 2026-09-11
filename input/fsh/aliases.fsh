Alias: $v3-ObservationInterpretation = http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation
// Versionsbehaftete Variante fuer ValueSet-Kompositionen, nach dem Muster des
// Basismoduls Labor. hl7.terminology.r4 kommt in zwei Staenden herein (6.2.0
// transitiv ueber IPS -> IPA, 7.1.0 als direkter Pin), dazu 2.1.0 aus dem
// xver-Paket; ohne Versionsangabe meldet der Publisher eine mehrdeutige
// Aufloesung und entscheidet selbst.
//
// 4.0.0 ist die CODESYSTEM-Version, nicht die Paketversion: THO 7.1.0 liefert
// v3-ObservationInterpretation in 4.0.0. Wird der THO-Pin in sushi-config.yaml
// gehoben, muss dieser Alias mitwandern.
//
// NUR in ValueSet-Kompositionen verwenden. In Instanzen und als Pattern oder
// fixed value bleibt der versionslose Alias oben: ein Pattern mit
// versionsbehafteter system-URL wuerde nicht matchen.
Alias: $v3-ObservationInterpretation-ver = http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation|4.0.0
Alias: $v2-0203 = http://terminology.hl7.org/CodeSystem/v2-0203
// Versionsbehaftet, wie im Basismodul Labor: Die Version landet damit als
// compose.include.version in den ValueSets UND als Coding.version in den
// Beispielen. Letzteres ist Absicht -- das Elternprofil
// MII_PR_Labor_Laboruntersuchung setzt Coding.version auf Observation.code und
// auf value[x]:valueCodeableConcept MUST SUPPORT (rc4 nachgemessen), und die
// Beispiele sollen die MS-Elemente zeigen.
//
// Fuer Patterns und fixed values in Profilen die -no-ver-Varianten nehmen: ein
// Pattern mit versionsbehafteter system-URL matcht nicht.
//
// Beide Versionen muessen mit input/resources/Parameters-expansion-manifest.json
// uebereinstimmen; scripts/terminology-pins.test.mjs prueft das.
Alias: $loinc = http://loinc.org|2.82
Alias: $loinc-no-ver = http://loinc.org
Alias: $ucum = http://unitsofmeasure.org
Alias: $observation-category = http://terminology.hl7.org/CodeSystem/observation-category
Alias: $sct = http://snomed.info/sct|http://snomed.info/sct/900000000000207008/version/20260701
Alias: $refgene = https://www.ncbi.nlm.nih.gov/pathogens/refgene/
Alias: $microbigge = https://www.ncbi.nlm.nih.gov/pathogens/microbigge/
Alias: $observation-triggeredBy-r5 = http://hl7.org/fhir/5.0/StructureDefinition/extension-Observation.triggeredBy
Alias: $v2-0074 = http://terminology.hl7.org/CodeSystem/v2-0074

// ─────────────────────────────────────────────────────────────────────────────
// Appended from the MII KDS module template v0.11.1 (migration step 3, spec §5.2).
// Per-DEFINITION collision resolution: the module's own aliases above are
// UNCHANGED and win; only template definitions the module lacked are added.
// Skipped as already defined by the module: $loinc, $observation-category, $sct, $v2-0203
// ─────────────────────────────────────────────────────────────────────────────

// ── SNOMED CT ────────────────────────────────────────────────────────────────
// $sct traegt die SNOMED-CT-Release dieser MII-CalVer-Linie (oben definiert);
// $sct-no-ver ist die blanke System-URI fuer Patterns und fixed values.
//
// The MII binds each CalVer release to ONE SNOMED CT International release so
// that ValueSet expansions are reproducible — MII meta wiki, "Terminology
// Version Policy" (https://github.com/medizininformatik-initiative/kerndatensatz-meta/wiki/Terminology-Version-Policy):
//
//   MII release (CalVer) | SNOMED CT International release | version string
//   v2025.*              | 2024-07-01 | http://snomed.info/sct/900000000000207008/version/20240701
//   v2026.*              | 2025-07-01 | http://snomed.info/sct/900000000000207008/version/20250701
//   v2027.*              | 2026-07-01 | http://snomed.info/sct/900000000000207008/version/20260701
//
// Dieses Modul steht auf der v2027-Linie; der Wert steht oben bei $sct. Bei
// einem CalVer-Wechsel BEIDE Orte aktualisieren: diesen Alias und
// input/resources/Parameters-expansion-manifest.json — nicht raten.
//
// Der Template-Satz "MII profiles do not currently require Coding.version for
// SNOMED CT in instance data" stand hier frueher als Begruendung fuer
// versionslose Instanz-Codings. Er spricht ueber KARDINALITAET, nicht ueber
// Must Support: Das Elternprofil MII_PR_Labor_Laboruntersuchung setzt
// Coding.version auf Observation.code und auf value[x]:valueCodeableConcept
// mustSupport (rc4 nachgemessen), weshalb die Beispiele sie zeigen.
Alias: $sct-no-ver = http://snomed.info/sct

// ── Further code systems used across MII modules ─────────────────────────────
Alias: $icd-10 = http://hl7.org/fhir/sid/icd-10
Alias: $icd-10-gm = http://fhir.de/CodeSystem/bfarm/icd-10-gm
Alias: $icd-o-3 = http://terminology.hl7.org/CodeSystem/icd-o-3
Alias: $alpha-id = http://fhir.de/CodeSystem/bfarm/alpha-id
Alias: $alpha-id-vs = http://fhir.de/ValueSet/bfarm/alpha-id
Alias: $ops = http://fhir.de/CodeSystem/bfarm/ops
Alias: $orpha = http://www.orpha.net

// ── HL7 terminology ──────────────────────────────────────────────────────────
Alias: $v3-ObservationValue = http://terminology.hl7.org/CodeSystem/v3-ObservationValue
Alias: $v3-ActCode = http://terminology.hl7.org/CodeSystem/v3-ActCode
Alias: $v3-ActPriority = http://terminology.hl7.org/CodeSystem/v3-ActPriority

// ── German base profiles (de.basisprofil.r4, a pinned dependency) ────────────
Alias: $identifier-type-de-basis = http://fhir.de/CodeSystem/identifier-type-de-basis
Alias: $gender-amtlich-de = http://fhir.de/CodeSystem/gender-amtlich-de
Alias: $ags = http://fhir.de/sid/destatis/ags

// ── FHIR core extensions / MII cross-module ──────────────────────────────────
Alias: $data-absent-reason = http://hl7.org/fhir/StructureDefinition/data-absent-reason
Alias: $MII-Reference = https://www.medizininformatik-initiative.de/fhir/core/StructureDefinition/MII-Reference

// ── FHIR artifact metadata (R4 core extensions, used by the CRMI RuleSets) ───
// Addressed inside the slice brackets of input/fsh/rulesets/crmi.fsh, which is
// why they are aliases: `^extension[$artifact-topic][+]` reads, the full URL in
// the same position does not.
Alias: $artifact-topic = http://hl7.org/fhir/StructureDefinition/artifact-topic
Alias: $artifact-author = http://hl7.org/fhir/StructureDefinition/artifact-author
Alias: $artifact-editor = http://hl7.org/fhir/StructureDefinition/artifact-editor
Alias: $artifact-reviewer = http://hl7.org/fhir/StructureDefinition/artifact-reviewer
Alias: $artifact-endorser = http://hl7.org/fhir/StructureDefinition/artifact-endorser

// ── CRMI (hl7.fhir.uv.crmi, a pinned dependency) ─────────────────────────────
// The full basis block. The profiles are claimed via the RuleSets in
// input/fsh/rulesets/crmi.fsh; these aliases let you reference them directly.
Alias: $crmi-license = http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-license
Alias: $crmi-license-detail = http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-licenseDetail
Alias: $crmi-manifestlibrary = http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-manifestlibrary
Alias: $crmi-manifestparameters = http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-manifestparameters
Alias: $crmi-referenceSource = http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-referenceSource
Alias: $crmi-softwaresystem = http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-softwaresystem
//Alias: $crmi-artifact-signature = http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-artifact-signature
Alias: $crmi-shareableimplementationguide = http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-shareableimplementationguide
Alias: $crmi-publishableimplementationguide = http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-publishableimplementationguide
Alias: $crmi-shareablestructuredefinition = http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-shareablestructuredefinition
Alias: $crmi-publishablestructuredefinition = http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-publishablestructuredefinition
Alias: $crmi-shareablevalueset = http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-shareablevalueset
Alias: $crmi-computablevalueset = http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-computablevalueset
Alias: $crmi-publishablevalueset = http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-publishablevalueset
Alias: $crmi-expandedvalueset = http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-expandedvalueset
Alias: $crmi-shareablecodesystem = http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-shareablecodesystem
Alias: $crmi-publishablecodesystem = http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-publishablecodesystem
Alias: $crmi-shareablecapabilitystatement = http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-shareablecapabilitystatement
Alias: $crmi-publishablecapabilitystatement = http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-publishablecapabilitystatement
Alias: $crmi-shareablesearchparameter = http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-shareablesearchparameter
Alias: $crmi-publishablesearchparameter = http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-publishablesearchparameter
Alias: $crmi-publishable-bundle = http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-publishable-bundle
Alias: $crmi-release-version-behavior-codes = http://hl7.org/fhir/uv/crmi/CodeSystem/crmi-release-version-behavior-codes
Alias: $crmi-release-experimental-behavior-codes = http://hl7.org/fhir/uv/crmi/CodeSystem/crmi-release-experimental-behavior-codes
Alias: $crmi-release-version-behavior = http://hl7.org/fhir/uv/crmi/ValueSet/crmi-release-version-behavior
Alias: $crmi-release-experimental-behavior = http://hl7.org/fhir/uv/crmi/ValueSet/crmi-release-experimental-behavior
