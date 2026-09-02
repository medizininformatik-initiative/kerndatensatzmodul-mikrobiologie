# mii-exa-mikrobio-keimzahl - MII Implementation Guide Microbiology v2027.0.0-alpha.6

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **mii-exa-mikrobio-keimzahl**

## Beispiel Observation: mii-exa-mikrobio-keimzahl

-------

**German**

-------

Profile: [MII PR Mikrobio Keimzahl](StructureDefinition-mii-pr-mikrobio-keimzahl.md)

**identifier**: Observation Instance Identifier/keimzahl-1

**status**: Final

**category**: Laboruntersuchungen

**code**: Colony count [#/volume] in Specimen by Visual count

**subject**: [Patient/example](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.laborbefund@2026.0.3&canonical=http://fhir.org/packages/de.medizininformatikinitiative.kerndatensatz.laborbefund/Patient/example)

**effective**: 2026-04-02 10:00:00+0100

**value**: 100000 /mL (Details: UCUM code/mL = '/mL')

**method**: Count of entities

**specimen**: [Specimen/example](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.laborbefund@2026.0.3&canonical=http://fhir.org/packages/de.medizininformatikinitiative.kerndatensatz.laborbefund/Specimen/example)



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-mikrobio-keimzahl",
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
    "value" : "keimzahl-1",
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
      "code" : "49223-1",
      "display" : "Colony count [#/volume] in Specimen by Visual count"
    }]
  },
  "subject" : {
    "reference" : "Patient/example"
  },
  "effectiveDateTime" : "2026-04-02T10:00:00+01:00",
  "valueQuantity" : {
    "value" : 100000,
    "unit" : "/mL",
    "system" : "http://unitsofmeasure.org",
    "code" : "/mL"
  },
  "method" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "410681005",
      "display" : "Count of entities"
    }]
  },
  "specimen" : {
    "reference" : "Specimen/example"
  }
}

```
