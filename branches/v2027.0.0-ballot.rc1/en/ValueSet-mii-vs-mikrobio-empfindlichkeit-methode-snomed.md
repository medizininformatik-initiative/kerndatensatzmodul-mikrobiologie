# MII VS Mikrobio Empfindlichkeit Methode [SNOMED] - MII Implementation Guide Microbiology v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII VS Mikrobio Empfindlichkeit Methode [SNOMED]**

## ValueSet: MII VS Mikrobio Empfindlichkeit Methode [SNOMED] 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/ValueSet/mii-vs-mikrobio-empfindlichkeit-methode-snomed | *Version*:2027.0.0-ballot.rc1 |
| Active as of 2026-09-10 | *Computable Name*:MII_VS_Mikrobio_Empfindlichkeit_Methode_SNOMED |

 
Methoden-ValueSet für die phänotypische Empfindlichkeitstestung: die Verfahren, mit denen eine minimale Hemmkonzentration oder ein Hemmhofdurchmesser gemessen wird. 

 **References** 

* [MII PR Mikrobio Empfindlichkeit](StructureDefinition-mii-pr-mikrobio-empfindlichkeit.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-mikrobio-empfindlichkeit-methode-snomed",
  "url" : "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/ValueSet/mii-vs-mikrobio-empfindlichkeit-methode-snomed",
  "version" : "2027.0.0-ballot.rc1",
  "name" : "MII_VS_Mikrobio_Empfindlichkeit_Methode_SNOMED",
  "title" : "MII VS Mikrobio Empfindlichkeit Methode [SNOMED]",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-09-10T18:06:33+00:00",
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
  "description" : "Methoden-ValueSet für die phänotypische Empfindlichkeitstestung: die Verfahren, mit denen eine minimale Hemmkonzentration oder ein Hemmhofdurchmesser gemessen wird.",
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
        "code" : "263696007",
        "display" : "Broth dilution (qualifier value)"
      },
      {
        "code" : "1303975003",
        "display" : "Disk diffusion technique (qualifier value)"
      },
      {
        "code" : "703442003",
        "display" : "Gradient strip susceptibility test technique (qualifier value)"
      },
      {
        "code" : "260111000146108",
        "display" : "Manual minimum inhibitory concentration microdilution susceptibility test technique (qualifier value)"
      },
      {
        "code" : "260101000146106",
        "display" : "Automated minimum inhibitory concentration microdilution susceptibility test technique (qualifier value)"
      }]
    }]
  }
}

```
