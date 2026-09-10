# MII VS Mikrobio Spezifische Mikroskopie Tests [LOINC] - MII Implementation Guide Microbiology v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII VS Mikrobio Spezifische Mikroskopie Tests [LOINC]**

## ValueSet: MII VS Mikrobio Spezifische Mikroskopie Tests [LOINC] 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/ValueSet/mii-vs-mikrobio-spezifische-mikroskopie-tests-loinc | *Version*:2027.0.0-ballot.rc1 |
| Active as of 2026-09-10 | *Computable Name*:MII_VS_Mikrobio_Spezifische_Mikroskopie_Tests_LOINC |

 
Tests-ValueSet für die spezifische Mikroskopie: ordinale LOINC-Codes, bei denen das gesuchte Objekt und die Färbetechnik im Code benannt sind und das Ergebnis die semiquantitative Stufe ist. 

 **References** 

* [MII PR Mikrobio Spezifische Mikroskopie](StructureDefinition-mii-pr-mikrobio-spezifische-mikroskopie.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-mikrobio-spezifische-mikroskopie-tests-loinc",
  "url" : "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/ValueSet/mii-vs-mikrobio-spezifische-mikroskopie-tests-loinc",
  "version" : "2027.0.0-ballot.rc1",
  "name" : "MII_VS_Mikrobio_Spezifische_Mikroskopie_Tests_LOINC",
  "title" : "MII VS Mikrobio Spezifische Mikroskopie Tests [LOINC]",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-09-10T13:47:44+00:00",
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
  "description" : "Tests-ValueSet für die spezifische Mikroskopie: ordinale LOINC-Codes, bei denen das gesuchte Objekt und die Färbetechnik im Code benannt sind und das Ergebnis die semiquantitative Stufe ist.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "http://loinc.org",
      "version" : "2.82",
      "filter" : [{
        "property" : "PROPERTY",
        "op" : "=",
        "value" : "LP217195-9"
      },
      {
        "property" : "SCALE_TYP",
        "op" : "=",
        "value" : "LP7751-3"
      },
      {
        "property" : "METHOD_TYP",
        "op" : "=",
        "value" : "LP6301-8"
      },
      {
        "property" : "STATUS",
        "op" : "=",
        "value" : "ACTIVE"
      }]
    },
    {
      "system" : "http://loinc.org",
      "version" : "2.82",
      "filter" : [{
        "property" : "PROPERTY",
        "op" : "=",
        "value" : "LP217195-9"
      },
      {
        "property" : "SCALE_TYP",
        "op" : "=",
        "value" : "LP7751-3"
      },
      {
        "property" : "METHOD_TYP",
        "op" : "=",
        "value" : "LP6094-9"
      },
      {
        "property" : "STATUS",
        "op" : "=",
        "value" : "ACTIVE"
      }]
    },
    {
      "system" : "http://loinc.org",
      "version" : "2.82",
      "filter" : [{
        "property" : "PROPERTY",
        "op" : "=",
        "value" : "LP217195-9"
      },
      {
        "property" : "SCALE_TYP",
        "op" : "=",
        "value" : "LP7751-3"
      },
      {
        "property" : "METHOD_TYP",
        "op" : "=",
        "value" : "LP262570-7"
      },
      {
        "property" : "STATUS",
        "op" : "=",
        "value" : "ACTIVE"
      }]
    }]
  }
}

```
