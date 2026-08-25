# mii-exa-mikrobio-allgemeine-bestimmung - MII Implementation Guide Microbiology v2027.0.0-alpha.6

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-mikrobio-allgemeine-bestimmung**

## Example Observation: mii-exa-mikrobio-allgemeine-bestimmung

-------

**English**

-------

Profile: [MII PR Mikrobio Allgemeine Bestimmung](StructureDefinition-mii-pr-mikrobio-allgemeine-bestimmung.md)

> **R5: Triggering observation(s) (new)**
* observation: [Observation Microorganism identified in Specimen by Culture](Observation-mii-exa-mikrobio-allgemeine-kultur.md)
* type: reflex

**identifier**: Observation Instance Identifier/allg-best-1

**status**: Final

**category**: Laboruntersuchungen

**code**: Microorganism or agent identified in Specimen

**subject**: [Patient/example](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.laborbefund@2026.0.3&canonical=http://fhir.org/packages/de.medizininformatikinitiative.kerndatensatz.laborbefund/Patient/example)

**effective**: 2026-04-02 10:00:00+0100

**value**: Pseudomonas aeruginosa

**method**: Microscopy technique

**specimen**: [Specimen/example](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.laborbefund@2026.0.3&canonical=http://fhir.org/packages/de.medizininformatikinitiative.kerndatensatz.laborbefund/Specimen/example)



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-mikrobio-allgemeine-bestimmung",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-allgemeine-bestimmung"]
  },
  "extension" : [{
    "extension" : [{
      "url" : "observation",
      "valueReference" : {
        "reference" : "Observation/mii-exa-mikrobio-allgemeine-kultur"
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
    "value" : "allg-best-1",
    "assigner" : {
      "display" : "Universitätsklinikum Musterstadt"
    }
  }],
  "status" : "final",
  "category" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v2-0074",
      "code" : "MB"
    },
    {
      "system" : "http://loinc.org",
      "code" : "26436-6",
      "display" : "Laboruntersuchungen"
    },
    {
      "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
      "code" : "laboratory",
      "display" : "Laboratory"
    },
    {
      "system" : "http://loinc.org",
      "code" : "18725-2",
      "display" : "Mikrobiologie"
    }]
  }],
  "code" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "41852-5",
      "display" : "Microorganism or agent identified in Specimen"
    }]
  },
  "subject" : {
    "reference" : "Patient/example"
  },
  "effectiveDateTime" : "2026-04-02T10:00:00+01:00",
  "valueCodeableConcept" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "52499004",
      "display" : "Pseudomonas aeruginosa"
    }]
  },
  "method" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "278289002",
      "display" : "Microscopy technique"
    }]
  },
  "specimen" : {
    "reference" : "Specimen/example"
  }
}

```
