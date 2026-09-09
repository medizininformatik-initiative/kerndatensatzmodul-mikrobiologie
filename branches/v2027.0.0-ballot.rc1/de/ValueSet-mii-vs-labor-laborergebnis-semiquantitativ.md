# MII VS Labor Laborergebnis Semiquantitativ - MII Implementation Guide Microbiology v2027.0.0-ballot.rc1

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII VS Labor Laborergebnis Semiquantitativ**

## ValueSet: MII VS Labor Laborergebnis Semiquantitativ 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/ValueSet/mii-vs-labor-laborergebnis-semiquantitativ | *Version*:2027.0.0-ballot.rc1 |
| Active Stand: 2026-09-09 | *Maschinenlesbarer Name*:MII_VS_Labor_Laborergebnis_Semiquantitativ |

 
Kodierung für semi-quantitative Laborergebnisse 

 **References** 

* [MII PR Mikrobio Keimzahl](StructureDefinition-mii-pr-mikrobio-keimzahl.md)

### Logical Definition (CLD)

 

### Expansion

No Expansion for this valueset (Unsupported Code System Version)

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-labor-laborergebnis-semiquantitativ",
  "url" : "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/ValueSet/mii-vs-labor-laborergebnis-semiquantitativ",
  "version" : "2027.0.0-ballot.rc1",
  "name" : "MII_VS_Labor_Laborergebnis_Semiquantitativ",
  "title" : "MII VS Labor Laborergebnis Semiquantitativ",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-09-09T14:19:13+00:00",
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
      "version" : "http://snomed.info/sct/900000000000207008/version/20260701",
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
