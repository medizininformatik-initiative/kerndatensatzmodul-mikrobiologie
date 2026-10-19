# MII CS Microbiology Susceptibility Norm - MII Implementation Guide Microbiology v2027.0.0-ballot2

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII CS Microbiology Susceptibility Norm**

## CodeSystem: MII CS Microbiology Susceptibility Norm 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/CodeSystem/mii-cs-mikrobio-susceptibility-norm | *Version*:2027.0.0-ballot2 |
| Active Stand: 2026-10-19 | *Maschinenlesbarer Name*:MII_CS_Mikrobio_Susceptibility_NORM |

 
CodeSystem for coding the norms used to interpret the susceptibility of microorganisms to antimicrobial substances. 

Dieses CodeSystem wird in der Definition der folgenden ValueSets referenziert:

* [MII VS Microbiology Susceptibility Norm](ValueSet-mii-vs-mikrobio-susceptibility-norm.md)

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



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
  "date" : "2026-10-19T01:04:27+00:00",
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
