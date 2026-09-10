# MII VS Mikrobio Organismen [SNOMED CT] - MII Implementation Guide Microbiology v2027.0.0-ballot.rc1

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII VS Mikrobio Organismen [SNOMED CT]**

## ValueSet: MII VS Mikrobio Organismen [SNOMED CT] 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/ValueSet/mii-vs-mikrobio-organismen-snomedct | *Version*:2027.0.0-ballot.rc1 |
| Active Stand: 2023-03-02 | *Maschinenlesbarer Name*:MII_VS_Mikrobio_Organismen_SNOMEDCT |

 
Organismen-ValueSet: die SNOMED-CT-Hierarchien, aus denen ein identifizierter Erreger stammen kann. Wird nicht direkt gebunden, sondern in die Ergebnis-ValueSets der Bestimmung eingebunden. 

 **References** 

* Included into [MII VS Mikrobio Allgemeine Bestimmung Ergebnis [SNOMED]](ValueSet-mii-vs-mikrobio-allgemeine-bestimmung-ergebnis-snomed.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-mikrobio-organismen-snomedct",
  "url" : "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/ValueSet/mii-vs-mikrobio-organismen-snomedct",
  "version" : "2027.0.0-ballot.rc1",
  "name" : "MII_VS_Mikrobio_Organismen_SNOMEDCT",
  "title" : "MII VS Mikrobio Organismen [SNOMED CT]",
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
  "description" : "Organismen-ValueSet: die SNOMED-CT-Hierarchien, aus denen ein identifizierter Erreger stammen kann. Wird nicht direkt gebunden, sondern in die Ergebnis-ValueSets der Bestimmung eingebunden.",
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
      "filter" : [{
        "property" : "concept",
        "op" : "is-a",
        "value" : "409822003"
      }]
    },
    {
      "system" : "http://snomed.info/sct",
      "version" : "http://snomed.info/sct/900000000000207008/version/20260701",
      "filter" : [{
        "property" : "concept",
        "op" : "is-a",
        "value" : "414561005"
      }]
    },
    {
      "system" : "http://snomed.info/sct",
      "version" : "http://snomed.info/sct/900000000000207008/version/20260701",
      "filter" : [{
        "property" : "concept",
        "op" : "is-a",
        "value" : "417396000"
      }]
    },
    {
      "system" : "http://snomed.info/sct",
      "version" : "http://snomed.info/sct/900000000000207008/version/20260701",
      "filter" : [{
        "property" : "concept",
        "op" : "is-a",
        "value" : "243565002"
      }]
    },
    {
      "system" : "http://snomed.info/sct",
      "version" : "http://snomed.info/sct/900000000000207008/version/20260701",
      "filter" : [{
        "property" : "concept",
        "op" : "is-a",
        "value" : "84676004"
      }]
    },
    {
      "system" : "http://snomed.info/sct",
      "version" : "http://snomed.info/sct/900000000000207008/version/20260701",
      "filter" : [{
        "property" : "concept",
        "op" : "is-a",
        "value" : "49872002"
      }]
    },
    {
      "system" : "http://snomed.info/sct",
      "version" : "http://snomed.info/sct/900000000000207008/version/20260701",
      "filter" : [{
        "property" : "concept",
        "op" : "is-a",
        "value" : "441649000"
      }]
    },
    {
      "system" : "http://snomed.info/sct",
      "version" : "http://snomed.info/sct/900000000000207008/version/20260701",
      "filter" : [{
        "property" : "concept",
        "op" : "is-a",
        "value" : "76222001"
      }]
    },
    {
      "system" : "http://snomed.info/sct",
      "version" : "http://snomed.info/sct/900000000000207008/version/20260701",
      "filter" : [{
        "property" : "concept",
        "op" : "is-a",
        "value" : "106763003"
      }]
    }]
  }
}

```
