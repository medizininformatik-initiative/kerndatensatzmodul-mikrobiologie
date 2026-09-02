# MII VS Mikrobio Antigen Antikoerper Methode [SNOMED] - MII Implementation Guide Microbiology v2027.0.0-alpha.6

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII VS Mikrobio Antigen Antikoerper Methode [SNOMED]**

## ValueSet: MII VS Mikrobio Antigen Antikoerper Methode [SNOMED] 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/ValueSet/mii-vs-mikrobio-antigen-antikoerper-methode-snomed | *Version*:2027.0.0-alpha.6 |
| Active as of 2026-09-02 | *Computable Name*:MII_VS_Mikrobio_Antigen_Antikoerper_Methode_SNOMED |

 **References** 

* [MII PR Mikrobio Antigen Antikoerper Quantitativ](StructureDefinition-mii-pr-mikrobio-antigen-antikoerper-quantitativ.md)
* [MII PR Mikrobio Aviditaet](StructureDefinition-mii-pr-mikrobio-aviditaet.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-mikrobio-antigen-antikoerper-methode-snomed",
  "url" : "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/ValueSet/mii-vs-mikrobio-antigen-antikoerper-methode-snomed",
  "version" : "2027.0.0-alpha.6",
  "name" : "MII_VS_Mikrobio_Antigen_Antikoerper_Methode_SNOMED",
  "title" : "MII VS Mikrobio Antigen Antikoerper Methode [SNOMED]",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-09-02T11:53:33+00:00",
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
