# MII VS Mikrobio Spezifische Kultur Tests [LOINC] - MII Implementation Guide Microbiology v2027.0.0-alpha.6

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII VS Mikrobio Spezifische Kultur Tests [LOINC]**

## ValueSet: MII VS Mikrobio Spezifische Kultur Tests [LOINC] 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/ValueSet/mii-vs-mikrobio-spezifische-kultur-tests-loinc | *Version*:2027.0.0-alpha.6 |
| Active Stand: 2026-09-02 | *Maschinenlesbarer Name*:MII_VS_Mikrobio_Spezifische_Kultur_Tests_LOINC |

 
Tests-ValueSet fuer die spezifische Kultur: erregerspezifische Kulturnachweise, bei denen das gesuchte Ziel bereits im LOINC-Code benannt ist. 

 **References** 

* [MII PR Mikrobio Spezifische Kultur](StructureDefinition-mii-pr-mikrobio-spezifische-kultur.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-mikrobio-spezifische-kultur-tests-loinc",
  "url" : "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/ValueSet/mii-vs-mikrobio-spezifische-kultur-tests-loinc",
  "version" : "2027.0.0-alpha.6",
  "name" : "MII_VS_Mikrobio_Spezifische_Kultur_Tests_LOINC",
  "title" : "MII VS Mikrobio Spezifische Kultur Tests [LOINC]",
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
  "description" : "Tests-ValueSet fuer die spezifische Kultur: erregerspezifische Kulturnachweise, bei denen das gesuchte Ziel bereits im LOINC-Code benannt ist.",
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
      "filter" : [{
        "property" : "PROPERTY",
        "op" : "=",
        "value" : "LP6850-4"
      },
      {
        "property" : "METHOD_TYP",
        "op" : "=",
        "value" : "LP6429-7"
      },
      {
        "property" : "CLASS",
        "op" : "=",
        "value" : "LP7819-8"
      },
      {
        "property" : "STATUS",
        "op" : "=",
        "value" : "ACTIVE"
      }]
    },
    {
      "system" : "http://loinc.org",
      "filter" : [{
        "property" : "PROPERTY",
        "op" : "=",
        "value" : "LP217195-9"
      },
      {
        "property" : "METHOD_TYP",
        "op" : "=",
        "value" : "LP6429-7"
      },
      {
        "property" : "CLASS",
        "op" : "=",
        "value" : "LP7819-8"
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
