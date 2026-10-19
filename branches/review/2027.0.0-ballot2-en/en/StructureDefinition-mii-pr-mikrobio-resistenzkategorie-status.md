# MII PR Microbiology Resistance Category Status - MII Implementation Guide Microbiology v2027.0.0-ballot2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII PR Microbiology Resistance Category Status**

## Resource Profile: MII PR Microbiology Resistance Category Status 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-resistenzkategorie-status | *Version*:2027.0.0-ballot2 |
| Active as of 2026-10-19 | *Computable Name*:MII_PR_Mikrobio_Resistenzkategorie_Status |

 
Assessment of a detected pathogen with regard to a defined resistance category, e.g. MRSA, VRE, LRE or LVRE. The assessed category is in Observation.code, the result of the assessment in Observation.value. 

Resistance category status represents the assessment of a detected pathogen with respect to a defined resistance category, for example MRSA, VRE, LRE or LVRE. The category assessed is in `Observation.code`, the result of the assessment in `Observation.valueCodeableConcept`.

```
MRSA status: Positive
VRE status:  Negative
LRE status:  Positive

```

The profile supersedes `mii-pr-mikrobio-mre-klasse`. There, the value was the concrete resistant organism species, e.g. MRSA or VRE. That modelling repeated pathogen and resistance information already represented via identification, susceptibility and resistance mechanisms, and was semantically broader than "MRE".

### Categories

| | | |
| :--- | :--- | :--- |
| `mrsa-status` | MRSA | Identification as**Staphylococcus aureus**and detection of methicillin/oxacillin resistance, phenotypic or via`mecA`/`mecC` |
| `vre-status` | VRE | Identification as**Enterococcus**and detection of vancomycin resistance, phenotypic or via`vanA`/`vanB` |
| `lre-status` | LRE | Identification as**Enterococcus**and detection of linezolid resistance |
| `lvre-status` | LVRE | Identification as**Enterococcus**and detection of both linezolid and vancomycin resistance |

The categories are not mutually exclusive: a linezolid- and vancomycin-resistant **Enterococcus** may carry `vre-status`, `lre-status` and `lvre-status` with `Positive` at the same time.

### Terminology

`Observation.code` uses MII-specific codes from `mii-cs-mikrobio-resistenzkategorie`.

### Result

| | |
| :--- | :--- |
| `10828004 - Positive` | The assessed pathogen meets the criteria of the category given in`code`. |
| `260385009- Negative` | The pathogen was sufficiently assessed on the basis of the investigations relevant to this category and does not meet the criteria. |

`Negative` explicitly does **not** mean: negative targeted pathogen detection, no resistance present, pathogen not detected, or insufficient diagnostics performed. If the category could not be assessed sufficiently, `Negative` is not given; `dataAbsentReason` is set instead.

### Derivation

The category assessment is a derived clinical statement. The underlying investigations are referenced via `Observation.derivedFrom`. Possible inputs are: pathogen identification, susceptibility testing, and resistance mechanisms or resistance determinants.

These investigations **should** be given so that the basis of the assessment remains traceable.

`triggeredBy` is **not** used for this: the assessment arises by clinical derivation and not as a triggered follow-up investigation.

### Delimitation against direct detection

The category status does not replace a targeted pathogen detection:

| | | |
| :--- | :--- | :--- |
| MRSA PCR | [Specific determination](StructureDefinition-mii-pr-mikrobio-spezifische-bestimmung.md) | `Detected`/`Not detected` |
| MRSA culture | [Specific determination](StructureDefinition-mii-pr-mikrobio-spezifische-bestimmung.md) | `Detected`/`Not detected` |
| Assessment of a present**S. aureus**as MRSA | Resistance category status | `MRSA status`=`Positive`/`Negative` |

The same principle applies to VRE and the remaining categories.

### Examples

The examples show the pattern for the VRE category. It is identical for the remaining categories - only the code in `Observation.code` changes.

VRE status positive, with full derivation via `derivedFrom`:

[mii-exa-mikrobio-resistenzkategorie-vre-positiv](Observation-mii-exa-mikrobio-resistenzkategorie-vre-positiv.md)

VRE status negative:

[mii-exa-mikrobio-resistenzkategorie-vre-negativ](Observation-mii-exa-mikrobio-resistenzkategorie-vre-negativ.md)

**Usages:**

* Refer to this Profile: [MII PR Microbiology Diagnostic Report](StructureDefinition-mii-pr-mikrobio-diagnostic-report.md)
* Examples for this Profile: [Observation/mii-exa-mikrobio-resistenzkategorie-vre-negativ](Observation-mii-exa-mikrobio-resistenzkategorie-vre-negativ.md) and [Observation/mii-exa-mikrobio-resistenzkategorie-vre-positiv](Observation-mii-exa-mikrobio-resistenzkategorie-vre-positiv.md)
* CapabilityStatements using this Profile: [MII CPS Mikrobio Metadata](CapabilityStatement-mii-cps-mikrobio-metadata.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.medizininformatikinitiative.kerndatensatz.mikrobiologie|current/StructureDefinition/StructureDefinition-mii-pr-mikrobio-resistenzkategorie-status.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots, and their representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-mii-pr-mikrobio-resistenzkategorie-status.csv), [Excel](../StructureDefinition-mii-pr-mikrobio-resistenzkategorie-status.xlsx), [Schematron](../StructureDefinition-mii-pr-mikrobio-resistenzkategorie-status.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-pr-mikrobio-resistenzkategorie-status",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-versionAlgorithm",
    "valueCoding" : {
      "system" : "http://hl7.org/fhir/version-algorithm",
      "code" : "semver",
      "display" : "SemVer"
    }
  },
  {
    "url" : "https://www.medizininformatik-initiative.de/fhir/modul-meta/StructureDefinition/mii-ex-meta-license-codeable",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://hl7.org/fhir/spdx-license",
        "code" : "CC-BY-4.0",
        "display" : "Creative Commons Attribution 4.0 International"
      }]
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/cqf-knowledgeCapability",
    "valueCode" : "shareable"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/cqf-knowledgeCapability",
    "valueCode" : "publishable"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-versionPolicy",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/artifact-version-policy-codes",
        "code" : "package",
        "display" : "Package"
      }]
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-usage",
    "valueMarkdown" : "Use this profile as the technical FHIR representation of the corresponding Medical Informatics Initiative logical model. The profile constrains a base FHIR resource for the MII module context by specifying how elements are used, which elements are required or not used, which extensions and terminology bindings apply, and how the resource maps to the module-specific content model. Implementers should produce and consume resource instances that conform to this profile when exchanging data for the corresponding MII module."
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-topic",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl",
        "code" : "C16851"
      }]
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-topic",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl",
        "code" : "C217438"
      }]
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-author",
    "valueContactDetail" : {
      "telecom" : [{
        "system" : "email",
        "value" : "pw@gefyra.de"
      }]
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-editor",
    "valueContactDetail" : {
      "name" : "Taskforce Core Data Set"
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-reviewer",
    "valueContactDetail" : {
      "name" : "Interoperability Working Group",
      "telecom" : [{
        "system" : "url",
        "value" : "https://www.medizininformatik-initiative.de/en/collaboration/interoperability-working-group"
      }]
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-reviewer",
    "valueContactDetail" : {
      "name" : "National Steering Committee",
      "telecom" : [{
        "system" : "url",
        "value" : "https://www.medizininformatik-initiative.de/en/collaboration/national-steering-committee"
      }]
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-endorser",
    "valueContactDetail" : {
      "name" : "Interoperability Working Group",
      "telecom" : [{
        "system" : "url",
        "value" : "https://www.medizininformatik-initiative.de/en/collaboration/interoperability-working-group"
      }]
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-endorser",
    "valueContactDetail" : {
      "name" : "National Steering Committee",
      "telecom" : [{
        "system" : "url",
        "value" : "https://www.medizininformatik-initiative.de/en/collaboration/national-steering-committee"
      }]
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/resource-approvalDate",
    "valueDate" : "2026-08-24"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/resource-lastReviewDate",
    "valueDate" : "2026-08-24"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/resource-effectivePeriod",
    "valuePeriod" : {
      "start" : "2027"
    }
  }],
  "url" : "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-resistenzkategorie-status",
  "version" : "2027.0.0-ballot2",
  "name" : "MII_PR_Mikrobio_Resistenzkategorie_Status",
  "title" : "MII PR Microbiology Resistance Category Status",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-10-19T01:04:27+00:00",
  "publisher" : "Medizininformatik Initiative",
  "_publisher" : {
    "extension" : [{
      "extension" : [{
        "url" : "lang",
        "valueCode" : "de"
      },
      {
        "url" : "content",
        "valueString" : "Medizininformatik Initiative"
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/translation"
    }]
  },
  "contact" : [{
    "name" : "Medizininformatik Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de"
    }]
  }],
  "description" : "Assessment of a detected pathogen with regard to a defined resistance category, e.g. MRSA, VRE, LRE or LVRE. The assessed category is in Observation.code, the result of the assessment in Observation.value.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "purpose" : "This profile represents the assessment of a pathogen with regard to a defined resistance category, derived from the underlying microbiological investigations. It does not replace a targeted pathogen detection: whether a pathogen is present at all is represented via MII_PR_Mikrobio_Spezifische_Bestimmung or MII_PR_Mikrobio_Spezifische_Kultur.",
  "fhirVersion" : "4.0.1",
  "kind" : "resource",
  "abstract" : false,
  "type" : "Observation",
  "baseDefinition" : "https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/ObservationLab",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Observation",
      "path" : "Observation"
    },
    {
      "id" : "Observation.extension:triggeredBy-r5",
      "path" : "Observation.extension",
      "sliceName" : "triggeredBy-r5",
      "short" : "Only for follow-up diagnostics that were actually triggered. The clinical derivation of the category assessment is represented not here but via derivedFrom.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.org/fhir/5.0/StructureDefinition/extension-Observation.triggeredBy"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Observation.extension:triggeredBy-r5.extension:observation",
      "path" : "Observation.extension.extension",
      "sliceName" : "observation",
      "short" : "Triggering observation."
    },
    {
      "id" : "Observation.extension:triggeredBy-r5.extension:type",
      "path" : "Observation.extension.extension",
      "sliceName" : "type",
      "short" : "Describes how an investigation was triggered in the diagnostic context; in particular, the value “reflex” marks follow-up diagnostics triggered by the result of a preceding investigation."
    },
    {
      "id" : "Observation.category",
      "path" : "Observation.category",
      "min" : 2
    },
    {
      "id" : "Observation.category:mibi-category",
      "path" : "Observation.category",
      "sliceName" : "mibi-category",
      "short" : "Microbiology category",
      "definition" : "Category slice for microbiological laboratory investigations.",
      "min" : 1,
      "max" : "1",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v2-0074",
          "code" : "MB"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "Observation.code",
      "path" : "Observation.code",
      "short" : "Assessed resistance category, e.g. MRSA status. Only categories that are clinically applicable to the pathogen at hand are documented; no MRSA status is generated for an Enterococcus.",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/ValueSet/mii-vs-mikrobio-resistenzkategorie-status"
      }
    },
    {
      "id" : "Observation.value[x]",
      "path" : "Observation.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "Observation.value[x]:valueCodeableConcept",
      "path" : "Observation.value[x]",
      "sliceName" : "valueCodeableConcept",
      "short" : "Positive: the pathogen meets the criteria of the category given in code. Negative: the pathogen was sufficiently assessed on the basis of the relevant investigations and does not meet the criteria. If the category cannot be sufficiently assessed, Negative is not stated; instead dataAbsentReason is set or no status Observation is created.",
      "min" : 1,
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/ValueSet/mii-vs-mikrobio-resistenzkategorie-status-ergebnis"
      }
    },
    {
      "id" : "Observation.dataAbsentReason",
      "path" : "Observation.dataAbsentReason",
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/ValueSet/mii-vs-mikrobio-data-absent-reason"
      }
    },
    {
      "id" : "Observation.specimen",
      "path" : "Observation.specimen",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-probe"]
      }]
    },
    {
      "id" : "Observation.derivedFrom",
      "path" : "Observation.derivedFrom",
      "short" : "Investigations from which the assessment was derived: pathogen identification, susceptibility testing and resistance mechanisms / determinants. These investigations SHOULD be stated so that the basis of the assessment is traceable. They may be omitted if the status is taken directly from an already categorised laboratory report and the individual investigations are not available as separate Observations.",
      "mustSupport" : true
    }]
  }
}

```
