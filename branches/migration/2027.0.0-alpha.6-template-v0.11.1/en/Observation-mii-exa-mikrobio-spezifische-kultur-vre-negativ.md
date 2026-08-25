# MII EXA Mikrobio Spezifische Kultur VRE negativ - MII Implementation Guide Microbiology v2027.0.0-alpha.6

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII EXA Mikrobio Spezifische Kultur VRE negativ**

## Example Observation: MII EXA Mikrobio Spezifische Kultur VRE negativ

-------

**English**

-------

Profile: [MII PR Mikrobio Spezifische Kultur](StructureDefinition-mii-pr-mikrobio-spezifische-kultur.md)

**identifier**: Observation Instance Identifier/spez-kultur-vre-neg-1

**status**: Final

**category**: Laboruntersuchungen

**code**: Vancomycin resistant enterococcus [Presence] in Specimen by Organism specific culture

**subject**: [Patient/example](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.laborbefund@2026.0.3&canonical=http://fhir.org/packages/de.medizininformatikinitiative.kerndatensatz.laborbefund/Patient/example)

**effective**: 2026-04-02 10:00:00+0100

**value**: No growth (qualifier value)

**method**: Mikroorganismusspezifische Kulturtechnik

**specimen**: [Specimen/example](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.laborbefund@2026.0.3&canonical=http://fhir.org/packages/de.medizininformatikinitiative.kerndatensatz.laborbefund/Specimen/example)



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-mikrobio-spezifische-kultur-vre-negativ",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-spezifische-kultur"]
  },
  "identifier" : [{
    "type" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
        "code" : "OBI"
      }]
    },
    "system" : "https://example.org/fhir/sid/test-lab-results",
    "value" : "spez-kultur-vre-neg-1",
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
      "code" : "13316-5",
      "display" : "Vancomycin resistant enterococcus [Presence] in Specimen by Organism specific culture"
    }]
  },
  "subject" : {
    "reference" : "Patient/example"
  },
  "effectiveDateTime" : "2026-04-02T10:00:00+01:00",
  "valueCodeableConcept" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "264868006",
      "display" : "No growth (qualifier value)"
    }]
  },
  "method" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "703752003",
      "display" : "Mikroorganismusspezifische Kulturtechnik"
    }]
  },
  "specimen" : {
    "reference" : "Specimen/example"
  }
}

```
