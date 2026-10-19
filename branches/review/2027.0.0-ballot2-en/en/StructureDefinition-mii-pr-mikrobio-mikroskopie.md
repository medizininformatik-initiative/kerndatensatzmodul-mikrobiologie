# MII PR Microbiology General Microscopy - MII Implementation Guide Microbiology v2027.0.0-ballot2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII PR Microbiology General Microscopy**

## Resource Profile: MII PR Microbiology General Microscopy 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-mikroskopie | *Version*:2027.0.0-ballot2 |
| Active as of 2026-10-19 | *Computable Name*:MII_PR_Mikrobio_Allgemeine_Mikroskopie |

 
General microscopy describes the morphological observation of microorganisms in a specimen by microscopic examination, optionally with staining techniques (e.g. Gram stain). The result is a morphological group, not a species. 

General microscopy describes the morphological observation of microorganisms in a specimen by microscopic examination, optionally with staining techniques (e.g. Gram stain). The result is a morphological group, not a species.

It is the open half of microscopy: the code asks what is there to see, and the answer is the morphology observed. Where the object sought is already named in the test code and the answer is how much of it was seen, the profile is [Specific microscopy](StructureDefinition-mii-pr-mikrobio-spezifische-mikroskopie.md).

### Staining

The stain is carried in `extension[faerbung]`, coded with the descendants of `37926009 |Microbial stain method (procedure)|` — the same codes the HL7 EU Lab Semantic Workgroup uses. Give it whenever a stain was used, including where the test code already names it: it is then readable in one place, whichever code a laboratory chooses. `Observation.method` carries the microscopy technique only, which for native microscopy without a stain is the one statement to be made.

**Ballot question 2 — where does the staining technique belong?** This module deviates from the model under discussion in the HL7 EU Lab Semantic Workgroup: it carries the stain in `extension[faerbung]` on the Observation, not in `Specimen.processing.procedure`. The codes are the same. Can your site supply the stain on the Specimen, or do you need the extension?

What keeps this module from relying on the Specimen is that it presupposes a Specimen resource, which ballot question 1 puts in doubt. Because the terminology is the same on either route, a later move changes the element and nothing else.

### Morphology together with its amount

The most common Gram finding needs two statements at once — **few** Gram-positive cocci — and `value[x]` can carry only one of them. The morphology is the value and the amount is a component, `component[menge]`. The same component, with the same code and the same answers, carries the amount in [Specific microscopy](StructureDefinition-mii-pr-mikrobio-spezifische-mikroskopie.md).

Its code is `103392008 |Semi-quantitative value|`, the concept the HL7 EU Lab Semantic Workgroup proposes for this component. A LOINC code has been requested for the same purpose and will take its place once it exists. Besides the semiquantitative grade the component takes a count per high power field, as a `Quantity` or as a `Range`.

**Ballot question 4 — can you process a component for the amount?** Both microscopy profiles carry the amount in `component[menge]`, following the HL7 EU Lab Semantic Workgroup, which uses a component for the amount of a single finding and `hasMember` to group several findings of one examination.

The component reverses a decision of this release cycle: `2027.0.0-alpha.1` removed components from this very profile and moved them into standalone Observations.

### Examples

Example (minimal):

[mii-exa-mikrobio-mikroskopie](Observation-mii-exa-mikrobio-mikroskopie.md)

**Usages:**

* Refer to this Profile: [MII PR Microbiology Diagnostic Report](StructureDefinition-mii-pr-mikrobio-diagnostic-report.md)
* Examples for this Profile: [Observation/mii-exa-mikrobio-mikroskopie-gram-kokken-wenig](Observation-mii-exa-mikrobio-mikroskopie-gram-kokken-wenig.md) and [Observation/mii-exa-mikrobio-mikroskopie](Observation-mii-exa-mikrobio-mikroskopie.md)
* CapabilityStatements using this Profile: [MII CPS Microbiology Metadata](CapabilityStatement-mii-cps-mikrobio-metadata.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.medizininformatikinitiative.kerndatensatz.mikrobiologie|current/StructureDefinition/StructureDefinition-mii-pr-mikrobio-mikroskopie.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots, and their representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-mii-pr-mikrobio-mikroskopie.csv), [Excel](../StructureDefinition-mii-pr-mikrobio-mikroskopie.xlsx), [Schematron](../StructureDefinition-mii-pr-mikrobio-mikroskopie.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-pr-mikrobio-mikroskopie",
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
  "url" : "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-mikroskopie",
  "version" : "2027.0.0-ballot2",
  "name" : "MII_PR_Mikrobio_Allgemeine_Mikroskopie",
  "title" : "MII PR Microbiology General Microscopy",
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
  "description" : "General microscopy describes the morphological observation of microorganisms in a specimen by microscopic examination, optionally with staining techniques (e.g. Gram stain). The result is a morphological group, not a species.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "purpose" : "This profile describes microscopic observations of morphology.",
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
      "short" : "Staining technique used, e.g. Gram stain. Always state it when a stain was applied — even when the investigation code already names it.",
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
      "short" : "Preferably 105059-0 'Microscopic observation [Identifier] in Specimen', because it does not pull the stain into the code. 664-3 '... by Gram stain' is equally permitted; in both cases the stain is additionally stated in extension[faerbung], so that it can be evaluated in one place independently of the code chosen.",
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/ValueSet/mii-vs-mikrobio-allgemeine-mikroskopie-tests-loinc"
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
      "short" : "The morphological GROUP observed — Gram-positive cocci, Gram-negative rods, hyphae. NO species: a species identification belongs in General determination, even if it was made microscopically. Some of the groups sit in the organism hierarchy in SNOMED because that is the only place they exist there; this does not make the statement more precise.",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/ValueSet/mii-vs-mikrobio-morphologie-ergebnis-snomed"
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
      "short" : "The microscopic procedure, e.g. 278289002 'Microscopy technique' or a narrowing of it. The stain does NOT belong here but in extension[faerbung].",
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
