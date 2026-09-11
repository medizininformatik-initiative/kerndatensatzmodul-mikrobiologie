# MII PR Mikrobio Diagnostic Report - MII Implementation Guide Microbiology v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII PR Mikrobio Diagnostic Report**

## Resource Profile: MII PR Mikrobio Diagnostic Report 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-diagnostic-report | *Version*:2027.0.0-ballot.rc1 |
| Active as of 2026-09-11 | *Computable Name*:MII_PR_Mikrobio_Diagnostic_Report |

 
Mikrobiologischer Befundbericht zur Zusammenfassung und Kontextualisierung zugehöriger mikrobiologischer Untersuchungsergebnisse. 

Microbiological diagnostic report for summarising and contextualising related microbiological investigation results.

### Category and report type

`DiagnosticReport.category` carries two slices with different jobs:

| | | |
| :--- | :--- | :--- |
| `mibi-category` | 1..1 | Marks the report as microbiological:`v2-0074#MB \|Microbiology\|`, mandatory, plus optionally`18725-2 \|Microbiology studies\|` |
| `mibi-sub-category` | 0..* | Clinical report type from`mii-vs-mikrobio-befundtyp-loinc`, e.g.`92894-5 \|Microbiology - bacterial studies\|` |

The report type is optional. A report that cannot be assigned to any of the study types, or that is to be classified only generally, is represented via `mibi-category` alone - a general report-type code is not needed for that and does not exist in this LOINC family either.

If a report covers several study types, for instance detection of bacteria **and** fungi, several sub-types are given:

```
"category": [
  { "coding": [
      { "system": "http://terminology.hl7.org/CodeSystem/v2-0074", "code": "MB", "display": "Microbiology" },
      { "system": "http://loinc.org", "code": "18725-2", "display": "Mikrobiologie" } ] },
  { "coding": [ { "system": "http://loinc.org", "code": "92894-5",
                  "display": "Microbiology - bacterial studies" } ] },
  { "coding": [ { "system": "http://loinc.org", "code": "96398-3",
                  "display": "Microbiology - mycology studies" } ] }
]

```

### The summarising conclusion

`DiagnosticReport.conclusion` carries the laboratory's summarising assessment as free text. It is Must Support, inherited from the laboratory base profile, and in serology it is the load-bearing part of the report rather than an addition.

The reason is that a serological diagnosis is often not any one of its measurements. In acute EBV infection, IgM against the viral capsid antigen appears first, VCA IgG follows, and EBNA IgG arises only after six to twelve weeks. Each of the three results is an Observation of its own; the statement "acute infection" or "past infection" follows from reading them together and is none of them. The European white paper puts it as "a serological report is often more than the sum of its parts" and asks that the conclusion be exchangeable, "free text to begin with".

`conclusionCode` is deliberately not constrained here. The white paper proposes free text for the time being, and this module has no value set for coded overall assessments.

### What the report bundles, and what the Observations carry

`DiagnosticReport.result` references the investigations the report covers, every step of a diagnostic chain among them, from the culture to a derived resistance category. The list is flat and carries no order: it says which investigations belong to this report, not how they relate to one another.

Those relationships are recorded on the Observations themselves — `triggeredBy` for a triggered follow-up investigation, `derivedFrom` for a derived result, `hasMember` for a panel held together by an organizer. A consumer therefore reads the report for the scope of a finding and the Observations for its structure. [Profile Selection and Delimitation](profilauswahl-und-abgrenzung.md) sets out the division of labour between the three.

### Examples

Example (minimal):

[mii-exa-mikrobio-diagnostic-report](DiagnosticReport-mii-exa-mikrobio-diagnostic-report.md)

**Usages:**

* Examples for this Profile: [DiagnosticReport/mii-exa-mikrobio-diagnostic-report](DiagnosticReport-mii-exa-mikrobio-diagnostic-report.md)
* CapabilityStatements using this Profile: [MII CPS Mikrobio Metadata](CapabilityStatement-mii-cps-mikrobio-metadata.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.medizininformatikinitiative.kerndatensatz.mikrobiologie|current/StructureDefinition/StructureDefinition-mii-pr-mikrobio-diagnostic-report.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots, and their representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-mii-pr-mikrobio-diagnostic-report.csv), [Excel](../StructureDefinition-mii-pr-mikrobio-diagnostic-report.xlsx), [Schematron](../StructureDefinition-mii-pr-mikrobio-diagnostic-report.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-pr-mikrobio-diagnostic-report",
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
  "url" : "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-diagnostic-report",
  "version" : "2027.0.0-ballot.rc1",
  "name" : "MII_PR_Mikrobio_Diagnostic_Report",
  "title" : "MII PR Mikrobio Diagnostic Report",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-09-11T12:56:10+00:00",
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
  "description" : "Mikrobiologischer Befundbericht zur Zusammenfassung und Kontextualisierung zugehöriger mikrobiologischer Untersuchungsergebnisse.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "purpose" : "Dieses Profil beschreibt den mikrobiologischen DiagnosticReport.",
  "fhirVersion" : "4.0.1",
  "kind" : "resource",
  "abstract" : false,
  "type" : "DiagnosticReport",
  "baseDefinition" : "https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/DiagnosticReportLab",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "DiagnosticReport",
      "path" : "DiagnosticReport"
    },
    {
      "id" : "DiagnosticReport.basedOn",
      "path" : "DiagnosticReport.basedOn",
      "max" : "1"
    },
    {
      "id" : "DiagnosticReport.category",
      "path" : "DiagnosticReport.category",
      "min" : 2
    },
    {
      "id" : "DiagnosticReport.category:mibi-category",
      "path" : "DiagnosticReport.category",
      "sliceName" : "mibi-category",
      "short" : "Mikrobiologie-Kategorie",
      "definition" : "Kategorie-Slice für mikrobiologische Befunde",
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
      "id" : "DiagnosticReport.category:mibi-sub-category",
      "path" : "DiagnosticReport.category",
      "sliceName" : "mibi-sub-category",
      "short" : "Mikrobiologie-Kategorie LOINC",
      "definition" : "Kategorie-Slice für die LOINC-Kodierung von mikrobiologischen Befunden. Mehrfachangabe zulaessig, wenn der Befund mehrere Studientypen umfasst, z. B. bakteriologisch und mykologisch. Umfasst der Befund keine benennbaren Studientypen oder soll er nur allgemein eingeordnet werden, entfaellt der Subtyp; die allgemeine Einordnung erfolgt dann allein ueber category[mibi-category] mit MB.",
      "min" : 0,
      "max" : "*",
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/ValueSet/mii-vs-mikrobio-befundtyp-loinc"
      }
    },
    {
      "id" : "DiagnosticReport.resultsInterpreter",
      "path" : "DiagnosticReport.resultsInterpreter",
      "mustSupport" : true
    },
    {
      "id" : "DiagnosticReport.result",
      "path" : "DiagnosticReport.result",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-allgemeine-kultur",
        "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-spezifische-kultur",
        "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-allgemeine-bestimmung",
        "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-spezifische-bestimmung",
        "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-keimzahl",
        "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-empfindlichkeit",
        "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-mikroskopie",
        "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-spezifische-mikroskopie",
        "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-antigen-antikoerper-quantitativ",
        "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-aviditaet",
        "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-ct-wert",
        "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-titer",
        "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-nugent-score",
        "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-bartlett-score",
        "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-molekulare-pathogenlast",
        "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-resistenzmechanismen-determinanten",
        "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-virulenzfaktor",
        "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-resistenzkategorie-status",
        "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-mrgn-klasse",
        "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-voraussichtliche-empfindlichkeit"]
      }]
    },
    {
      "id" : "DiagnosticReport.conclusion",
      "path" : "DiagnosticReport.conclusion",
      "short" : "Zusammenfassende Beurteilung des Labors im Freitext. Fuer serologische Befunde die tragende Stelle, weil sich die Diagnose dort erst aus der Zusammenschau mehrerer Einzelergebnisse ergibt."
    }]
  }
}

```
