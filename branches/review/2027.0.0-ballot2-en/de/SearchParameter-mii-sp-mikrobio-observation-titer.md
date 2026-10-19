# mii-sp-mikrobio-observation-titer - MII Implementation Guide Microbiology v2027.0.0-ballot2

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **mii-sp-mikrobio-observation-titer**

## SearchParameter: mii-sp-mikrobio-observation-titer 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/SearchParameter/Observation-titer | *Version*:2027.0.0-ballot2 |
| Active Stand: 2026-10-19 | *Maschinenlesbarer Name*:MII_SP_Mikrobio_Observation_Titer |

 
Search by the dilution step of a titre. Indexes the denominator of the Ratio value of MII_PR_Mikrobio_Titer; the numerator is fixed at 1 there. A larger denominator means a higher titre, e.g. ?titer=gt160 finds all titres above 1:160. 



## Resource Content

```json
{
  "resourceType" : "SearchParameter",
  "id" : "mii-sp-mikrobio-observation-titer",
  "url" : "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/SearchParameter/Observation-titer",
  "version" : "2027.0.0-ballot2",
  "name" : "MII_SP_Mikrobio_Observation_Titer",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-10-19T02:49:08+00:00",
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
  "description" : "Search by the dilution step of a titre. Indexes the denominator of the Ratio value of MII_PR_Mikrobio_Titer; the numerator is fixed at 1 there. A larger denominator means a higher titre, e.g. ?titer=gt160 finds all titres above 1:160.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "code" : "titer",
  "base" : ["Observation"],
  "type" : "quantity",
  "expression" : "Observation.value.ofType(Ratio).denominator"
}

```
