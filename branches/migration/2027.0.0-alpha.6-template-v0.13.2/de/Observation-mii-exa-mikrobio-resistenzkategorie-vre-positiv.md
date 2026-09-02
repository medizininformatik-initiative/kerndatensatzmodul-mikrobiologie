# MII EXA Mikrobio Resistenzkategorie VRE positiv - MII Implementation Guide Microbiology v2027.0.0-alpha.6

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII EXA Mikrobio Resistenzkategorie VRE positiv**

## Beispiel Observation: MII EXA Mikrobio Resistenzkategorie VRE positiv

-------

**German**

-------

Profile: [MII PR Mikrobio Resistenzkategorie Status](StructureDefinition-mii-pr-mikrobio-resistenzkategorie-status.md)

**identifier**: Observation Instance Identifier/reskat-vre-pos

**status**: Final

**category**: Laboruntersuchungen

**code**: VRE-Status

**subject**: [Patient/example](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.laborbefund@2026.0.3&canonical=http://fhir.org/packages/de.medizininformatikinitiative.kerndatensatz.laborbefund/Patient/example)

**effective**: 2026-04-03 15:00:00+0100

**value**: Positive

**specimen**: [Specimen/example](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.laborbefund@2026.0.3&canonical=http://fhir.org/packages/de.medizininformatikinitiative.kerndatensatz.laborbefund/Specimen/example)

**derivedFrom**: 

* [Observation Microorganism or agent identified in Specimen](Observation-mii-exa-mikrobio-workflow-vre-02-identifikation.md)
* [Observation Vancomycin [Susceptibility] by Minimum inhibitory concentration (MIC)](Observation-mii-exa-mikrobio-workflow-vre-03-empfindlichkeit.md)



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-mikrobio-resistenzkategorie-vre-positiv",
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
    "value" : "reskat-vre-pos",
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
      "system" : "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/CodeSystem/mii-cs-mikrobio-resistenzkategorie",
      "code" : "vre-status",
      "display" : "VRE-Status"
    }]
  },
  "subject" : {
    "reference" : "Patient/example"
  },
  "effectiveDateTime" : "2026-04-03T15:00:00+01:00",
  "valueCodeableConcept" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "10828004",
      "display" : "Positive"
    }]
  },
  "specimen" : {
    "reference" : "Specimen/example"
  },
  "derivedFrom" : [{
    "reference" : "Observation/mii-exa-mikrobio-workflow-vre-02-identifikation"
  },
  {
    "reference" : "Observation/mii-exa-mikrobio-workflow-vre-03-empfindlichkeit"
  }]
}

```
