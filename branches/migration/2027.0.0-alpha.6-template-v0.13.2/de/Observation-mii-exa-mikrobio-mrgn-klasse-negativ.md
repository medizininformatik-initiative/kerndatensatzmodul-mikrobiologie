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

**category**: Laboratory studies (set)

**code**: Multidrug resistant gram-negative organism classification [Type]

**subject**: [Anonymous Patient (no stated gender), DoB Unknown ( https://example.org/fhir/sid/test-patient#111)](Patient-mii-exa-mikrobio-patient.md)

**effective**: 2026-04-02 10:00:00+0100

**value**: Keine MRGN-Klasse

**specimen**: [Specimen: identifier = https://example.org/fhir/sid/test-specimen#probe-1; status = available; type = Specimen; receivedTime = 2026-04-02 08:30:00+0100](Specimen-mii-exa-mikrobio-probe.md)

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
      "code" : "99780-9",
      "display" : "Multidrug resistant gram-negative organism classification [Type]"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-mikrobio-patient"
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
    "reference" : "Specimen/mii-exa-mikrobio-probe"
  },
  "derivedFrom" : [{
    "reference" : "Observation/mii-exa-mikrobio-empfindlichkeit"
  }]
}

```
