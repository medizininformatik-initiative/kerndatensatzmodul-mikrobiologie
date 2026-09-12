# MII PR Mikrobio Spezifische Mikroskopie - MII Implementation Guide Microbiology v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII PR Mikrobio Spezifische Mikroskopie**

## Resource Profile: MII PR Mikrobio Spezifische Mikroskopie 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-spezifische-mikroskopie | *Version*:2027.0.0-ballot.rc1 |
| Active as of 2026-09-12 | *Computable Name*:MII_PR_Mikrobio_Spezifische_Mikroskopie |

 
Spezifische Mikroskopie beschreibt den mikroskopischen Nachweis eines im Untersuchungscode benannten Objekts — etwa säurefester Stäbchen oder von Leukozyten — mit der semiquantitativen Stufe als Ergebnis. 

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

The component takes three answer forms, because a laboratory reports the same analyte in two of them: the semiquantitative grade, a count per high power field as `Quantity`, and such a count as an interval in a `Range`. Its code and its value set are shared with [General microscopy](StructureDefinition-mii-pr-mikrobio-mikroskopie.md), where [ballot question 5](StructureDefinition-mii-pr-mikrobio-mikroskopie.md#ballot-question-5) asks whether sites can process it.

The grades come from a German laboratory's real result catalogue and span two SNOMED axes: `441614007` / `441517005` / `441521003` are presence findings below `52101004 |Present|`, while `Few`, `Moderate number`, `Numerous` and `Scanty` are degree and number descriptors. Which of the two families should be preferred is still open with the European working group.

### Examples

Acid-fast bacilli not detected:

[mii-exa-mikrobio-spezifische-mikroskopie-auramin-negativ](Observation-mii-exa-mikrobio-spezifische-mikroskopie-auramin-negativ.md)

Acid-fast bacilli detected, at grade two of three:

[mii-exa-mikrobio-spezifische-mikroskopie-kinyoun-zweiplus](Observation-mii-exa-mikrobio-spezifische-mikroskopie-kinyoun-zweiplus.md)

**Usages:**

* Refer to this Profile: [MII PR Mikrobio Diagnostic Report](StructureDefinition-mii-pr-mikrobio-diagnostic-report.md)
* Examples for this Profile: [Observation/mii-exa-mikrobio-spezifische-mikroskopie-auramin-negativ](Observation-mii-exa-mikrobio-spezifische-mikroskopie-auramin-negativ.md), [Observation/mii-exa-mikrobio-spezifische-mikroskopie-kinyoun-zweiplus](Observation-mii-exa-mikrobio-spezifische-mikroskopie-kinyoun-zweiplus.md) and [Observation/mii-exa-mikrobio-spezifische-mikroskopie-leukozyten-gesichtsfeld](Observation-mii-exa-mikrobio-spezifische-mikroskopie-leukozyten-gesichtsfeld.md)
* CapabilityStatements using this Profile: [MII CPS Mikrobio Metadata](CapabilityStatement-mii-cps-mikrobio-metadata.md)

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
  "version" : "2027.0.0-ballot.rc1",
  "name" : "MII_PR_Mikrobio_Spezifische_Mikroskopie",
  "title" : "MII PR Mikrobio Spezifische Mikroskopie",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-09-12T17:15:10+00:00",
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
  "description" : "Spezifische Mikroskopie beschreibt den mikroskopischen Nachweis eines im Untersuchungscode benannten Objekts — etwa säurefester Stäbchen oder von Leukozyten — mit der semiquantitativen Stufe als Ergebnis.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "purpose" : "Dieses Profil beschreibt die zielgerichtete Mikroskopie, bei der das gesuchte Objekt im Untersuchungscode steht und das Ergebnis der Nachweis oder Ausschluss dieses Objekts ist; wie viel davon gesehen wurde, steht in der Mengenkomponente.",
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
      "short" : "Beschreibt die Art der Auslösung einer Untersuchung im diagnostischen Zusammenhang; insbesondere kennzeichnet der Wert „reflex“ eine durch das Ergebnis einer vorangegangenen Untersuchung ausgelöste Folgediagnostik."
    },
    {
      "id" : "Observation.extension:faerbung",
      "path" : "Observation.extension",
      "sliceName" : "faerbung",
      "short" : "Eingesetzte Faerbung. Immer angeben, wenn gefaerbt wurde — auch wenn der Untersuchungscode sie schon nennt.",
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
      "short" : "Mikrobiologie-Kategorie",
      "definition" : "Kategorie-Slice für mikrobiologische Laboruntersuchungen.",
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
      "short" : "Ordinaler LOINC-Code, der das gesuchte Objekt und die Faerbung benennt, z. B. 87243-2 'Microscopic observation [Presence] in Specimen by Auramine fluorochrome stain'. Steht das Objekt NICHT im Code, sondern soll als Ergebnis berichtet werden, ist die Allgemeine Mikroskopie das richtige Profil.",
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
      "short" : "Nachweis oder Ausschluss des im Code benannten Objekts. Die Menge des Gesehenen gehoert NICHT hierher, sondern in component[menge]. Liefert die Untersuchung gar keine verwertbare Aussage, dataAbsentReason.",
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
      "short" : "Das mikroskopische Verfahren. Die Faerbung gehoert NICHT hierher, sondern in extension[faerbung].",
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
        "description" : "Slicing nach dem Komponenten-Code.",
        "rules" : "open"
      }
    },
    {
      "id" : "Observation.component:menge",
      "path" : "Observation.component",
      "sliceName" : "menge",
      "short" : "Semiquantitative Menge oder Zaehlung des berichteten Befunds",
      "definition" : "Wie viel des Befunds gesehen wurde: als semiquantitative Stufe, als Zaehlung je Gesichtsfeld oder als Intervall einer solchen Zaehlung.",
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
          "version" : "http://snomed.info/sct/900000000000207008/version/20260701",
          "code" : "103392008",
          "display" : "Semi-quantitative value"
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
      "short" : "Semiquantitative Stufe, z. B. 'Few' oder 'Present two plus out of three plus'.",
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
      "short" : "Zaehlung je Gesichtsfeld, UCUM-Einheit /[HPF]. Fuer offene Grenzen wird Quantity.comparator verwendet, z. B. '<10/GF' als comparator = '<', value = 10.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Observation.component:menge.value[x]:valueRange",
      "path" : "Observation.component.value[x]",
      "sliceName" : "valueRange",
      "short" : "Zaehlung je Gesichtsfeld als Intervall, UCUM-Einheit /[HPF] — z. B. '10-25/GF' als low = 10, high = 25.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Range"
      }]
    }]
  }
}

```
