# MII VS Microbiology Antigen Antibody Method [SNOMED] - MII Implementation Guide Microbiology v2027.0.0-ballot2

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII VS Microbiology Antigen Antibody Method [SNOMED]**

## ValueSet: MII VS Microbiology Antigen Antibody Method [SNOMED] 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/ValueSet/mii-vs-mikrobio-antigen-antikoerper-methode-snomed | *Version*:2027.0.0-ballot2 |
| Active Stand: 2026-10-19 | *Maschinenlesbarer Name*:MII_VS_Mikrobio_Antigen_Antikoerper_Methode_SNOMED |

 
Method ValueSet for quantitative antigen and antibody tests and for avidity determination: immunological detection procedures. 

 **References** 

* [MII PR Microbiology Antigen Antibody Quantitative](StructureDefinition-mii-pr-mikrobio-antigen-antikoerper-quantitativ.md)
* [MII PR Microbiology Avidity](StructureDefinition-mii-pr-mikrobio-aviditaet.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-mikrobio-antigen-antikoerper-methode-snomed",
  "url" : "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/ValueSet/mii-vs-mikrobio-antigen-antikoerper-methode-snomed",
  "version" : "2027.0.0-ballot2",
  "name" : "MII_VS_Mikrobio_Antigen_Antikoerper_Methode_SNOMED",
  "title" : "MII VS Microbiology Antigen Antibody Method [SNOMED]",
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
  "description" : "Method ValueSet for quantitative antigen and antibody tests and for avidity determination: immunological detection procedures.",
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
        "code" : "708104000",
        "display" : "Agglutination technique (qualifier value)"
      },
      {
        "code" : "726449005",
        "display" : "Immunoassay technique (qualifier value)"
      },
      {
        "code" : "703444002",
        "display" : "Fluorescent immunoassay (qualifier value)"
      }]
    }]
  }
}

```
