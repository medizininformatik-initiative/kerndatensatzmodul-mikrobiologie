# MII VS Mikrobio Aviditaet Ergebnis - MII Implementation Guide Microbiology v2027.0.0-alpha.6

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII VS Mikrobio Aviditaet Ergebnis**

## ValueSet: MII VS Mikrobio Aviditaet Ergebnis 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/ValueSet/mii-vs-mikrobio-aviditaet-ergebnis | *Version*:2027.0.0-alpha.6 |
| Active Stand: 2026-09-03 | *Maschinenlesbarer Name*:MII_VS_Mikrobio_Aviditaet_Ergebnis |

 
Bewertungs-ValueSet für die Avidität: kategoriale Einordnung des Aviditätsindex als niedrig, intermediär oder hoch. Niedrige Avidität spricht für eine frische Infektion. 

 **References** 

* [MII PR Mikrobio Aviditaet](StructureDefinition-mii-pr-mikrobio-aviditaet.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-mikrobio-aviditaet-ergebnis",
  "url" : "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/ValueSet/mii-vs-mikrobio-aviditaet-ergebnis",
  "version" : "2027.0.0-alpha.6",
  "name" : "MII_VS_Mikrobio_Aviditaet_Ergebnis",
  "title" : "MII VS Mikrobio Aviditaet Ergebnis",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-09-03T05:10:08+00:00",
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
  "description" : "Bewertungs-ValueSet für die Avidität: kategoriale Einordnung des Aviditätsindex als niedrig, intermediär oder hoch. Niedrige Avidität spricht für eine frische Infektion.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
      "concept" : [{
        "code" : "L",
        "display" : "Low"
      },
      {
        "code" : "I",
        "display" : "Intermediate"
      },
      {
        "code" : "H",
        "display" : "High"
      }]
    }]
  }
}

```
