# ObservationInterpretation - MII Implementation Guide Microbiology v2027.0.0-alpha.6

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ObservationInterpretation**

## SearchParameter: ObservationInterpretation 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/SearchParameter/Observation-interpretation | *Version*:2027.0.0-alpha.6 |
| Active as of 2026-09-03 | *Computable Name*:ObservationInterpretation |

 
Suche nach der Interpretation einer mikrobiologischen Observation. 



## Resource Content

```json
{
  "resourceType" : "SearchParameter",
  "id" : "ObservationInterpretation",
  "url" : "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/SearchParameter/Observation-interpretation",
  "version" : "2027.0.0-alpha.6",
  "name" : "ObservationInterpretation",
  "status" : "active",
  "date" : "2026-09-03T05:48:26+00:00",
  "publisher" : "Medizininformatik Initiative",
  "_publisher" : {
    "extension" : [{
      "extension" : [{
        "url" : "lang",
        "valueCode" : "de"
      },
      {
        "url" : "content",
        "valueString" : "Medizininformatik Initiative"
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/translation"
    }]
  },
  "contact" : [{
    "name" : "Medizininformatik Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de"
    }]
  }],
  "description" : "Suche nach der Interpretation einer mikrobiologischen Observation.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "code" : "interpretation",
  "base" : ["Observation"],
  "type" : "token",
  "expression" : "Observation.interpretation"
}

```
