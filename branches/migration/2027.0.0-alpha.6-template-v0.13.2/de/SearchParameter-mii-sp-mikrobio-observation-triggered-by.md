# mii-sp-mikrobio-observation-triggered-by - MII Implementation Guide Microbiology v2027.0.0-alpha.6

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **mii-sp-mikrobio-observation-triggered-by**

## SearchParameter: mii-sp-mikrobio-observation-triggered-by 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/SearchParameter/Observation-triggered-by | *Version*:2027.0.0-alpha.6 |
| Active Stand: 2026-09-02 | *Maschinenlesbarer Name*:MII_SP_Mikrobio_Observation_TriggeredBy |

 
Suche nach der Observation, die eine mikrobiologische Observation ausgelöst hat. 



## Resource Content

```json
{
  "resourceType" : "SearchParameter",
  "id" : "mii-sp-mikrobio-observation-triggered-by",
  "url" : "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/SearchParameter/Observation-triggered-by",
  "version" : "2027.0.0-alpha.6",
  "name" : "MII_SP_Mikrobio_Observation_TriggeredBy",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-09-02T09:46:11+00:00",
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
  "description" : "Suche nach der Observation, die eine mikrobiologische Observation ausgelöst hat.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "code" : "triggered-by",
  "base" : ["Observation"],
  "type" : "reference",
  "expression" : "Observation.extension('http://hl7.org/fhir/5.0/StructureDefinition/extension-Observation.triggeredBy').extension('observation').value"
}

```
