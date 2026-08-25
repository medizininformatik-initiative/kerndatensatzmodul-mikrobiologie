# mii-exa-mikrobio-molekulare-pathogenlast - MII Implementation Guide Microbiology v2027.0.0-alpha.6

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **mii-exa-mikrobio-molekulare-pathogenlast**

## Beispiel Observation: mii-exa-mikrobio-molekulare-pathogenlast

-------

**German**

-------

Profile: [MII PR Mikrobio Molekulare Pathogenlast](StructureDefinition-mii-pr-mikrobio-molekulare-pathogenlast.md)

**identifier**: Observation Instance Identifier/pathogenlast-1

**status**: Final

**category**: Laboruntersuchungen

**code**: Cytomegalovirus DNA [#/volume] (viral load) in Specimen by NAA with probe detection

**subject**: [Patient/example](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.laborbefund@2026.0.3&canonical=http://fhir.org/packages/de.medizininformatikinitiative.kerndatensatz.laborbefund/Patient/example)

**effective**: 2026-04-02 10:00:00+0100

**value**: 350000 Copies/mL (Details: UCUM code1/mL = '1/mL')

**method**: Real-time polymerase chain reaction technique

**specimen**: [Specimen/example](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.laborbefund@2026.0.3&canonical=http://fhir.org/packages/de.medizininformatikinitiative.kerndatensatz.laborbefund/Specimen/example)



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-mikrobio-molekulare-pathogenlast",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-molekulare-pathogenlast"]
  },
  "identifier" : [{
    "type" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
        "code" : "OBI"
      }]
    },
    "system" : "https://example.org/fhir/sid/test-lab-results",
    "value" : "pathogenlast-1",
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
      "code" : "33006-8",
      "display" : "Cytomegalovirus DNA [#/volume] (viral load) in Specimen by NAA with probe detection"
    }]
  },
  "subject" : {
    "reference" : "Patient/example"
  },
  "effectiveDateTime" : "2026-04-02T10:00:00+01:00",
  "valueQuantity" : {
    "value" : 350000,
    "unit" : "Copies/mL",
    "system" : "http://unitsofmeasure.org",
    "code" : "1/mL"
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
  }
}

```
