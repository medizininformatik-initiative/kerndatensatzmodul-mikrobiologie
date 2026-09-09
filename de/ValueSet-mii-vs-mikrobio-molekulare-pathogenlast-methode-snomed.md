# MII VS Mikrobio Molekulare Pathogenlast Methode [SNOMED] - MII Implementation Guide Microbiology v2027.0.0-ballot.rc1

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII VS Mikrobio Molekulare Pathogenlast Methode [SNOMED]**

## ValueSet: MII VS Mikrobio Molekulare Pathogenlast Methode [SNOMED] 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/ValueSet/mii-vs-mikrobio-molekulare-pathogenlast-methode-snomed | *Version*:2027.0.0-ballot.rc1 |
| Active Stand: 2026-09-09 | *Maschinenlesbarer Name*:MII_VS_Mikrobio_Molekulare_Pathogenlast_Methode_SNOMED |

 
Methoden-ValueSet für die molekulare Pathogenlast: Amplifikationsverfahren zur Quantifizierung von Erregernukleinsäure. 

 **References** 

* [MII PR Mikrobio Molekulare Pathogenlast](StructureDefinition-mii-pr-mikrobio-molekulare-pathogenlast.md)

### Logical Definition (CLD)

 

### Expansion

No Expansion for this valueset (Unsupported Code System Version)

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-mikrobio-molekulare-pathogenlast-methode-snomed",
  "url" : "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/ValueSet/mii-vs-mikrobio-molekulare-pathogenlast-methode-snomed",
  "version" : "2027.0.0-ballot.rc1",
  "name" : "MII_VS_Mikrobio_Molekulare_Pathogenlast_Methode_SNOMED",
  "title" : "MII VS Mikrobio Molekulare Pathogenlast Methode [SNOMED]",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-09-09T16:03:21+00:00",
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
  "description" : "Methoden-ValueSet für die molekulare Pathogenlast: Amplifikationsverfahren zur Quantifizierung von Erregernukleinsäure.",
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
        "code" : "70601000052104",
        "display" : "Real-time polymerase chain reaction technique"
      },
      {
        "code" : "1303992007",
        "display" : "Digital polymerase chain reaction technique"
      },
      {
        "code" : "1304048000",
        "display" : "Transcription mediated amplification technique"
      }]
    }]
  }
}

```
