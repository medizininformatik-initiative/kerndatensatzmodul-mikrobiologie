# MII VS Mikrobio Allgemeine Bestimmung Methode [SNOMED] - MII Implementation Guide Microbiology v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII VS Mikrobio Allgemeine Bestimmung Methode [SNOMED]**

## ValueSet: MII VS Mikrobio Allgemeine Bestimmung Methode [SNOMED] 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/ValueSet/mii-vs-mikrobio-allgemeine-bestimmung-methode-snomed | *Version*:2027.0.0-ballot.rc1 |
| Active as of 2026-09-12 | *Computable Name*:MII_VS_Mikrobio_Allgemeine_Bestimmung_Methode_SNOMED |

 
Methoden-ValueSet für die allgemeine Bestimmung: nicht kulturbasierte Verfahren zur Identifikation eines Erregers ohne vordefiniertes Ziel, etwa Mikroskopie oder MALDI-TOF. 

 **References** 

* [MII PR Mikrobio Allgemeine Bestimmung (Identifizierung)](StructureDefinition-mii-pr-mikrobio-allgemeine-bestimmung.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-mikrobio-allgemeine-bestimmung-methode-snomed",
  "url" : "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/ValueSet/mii-vs-mikrobio-allgemeine-bestimmung-methode-snomed",
  "version" : "2027.0.0-ballot.rc1",
  "name" : "MII_VS_Mikrobio_Allgemeine_Bestimmung_Methode_SNOMED",
  "title" : "MII VS Mikrobio Allgemeine Bestimmung Methode [SNOMED]",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-09-12T17:15:10+00:00",
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
  "description" : "Methoden-ValueSet für die allgemeine Bestimmung: nicht kulturbasierte Verfahren zur Identifikation eines Erregers ohne vordefiniertes Ziel, etwa Mikroskopie oder MALDI-TOF.",
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
        "display" : "Visual estimation technique (qualifier value)"
      },
      {
        "code" : "1304162005",
        "display" : "Nucleic acid sequencing technique (qualifier value)"
      }]
    }]
  }
}

```
