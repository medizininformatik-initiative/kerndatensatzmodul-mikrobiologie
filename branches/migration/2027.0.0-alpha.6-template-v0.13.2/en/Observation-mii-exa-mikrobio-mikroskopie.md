# mii-exa-mikrobio-mikroskopie - MII Implementation Guide Microbiology v2027.0.0-alpha.6

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-mikrobio-mikroskopie**

## Example Observation: mii-exa-mikrobio-mikroskopie

-------

**English**

-------

Profile: [MII PR Mikrobio Mikroskopie](StructureDefinition-mii-pr-mikrobio-mikroskopie.md)

**identifier**: Observation Instance Identifier/mikroskopie-1

**status**: Final

**category**: Laboratory studies (set)

**code**: Microscopic observation [Identifier] in Specimen

**subject**: [Anonymous Patient (no stated gender), DoB Unknown ( https://example.org/fhir/sid/test-patient#111)](Patient-mii-exa-mikrobio-patient.md)

**effective**: 2026-04-02 10:00:00+0100

**value**: Gram-positive cocci in clusters (finding)

**method**: Microscopy technique

**specimen**: [Specimen: identifier = https://example.org/fhir/sid/test-specimen#probe-1; status = available; type = Specimen; receivedTime = 2026-04-02 08:30:00+0100](Specimen-mii-exa-mikrobio-probe.md)



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-mikrobio-mikroskopie",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-mikroskopie"]
  },
  "identifier" : [{
    "type" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
        "code" : "OBI"
      }]
    },
    "system" : "https://example.org/fhir/sid/test-lab-results",
    "value" : "mikroskopie-1",
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
      "display" : "Laboratory studies (set)"
    },
    {
      "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
      "code" : "laboratory",
      "display" : "Laboratory"
    },
    {
      "system" : "http://loinc.org",
      "code" : "18725-2",
      "display" : "Microbiology studies (set)"
    }]
  }],
  "code" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "105059-0",
      "display" : "Microscopic observation [Identifier] in Specimen"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-mikrobio-patient"
  },
  "effectiveDateTime" : "2026-04-02T10:00:00+01:00",
  "valueCodeableConcept" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "70003006",
      "display" : "Gram-positive cocci in clusters (finding)"
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
    "reference" : "Specimen/mii-exa-mikrobio-probe"
  }
}

```
