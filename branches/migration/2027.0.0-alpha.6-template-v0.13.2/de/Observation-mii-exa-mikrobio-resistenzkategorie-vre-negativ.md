# MII EXA Mikrobio Resistenzkategorie VRE negativ - MII Implementation Guide Microbiology v2027.0.0-alpha.6

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII EXA Mikrobio Resistenzkategorie VRE negativ**

## Beispiel Observation: MII EXA Mikrobio Resistenzkategorie VRE negativ

-------

**German**

-------

Profile: [MII PR Mikrobio Resistenzkategorie Status](StructureDefinition-mii-pr-mikrobio-resistenzkategorie-status.md)

**identifier**: Observation Instance Identifier/reskat-vre-neg

**status**: Final

**category**: Laboratory studies (set)

**code**: VRE-Status

**subject**: [Anonymous Patient (no stated gender), DoB Unknown ( https://example.org/fhir/sid/test-patient#111)](Patient-mii-exa-mikrobio-patient.md)

**effective**: 2026-04-03 15:00:00+0100

**value**: Negative

**specimen**: [Specimen: identifier = https://example.org/fhir/sid/test-specimen#probe-1; status = available; type = Specimen; receivedTime = 2026-04-02 08:30:00+0100](Specimen-mii-exa-mikrobio-probe.md)

**derivedFrom**: 

* [Observation Microorganism or agent identified in Specimen](Observation-mii-exa-mikrobio-workflow-vre-02-identifikation.md)
* [Observation Cefcapene [Susceptibility]](Observation-mii-exa-mikrobio-empfindlichkeit.md)



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-mikrobio-resistenzkategorie-vre-negativ",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-resistenzkategorie-status"]
  },
  "identifier" : [{
    "type" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
        "code" : "OBI"
      }]
    },
    "system" : "https://example.org/fhir/sid/test-lab-results",
    "value" : "reskat-vre-neg",
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
      "system" : "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/CodeSystem/mii-cs-mikrobio-resistenzkategorie",
      "code" : "vre-status",
      "display" : "VRE-Status"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-mikrobio-patient"
  },
  "effectiveDateTime" : "2026-04-03T15:00:00+01:00",
  "valueCodeableConcept" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "260385009",
      "display" : "Negative"
    }]
  },
  "specimen" : {
    "reference" : "Specimen/mii-exa-mikrobio-probe"
  },
  "derivedFrom" : [{
    "reference" : "Observation/mii-exa-mikrobio-workflow-vre-02-identifikation"
  },
  {
    "reference" : "Observation/mii-exa-mikrobio-empfindlichkeit"
  }]
}

```
