# MII VS Mikrobio Molekulare Diagnostik Einheiten [UCUM] - MII Implementation Guide Microbiology v2027.0.0-alpha.6

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII VS Mikrobio Molekulare Diagnostik Einheiten [UCUM]**

## ValueSet: MII VS Mikrobio Molekulare Diagnostik Einheiten [UCUM] 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/ValueSet/mii-vs-mikrobio-molekulare-diagnostik-einheiten-ucum | *Version*:2027.0.0-alpha.6 |
| Active Stand: 2023-03-02 | *Maschinenlesbarer Name*:MII_VS_Mikrobio_Molekulare_Diagnostik_Einheiten_UCUM |

 
Einheiten-ValueSet für die molekulare Pathogenlast (UCUM): Konzentrationsangaben wie Kopien pro Milliliter. 

 **References** 

* [MII PR Mikrobio Molekulare Pathogenlast](StructureDefinition-mii-pr-mikrobio-molekulare-pathogenlast.md)

### Logical Definition (CLD)

 

### Expansion

No Expansion for this valueset (Unsupported Code System Version)

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-mikrobio-molekulare-diagnostik-einheiten-ucum",
  "url" : "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/ValueSet/mii-vs-mikrobio-molekulare-diagnostik-einheiten-ucum",
  "version" : "2027.0.0-alpha.6",
  "name" : "MII_VS_Mikrobio_Molekulare_Diagnostik_Einheiten_UCUM",
  "title" : "MII VS Mikrobio Molekulare Diagnostik Einheiten [UCUM]",
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
  "description" : "Einheiten-ValueSet für die molekulare Pathogenlast (UCUM): Konzentrationsangaben wie Kopien pro Milliliter.",
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
        "code" : "1/mL"
      },
      {
        "code" : "[IU]/mL"
      },
      {
        "code" : "%"
      },
      {
        "code" : "/g"
      },
      {
        "code" : "pg/mL"
      }]
    }]
  }
}

```
