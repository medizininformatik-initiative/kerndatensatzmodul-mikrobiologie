# MII VS Microbiology Predicted Susceptibility - MII Implementation Guide Microbiology v2027.0.0-ballot2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII VS Microbiology Predicted Susceptibility**

## ValueSet: MII VS Microbiology Predicted Susceptibility 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/ValueSet/mii-vs-mikrobio-voraussichtliche-empfindlichkeit | *Version*:2027.0.0-ballot2 |
| Active as of 2023-03-02 | *Computable Name*:MII_VS_Mikrobio_Voraussichtliche_Empfindlichkeit |

 
Result ValueSet for predicted susceptibility: the expected category susceptible, intermediate or resistant derived from genotypic detections. 

 **References** 

* [MII PR Microbiology Predicted Susceptibility](StructureDefinition-mii-pr-mikrobio-voraussichtliche-empfindlichkeit.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-mikrobio-voraussichtliche-empfindlichkeit",
  "url" : "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/ValueSet/mii-vs-mikrobio-voraussichtliche-empfindlichkeit",
  "version" : "2027.0.0-ballot2",
  "name" : "MII_VS_Mikrobio_Voraussichtliche_Empfindlichkeit",
  "title" : "MII VS Microbiology Predicted Susceptibility",
  "status" : "active",
  "experimental" : false,
  "date" : "2023-03-02T00:00:00Z",
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
  "description" : "Result ValueSet for predicted susceptibility: the expected category susceptible, intermediate or resistant derived from genotypic detections.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
      "version" : "4.0.0",
      "concept" : [{
        "code" : "S",
        "display" : "Susceptible"
      },
      {
        "code" : "I",
        "display" : "Intermediate"
      },
      {
        "code" : "R",
        "display" : "Resistant"
      }]
    }]
  }
}

```
