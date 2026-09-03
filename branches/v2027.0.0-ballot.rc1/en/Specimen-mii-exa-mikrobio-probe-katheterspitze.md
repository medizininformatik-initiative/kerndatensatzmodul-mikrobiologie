# MII EXA Mikrobio Probe Katheterspitze - MII Implementation Guide Microbiology v2027.0.0-alpha.6

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII EXA Mikrobio Probe Katheterspitze**

## Example Specimen: MII EXA Mikrobio Probe Katheterspitze

-------

**English**

-------

**identifier**: `https://example.org/fhir/sid/test-specimen`/probe-katheterspitze-1

**status**: Available

**type**: Catheter tip submitted as specimen

**subject**: [Anonymous Patient (no stated gender), DoB Unknown ( https://example.org/fhir/sid/test-patient#111)](Patient-mii-exa-mikrobio-patient.md)

**receivedTime**: 2026-04-02 08:30:00+0100



## Resource Content

```json
{
  "resourceType" : "Specimen",
  "id" : "mii-exa-mikrobio-probe-katheterspitze",
  "identifier" : [{
    "system" : "https://example.org/fhir/sid/test-specimen",
    "value" : "probe-katheterspitze-1"
  }],
  "status" : "available",
  "type" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "119312009",
      "display" : "Catheter tip submitted as specimen"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-mikrobio-patient"
  },
  "receivedTime" : "2026-04-02T08:30:00+01:00"
}

```
