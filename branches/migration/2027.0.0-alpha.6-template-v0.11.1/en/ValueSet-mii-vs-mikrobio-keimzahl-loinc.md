# MII VS Mikrobio Keimzahl [LOINC] - MII Implementation Guide Microbiology v2027.0.0-alpha.6

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII VS Mikrobio Keimzahl [LOINC]**

## ValueSet: MII VS Mikrobio Keimzahl [LOINC] 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/ValueSet/mii-vs-mikrobio-keimzahl-loinc | *Version*:2027.0.0-alpha.6 |
| Active as of 2026-08-25 | *Computable Name*:MII_VS_Mikrobio_Keimzahl_LOINC |

 **References** 

* [MII PR Mikrobio Keimzahl](StructureDefinition-mii-pr-mikrobio-keimzahl.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-mikrobio-keimzahl-loinc",
  "url" : "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/ValueSet/mii-vs-mikrobio-keimzahl-loinc",
  "version" : "2027.0.0-alpha.6",
  "name" : "MII_VS_Mikrobio_Keimzahl_LOINC",
  "title" : "MII VS Mikrobio Keimzahl [LOINC]",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-08-25T18:44:55+00:00",
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
      "system" : "http://loinc.org",
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
