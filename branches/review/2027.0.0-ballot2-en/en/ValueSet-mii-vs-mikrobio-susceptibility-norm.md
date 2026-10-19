# MII VS Microbiology Susceptibility Norm - MII Implementation Guide Microbiology v2027.0.0-ballot2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII VS Microbiology Susceptibility Norm**

## ValueSet: MII VS Microbiology Susceptibility Norm 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/ValueSet/mii-vs-mikrobio-susceptibility-norm | *Version*:2027.0.0-ballot2 |
| Active as of 2026-10-19 | *Computable Name*:MII_VS_Mikrobio_Susceptibility_NORM |

 
Norm ValueSet for susceptibility testing: the interpretive standard (e.g. EUCAST, CLSI) on whose breakpoints a category is based. Bound to the extension MII_EX_Mikrobio_Empfindlichkeit_Norm. 

 **References** 

* [MII EX Microbiology Susceptibility Norm](StructureDefinition-mii-ex-mikrobio-empfindlichkeit-norm.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-mikrobio-susceptibility-norm",
  "url" : "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/ValueSet/mii-vs-mikrobio-susceptibility-norm",
  "version" : "2027.0.0-ballot2",
  "name" : "MII_VS_Mikrobio_Susceptibility_NORM",
  "title" : "MII VS Microbiology Susceptibility Norm",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-10-19T02:33:36+00:00",
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
  "description" : "Norm ValueSet for susceptibility testing: the interpretive standard (e.g. EUCAST, CLSI) on whose breakpoints a category is based. Bound to the extension MII_EX_Mikrobio_Empfindlichkeit_Norm.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/CodeSystem/mii-cs-mikrobio-susceptibility-norm"
    }]
  }
}

```
