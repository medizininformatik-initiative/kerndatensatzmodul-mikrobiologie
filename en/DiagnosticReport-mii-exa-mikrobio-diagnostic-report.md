# MII EXA Mikrobio Diagnostic Report - MII Implementation Guide Microbiology v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII EXA Mikrobio Diagnostic Report**

## Example DiagnosticReport: MII EXA Mikrobio Diagnostic Report

-------

**English**

-------

Profile: [MII PR Mikrobio Diagnostic Report](StructureDefinition-mii-pr-mikrobio-diagnostic-report.md)

## Laboratory report (Laboratory, Microbiology, Microbiology - bacterial studies) 

| | |
| :--- | :--- |
| Subject | Anonymous Patient (no stated gender), DoB Unknown ( https://example.org/fhir/sid/test-patient#111) |
| Relevant Time | 2026-04-02 10:00:00+0100 |
| Reported | 2026-04-02 10:30:00+0100 |
| Performer | [Organization Universitätsklinikum Musterstadt](Organization-mii-exa-mikrobio-labor.md) |
| Identifier | Filler Identifier/mikrobio-dr-1 |

**Report Details**

* **Code**: [Microorganism identified in Specimen by Culture](Observation-mii-exa-mikrobio-allgemeine-kultur.md)
  * **Value**: Organism growth
  * **Flags**: Final



## Resource Content

```json
{
  "resourceType" : "DiagnosticReport",
  "id" : "mii-exa-mikrobio-diagnostic-report",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-diagnostic-report"]
  },
  "identifier" : [{
    "type" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
        "code" : "FILL",
        "display" : "Filler Identifier"
      }]
    },
    "system" : "https://example.org/fhir/sid/test-befund",
    "value" : "mikrobio-dr-1",
    "assigner" : {
      "reference" : "Organization/mii-exa-mikrobio-labor"
    }
  }],
  "basedOn" : [{
    "identifier" : {
      "type" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
          "code" : "PLAC",
          "display" : "Placer Identifier"
        }]
      },
      "system" : "https://example.org/fhir/sid/test-anforderung",
      "value" : "111"
    }
  }],
  "status" : "final",
  "category" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v2-0074",
      "code" : "LAB",
      "display" : "Laboratory"
    },
    {
      "system" : "http://loinc.org",
      "version" : "2.82",
      "code" : "26436-6",
      "display" : "Laboratory studies (set)"
    }]
  },
  {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v2-0074",
      "code" : "MB",
      "display" : "Microbiology"
    }]
  },
  {
    "coding" : [{
      "system" : "http://loinc.org",
      "version" : "2.82",
      "code" : "92894-5",
      "display" : "Microbiology - bacterial studies"
    }]
  }],
  "code" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "version" : "2.82",
      "code" : "11502-2",
      "display" : "Laboratory report"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-mikrobio-patient"
  },
  "effectiveDateTime" : "2026-04-02T10:00:00+01:00",
  "issued" : "2026-04-02T10:30:00+01:00",
  "performer" : [{
    "reference" : "Organization/mii-exa-mikrobio-labor"
  }],
  "result" : [{
    "reference" : "Observation/mii-exa-mikrobio-allgemeine-kultur"
  }]
}

```
