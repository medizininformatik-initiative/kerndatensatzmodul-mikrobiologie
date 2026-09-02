# mii-exa-mikrobio-ct-wert - MII Implementation Guide Microbiology v2027.0.0-alpha.6

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **mii-exa-mikrobio-ct-wert**

## Beispiel Observation: mii-exa-mikrobio-ct-wert

-------

**German**

-------

Profile: [MII PR Mikrobio CT Wert](StructureDefinition-mii-pr-mikrobio-ct-wert.md)

**identifier**: Observation Instance Identifier/ct-1

**status**: Final

**category**: Laboruntersuchungen

**code**: Influenza virus A H3 RNA [Cycle Threshold #] in Specimen by NAA with probe detection

**subject**: [Patient/example](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.laborbefund@2026.0.3&canonical=http://fhir.org/packages/de.medizininformatikinitiative.kerndatensatz.laborbefund/Patient/example)

**effective**: 2026-04-02 10:00:00+0100

**value**: 21.3 1 (Details: UCUM code1 = '1')

**method**: Real-time polymerase chain reaction technique

**specimen**: [Specimen/example](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.laborbefund@2026.0.3&canonical=http://fhir.org/packages/de.medizininformatikinitiative.kerndatensatz.laborbefund/Specimen/example)

**derivedFrom**: [Observation Microorganism identified in Isolate or Specimen by Molecular genetics method](Observation-mii-exa-mikrobio-spezifische-bestimmung.md)



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-mikrobio-ct-wert",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-ct-wert"]
  },
  "identifier" : [{
    "type" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
        "code" : "OBI"
      }]
    },
    "system" : "https://example.org/fhir/sid/test-lab-results",
    "value" : "ct-1",
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
      "code" : "74039-9",
      "display" : "Influenza virus A H3 RNA [Cycle Threshold #] in Specimen by NAA with probe detection"
    }]
  },
  "subject" : {
    "reference" : "Patient/example"
  },
  "effectiveDateTime" : "2026-04-02T10:00:00+01:00",
  "valueQuantity" : {
    "value" : 21.3,
    "unit" : "1",
    "system" : "http://unitsofmeasure.org",
    "code" : "1"
  },
  "method" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "70601000052104",
      "display" : "Real-time polymerase chain reaction technique"
    }]
  },
  "specimen" : {
    "reference" : "Specimen/example"
  },
  "derivedFrom" : [{
    "reference" : "Observation/mii-exa-mikrobio-spezifische-bestimmung"
  }]
}

```
