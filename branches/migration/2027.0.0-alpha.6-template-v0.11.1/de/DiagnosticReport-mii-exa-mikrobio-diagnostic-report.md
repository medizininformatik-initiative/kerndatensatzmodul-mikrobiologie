# mii-exa-mikrobio-diagnostic-report - MII Implementation Guide Microbiology v2027.0.0-alpha.6

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **mii-exa-mikrobio-diagnostic-report**

## Beispiel DiagnosticReport: mii-exa-mikrobio-diagnostic-report

-------

**German**

-------

Profile: [MII PR Mikrobio Diagnostic Report](StructureDefinition-mii-pr-mikrobio-diagnostic-report.md)

## Laborbericht (Laboratory, Microbiology, Microbiology - bacterial studies) 

| | |
| :--- | :--- |
| Subject | Anonymous Patient (no stated gender), DoB Unknown ( https://example.org/fhir/sid/test-patient#111) |
| Relevant Time | 2026-04-02 10:00:00+0100 |
| Reported | 2026-04-02 10:30:00+0100 |
| Identifier | Filler Identifier/mikrobio-dr-1 |

**Report Details**

* **Code**: [Microorganism identified in Specimen by Culture](Observation-mii-exa-mikrobio-allgemeine-kultur.md)
  * **Value**: Organism growth
  * **Flags**: Final

-------

Anonymous Patient (no stated gender), DoB Unknown ( https://example.org/fhir/sid/test-patient#111)

-------



## Resource Content

```json
{
  "resourceType" : "DiagnosticReport",
  "id" : "mii-exa-mikrobio-diagnostic-report",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-diagnostic-report"]
  },
  "contained" : [{
    "resourceType" : "Patient",
    "id" : "mii-exa-mikrobio-patient-inline",
    "identifier" : [{
      "system" : "https://example.org/fhir/sid/test-patient",
      "value" : "111"
    }]
  }],
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
      "display" : "Universitätsklinikum Musterstadt"
    }
  }],
  "basedOn" : [{
    "reference" : "ServiceRequest/111"
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
      "code" : "26436-6",
      "display" : "Laboruntersuchungen"
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
      "code" : "92894-5",
      "display" : "Microbiology - bacterial studies"
    }]
  }],
  "code" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "11502-2",
      "display" : "Laborbericht"
    }]
  },
  "subject" : {
    "reference" : "#mii-exa-mikrobio-patient-inline"
  },
  "effectiveDateTime" : "2026-04-02T10:00:00+01:00",
  "issued" : "2026-04-02T10:30:00+01:00",
  "result" : [{
    "reference" : "Observation/mii-exa-mikrobio-allgemeine-kultur"
  }]
}

```
