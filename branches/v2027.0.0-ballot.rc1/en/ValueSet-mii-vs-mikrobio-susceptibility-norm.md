# MII VS Mikrobio Susceptibility Norm - MII Implementation Guide Microbiology v2027.0.0-alpha.6

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII VS Mikrobio Susceptibility Norm**

## ValueSet: MII VS Mikrobio Susceptibility Norm 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/ValueSet/mii-vs-mikrobio-susceptibility-norm | *Version*:2027.0.0-alpha.6 |
| Active as of 2026-09-03 | *Computable Name*:MII_VS_Mikrobio_Susceptibility_NORM |

 
Norm-ValueSet für die Empfindlichkeitstestung: das Normsystem, auf dessen Grenzwerten eine Kategorie beruht. Gebunden an die Extension MII_EX_Mikrobio_Empfindlichkeit_Norm. 

 **References** 

* [MII EX Mikrobio Empfindlichkeit Norm](StructureDefinition-mii-ex-mikrobio-empfindlichkeit-norm.md)

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
  "version" : "2027.0.0-alpha.6",
  "name" : "MII_VS_Mikrobio_Susceptibility_NORM",
  "title" : "MII VS Mikrobio Susceptibility Norm",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-09-03T05:48:26+00:00",
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
  "description" : "Norm-ValueSet für die Empfindlichkeitstestung: das Normsystem, auf dessen Grenzwerten eine Kategorie beruht. Gebunden an die Extension MII_EX_Mikrobio_Empfindlichkeit_Norm.",
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
