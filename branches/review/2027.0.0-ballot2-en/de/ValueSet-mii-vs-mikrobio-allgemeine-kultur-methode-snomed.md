# MII VS Microbiology General Culture Method [SNOMED] - MII Implementation Guide Microbiology v2027.0.0-ballot2

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII VS Microbiology General Culture Method [SNOMED]**

## ValueSet: MII VS Microbiology General Culture Method [SNOMED] 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/ValueSet/mii-vs-mikrobio-allgemeine-kultur-methode-snomed | *Version*:2027.0.0-ballot2 |
| Active Stand: 2026-10-19 | *Maschinenlesbarer Name*:MII_VS_Mikrobio_Allgemeine_Kultur_Methode_SNOMED |

 
Method ValueSet for general culture: culture procedures without restriction to a predefined pathogen, including aerobic and anaerobic incubation. 

 **References** 

* [MII PR Microbiology General Culture](StructureDefinition-mii-pr-mikrobio-allgemeine-kultur.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-mikrobio-allgemeine-kultur-methode-snomed",
  "url" : "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/ValueSet/mii-vs-mikrobio-allgemeine-kultur-methode-snomed",
  "version" : "2027.0.0-ballot2",
  "name" : "MII_VS_Mikrobio_Allgemeine_Kultur_Methode_SNOMED",
  "title" : "MII VS Microbiology General Culture Method [SNOMED]",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-10-19T02:33:36+00:00",
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
  "description" : "Method ValueSet for general culture: culture procedures without restriction to a predefined pathogen, including aerobic and anaerobic incubation.",
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
      "version" : "http://snomed.info/sct/900000000000207008/version/20260701",
      "concept" : [{
        "code" : "703750006",
        "display" : "Aerobic culture technique (qualifier value)"
      },
      {
        "code" : "703751005",
        "display" : "Anaerobic culture technique (qualifier value)"
      },
      {
        "code" : "702658000",
        "display" : "Microbial culture technique (qualifier value)"
      }]
    }]
  }
}

```
