# MII VS Mikrobio Färbung [SNOMED] - MII Implementation Guide Microbiology v2027.0.0-ballot.rc1

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII VS Mikrobio Färbung [SNOMED]**

## ValueSet: MII VS Mikrobio Färbung [SNOMED] 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/ValueSet/mii-vs-mikrobio-faerbung-snomed | *Version*:2027.0.0-ballot.rc1 |
| Active Stand: 2026-09-12 | *Maschinenlesbarer Name*:MII_VS_Mikrobio_Faerbung_SNOMED |

 
Färbeverfahren der mikroskopischen Untersuchung, z. B. Gramfärbung oder Kinyounfärbung. 

 **References** 

* [MII EX Mikrobio Färbung](StructureDefinition-mii-ex-mikrobio-faerbung.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-mikrobio-faerbung-snomed",
  "url" : "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/ValueSet/mii-vs-mikrobio-faerbung-snomed",
  "version" : "2027.0.0-ballot.rc1",
  "name" : "MII_VS_Mikrobio_Faerbung_SNOMED",
  "title" : "MII VS Mikrobio Färbung [SNOMED]",
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
  "description" : "Färbeverfahren der mikroskopischen Untersuchung, z. B. Gramfärbung oder Kinyounfärbung.",
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
        "op" : "descendent-of",
        "value" : "37926009"
      }]
    }]
  }
}

```
