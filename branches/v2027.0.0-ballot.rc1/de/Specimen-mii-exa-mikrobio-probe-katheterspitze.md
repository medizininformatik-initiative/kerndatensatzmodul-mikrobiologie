# MII EXA Mikrobio Probe Katheterspitze - MII Implementation Guide Microbiology v2027.0.0-ballot.rc1

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII EXA Mikrobio Probe Katheterspitze**

## Beispiel Specimen: MII EXA Mikrobio Probe Katheterspitze

-------

**German**

-------

Profile: [MII PR Mikrobio Probe](StructureDefinition-mii-pr-mikrobio-probe.md)

**identifier**: `https://example.org/fhir/sid/test-specimen`/probe-katheterspitze-1

**status**: Available

**type**: Catheter tip submitted as specimen

**subject**: [Anonymous Patient (no stated gender), DoB Unknown ( https://example.org/fhir/sid/test-patient#111)](Patient-mii-exa-mikrobio-patient.md)

**receivedTime**: 2026-04-02 08:30:00+0100

### Collections

| | |
| :--- | :--- |
| - | **Collected[x]** |
| * | 2026-04-02 08:00:00+0100 |



## Resource Content

```json
{
  "resourceType" : "Specimen",
  "id" : "mii-exa-mikrobio-probe-katheterspitze",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-probe"]
  },
  "identifier" : [{
    "system" : "https://example.org/fhir/sid/test-specimen",
    "value" : "probe-katheterspitze-1"
  }],
  "status" : "available",
  "type" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "version" : "http://snomed.info/sct/900000000000207008/version/20260701",
      "code" : "119312009",
      "display" : "Catheter tip submitted as specimen"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-mikrobio-patient"
  },
  "receivedTime" : "2026-04-02T08:30:00+01:00",
  "collection" : {
    "collectedDateTime" : "2026-04-02T08:00:00+01:00"
  }
}

```
