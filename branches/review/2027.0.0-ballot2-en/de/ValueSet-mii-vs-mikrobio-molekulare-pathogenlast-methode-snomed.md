# MII VS Microbiology Molecular Pathogen Load Method [SNOMED] - MII Implementation Guide Microbiology v2027.0.0-ballot2

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII VS Microbiology Molecular Pathogen Load Method [SNOMED]**

## ValueSet: MII VS Microbiology Molecular Pathogen Load Method [SNOMED] 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/ValueSet/mii-vs-mikrobio-molekulare-pathogenlast-methode-snomed | *Version*:2027.0.0-ballot2 |
| Active Stand: 2026-10-19 | *Maschinenlesbarer Name*:MII_VS_Mikrobio_Molekulare_Pathogenlast_Methode_SNOMED |

 
Method ValueSet for molecular pathogen load: amplification procedures for quantifying pathogen nucleic acid. 

 **References** 

* [MII PR Microbiology Molecular Pathogen Load](StructureDefinition-mii-pr-mikrobio-molekulare-pathogenlast.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-mikrobio-molekulare-pathogenlast-methode-snomed",
  "url" : "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/ValueSet/mii-vs-mikrobio-molekulare-pathogenlast-methode-snomed",
  "version" : "2027.0.0-ballot2",
  "name" : "MII_VS_Mikrobio_Molekulare_Pathogenlast_Methode_SNOMED",
  "title" : "MII VS Microbiology Molecular Pathogen Load Method [SNOMED]",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-10-19T02:49:08+00:00",
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
  "description" : "Method ValueSet for molecular pathogen load: amplification procedures for quantifying pathogen nucleic acid.",
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
