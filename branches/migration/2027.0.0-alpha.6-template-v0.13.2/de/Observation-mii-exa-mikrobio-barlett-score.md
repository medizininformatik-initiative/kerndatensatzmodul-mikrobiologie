# mii-exa-mikrobio-barlett-score - MII Implementation Guide Microbiology v2027.0.0-alpha.6

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **mii-exa-mikrobio-barlett-score**

## Beispiel Observation: mii-exa-mikrobio-barlett-score

-------

**German**

-------

Profile: [MII PR Mikrobio Barlett Score](StructureDefinition-mii-pr-mikrobio-barlett-score.md)

**identifier**: Observation Instance Identifier/barlett-1

**status**: Final

**category**: Laboratory studies (set)

**code**: Bartlett score of Sputum Qualitative by Light microscopy

**subject**: [Anonymous Patient (no stated gender), DoB Unknown ( https://example.org/fhir/sid/test-patient#111)](Patient-mii-exa-mikrobio-patient.md)

**effective**: 2026-04-02 10:00:00+0100

**value**: +1 Active inflammation

**method**: Light microscopy

**specimen**: [Specimen: identifier = https://example.org/fhir/sid/test-specimen#probe-1; status = available; type = Specimen; receivedTime = 2026-04-02 08:30:00+0100](Specimen-mii-exa-mikrobio-probe.md)



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-mikrobio-barlett-score",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-barlett-score"]
  },
  "identifier" : [{
    "type" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
        "code" : "OBI"
      }]
    },
    "system" : "https://example.org/fhir/sid/test-lab-results",
    "value" : "barlett-1",
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
      "code" : "75371-5",
      "display" : "Bartlett score of Sputum Qualitative by Light microscopy"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-mikrobio-patient"
  },
  "effectiveDateTime" : "2026-04-02T10:00:00+01:00",
  "valueCodeableConcept" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "LA21390-2",
      "display" : "+1 Active inflammation"
    }]
  },
  "method" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "702661004",
      "display" : "Light microscopy"
    }]
  },
  "specimen" : {
    "reference" : "Specimen/mii-exa-mikrobio-probe"
  }
}

```
