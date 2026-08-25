# MII VS Mikrobio Keimzahl Einheiten [UCUM] - MII Implementation Guide Microbiology v2027.0.0-alpha.6

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII VS Mikrobio Keimzahl Einheiten [UCUM]**

## ValueSet: MII VS Mikrobio Keimzahl Einheiten [UCUM] 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/ValueSet/mii-vs-mikrobio-keimzahl-einheiten-ucum | *Version*:2027.0.0-alpha.6 |
| Active Stand: 2023-03-02 | *Maschinenlesbarer Name*:MII_VS_Mikrobio_Keimzahl_Einheiten_UCUM |

 **References** 

* [MII PR Mikrobio Keimzahl](StructureDefinition-mii-pr-mikrobio-keimzahl.md)

### Logical Definition (CLD)

 

### Expansion

No Expansion for this valueset (Unsupported Code System Version)

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-mikrobio-keimzahl-einheiten-ucum",
  "url" : "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/ValueSet/mii-vs-mikrobio-keimzahl-einheiten-ucum",
  "version" : "2027.0.0-alpha.6",
  "name" : "MII_VS_Mikrobio_Keimzahl_Einheiten_UCUM",
  "title" : "MII VS Mikrobio Keimzahl Einheiten [UCUM]",
  "status" : "active",
  "experimental" : false,
  "date" : "2023-03-02T00:00:00Z",
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
        "code" : "[CFU]/mL"
      },
      {
        "code" : "[arb'U]/mL"
      },
      {
        "code" : "/g"
      },
      {
        "code" : "/mL"
      },
      {
        "code" : "1"
      }]
    }]
  }
}

```
