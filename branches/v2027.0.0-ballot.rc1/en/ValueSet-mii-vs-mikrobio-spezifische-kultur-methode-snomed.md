# MII VS Mikrobio Spezifische Kultur Methode [SNOMED] - MII Implementation Guide Microbiology v2027.0.0-alpha.6

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII VS Mikrobio Spezifische Kultur Methode [SNOMED]**

## ValueSet: MII VS Mikrobio Spezifische Kultur Methode [SNOMED] 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/ValueSet/mii-vs-mikrobio-spezifische-kultur-methode-snomed | *Version*:2027.0.0-alpha.6 |
| Active as of 2026-09-03 | *Computable Name*:MII_VS_Mikrobio_Spezifische_Kultur_Methode_SNOMED |

 
Methoden-ValueSet fuer die spezifische Kultur. Extensible gebunden, damit staerker spezialisierte Kulturverfahren ergaenzt werden koennen. 

 **References** 

* [MII PR Mikrobio Spezifische Kultur](StructureDefinition-mii-pr-mikrobio-spezifische-kultur.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-mikrobio-spezifische-kultur-methode-snomed",
  "url" : "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/ValueSet/mii-vs-mikrobio-spezifische-kultur-methode-snomed",
  "version" : "2027.0.0-alpha.6",
  "name" : "MII_VS_Mikrobio_Spezifische_Kultur_Methode_SNOMED",
  "title" : "MII VS Mikrobio Spezifische Kultur Methode [SNOMED]",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-09-03T10:47:18+00:00",
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
  "description" : "Methoden-ValueSet fuer die spezifische Kultur. Extensible gebunden, damit staerker spezialisierte Kulturverfahren ergaenzt werden koennen.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "http://snomed.info/sct",
      "concept" : [{
        "code" : "703752003",
        "display" : "Organism specific culture"
      }]
    }]
  }
}

```
