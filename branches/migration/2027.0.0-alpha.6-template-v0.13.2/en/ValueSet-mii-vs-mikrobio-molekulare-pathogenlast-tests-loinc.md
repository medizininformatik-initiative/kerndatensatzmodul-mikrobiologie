# MII VS Mikrobio Molekulare Pathogenlast Tests [LOINC] - MII Implementation Guide Microbiology v2027.0.0-alpha.6

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII VS Mikrobio Molekulare Pathogenlast Tests [LOINC]**

## ValueSet: MII VS Mikrobio Molekulare Pathogenlast Tests [LOINC] 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/ValueSet/mii-vs-mikrobio-molekulare-pathogenlast-tests-loinc | *Version*:2027.0.0-alpha.6 |
| Active as of 2026-09-02 | *Computable Name*:MII_VS_Mikrobio_Molekulare_Pathogenlast_Tests_LOINC |

 **References** 

* [MII PR Mikrobio Molekulare Pathogenlast](StructureDefinition-mii-pr-mikrobio-molekulare-pathogenlast.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-mikrobio-molekulare-pathogenlast-tests-loinc",
  "url" : "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/ValueSet/mii-vs-mikrobio-molekulare-pathogenlast-tests-loinc",
  "version" : "2027.0.0-alpha.6",
  "name" : "MII_VS_Mikrobio_Molekulare_Pathogenlast_Tests_LOINC",
  "title" : "MII VS Mikrobio Molekulare Pathogenlast Tests [LOINC]",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-09-02T10:49:18+00:00",
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
      "system" : "http://loinc.org",
      "filter" : [{
        "property" : "SCALE_TYP",
        "op" : "=",
        "value" : "LP7753-9"
      },
      {
        "property" : "METHOD_TYP",
        "op" : "=",
        "value" : "LP6464-4"
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
        "property" : "SCALE_TYP",
        "op" : "=",
        "value" : "LP7753-9"
      },
      {
        "property" : "METHOD_TYP",
        "op" : "=",
        "value" : "LP6404-0"
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
        "property" : "SCALE_TYP",
        "op" : "=",
        "value" : "LP7753-9"
      },
      {
        "property" : "METHOD_TYP",
        "op" : "=",
        "value" : "LP6462-8"
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
        "property" : "SCALE_TYP",
        "op" : "=",
        "value" : "LP7753-9"
      },
      {
        "property" : "METHOD_TYP",
        "op" : "=",
        "value" : "LP6463-6"
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
        "property" : "SCALE_TYP",
        "op" : "=",
        "value" : "LP7753-9"
      },
      {
        "property" : "METHOD_TYP",
        "op" : "=",
        "value" : "LP208998-7"
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
