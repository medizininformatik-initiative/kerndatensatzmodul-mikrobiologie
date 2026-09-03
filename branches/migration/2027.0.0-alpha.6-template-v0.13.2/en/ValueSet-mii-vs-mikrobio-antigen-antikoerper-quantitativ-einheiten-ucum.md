# MII VS Mikrobio Antigen Antikoerper Quantitativ Einheiten [UCUM] - MII Implementation Guide Microbiology v2027.0.0-alpha.6

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII VS Mikrobio Antigen Antikoerper Quantitativ Einheiten [UCUM]**

## ValueSet: MII VS Mikrobio Antigen Antikoerper Quantitativ Einheiten [UCUM] 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/ValueSet/mii-vs-mikrobio-antigen-antikoerper-quantitativ-einheiten-ucum | *Version*:2027.0.0-alpha.6 |
| Active as of 2026-09-03 | *Computable Name*:MII_VS_Mikrobio_Antigen_Antikoerper_Quantitativ_Einheiten_UCUM |

 
Einheiten-ValueSet für quantitative Antigen- und Antikörpertests (UCUM). Bindet Observation.valueQuantity.code. 

 **References** 

* [MII PR Mikrobio Antigen Antikoerper Quantitativ](StructureDefinition-mii-pr-mikrobio-antigen-antikoerper-quantitativ.md)

### Logical Definition (CLD)

 

### Expansion

No Expansion for this valueset (Unsupported Code System Version)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-mikrobio-antigen-antikoerper-quantitativ-einheiten-ucum",
  "url" : "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/ValueSet/mii-vs-mikrobio-antigen-antikoerper-quantitativ-einheiten-ucum",
  "version" : "2027.0.0-alpha.6",
  "name" : "MII_VS_Mikrobio_Antigen_Antikoerper_Quantitativ_Einheiten_UCUM",
  "title" : "MII VS Mikrobio Antigen Antikoerper Quantitativ Einheiten [UCUM]",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-09-03T04:37:30+00:00",
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
  "description" : "Einheiten-ValueSet für quantitative Antigen- und Antikörpertests (UCUM). Bindet Observation.valueQuantity.code.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "http://unitsofmeasure.org",
      "concept" : [{
        "code" : "ng/mL"
      },
      {
        "code" : "pg/mL"
      },
      {
        "code" : "ug/L"
      },
      {
        "code" : "[IU]/mL"
      },
      {
        "code" : "[IU]/L"
      },
      {
        "code" : "[arb'U]/mL"
      },
      {
        "code" : "[arb'U]/L"
      },
      {
        "code" : "[arb'U]"
      }]
    }]
  }
}

```
