# MII VS Mikrobio Resistenzkategorie Status Ergebnis - MII Implementation Guide Microbiology v2027.0.0-alpha.6

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII VS Mikrobio Resistenzkategorie Status Ergebnis**

## ValueSet: MII VS Mikrobio Resistenzkategorie Status Ergebnis 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/ValueSet/mii-vs-mikrobio-resistenzkategorie-status-ergebnis | *Version*:2027.0.0-alpha.6 |
| Active Stand: 2026-09-02 | *Maschinenlesbarer Name*:MII_VS_Mikrobio_Resistenzkategorie_Status_Ergebnis |

 
Ergebnis der Bewertung eines nachgewiesenen Erregers hinsichtlich der in Observation.code angegebenen Resistenzkategorie. 

 **References** 

* [MII PR Mikrobio Resistenzkategorie Status](StructureDefinition-mii-pr-mikrobio-resistenzkategorie-status.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-mikrobio-resistenzkategorie-status-ergebnis",
  "url" : "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/ValueSet/mii-vs-mikrobio-resistenzkategorie-status-ergebnis",
  "version" : "2027.0.0-alpha.6",
  "name" : "MII_VS_Mikrobio_Resistenzkategorie_Status_Ergebnis",
  "title" : "MII VS Mikrobio Resistenzkategorie Status Ergebnis",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-09-02T09:54:50+00:00",
  "publisher" : "NUM-DIZ",
  "_publisher" : {
    "extension" : [{
      "extension" : [{
        "url" : "lang",
        "valueCode" : "de"
      },
      {
        "url" : "content",
        "valueString" : "NUM-DIZ"
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/translation"
    }]
  },
  "contact" : [{
    "name" : "NUM-DIZ",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.netzwerk-universitaetsmedizin.de"
    }]
  }],
  "description" : "Ergebnis der Bewertung eines nachgewiesenen Erregers hinsichtlich der in Observation.code angegebenen Resistenzkategorie.",
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
      "concept" : [{
        "code" : "10828004",
        "display" : "Positive"
      },
      {
        "code" : "260385009",
        "display" : "Negative"
      }]
    }]
  }
}

```
