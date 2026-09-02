# MII VS Mikrobio Befundtyp [LOINC] - MII Implementation Guide Microbiology v2027.0.0-alpha.6

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII VS Mikrobio Befundtyp [LOINC]**

## ValueSet: MII VS Mikrobio Befundtyp [LOINC] 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/ValueSet/mii-vs-mikrobio-befundtyp-loinc | *Version*:2027.0.0-alpha.6 |
| Active as of 2026-09-02 | *Computable Name*:MII_VS_Mikrobio_Befundtyp_LOINC |
| **Copyright/Legal**: This content LOINC® is copyright © 1995 Regenstrief Institute, Inc. and the LOINC Committee, and available at no cost under the license at http://loinc.org/terms-of-use | |

 
Sepzalisierte Kodierung von mikrobiologischen Befunden 

 **References** 

* [MII PR Mikrobio Diagnostic Report](StructureDefinition-mii-pr-mikrobio-diagnostic-report.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-mikrobio-befundtyp-loinc",
  "url" : "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/ValueSet/mii-vs-mikrobio-befundtyp-loinc",
  "version" : "2027.0.0-alpha.6",
  "name" : "MII_VS_Mikrobio_Befundtyp_LOINC",
  "title" : "MII VS Mikrobio Befundtyp [LOINC]",
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
  "description" : "Sepzalisierte Kodierung von mikrobiologischen Befunden",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "immutable" : false,
  "copyright" : "This content LOINC® is copyright © 1995 Regenstrief Institute, Inc. and the LOINC Committee, and available at no cost under the license at http://loinc.org/terms-of-use",
  "compose" : {
    "include" : [{
      "system" : "http://loinc.org",
      "concept" : [{
        "code" : "92894-5",
        "display" : "Microbiology - bacterial studies"
      },
      {
        "code" : "92893-7",
        "display" : "Microbiology - viral studies"
      },
      {
        "code" : "96397-5",
        "display" : "Microbiology - mycobacteriology studies"
      },
      {
        "code" : "96398-3",
        "display" : "Microbiology - mycology studies"
      },
      {
        "code" : "92892-9",
        "display" : "Microbiology - parasitic studies"
      }]
    }]
  }
}

```
