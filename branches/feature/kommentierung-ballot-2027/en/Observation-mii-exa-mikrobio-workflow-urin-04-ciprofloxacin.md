# MII EXA Mikrobio Workflow Urin 4 Ciprofloxacin - MII Implementation Guide Microbiology v2027.0.0-ballot2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII EXA Mikrobio Workflow Urin 4 Ciprofloxacin**

## Example Observation: MII EXA Mikrobio Workflow Urin 4 Ciprofloxacin

-------

**English**

-------

Profile: [MII PR Mikrobio Empfindlichkeit](StructureDefinition-mii-pr-mikrobio-empfindlichkeit.md)

> **R5: Triggering observation(s) (new)**
* observation: [Observation Microorganism or agent identified in Specimen](Observation-mii-exa-mikrobio-workflow-urin-02-identifikation.md)
* type: reflex

**identifier**: Observation Instance Identifier/wf-urin-4-cip

**status**: Final

**category**: Laboratory, Microbiology

**code**: Ciprofloxacin [Susceptibility]

**subject**: [Anonymous Patient (no stated gender), DoB Unknown ( https://example.org/fhir/sid/test-patient#111)](Patient-mii-exa-mikrobio-patient.md)

**effective**: 2026-05-06 10:00:00+0100

**performer**: [Organization Universitätsklinikum Musterstadt](Organization-mii-exa-mikrobio-labor.md)

**value**: 4 mg/L (Details: UCUM codemg/L = 'mg/L')

**interpretation**: Resistant

**specimen**: [Specimen: identifier = https://example.org/fhir/sid/test-specimen#probe-urin-1-isolat-1; status = available; type = Microbial isolate](Specimen-mii-exa-mikrobio-probe-urin-isolat.md)



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-mikrobio-workflow-urin-04-ciprofloxacin",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-empfindlichkeit"]
  },
  "extension" : [{
    "extension" : [{
      "url" : "observation",
      "valueReference" : {
        "reference" : "Observation/mii-exa-mikrobio-workflow-urin-02-identifikation"
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
    "value" : "wf-urin-4-cip",
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
      "code" : "18906-8",
      "display" : "Ciprofloxacin [Susceptibility]"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-mikrobio-patient"
  },
  "effectiveDateTime" : "2026-05-06T10:00:00+01:00",
  "performer" : [{
    "reference" : "Organization/mii-exa-mikrobio-labor"
  }],
  "valueQuantity" : {
    "value" : 4,
    "unit" : "mg/L",
    "system" : "http://unitsofmeasure.org",
    "code" : "mg/L"
  },
  "interpretation" : [{
    "extension" : [{
      "url" : "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-ex-mikrobio-empfindlichkeit-norm",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/CodeSystem/mii-cs-mikrobio-susceptibility-norm",
          "code" : "EUCAST",
          "display" : "EUCAST"
        }]
      }
    }],
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
      "code" : "R",
      "display" : "Resistant"
    }]
  }],
  "specimen" : {
    "reference" : "Specimen/mii-exa-mikrobio-probe-urin-isolat"
  }
}

```
