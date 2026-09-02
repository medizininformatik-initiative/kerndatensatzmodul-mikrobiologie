# MII VS Mikrobio Resistenzkategorie Status - MII Implementation Guide Microbiology v2027.0.0-alpha.6

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII VS Mikrobio Resistenzkategorie Status**

## ValueSet: MII VS Mikrobio Resistenzkategorie Status 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/ValueSet/mii-vs-mikrobio-resistenzkategorie-status | *Version*:2027.0.0-alpha.6 |
| Active as of 2026-09-02 | *Computable Name*:MII_VS_Mikrobio_Resistenzkategorie_Status |

 
Untersuchungscodes fuer die Bewertung eines nachgewiesenen Erregers hinsichtlich einer definierten Resistenzkategorie. 

 **References** 

* [MII PR Mikrobio Resistenzkategorie Status](StructureDefinition-mii-pr-mikrobio-resistenzkategorie-status.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-mikrobio-resistenzkategorie-status",
  "url" : "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/ValueSet/mii-vs-mikrobio-resistenzkategorie-status",
  "version" : "2027.0.0-alpha.6",
  "name" : "MII_VS_Mikrobio_Resistenzkategorie_Status",
  "title" : "MII VS Mikrobio Resistenzkategorie Status",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-09-02T09:54:50+00:00",
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
  "description" : "Untersuchungscodes fuer die Bewertung eines nachgewiesenen Erregers hinsichtlich einer definierten Resistenzkategorie.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/CodeSystem/mii-cs-mikrobio-resistenzkategorie"
    }]
  }
}

```
