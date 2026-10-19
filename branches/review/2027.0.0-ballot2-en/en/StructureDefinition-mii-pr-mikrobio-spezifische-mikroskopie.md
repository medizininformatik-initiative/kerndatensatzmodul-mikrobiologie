# MII PR Microbiology Specific Microscopy - MII Implementation Guide Microbiology v2027.0.0-ballot2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII PR Microbiology Specific Microscopy**

## Resource Profile: MII PR Microbiology Specific Microscopy 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-spezifische-mikroskopie | *Version*:2027.0.0-ballot2 |
| Active as of 2026-10-19 | *Computable Name*:MII_PR_Mikrobio_Spezifische_Mikroskopie |

 
Specific microscopy describes the microscopic detection of an object named in the investigation code — such as acid-fast bacilli or leukocytes — with the semiquantitative grade as the result. 

Specific microscopy describes the microscopic detection of an object named in the test code — acid-fast bacilli, leukocytes, clue cells. The result is whether it was detected; how much of it was seen is stated alongside, in a component.

### How it differs from general microscopy

Both halves are microscopy; what separates them is the question and the type of its answer, which is the rule this module applies throughout.

| | | |
| :--- | :--- | :--- |
| The question | what is there to see? | is X there, and how much? |
| `Observation.code` | a code that names at most the stain | a code that names the object sought |
| `value[x]` | the morphology observed | detected or not detected |

LOINC usually mirrors that distinction in the scale — nominal where the answer is the object, ordinal where it is a presence — but not reliably. For some stains only the nominal form exists: rhodamine-auramine has no ordinal code at all. Such a finding belongs in general microscopy even though the stain is targeted, because the answer is then the object seen. The scale follows the distinction; it does not define it.

Both profiles answer `Detected` / `Not detected`, and they stay apart for the subject they speak about: [Specific determination](StructureDefinition-mii-pr-mikrobio-spezifische-bestimmung.md) names a pathogen species, this one a microscopically visible object — host cells, a morphological form, a parasite — and carries the amount in which it was seen.

### Staining

The codes of this profile usually name the stain themselves, and it is given in `extension[faerbung]` all the same — that is where a consumer reads it, whichever code the laboratory chose, and where the concrete variant appears when the code names only the class ("Acid fast stain" against Kinyoun). Where it belongs is [ballot question 2](StructureDefinition-mii-pr-mikrobio-mikroskopie.md#ballot-question-2).

### The amount

The amount goes into `component[menge]`, not into `value[x]`: the test code asks whether the object is there — `72357-7` and `87243-2` are `PrThr` codes, "presence or threshold" — and the grade qualifies that answer rather than replacing it. It is not an `Observation.interpretation` either, which carries a clinical assessment and not a quantity.

The component takes three answer forms, because a laboratory reports the same analyte in two of them: the semiquantitative grade, a count per high power field as `Quantity`, and such a count as an interval in a `Range`. Its code and its value set are shared with [General microscopy](StructureDefinition-mii-pr-mikrobio-mikroskopie.md), where [ballot question 5](StructureDefinition-mii-pr-mikrobio-mikroskopie.md#ballot-question-4) asks whether sites can process it.

The grades come from a German laboratory's real result catalogue and span two SNOMED axes: `441614007` / `441517005` / `441521003` are presence findings below `52101004 |Present|`, while `Few`, `Moderate number`, `Numerous` and `Scanty` are degree and number descriptors. Which of the two families should be preferred is still open with the European working group.

### Examples

Acid-fast bacilli not detected:

[mii-exa-mikrobio-spezifische-mikroskopie-auramin-negativ](Observation-mii-exa-mikrobio-spezifische-mikroskopie-auramin-negativ.md)

Acid-fast bacilli detected, at grade two of three:

[mii-exa-mikrobio-spezifische-mikroskopie-kinyoun-zweiplus](Observation-mii-exa-mikrobio-spezifische-mikroskopie-kinyoun-zweiplus.md)

**Usages:**

* Refer to this Profile: [MII PR Microbiology Diagnostic Report](StructureDefinition-mii-pr-mikrobio-diagnostic-report.md)
* Examples for this Profile: [Observation/mii-exa-mikrobio-spezifische-mikroskopie-auramin-negativ](Observation-mii-exa-mikrobio-spezifische-mikroskopie-auramin-negativ.md), [Observation/mii-exa-mikrobio-spezifische-mikroskopie-kinyoun-zweiplus](Observation-mii-exa-mikrobio-spezifische-mikroskopie-kinyoun-zweiplus.md) and [Observation/mii-exa-mikrobio-spezifische-mikroskopie-leukozyten-gesichtsfeld](Observation-mii-exa-mikrobio-spezifische-mikroskopie-leukozyten-gesichtsfeld.md)
* CapabilityStatements using this Profile: [MII CPS Microbiology Metadata](CapabilityStatement-mii-cps-mikrobio-metadata.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.medizininformatikinitiative.kerndatensatz.mikrobiologie|current/StructureDefinition/StructureDefinition-mii-pr-mikrobio-spezifische-mikroskopie.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots, and their representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-mii-pr-mikrobio-spezifische-mikroskopie.csv), [Excel](../StructureDefinition-mii-pr-mikrobio-spezifische-mikroskopie.xlsx), [Schematron](../StructureDefinition-mii-pr-mikrobio-spezifische-mikroskopie.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-pr-mikrobio-spezifische-mikroskopie",
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
  "url" : "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-spezifische-mikroskopie",
  "version" : "2027.0.0-ballot2",
  "name" : "MII_PR_Mikrobio_Spezifische_Mikroskopie",
  "title" : "MII PR Microbiology Specific Microscopy",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-10-19T02:49:08+00:00",
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
  "description" : "Specific microscopy describes the microscopic detection of an object named in the investigation code — such as acid-fast bacilli or leukocytes — with the semiquantitative grade as the result.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "purpose" : "This profile describes targeted microscopy, in which the object sought is in the investigation code and the result is the detection or exclusion of that object; how much of it was seen is in the quantity component.",
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
      "id" : "Observation.extension:faerbung",
      "path" : "Observation.extension",
      "sliceName" : "faerbung",
      "short" : "Staining technique used. Always state it when a stain was applied — even when the investigation code already names it.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-ex-mikrobio-faerbung"]
      }],
      "mustSupport" : true
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
      "short" : "Ordinal LOINC code naming the object sought and the stain, e.g. 87243-2 'Microscopic observation [Presence] in Specimen by Auramine fluorochrome stain'. If the object is NOT in the code but is to be reported as the result, General microscopy is the right profile.",
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/ValueSet/mii-vs-mikrobio-spezifische-mikroskopie-tests-loinc"
      }
    },
    {
      "id" : "Observation.value[x]",
      "path" : "Observation.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "Observation.value[x]:valueCodeableConcept",
      "path" : "Observation.value[x]",
      "sliceName" : "valueCodeableConcept",
      "short" : "Detection or exclusion of the object named in the code. The quantity seen does NOT belong here but in component[menge]. If the investigation yields no usable statement at all, dataAbsentReason.",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/ValueSet/mii-vs-mikrobio-detected-not-detected-snomed"
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
      "id" : "Observation.method",
      "path" : "Observation.method",
      "short" : "The microscopic procedure. The stain does NOT belong here but in extension[faerbung].",
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/ValueSet/mii-vs-mikrobio-morphologie-methode-snomed"
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
      "id" : "Observation.component",
      "path" : "Observation.component",
      "slicing" : {
        "discriminator" : [{
          "type" : "pattern",
          "path" : "$this.code"
        }],
        "description" : "Slicing by the component code.",
        "rules" : "open"
      }
    },
    {
      "id" : "Observation.component:menge",
      "path" : "Observation.component",
      "sliceName" : "menge",
      "short" : "Semiquantitative quantity or count of the reported finding",
      "definition" : "How much of the finding was seen: as a semiquantitative grade, as a count per field of view, or as an interval of such a count.",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:menge.code",
      "path" : "Observation.component.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "103392008"
        }]
      }
    },
    {
      "id" : "Observation.component:menge.value[x]",
      "path" : "Observation.component.value[x]",
      "slicing" : {
        "discriminator" : [{
          "type" : "type",
          "path" : "$this"
        }],
        "ordered" : false,
        "rules" : "open"
      },
      "type" : [{
        "code" : "Quantity"
      },
      {
        "code" : "CodeableConcept"
      },
      {
        "code" : "Range"
      }]
    },
    {
      "id" : "Observation.component:menge.value[x]:valueCodeableConcept",
      "path" : "Observation.component.value[x]",
      "sliceName" : "valueCodeableConcept",
      "short" : "Semiquantitative grade, e.g. 'Few' or 'Present two plus out of three plus'.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/ValueSet/mii-vs-mikrobio-mikroskopie-semiquantitativ-snomed"
      }
    },
    {
      "id" : "Observation.component:menge.value[x]:valueQuantity",
      "path" : "Observation.component.value[x]",
      "sliceName" : "valueQuantity",
      "short" : "Count per high-power field, UCUM unit /[HPF]. For open bounds Quantity.comparator is used, e.g. '<10/HPF' as comparator = '<', value = 10.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Observation.component:menge.value[x]:valueQuantity.code",
      "path" : "Observation.component.value[x].code",
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/ValueSet/mii-vs-mikrobio-mikroskopie-gesichtsfeld-einheiten-ucum"
      }
    },
    {
      "id" : "Observation.component:menge.value[x]:valueRange",
      "path" : "Observation.component.value[x]",
      "sliceName" : "valueRange",
      "short" : "Count per high-power field as an interval, UCUM unit /[HPF] — e.g. '10-25/HPF' as low = 10, high = 25.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Range"
      }]
    },
    {
      "id" : "Observation.component:menge.value[x]:valueRange.low.code",
      "path" : "Observation.component.value[x].low.code",
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/ValueSet/mii-vs-mikrobio-mikroskopie-gesichtsfeld-einheiten-ucum"
      }
    },
    {
      "id" : "Observation.component:menge.value[x]:valueRange.high.code",
      "path" : "Observation.component.value[x].high.code",
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/ValueSet/mii-vs-mikrobio-mikroskopie-gesichtsfeld-einheiten-ucum"
      }
    }]
  }
}

```
