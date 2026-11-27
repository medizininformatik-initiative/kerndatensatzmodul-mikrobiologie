# MII EXA Mikrobio Workflow Urin 2 Identifikation - MII Implementation Guide Microbiology v2027.0.0-ballot2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII EXA Mikrobio Workflow Urin 2 Identifikation**

## Example Observation: MII EXA Mikrobio Workflow Urin 2 Identifikation

-------

**English**

-------

Profile: [MII PR Mikrobio Allgemeine Bestimmung (Identifizierung)](StructureDefinition-mii-pr-mikrobio-allgemeine-bestimmung.md)

> **R5: Triggering observation(s) (new)**
* observation: [Observation Microorganism identified in Specimen by Culture](Observation-mii-exa-mikrobio-workflow-urin-01-kultur.md)
* type: reflex

**identifier**: Observation Instance Identifier/wf-urin-2

**status**: Final

**category**: Laboratory, Microbiology

**code**: Microorganism or agent identified in Specimen

**subject**: [Anonymous Patient (no stated gender), DoB Unknown ( https://example.org/fhir/sid/test-patient#111)](Patient-mii-exa-mikrobio-patient.md)

**effective**: 2026-05-05 09:00:00+0100

**performer**: [Organization Universitätsklinikum Musterstadt](Organization-mii-exa-mikrobio-labor.md)

**value**: Escherichia coli

**method**: Matrix assisted laser desorption ionization time of flight mass spectrometry technique (qualifier value)

**specimen**: [Specimen: identifier = https://example.org/fhir/sid/test-specimen#probe-urin-1-isolat-1; status = available; type = Microbial isolate](Specimen-mii-exa-mikrobio-probe-urin-isolat.md)

**hasMember**: [Observation Colony count [#/volume] in Specimen by Visual count](Observation-mii-exa-mikrobio-workflow-urin-03-keimzahl.md)



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-mikrobio-workflow-urin-02-identifikation",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-allgemeine-bestimmung"]
  },
  "extension" : [{
    "extension" : [{
      "url" : "observation",
      "valueReference" : {
        "reference" : "Observation/mii-exa-mikrobio-workflow-urin-01-kultur"
      }
    },
    {
      "url" : "type",
      "valueCode" : "reflex"
    }],
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-Observation.triggeredBy"
  }],
  "identifier" : [{
    "type" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
        "code" : "OBI"
      }]
    },
    "system" : "https://example.org/fhir/sid/test-lab-results",
    "value" : "wf-urin-2",
    "assigner" : {
      "reference" : "Organization/mii-exa-mikrobio-labor"
    }
  }],
  "status" : "final",
  "category" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
      "code" : "laboratory",
      "display" : "Laboratory"
    },
    {
      "system" : "http://loinc.org",
      "version" : "2.83",
      "code" : "26436-6",
      "display" : "Laboratory studies (set)"
    }]
  },
  {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v2-0074",
      "code" : "MB"
    }]
  }],
  "code" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "version" : "2.83",
      "code" : "41852-5",
      "display" : "Microorganism or agent identified in Specimen"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-mikrobio-patient"
  },
  "effectiveDateTime" : "2026-05-05T09:00:00+01:00",
  "performer" : [{
    "reference" : "Organization/mii-exa-mikrobio-labor"
  }],
  "valueCodeableConcept" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "version" : "http://snomed.info/sct/900000000000207008/version/20260701",
      "code" : "112283007",
      "display" : "Escherichia coli"
    }]
  },
  "method" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "version" : "http://snomed.info/sct/900000000000207008/version/20260701",
      "code" : "83581000052107",
      "display" : "Matrix assisted laser desorption ionization time of flight mass spectrometry technique (qualifier value)"
    }]
  },
  "specimen" : {
    "reference" : "Specimen/mii-exa-mikrobio-probe-urin-isolat"
  },
  "hasMember" : [{
    "reference" : "Observation/mii-exa-mikrobio-workflow-urin-03-keimzahl"
  }]
}

```
