# MII VS Mikrobio Allgemeine Bestimmung Methode [SNOMED] - MII Implementation Guide Microbiology v2027.0.0-alpha.6

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII VS Mikrobio Allgemeine Bestimmung Methode [SNOMED]**

## ValueSet: MII VS Mikrobio Allgemeine Bestimmung Methode [SNOMED] 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/ValueSet/mii-vs-mikrobio-allgemeine-bestimmung-methode-snomed | *Version*:2027.0.0-alpha.6 |
| Active Stand: 2026-09-02 | *Maschinenlesbarer Name*:MII_VS_Mikrobio_Allgemeine_Bestimmung_Methode_SNOMED |

 **References** 

* [MII PR Mikrobio Allgemeine Bestimmung](StructureDefinition-mii-pr-mikrobio-allgemeine-bestimmung.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-mikrobio-allgemeine-bestimmung-methode-snomed",
  "url" : "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/ValueSet/mii-vs-mikrobio-allgemeine-bestimmung-methode-snomed",
  "version" : "2027.0.0-alpha.6",
  "name" : "MII_VS_Mikrobio_Allgemeine_Bestimmung_Methode_SNOMED",
  "title" : "MII VS Mikrobio Allgemeine Bestimmung Methode [SNOMED]",
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
        "code" : "278289002",
        "display" : "Microscopy technique (qualifier value)"
      },
      {
        "code" : "83581000052107",
        "display" : "Matrix assisted laser desorption ionization time of flight mass spectrometry technique (qualifier value)"
      }]
    }]
  }
}

```
