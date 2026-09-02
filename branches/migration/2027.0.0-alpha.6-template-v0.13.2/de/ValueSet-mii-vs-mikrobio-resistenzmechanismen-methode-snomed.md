# MII VS Mikrobio Resistenzmechanismen Methode [SNOMED] - MII Implementation Guide Microbiology v2027.0.0-alpha.6

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII VS Mikrobio Resistenzmechanismen Methode [SNOMED]**

## ValueSet: MII VS Mikrobio Resistenzmechanismen Methode [SNOMED] 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/ValueSet/mii-vs-mikrobio-resistenzmechanismen-methode-snomed | *Version*:2027.0.0-alpha.6 |
| Active Stand: 2026-09-02 | *Maschinenlesbarer Name*:MII_VS_Mikrobio_Resistenzmechanismen_Methode_SNOMED |

 
Methoden für den Nachweis von Resistenzgenen oder Resistenzmutationen (molekulare Verfahren). 

 **References** 

* [MII PR Mikrobio Resistenzmechanismen Determinanten](StructureDefinition-mii-pr-mikrobio-resistenzmechanismen-determinanten.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-mikrobio-resistenzmechanismen-methode-snomed",
  "url" : "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/ValueSet/mii-vs-mikrobio-resistenzmechanismen-methode-snomed",
  "version" : "2027.0.0-alpha.6",
  "name" : "MII_VS_Mikrobio_Resistenzmechanismen_Methode_SNOMED",
  "title" : "MII VS Mikrobio Resistenzmechanismen Methode [SNOMED]",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-09-02T12:45:31+00:00",
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
  "description" : "Methoden für den Nachweis von Resistenzgenen oder Resistenzmutationen (molekulare Verfahren).",
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
      }]
    }]
  }
}

```
