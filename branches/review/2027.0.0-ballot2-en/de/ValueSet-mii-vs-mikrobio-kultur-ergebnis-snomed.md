# MII VS Microbiology Culture Result [SNOMED] - MII Implementation Guide Microbiology v2027.0.0-ballot2

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII VS Microbiology Culture Result [SNOMED]**

## ValueSet: MII VS Microbiology Culture Result [SNOMED] 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/ValueSet/mii-vs-mikrobio-kultur-ergebnis-snomed | *Version*:2027.0.0-ballot2 |
| Active Stand: 2026-10-19 | *Maschinenlesbarer Name*:MII_VS_Mikrobio_Kultur_Ergebnis_SNOMED |

 
Result ValueSet for general and specific culture: growth, no growth or an equivocal result. How much has grown is not stated by this ValueSet but by the colony count. An indeterminable result is represented not via value[x] but via Observation.dataAbsentReason. 

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
  "id" : "mii-vs-mikrobio-kultur-ergebnis-snomed",
  "url" : "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/ValueSet/mii-vs-mikrobio-kultur-ergebnis-snomed",
  "version" : "2027.0.0-ballot2",
  "name" : "MII_VS_Mikrobio_Kultur_Ergebnis_SNOMED",
  "title" : "MII VS Microbiology Culture Result [SNOMED]",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-10-19T02:49:08+00:00",
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
  "description" : "Result ValueSet for general and specific culture: growth, no growth or an equivocal result. How much has grown is not stated by this ValueSet but by the colony count. An indeterminable result is represented not via value[x] but via Observation.dataAbsentReason.",
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
        "code" : "365698005",
        "display" : "Organism growth"
      },
      {
        "code" : "264868006",
        "display" : "No growth (qualifier value)"
      },
      {
        "code" : "280414007",
        "display" : "Equivocal result"
      }]
    }]
  }
}

```
