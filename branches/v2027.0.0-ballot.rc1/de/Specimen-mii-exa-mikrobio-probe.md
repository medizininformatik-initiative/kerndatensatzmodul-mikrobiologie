# MII EXA Mikrobio Probe - MII Implementation Guide Microbiology v2027.0.0-alpha.6

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII EXA Mikrobio Probe**

## Beispiel Specimen: MII EXA Mikrobio Probe

-------

**German**

-------

**identifier**: `https://example.org/fhir/sid/test-specimen`/probe-1

**status**: Available

**type**: Specimen

**subject**: [Anonymous Patient (no stated gender), DoB Unknown ( https://example.org/fhir/sid/test-patient#111)](Patient-mii-exa-mikrobio-patient.md)

**receivedTime**: 2026-04-02 08:30:00+0100



## Resource Content

```json
{
  "resourceType" : "Specimen",
  "id" : "mii-exa-mikrobio-probe",
  "identifier" : [{
    "system" : "https://example.org/fhir/sid/test-specimen",
    "value" : "probe-1"
  }],
  "status" : "available",
  "type" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "123038009",
      "display" : "Specimen"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-mikrobio-patient"
  },
  "receivedTime" : "2026-04-02T08:30:00+01:00"
}

```
