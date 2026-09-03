# MII VS Mikrobio MRGN Klasse [LOINC] - MII Implementation Guide Microbiology v2027.0.0-alpha.6

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII VS Mikrobio MRGN Klasse [LOINC]**

## ValueSet: MII VS Mikrobio MRGN Klasse [LOINC] 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/ValueSet/mii-vs-mikrobio-mrgn-klasse-loinc | *Version*:2027.0.0-alpha.6 |
| Active as of 2023-03-02 | *Computable Name*:MII_VS_Mikrobio_MRGN_Klasse_LOINC |

 
Ergebnis-ValueSet für die MRGN-Klassifikation: 2MRGN, 3MRGN und 4MRGN nach RKI-Kategorisierung. Die negative Einstufung steht im modul­eigenen CodeSystem, da die LOINC-AnswerList sie nicht führt. 

 **References** 

* [MII PR Mikrobio MRGN Klasse](StructureDefinition-mii-pr-mikrobio-mrgn-klasse.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-mikrobio-mrgn-klasse-loinc",
  "url" : "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/ValueSet/mii-vs-mikrobio-mrgn-klasse-loinc",
  "version" : "2027.0.0-alpha.6",
  "name" : "MII_VS_Mikrobio_MRGN_Klasse_LOINC",
  "title" : "MII VS Mikrobio MRGN Klasse [LOINC]",
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
  "description" : "Ergebnis-ValueSet für die MRGN-Klassifikation: 2MRGN, 3MRGN und 4MRGN nach RKI-Kategorisierung. Die negative Einstufung steht im modul­eigenen CodeSystem, da die LOINC-AnswerList sie nicht führt.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "http://loinc.org",
      "concept" : [{
        "code" : "LA33214-0",
        "display" : "2MRGN"
      },
      {
        "code" : "LA33215-7",
        "display" : "3MRGN"
      },
      {
        "code" : "LA33216-5",
        "display" : "4MRGN"
      }]
    },
    {
      "system" : "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/CodeSystem/mii-cs-mikrobio-mrgn-ergebnis",
      "concept" : [{
        "code" : "keine-mrgn-klasse",
        "display" : "Keine MRGN-Klasse"
      }]
    }]
  }
}

```
