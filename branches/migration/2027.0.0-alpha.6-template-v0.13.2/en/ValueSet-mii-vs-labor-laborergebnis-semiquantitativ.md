# MII VS Labor Laborergebnis Semiquantitativ - MII Implementation Guide Microbiology v2027.0.0-alpha.6

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII VS Labor Laborergebnis Semiquantitativ**

## ValueSet: MII VS Labor Laborergebnis Semiquantitativ 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/ValueSet/mii-vs-labor-laborergebnis-semiquantitativ | *Version*:2027.0.0-alpha.6 |
| Active as of 2026-09-03 | *Computable Name*:MII_VS_Labor_Laborergebnis_Semiquantitativ |

 
Kodierung für semi-quantitative Laborergebnisse 

 **References** 

* [MII PR Mikrobio Keimzahl](StructureDefinition-mii-pr-mikrobio-keimzahl.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-labor-laborergebnis-semiquantitativ",
  "url" : "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/ValueSet/mii-vs-labor-laborergebnis-semiquantitativ",
  "version" : "2027.0.0-alpha.6",
  "name" : "MII_VS_Labor_Laborergebnis_Semiquantitativ",
  "title" : "MII VS Labor Laborergebnis Semiquantitativ",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-09-03T05:02:03+00:00",
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
  "description" : "Kodierung für semi-quantitative Laborergebnisse",
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
        "code" : "260347006",
        "display" : "Present + out of ++++ (qualifier value)"
      },
      {
        "code" : "260348001",
        "display" : "Present ++ out of ++++ (qualifier value)"
      },
      {
        "code" : "260349009",
        "display" : "Present +++ out of ++++ (qualifier value)"
      },
      {
        "code" : "260350009",
        "display" : "Present ++++ out of ++++ (qualifier value)"
      },
      {
        "code" : "410594000",
        "display" : "Definitely NOT present (qualifier value)"
      },
      {
        "code" : "260405006",
        "display" : "Trace (qualifier value)"
      },
      {
        "code" : "441614007",
        "display" : "Present one plus out of three plus"
      },
      {
        "code" : "441517005",
        "display" : "Present two plus out of three plus"
      },
      {
        "code" : "441521003",
        "display" : "Present three plus out of three plus"
      }]
    }]
  }
}

```
