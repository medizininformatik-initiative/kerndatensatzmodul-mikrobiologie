# MII EXA Mikrobio Workflow Urin 5 MRGN-Klasse - MII Implementation Guide Microbiology v2027.0.0-ballot2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII EXA Mikrobio Workflow Urin 5 MRGN-Klasse**

## Example Observation: MII EXA Mikrobio Workflow Urin 5 MRGN-Klasse

-------

**English**

-------

Profile: [MII PR Mikrobio MRGN Klasse](StructureDefinition-mii-pr-mikrobio-mrgn-klasse.md)

**identifier**: Observation Instance Identifier/wf-urin-5

**status**: Final

**category**: Laboratory, Microbiology

**code**: Multidrug resistant gram-negative organism classification [Type]

**subject**: [Anonymous Patient (no stated gender), DoB Unknown ( https://example.org/fhir/sid/test-patient#111)](Patient-mii-exa-mikrobio-patient.md)

**effective**: 2026-05-06 11:00:00+0100

**performer**: [Organization Universitätsklinikum Musterstadt](Organization-mii-exa-mikrobio-labor.md)

**value**: 3MRGN

**specimen**: [Specimen: identifier = https://example.org/fhir/sid/test-specimen#probe-urin-1-isolat-1; status = available; type = Microbial isolate](Specimen-mii-exa-mikrobio-probe-urin-isolat.md)

**derivedFrom**: 

* [Observation Microorganism or agent identified in Specimen](Observation-mii-exa-mikrobio-workflow-urin-02-identifikation.md)
* [Observation Piperacillin [Susceptibility]](Observation-mii-exa-mikrobio-workflow-urin-04-piperacillin.md)
* [Observation Cefotaxime [Susceptibility]](Observation-mii-exa-mikrobio-workflow-urin-04-cefotaxim.md)
* [Observation Ciprofloxacin [Susceptibility]](Observation-mii-exa-mikrobio-workflow-urin-04-ciprofloxacin.md)
* [Observation Meropenem [Susceptibility]](Observation-mii-exa-mikrobio-workflow-urin-04-meropenem.md)



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-mikrobio-workflow-urin-05-mrgn-klasse",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-mrgn-klasse"]
  },
  "identifier" : [{
    "type" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
        "code" : "OBI"
      }]
    },
    "system" : "https://example.org/fhir/sid/test-lab-results",
    "value" : "wf-urin-5",
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
      "code" : "99780-9",
      "display" : "Multidrug resistant gram-negative organism classification [Type]"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-mikrobio-patient"
  },
  "effectiveDateTime" : "2026-05-06T11:00:00+01:00",
  "performer" : [{
    "reference" : "Organization/mii-exa-mikrobio-labor"
  }],
  "valueCodeableConcept" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "version" : "2.83",
      "code" : "LA33215-7",
      "display" : "3MRGN"
    }]
  },
  "specimen" : {
    "reference" : "Specimen/mii-exa-mikrobio-probe-urin-isolat"
  },
  "derivedFrom" : [{
    "reference" : "Observation/mii-exa-mikrobio-workflow-urin-02-identifikation"
  },
  {
    "reference" : "Observation/mii-exa-mikrobio-workflow-urin-04-piperacillin"
  },
  {
    "reference" : "Observation/mii-exa-mikrobio-workflow-urin-04-cefotaxim"
  },
  {
    "reference" : "Observation/mii-exa-mikrobio-workflow-urin-04-ciprofloxacin"
  },
  {
    "reference" : "Observation/mii-exa-mikrobio-workflow-urin-04-meropenem"
  }]
}

```
