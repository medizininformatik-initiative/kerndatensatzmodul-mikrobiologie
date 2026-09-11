# MII PR Mikrobio Spezifische Mikroskopie - MII Implementation Guide Microbiology v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII PR Mikrobio Spezifische Mikroskopie**

## Resource Profile: MII PR Mikrobio Spezifische Mikroskopie 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-spezifische-mikroskopie | *Version*:2027.0.0-ballot.rc1 |
| Active as of 2026-09-11 | *Computable Name*:MII_PR_Mikrobio_Spezifische_Mikroskopie |

 
Spezifische Mikroskopie beschreibt den mikroskopischen Nachweis eines im Untersuchungscode benannten Objekts — etwa säurefester Stäbchen oder von Leukozyten — mit der semiquantitativen Stufe als Ergebnis. 

Specific microscopy describes the microscopic detection of an object named in the test code — acid-fast bacilli, leukocytes, clue cells — where the result is the semiquantitative grade in which it was seen.

### How it differs from general microscopy

Both halves are microscopy; what separates them is the question and the type of its answer, which is the rule this module applies throughout.

| | | |
| :--- | :--- | :--- |
| The question | what is there to see? | is X there, and how much? |
| `Observation.code` | a code that names at most the stain | a code that names the object sought |
| `value[x]` | the morphology observed | the semiquantitative grade |

LOINC usually mirrors that distinction in the scale — nominal where the answer is the object, ordinal where it is a grade — but not reliably. For some stains only the nominal form exists: rhodamine-auramine has no ordinal code at all. Such a finding belongs in general microscopy even though the stain is targeted, because the answer is then the object seen and not a grade. The scale follows the distinction; it does not define it.

This is therefore not the same statement as [Specific determination](StructureDefinition-mii-pr-mikrobio-spezifische-bestimmung.md), even though both are targeted: that profile answers `Detected` / `Not detected`, this one answers a grade. The same reason keeps colony count out of the culture profile.

### Why the grade is the value

Because the test code is ordinal, the grade **is** the answer to the question the code asks. It is therefore neither an `Observation.interpretation` — which carries clinical significance, not a quantity — nor a component, nor a member observation. Where LOINC offers such an ordinal code, the European data model's open question about a component and a new LOINC code does not arise.

The grades come from a German laboratory's real result catalogue and span two SNOMED axes: `441614007` / `441517005` / `441521003` are presence findings below `52101004 |Present|`, while `Few`, `Moderate number`, `Numerous` and `Scanty` are degree and number descriptors. Which of the two families should be preferred is still open with the European working group.

### Examples

Acid-fast bacilli not detected:

[mii-exa-mikrobio-spezifische-mikroskopie-auramin-negativ](Observation-mii-exa-mikrobio-spezifische-mikroskopie-auramin-negativ.md)

Acid-fast bacilli at grade two of three:

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
  "date" : "2026-09-11T12:41:50+00:00",
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
  "purpose" : "Dieses Profil beschreibt die zielgerichtete Mikroskopie, bei der das gesuchte Objekt und die Färbetechnik im Untersuchungscode stehen und das Ergebnis die Menge des Gesehenen ist.",
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
      "id" : "Observation.value[x]:valueQuantity",
      "path" : "Observation.value[x]",
      "sliceName" : "valueQuantity",
      "short" : "Zaehlung je Gesichtsfeld, UCUM-Einheit /[HPF]. Fuer offene Grenzen wird Quantity.comparator verwendet, z. B. '<10/GF' als comparator = '<', value = 10.",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Observation.value[x]:valueCodeableConcept",
      "path" : "Observation.value[x]",
      "sliceName" : "valueCodeableConcept",
      "short" : "Semiquantitative Stufe des im Code benannten Objekts. Weil der Untersuchungscode ordinal ist, ist die Stufe der Wert — nicht die Interpretation und keine Komponente. Wurde untersucht und nichts gesehen, wird 'None' oder 'No organisms seen' berichtet; liefert die Untersuchung gar keine verwertbare Aussage, dataAbsentReason.",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/ValueSet/mii-vs-mikrobio-mikroskopie-semiquantitativ-snomed"
      }
    },
    {
      "id" : "Observation.value[x]:valueRange",
      "path" : "Observation.value[x]",
      "sliceName" : "valueRange",
      "short" : "Zaehlung je Gesichtsfeld als Intervall, UCUM-Einheit /[HPF] — z. B. '10-25/GF' als low = 10, high = 25.",
      "type" : [{
        "code" : "Range"
      }]
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
      "short" : "Entbehrlich, wo die Faerbung bereits im Untersuchungscode steht. Sonst wie bei der Allgemeinen Mikroskopie: bevorzugt die Faerbetechnik, weil Observation.method 0..1 ist und nur eines von Faerbung und Mikroskopieverfahren hineinpasst.",
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
    }]
  }
}

```
