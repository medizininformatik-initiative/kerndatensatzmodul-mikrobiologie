# MII EXA Mikrobio MRGN Klasse negativ - MII Implementation Guide Microbiology v2027.0.0-alpha.6

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII EXA Mikrobio MRGN Klasse negativ**

## Beispiel Observation: MII EXA Mikrobio MRGN Klasse negativ

-------

**German**

-------

Profile: [MII PR Mikrobio MRGN Klasse](StructureDefinition-mii-pr-mikrobio-mrgn-klasse.md)

**identifier**: Observation Instance Identifier/mrgn-neg-1

**status**: Final

**category**: Laboruntersuchungen

**code**: Multidrug resistant gram-negative organism classification [Type]

**subject**: [Patient/example](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.laborbefund@2026.0.3&canonical=http://fhir.org/packages/de.medizininformatikinitiative.kerndatensatz.laborbefund/Patient/example)

**effective**: 2026-04-02 10:00:00+0100

**value**: Keine MRGN-Klasse

**specimen**: [Specimen/example](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.laborbefund@2026.0.3&canonical=http://fhir.org/packages/de.medizininformatikinitiative.kerndatensatz.laborbefund/Specimen/example)

**derivedFrom**: [Observation Cefcapene [Susceptibility]](Observation-mii-exa-mikrobio-empfindlichkeit.md)



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-mikrobio-mrgn-klasse-negativ",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-mrgn-klasse"]
  },
  "identifier" : [{
    "type" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
        "code" : "OBI"
      }]
    },
    "system" : "https://example.org/fhir/sid/test-lab-results",
    "value" : "mrgn-neg-1",
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
      "code" : "99780-9",
      "display" : "Multidrug resistant gram-negative organism classification [Type]"
    }]
  },
  "subject" : {
    "reference" : "Patient/example"
  },
  "effectiveDateTime" : "2026-04-02T10:00:00+01:00",
  "valueCodeableConcept" : {
    "coding" : [{
      "system" : "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/CodeSystem/mii-cs-mikrobio-mrgn-ergebnis",
      "code" : "keine-mrgn-klasse",
      "display" : "Keine MRGN-Klasse"
    }]
  },
  "specimen" : {
    "reference" : "Specimen/example"
  },
  "derivedFrom" : [{
    "reference" : "Observation/mii-exa-mikrobio-empfindlichkeit"
  }]
}

```
