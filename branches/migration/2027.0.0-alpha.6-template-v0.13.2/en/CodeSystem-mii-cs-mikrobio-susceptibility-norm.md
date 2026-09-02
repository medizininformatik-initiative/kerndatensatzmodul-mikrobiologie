# MII CS Mikrobio Susceptibility Norm - MII Implementation Guide Microbiology v2027.0.0-alpha.6

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII CS Mikrobio Susceptibility Norm**

## CodeSystem: MII CS Mikrobio Susceptibility Norm 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/CodeSystem/mii-cs-mikrobio-susceptibility-norm | *Version*:2027.0.0-alpha.6 |
| Active as of 2026-09-02 | *Computable Name*:MII_CS_Mikrobio_Susceptibility_NORM |

 
CodeSystem zur Kodierung von Normen für die Interpretation der Empfindlichkeit von Mikroorganismen gegenüber antimikrobiellen Substanzen. 

This Code system is referenced in the definition of the following value sets:

* [MII VS Mikrobio Susceptibility Norm](ValueSet-mii-vs-mikrobio-susceptibility-norm.md)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "mii-cs-mikrobio-susceptibility-norm",
  "url" : "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/CodeSystem/mii-cs-mikrobio-susceptibility-norm",
  "version" : "2027.0.0-alpha.6",
  "name" : "MII_CS_Mikrobio_Susceptibility_NORM",
  "title" : "MII CS Mikrobio Susceptibility Norm",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-09-02T21:03:23+00:00",
  "publisher" : "Medizininformatik Initiative",
  "contact" : [{
    "name" : "Medizininformatik Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de"
    }]
  }],
  "description" : "CodeSystem zur Kodierung von Normen für die Interpretation der Empfindlichkeit von Mikroorganismen gegenüber antimikrobiellen Substanzen.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
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
