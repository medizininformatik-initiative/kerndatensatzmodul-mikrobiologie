# MII EXA Mikrobio Workflow Urin 3 Keimzahl - MII Implementation Guide Microbiology v2027.0.0-ballot2

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII EXA Mikrobio Workflow Urin 3 Keimzahl**

## Beispiel Observation: MII EXA Mikrobio Workflow Urin 3 Keimzahl

-------

**German**

-------

Profile: [MII PR Mikrobio Keimzahl](StructureDefinition-mii-pr-mikrobio-keimzahl.md)

**identifier**: Observation Instance Identifier/wf-urin-3

**status**: Final

**category**: Laboratory, Mikrobiologie

**code**: Colony count [#/volume] in Specimen by Visual count

**subject**: [Anonymous Patient (no stated gender), DoB Unknown ( https://example.org/fhir/sid/test-patient#111)](Patient-mii-exa-mikrobio-patient.md)

**effective**: 2026-05-05 08:00:00+0100

**performer**: [Organization Universitätsklinikum Musterstadt](Organization-mii-exa-mikrobio-labor.md)

**value**: 100000 [CFU]/mL (Details: UCUM code[CFU]/mL = '[CFU]/mL')

**method**: Count of entities

**specimen**: [Specimen: identifier = https://example.org/fhir/sid/test-specimen#probe-urin-1; status = available; type = Mid-stream urine specimen; receivedTime = 2026-05-04 08:30:00+0100](Specimen-mii-exa-mikrobio-probe-urin.md)



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-mikrobio-workflow-urin-03-keimzahl",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-keimzahl"]
  },
  "identifier" : [{
    "type" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
        "code" : "OBI"
      }]
    },
    "system" : "https://example.org/fhir/sid/test-lab-results",
    "value" : "wf-urin-3",
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
      "code" : "49223-1",
      "display" : "Colony count [#/volume] in Specimen by Visual count"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-mikrobio-patient"
  },
  "effectiveDateTime" : "2026-05-05T08:00:00+01:00",
  "performer" : [{
    "reference" : "Organization/mii-exa-mikrobio-labor"
  }],
  "valueQuantity" : {
    "value" : 100000,
    "unit" : "[CFU]/mL",
    "system" : "http://unitsofmeasure.org",
    "code" : "[CFU]/mL"
  },
  "method" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "version" : "http://snomed.info/sct/900000000000207008/version/20260701",
      "code" : "410681005",
      "display" : "Count of entities"
    }]
  },
  "specimen" : {
    "reference" : "Specimen/mii-exa-mikrobio-probe-urin"
  }
}

```
