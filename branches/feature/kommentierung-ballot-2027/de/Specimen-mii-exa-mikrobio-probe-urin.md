# MII EXA Mikrobio Probe Urin - MII Implementation Guide Microbiology v2027.0.0-ballot2

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII EXA Mikrobio Probe Urin**

## Beispiel Specimen: MII EXA Mikrobio Probe Urin

-------

**German**

-------

Profile: [MII PR Mikrobio Probe](StructureDefinition-mii-pr-mikrobio-probe.md)

**identifier**: `https://example.org/fhir/sid/test-specimen`/probe-urin-1

**status**: Available

**type**: Mid-stream urine specimen

**subject**: [Anonymous Patient (no stated gender), DoB Unknown ( https://example.org/fhir/sid/test-patient#111)](Patient-mii-exa-mikrobio-patient.md)

**receivedTime**: 2026-05-04 08:30:00+0100

### Collections

| | |
| :--- | :--- |
| - | **Collected[x]** |
| * | 2026-05-04 08:00:00+0100 |



## Resource Content

```json
{
  "resourceType" : "Specimen",
  "id" : "mii-exa-mikrobio-probe-urin",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-probe"]
  },
  "identifier" : [{
    "system" : "https://example.org/fhir/sid/test-specimen",
    "value" : "probe-urin-1"
  }],
  "status" : "available",
  "type" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "version" : "http://snomed.info/sct/900000000000207008/version/20260701",
      "code" : "258574006",
      "display" : "Mid-stream urine specimen"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-mikrobio-patient"
  },
  "receivedTime" : "2026-05-04T08:30:00+01:00",
  "collection" : {
    "collectedDateTime" : "2026-05-04T08:00:00+01:00"
  }
}

```
