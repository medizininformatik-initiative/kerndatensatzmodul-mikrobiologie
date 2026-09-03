// switch version of all conformance resources here
RuleSet: Version
* version = "2027.0.0-alpha.6"

RuleSet: PR_CS_VS_Version
* ^version = "2027.0.0-alpha.6"
* ^experimental = false

// ─────────────────────────────────────────────────────────────────────────────
// Appended from the MII KDS module template v0.11.1 (migration step 3, spec §5.2).
// Per-DEFINITION collision resolution: the module's Version / PR_CS_VS_Version
// above are UNCHANGED and win. Skipped as already defined by the module: Version, PR_CS_VS_Version
// ─────────────────────────────────────────────────────────────────────────────

RuleSet: CRMIPackageSource
* meta.extension[+].url = "http://hl7.org/fhir/StructureDefinition/package-source"
* meta.extension[=].extension[+].url = "packageId"
* meta.extension[=].extension[=].valueId = "de.medizininformatikinitiative.kerndatensatz.mikrobiologie"
* meta.extension[=].extension[+].url = "version"
* meta.extension[=].extension[=].valueString = "2027.0.0-alpha.6"
* meta.extension[=].extension[+].url = "uri"
* meta.extension[=].extension[=].valueUri = "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio"

RuleSet: CRMIPackageSourceDefinitionalResource
* ^meta.extension[+].url = "http://hl7.org/fhir/StructureDefinition/package-source"
* ^meta.extension[=].extension[+].url = "packageId"
* ^meta.extension[=].extension[=].valueId = "de.medizininformatikinitiative.kerndatensatz.mikrobiologie"
* ^meta.extension[=].extension[+].url = "version"
* ^meta.extension[=].extension[=].valueString = "2027.0.0-alpha.6"
* ^meta.extension[=].extension[+].url = "uri"
* ^meta.extension[=].extension[=].valueUri = "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio"

// Resource-independent effective period (StructureDefinition,
// CapabilityStatement, ImplementationGuide). A release stays the valid
// implemented version until a later release replaces it, so basis expresses only
// the applicability START — do not add an end date.

RuleSet: CRMIResourceEffectivePeriod
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/resource-effectivePeriod"
* ^extension[=].valuePeriod.start = "2027"

RuleSet: CRMIResourceEffectivePeriodInstance
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/resource-effectivePeriod"
* extension[=].valuePeriod.start = "2027"
