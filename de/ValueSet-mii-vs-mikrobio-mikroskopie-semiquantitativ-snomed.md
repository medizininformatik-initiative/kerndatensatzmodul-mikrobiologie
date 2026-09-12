# MII VS Mikrobio Mikroskopie Semiquantitativ [SNOMED] - MII Implementation Guide Microbiology v2027.0.0-ballot.rc1

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII VS Mikrobio Mikroskopie Semiquantitativ [SNOMED]**

## ValueSet: MII VS Mikrobio Mikroskopie Semiquantitativ [SNOMED] 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/ValueSet/mii-vs-mikrobio-mikroskopie-semiquantitativ-snomed | *Version*:2027.0.0-ballot.rc1 |
| Active Stand: 2026-09-12 | *Maschinenlesbarer Name*:MII_VS_Mikrobio_Mikroskopie_Semiquantitativ_SNOMED |

 
Mengen-ValueSet der Mikroskopie: die semiquantitative Stufe, in der ein mikroskopischer Befund gesehen wurde. 

 **References** 

* [MII PR Mikrobio Allgemeine Mikroskopie](StructureDefinition-mii-pr-mikrobio-mikroskopie.md)
* [MII PR Mikrobio Spezifische Mikroskopie](StructureDefinition-mii-pr-mikrobio-spezifische-mikroskopie.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-mikrobio-mikroskopie-semiquantitativ-snomed",
  "url" : "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/ValueSet/mii-vs-mikrobio-mikroskopie-semiquantitativ-snomed",
  "version" : "2027.0.0-ballot.rc1",
  "name" : "MII_VS_Mikrobio_Mikroskopie_Semiquantitativ_SNOMED",
  "title" : "MII VS Mikrobio Mikroskopie Semiquantitativ [SNOMED]",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-09-12T20:31:09+00:00",
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
  "description" : "Mengen-ValueSet der Mikroskopie: die semiquantitative Stufe, in der ein mikroskopischer Befund gesehen wurde.",
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
        "code" : "441614007",
        "display" : "Present one plus out of three plus"
      },
      {
        "code" : "441517005",
        "display" : "Present two plus out of three plus"
      },
      {
        "code" : "441521003",
        "display" : "Present three plus out of three plus"
      },
      {
        "code" : "57176003",
        "display" : "Few"
      },
      {
        "code" : "260354000",
        "display" : "Moderate number"
      },
      {
        "code" : "260396001",
        "display" : "Numerous"
      },
      {
        "code" : "263865001",
        "display" : "Scanty"
      }]
    }]
  }
}

```
