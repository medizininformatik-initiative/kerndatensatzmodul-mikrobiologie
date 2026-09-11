# MII VS Mikrobio Allgemeine Bestimmung Ergebnis [SNOMED] - MII Implementation Guide Microbiology v2027.0.0-ballot.rc1

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII VS Mikrobio Allgemeine Bestimmung Ergebnis [SNOMED]**

## ValueSet: MII VS Mikrobio Allgemeine Bestimmung Ergebnis [SNOMED] 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/ValueSet/mii-vs-mikrobio-allgemeine-bestimmung-ergebnis-snomed | *Version*:2027.0.0-ballot.rc1 |
| Active Stand: 2026-09-11 | *Maschinenlesbarer Name*:MII_VS_Mikrobio_Allgemeine_Bestimmung_Ergebnis_SNOMED |

 
Ergebnis-ValueSet fuer die allgemeine Bestimmung: der identifizierte Mikroorganismus oder das negative Ergebnis, wenn kein Erreger identifiziert wurde. 

 **References** 

* [MII PR Mikrobio Allgemeine Bestimmung (Identifizierung)](StructureDefinition-mii-pr-mikrobio-allgemeine-bestimmung.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-mikrobio-allgemeine-bestimmung-ergebnis-snomed",
  "url" : "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/ValueSet/mii-vs-mikrobio-allgemeine-bestimmung-ergebnis-snomed",
  "version" : "2027.0.0-ballot.rc1",
  "name" : "MII_VS_Mikrobio_Allgemeine_Bestimmung_Ergebnis_SNOMED",
  "title" : "MII VS Mikrobio Allgemeine Bestimmung Ergebnis [SNOMED]",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-09-11T11:48:22+00:00",
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
  "description" : "Ergebnis-ValueSet fuer die allgemeine Bestimmung: der identifizierte Mikroorganismus oder das negative Ergebnis, wenn kein Erreger identifiziert wurde.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "compose" : {
    "include" : [{
      "valueSet" : ["https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/ValueSet/mii-vs-mikrobio-organismen-snomedct"]
    },
    {
      "system" : "http://snomed.info/sct",
      "version" : "http://snomed.info/sct/900000000000207008/version/20260701",
      "concept" : [{
        "code" : "260415000",
        "display" : "Not detected (qualifier value)"
      }]
    }]
  }
}

```
