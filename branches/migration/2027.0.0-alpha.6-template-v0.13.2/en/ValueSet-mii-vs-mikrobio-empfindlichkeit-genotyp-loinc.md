# MII VS Mikrobio Empfänglichkeit Genotyp [LOINC] - MII Implementation Guide Microbiology v2027.0.0-alpha.6

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII VS Mikrobio Empfänglichkeit Genotyp [LOINC]**

## ValueSet: MII VS Mikrobio Empfänglichkeit Genotyp [LOINC] 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/ValueSet/mii-vs-mikrobio-empfindlichkeit-genotyp-loinc | *Version*:2027.0.0-alpha.6 |
| Active as of 2023-03-02 | *Computable Name*:MII_VS_Mikrobio_Empfaenglichkeit_Genotyp_LOINC |

 
Tests-ValueSet für die voraussichtliche Empfindlichkeit: LOINC-Codes für die aus dem Genotyp abgeleitete erwartete Wirksamkeit einer antimikrobiellen Substanz. 

 **References** 

* [MII PR Mikrobio Voraussichtliche Empfindlichkeit](StructureDefinition-mii-pr-mikrobio-voraussichtliche-empfindlichkeit.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-mikrobio-empfindlichkeit-genotyp-loinc",
  "url" : "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/ValueSet/mii-vs-mikrobio-empfindlichkeit-genotyp-loinc",
  "version" : "2027.0.0-alpha.6",
  "name" : "MII_VS_Mikrobio_Empfaenglichkeit_Genotyp_LOINC",
  "title" : "MII VS Mikrobio Empfänglichkeit Genotyp [LOINC]",
  "status" : "active",
  "experimental" : false,
  "date" : "2023-03-02T00:00:00Z",
  "publisher" : "Medizininformatik Initiative",
  "contact" : [{
    "name" : "Medizininformatik Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de"
    }]
  }],
  "description" : "Tests-ValueSet für die voraussichtliche Empfindlichkeit: LOINC-Codes für die aus dem Genotyp abgeleitete erwartete Wirksamkeit einer antimikrobiellen Substanz.",
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
      "filter" : [{
        "property" : "CLASS",
        "op" : "=",
        "value" : "LP7755-4"
      },
      {
        "property" : "PROPERTY",
        "op" : "=",
        "value" : "LP6870-2"
      },
      {
        "property" : "METHOD_TYP",
        "op" : "=",
        "value" : "LP28723-2"
      }]
    }]
  }
}

```
