# MII EXA Mikrobio Keimzahl Katheterspitze - MII Implementation Guide Microbiology v2027.0.0-alpha.6

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII EXA Mikrobio Keimzahl Katheterspitze**

## Beispiel Observation: MII EXA Mikrobio Keimzahl Katheterspitze

-------

**German**

-------

Profile: [MII PR Mikrobio Keimzahl](StructureDefinition-mii-pr-mikrobio-keimzahl.md)

**identifier**: Observation Instance Identifier/keimzahl-katheterspitze-1

**status**: Final

**category**: Laboratory, Mikrobiologie

**code**: Colony count [#] in Specimen by Visual count

**subject**: [Anonymous Patient (no stated gender), DoB Unknown ( https://example.org/fhir/sid/test-patient#111)](Patient-mii-exa-mikrobio-patient.md)

**effective**: 2026-04-02 10:00:00+0100

**value**: 32 CFU (Details: UCUM code[CFU] = '[CFU]')

**interpretation**: Abnormal

**method**: Count of entities

**specimen**: [Specimen: identifier = https://example.org/fhir/sid/test-specimen#probe-katheterspitze-1; status = available; type = Catheter tip submitted as specimen; receivedTime = 2026-04-02 08:30:00+0100](Specimen-mii-exa-mikrobio-probe-katheterspitze.md)



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-mikrobio-keimzahl-katheterspitze",
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
    "value" : "keimzahl-katheterspitze-1",
    "assigner" : {
      "display" : "Universitätsklinikum Musterstadt"
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
      "code" : "564-5",
      "display" : "Colony count [#] in Specimen by Visual count"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-mikrobio-patient"
  },
  "effectiveDateTime" : "2026-04-02T10:00:00+01:00",
  "valueQuantity" : {
    "value" : 32,
    "unit" : "CFU",
    "system" : "http://unitsofmeasure.org",
    "code" : "[CFU]"
  },
  "interpretation" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
      "code" : "A",
      "display" : "Abnormal"
    }]
  }],
  "method" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "410681005",
      "display" : "Count of entities"
    }]
  },
  "specimen" : {
    "reference" : "Specimen/mii-exa-mikrobio-probe-katheterspitze"
  }
}

```
