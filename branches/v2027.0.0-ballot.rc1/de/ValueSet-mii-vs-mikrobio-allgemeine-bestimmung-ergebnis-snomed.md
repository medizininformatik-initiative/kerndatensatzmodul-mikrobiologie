# MII VS Mikrobio Allgemeine Bestimmung Ergebnis [SNOMED] - MII Implementation Guide Microbiology v2027.0.0-alpha.6

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII VS Mikrobio Allgemeine Bestimmung Ergebnis [SNOMED]**

## ValueSet: MII VS Mikrobio Allgemeine Bestimmung Ergebnis [SNOMED] 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/ValueSet/mii-vs-mikrobio-allgemeine-bestimmung-ergebnis-snomed | *Version*:2027.0.0-alpha.6 |
| Active Stand: 2026-09-03 | *Maschinenlesbarer Name*:MII_VS_Mikrobio_Allgemeine_Bestimmung_Ergebnis_SNOMED |

 
Ergebnis-ValueSet fuer die allgemeine Bestimmung: der identifizierte Mikroorganismus oder das negative Ergebnis, wenn kein Erreger identifiziert wurde. 

 **References** 

* [MII PR Mikrobio Allgemeine Bestimmung](StructureDefinition-mii-pr-mikrobio-allgemeine-bestimmung.md)

### Logical Definition (CLD)

 

### Expansion

No Expansion for this valueset (Unknown Code System)

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-mikrobio-allgemeine-bestimmung-ergebnis-snomed",
  "url" : "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/ValueSet/mii-vs-mikrobio-allgemeine-bestimmung-ergebnis-snomed",
  "version" : "2027.0.0-alpha.6",
  "name" : "MII_VS_Mikrobio_Allgemeine_Bestimmung_Ergebnis_SNOMED",
  "title" : "MII VS Mikrobio Allgemeine Bestimmung Ergebnis [SNOMED]",
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
      "concept" : [{
        "code" : "260415000",
        "display" : "Not detected (qualifier value)"
      }]
    }]
  }
}

```
