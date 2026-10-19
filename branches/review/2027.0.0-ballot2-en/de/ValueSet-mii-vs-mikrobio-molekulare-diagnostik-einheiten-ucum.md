# MII VS Microbiology Molecular Diagnostics Units [UCUM] - MII Implementation Guide Microbiology v2027.0.0-ballot2

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII VS Microbiology Molecular Diagnostics Units [UCUM]**

## ValueSet: MII VS Microbiology Molecular Diagnostics Units [UCUM] 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/ValueSet/mii-vs-mikrobio-molekulare-diagnostik-einheiten-ucum | *Version*:2027.0.0-ballot2 |
| Active Stand: 2023-03-02 | *Maschinenlesbarer Name*:MII_VS_Mikrobio_Molekulare_Diagnostik_Einheiten_UCUM |

 
Unit ValueSet for molecular pathogen load (UCUM): concentration units such as copies per millilitre. 

 **References** 

* [MII PR Microbiology Molecular Pathogen Load](StructureDefinition-mii-pr-mikrobio-molekulare-pathogenlast.md)

### Logical Definition (CLD)

 

### Expansion

No Expansion for this valueset (Unknown Code System)

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-mikrobio-molekulare-diagnostik-einheiten-ucum",
  "url" : "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/ValueSet/mii-vs-mikrobio-molekulare-diagnostik-einheiten-ucum",
  "version" : "2027.0.0-ballot2",
  "name" : "MII_VS_Mikrobio_Molekulare_Diagnostik_Einheiten_UCUM",
  "title" : "MII VS Microbiology Molecular Diagnostics Units [UCUM]",
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
  "description" : "Unit ValueSet for molecular pathogen load (UCUM): concentration units such as copies per millilitre.",
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
