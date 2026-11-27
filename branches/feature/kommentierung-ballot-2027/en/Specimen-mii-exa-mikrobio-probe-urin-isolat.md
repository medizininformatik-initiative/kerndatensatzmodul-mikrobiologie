# MII EXA Mikrobio Probe Urin Isolat - MII Implementation Guide Microbiology v2027.0.0-ballot2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII EXA Mikrobio Probe Urin Isolat**

## Example Specimen: MII EXA Mikrobio Probe Urin Isolat

-------

**English**

-------

Profile: [MII PR Mikrobio Probe](StructureDefinition-mii-pr-mikrobio-probe.md)

**identifier**: `https://example.org/fhir/sid/test-specimen`/probe-urin-1-isolat-1

**status**: Available

**type**: Microbial isolate

**subject**: [Anonymous Patient (no stated gender), DoB Unknown ( https://example.org/fhir/sid/test-patient#111)](Patient-mii-exa-mikrobio-patient.md)

**parent**: [Specimen: identifier = https://example.org/fhir/sid/test-specimen#probe-urin-1; status = available; type = Mid-stream urine specimen; receivedTime = 2026-05-04 08:30:00+0100](Specimen-mii-exa-mikrobio-probe-urin.md)

### Collections

| | |
| :--- | :--- |
| - | **Collected[x]** |
| * | 2026-05-04 08:00:00+0100 |



## Resource Content

```json
{
  "resourceType" : "Specimen",
  "id" : "mii-exa-mikrobio-probe-urin-isolat",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-probe"]
  },
  "identifier" : [{
    "system" : "https://example.org/fhir/sid/test-specimen",
    "value" : "probe-urin-1-isolat-1"
  }],
  "status" : "available",
  "type" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "version" : "http://snomed.info/sct/900000000000207008/version/20260701",
      "code" : "119303007",
      "display" : "Microbial isolate"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-mikrobio-patient"
  },
  "parent" : [{
    "reference" : "Specimen/mii-exa-mikrobio-probe-urin"
  }],
  "collection" : {
    "collectedDateTime" : "2026-05-04T08:00:00+01:00"
  }
}

```
