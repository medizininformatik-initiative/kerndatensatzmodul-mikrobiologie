# ObservationInterpretation - MII Implementation Guide Microbiology v2027.0.0-alpha.6

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **ObservationInterpretation**

## SearchParameter: ObservationInterpretation 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/SearchParameter/Observation-interpretation | *Version*:2027.0.0-alpha.6 |
| Active Stand: 2026-09-02 | *Maschinenlesbarer Name*:ObservationInterpretation |

 
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
  "date" : "2026-09-02T12:45:31+00:00",
  "publisher" : "NUM-DIZ",
  "_publisher" : {
    "extension" : [{
      "extension" : [{
        "url" : "lang",
        "valueCode" : "de"
      },
      {
        "url" : "content",
        "valueString" : "NUM-DIZ"
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/translation"
    }]
  },
  "contact" : [{
    "name" : "NUM-DIZ",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.netzwerk-universitaetsmedizin.de"
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
