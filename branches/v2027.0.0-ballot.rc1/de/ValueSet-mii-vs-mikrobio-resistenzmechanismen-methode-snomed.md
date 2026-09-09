# MII VS Mikrobio Resistenzmechanismen Methode [SNOMED] - MII Implementation Guide Microbiology v2027.0.0-ballot.rc1

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII VS Mikrobio Resistenzmechanismen Methode [SNOMED]**

## ValueSet: MII VS Mikrobio Resistenzmechanismen Methode [SNOMED] 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/ValueSet/mii-vs-mikrobio-resistenzmechanismen-methode-snomed | *Version*:2027.0.0-ballot.rc1 |
| Active Stand: 2026-09-09 | *Maschinenlesbarer Name*:MII_VS_Mikrobio_Resistenzmechanismen_Methode_SNOMED |

 
Methoden für den Nachweis von Resistenzmechanismen und Determinanten: molekulare, immunologische und funktionale Verfahren. 

 **References** 

* [MII PR Mikrobio Resistenzmechanismen Determinanten](StructureDefinition-mii-pr-mikrobio-resistenzmechanismen-determinanten.md)

### Logical Definition (CLD)

 

### Expansion

No Expansion for this valueset (Unsupported Code System Version)

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-mikrobio-resistenzmechanismen-methode-snomed",
  "url" : "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/ValueSet/mii-vs-mikrobio-resistenzmechanismen-methode-snomed",
  "version" : "2027.0.0-ballot.rc1",
  "name" : "MII_VS_Mikrobio_Resistenzmechanismen_Methode_SNOMED",
  "title" : "MII VS Mikrobio Resistenzmechanismen Methode [SNOMED]",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-09-09T13:56:56+00:00",
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
  "description" : "Methoden für den Nachweis von Resistenzmechanismen und Determinanten: molekulare, immunologische und funktionale Verfahren.",
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
        "code" : "258066000",
        "display" : "Polymerase chain reaction technique (qualifier value)"
      },
      {
        "code" : "70601000052104",
        "display" : "Real-time polymerase chain reaction technique (qualifier value)"
      },
      {
        "code" : "1303992007",
        "display" : "Digital polymerase chain reaction technique (qualifier value)"
      },
      {
        "code" : "1303998006",
        "display" : "Multiplex polymerase chain reaction technique (qualifier value)"
      },
      {
        "code" : "1304048000",
        "display" : "Transcription mediated amplification technique (qualifier value)"
      },
      {
        "code" : "1304162005",
        "display" : "Nucleic acid sequencing technique (qualifier value)"
      },
      {
        "code" : "726449005",
        "display" : "Immunoassay technique (qualifier value)"
      },
      {
        "code" : "708099001",
        "display" : "Rapid immunoassay technique (qualifier value)"
      },
      {
        "code" : "703444002",
        "display" : "Fluorescent immunoassay (qualifier value)"
      },
      {
        "code" : "708104000",
        "display" : "Agglutination technique (qualifier value)"
      },
      {
        "code" : "703458000",
        "display" : "Neutralization method (qualifier value)"
      },
      {
        "code" : "782518009",
        "display" : "Modified carbapenem inactivation technique (qualifier value)"
      }]
    }]
  }
}

```
