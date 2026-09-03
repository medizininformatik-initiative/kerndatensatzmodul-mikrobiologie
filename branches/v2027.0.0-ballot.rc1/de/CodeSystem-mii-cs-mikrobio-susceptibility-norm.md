# MII CS Mikrobio Susceptibility Norm - MII Implementation Guide Microbiology v2027.0.0-alpha.6

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII CS Mikrobio Susceptibility Norm**

## CodeSystem: MII CS Mikrobio Susceptibility Norm 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/CodeSystem/mii-cs-mikrobio-susceptibility-norm | *Version*:2027.0.0-alpha.6 |
| Active Stand: 2026-09-03 | *Maschinenlesbarer Name*:MII_CS_Mikrobio_Susceptibility_NORM |

 
CodeSystem zur Kodierung von Normen für die Interpretation der Empfindlichkeit von Mikroorganismen gegenüber antimikrobiellen Substanzen. 

Dieses CodeSystem wird in der Definition der folgenden ValueSets referenziert:

* [MII VS Mikrobio Susceptibility Norm](ValueSet-mii-vs-mikrobio-susceptibility-norm.md)

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



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
  "date" : "2026-09-03T05:17:43+00:00",
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
