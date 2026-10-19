# MII VS Microbiology Colony Count [LOINC] - MII Implementation Guide Microbiology v2027.0.0-ballot2

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII VS Microbiology Colony Count [LOINC]**

## ValueSet: MII VS Microbiology Colony Count [LOINC] 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/ValueSet/mii-vs-mikrobio-keimzahl-loinc | *Version*:2027.0.0-ballot2 |
| Active Stand: 2026-10-19 | *Maschinenlesbarer Name*:MII_VS_Mikrobio_Keimzahl_LOINC |

 
Test ValueSet for colony counting: LOINC codes for the quantitative determination of viable microorganisms. 

 **References** 

* [MII PR Microbiology Colony Count](StructureDefinition-mii-pr-mikrobio-keimzahl.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-mikrobio-keimzahl-loinc",
  "url" : "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/ValueSet/mii-vs-mikrobio-keimzahl-loinc",
  "version" : "2027.0.0-ballot2",
  "name" : "MII_VS_Mikrobio_Keimzahl_LOINC",
  "title" : "MII VS Microbiology Colony Count [LOINC]",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-10-19T01:04:27+00:00",
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
  "description" : "Test ValueSet for colony counting: LOINC codes for the quantitative determination of viable microorganisms.",
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
      "version" : "2.82",
      "concept" : [{
        "code" : "49223-1",
        "display" : "Colony count [#/volume] in Specimen by Visual count"
      },
      {
        "code" : "564-5",
        "display" : "Colony count [#] in Specimen by Visual count"
      },
      {
        "code" : "38436-2",
        "display" : "Colony count [#/mass] in Specimen by Visual count"
      },
      {
        "code" : "699-9",
        "display" : "Organism count [#/volume] in Specimen by Microscopic count"
      }]
    }]
  }
}

```
