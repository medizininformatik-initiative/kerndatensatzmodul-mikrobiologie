# MII VS Microbiology General Determination Method [SNOMED] - MII Implementation Guide Microbiology v2027.0.0-ballot2

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII VS Microbiology General Determination Method [SNOMED]**

## ValueSet: MII VS Microbiology General Determination Method [SNOMED] 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/ValueSet/mii-vs-mikrobio-allgemeine-bestimmung-methode-snomed | *Version*:2027.0.0-ballot2 |
| Active Stand: 2026-10-19 | *Maschinenlesbarer Name*:MII_VS_Mikrobio_Allgemeine_Bestimmung_Methode_SNOMED |

 
Method ValueSet for general determination: non-culture-based procedures for identifying a pathogen without a predefined target, such as microscopy or MALDI-TOF. 

 **References** 

* [MII PR Microbiology General Determination (Identification)](StructureDefinition-mii-pr-mikrobio-allgemeine-bestimmung.md)

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
  "version" : "2027.0.0-ballot2",
  "name" : "MII_VS_Mikrobio_Allgemeine_Bestimmung_Methode_SNOMED",
  "title" : "MII VS Microbiology General Determination Method [SNOMED]",
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
  "description" : "Method ValueSet for general determination: non-culture-based procedures for identifying a pathogen without a predefined target, such as microscopy or MALDI-TOF.",
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
      "version" : "http://snomed.info/sct/900000000000207008/version/20260701",
      "concept" : [{
        "code" : "278289002",
        "display" : "Microscopy technique (qualifier value)"
      },
      {
        "code" : "83581000052107",
        "display" : "Matrix assisted laser desorption ionization time of flight mass spectrometry technique (qualifier value)"
      },
      {
        "code" : "258083009",
        "display" : "Visual estimation (qualifier value)"
      },
      {
        "code" : "1304162005",
        "display" : "Nucleic acid sequencing technique (qualifier value)"
      }]
    }]
  }
}

```
