# MII CS Microbiology Susceptibility Norm - MII Implementation Guide Microbiology v2027.0.0-ballot2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII CS Microbiology Susceptibility Norm**

## CodeSystem: MII CS Microbiology Susceptibility Norm 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/CodeSystem/mii-cs-mikrobio-susceptibility-norm | *Version*:2027.0.0-ballot2 |
| Active as of 2026-10-19 | *Computable Name*:MII_CS_Mikrobio_Susceptibility_NORM |

 
CodeSystem for coding the norms used to interpret the susceptibility of microorganisms to antimicrobial substances. 

This Code system is referenced in the definition of the following value sets:

* [MII VS Microbiology Susceptibility Norm](ValueSet-mii-vs-mikrobio-susceptibility-norm.md)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "mii-cs-mikrobio-susceptibility-norm",
  "url" : "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/CodeSystem/mii-cs-mikrobio-susceptibility-norm",
  "version" : "2027.0.0-ballot2",
  "name" : "MII_CS_Mikrobio_Susceptibility_NORM",
  "title" : "MII CS Microbiology Susceptibility Norm",
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
  "description" : "CodeSystem for coding the norms used to interpret the susceptibility of microorganisms to antimicrobial substances.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 3,
  "concept" : [{
    "code" : "EUCAST",
    "display" : "EUCAST"
  },
  {
    "code" : "CLSI",
    "display" : "CLSI"
  },
  {
    "code" : "Andere",
    "display" : "Andere"
  }]
}

```
