# MII VS Microbiology Antigen Antibody Quantitative Tests [LOINC] - MII Implementation Guide Microbiology v2027.0.0-ballot2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII VS Microbiology Antigen Antibody Quantitative Tests [LOINC]**

## ValueSet: MII VS Microbiology Antigen Antibody Quantitative Tests [LOINC] 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/ValueSet/mii-vs-mikrobio-antigen-antikoerper-quantitative-tests-loinc | *Version*:2027.0.0-ballot2 |
| Active as of 2026-10-19 | *Computable Name*:MII_VS_Mikrobio_Antigen_Antikoerper_Quantitative_Tests_LOINC |

 
Test ValueSet for quantitative antigen and antibody tests: LOINC codes for measuring pathogen-specific antigens or antibodies. 

 **References** 

* [MII PR Microbiology Antigen Antibody Quantitative](StructureDefinition-mii-pr-mikrobio-antigen-antikoerper-quantitativ.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-mikrobio-antigen-antikoerper-quantitative-tests-loinc",
  "url" : "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/ValueSet/mii-vs-mikrobio-antigen-antikoerper-quantitative-tests-loinc",
  "version" : "2027.0.0-ballot2",
  "name" : "MII_VS_Mikrobio_Antigen_Antikoerper_Quantitative_Tests_LOINC",
  "title" : "MII VS Microbiology Antigen Antibody Quantitative Tests [LOINC]",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-10-19T02:33:36+00:00",
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
  "description" : "Test ValueSet for quantitative antigen and antibody tests: LOINC codes for measuring pathogen-specific antigens or antibodies.",
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
        "property" : "SCALE_TYP",
        "op" : "=",
        "value" : "LP7753-9"
      },
      {
        "property" : "METHOD_TYP",
        "op" : "=",
        "value" : "LP217197-5"
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
      "version" : "2.82",
      "filter" : [{
        "property" : "SCALE_TYP",
        "op" : "=",
        "value" : "LP7753-9"
      },
      {
        "property" : "METHOD_TYP",
        "op" : "=",
        "value" : "LP6106-1"
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
      "version" : "2.82",
      "filter" : [{
        "property" : "SCALE_TYP",
        "op" : "=",
        "value" : "LP7753-9"
      },
      {
        "property" : "METHOD_TYP",
        "op" : "=",
        "value" : "LP6274-7"
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
      "version" : "2.82",
      "filter" : [{
        "property" : "SCALE_TYP",
        "op" : "=",
        "value" : "LP7753-9"
      },
      {
        "property" : "METHOD_TYP",
        "op" : "=",
        "value" : "LP28800-8"
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
      "version" : "2.82",
      "filter" : [{
        "property" : "SCALE_TYP",
        "op" : "=",
        "value" : "LP7753-9"
      },
      {
        "property" : "METHOD_TYP",
        "op" : "=",
        "value" : "LP6304-2"
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
      "version" : "2.82",
      "filter" : [{
        "property" : "SCALE_TYP",
        "op" : "=",
        "value" : "LP7753-9"
      },
      {
        "property" : "METHOD_TYP",
        "op" : "=",
        "value" : "LP6320-8"
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
      "version" : "2.82",
      "filter" : [{
        "property" : "SCALE_TYP",
        "op" : "=",
        "value" : "LP7753-9"
      },
      {
        "property" : "METHOD_TYP",
        "op" : "=",
        "value" : "LP6323-2"
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
      "version" : "2.82",
      "filter" : [{
        "property" : "SCALE_TYP",
        "op" : "=",
        "value" : "LP7753-9"
      },
      {
        "property" : "METHOD_TYP",
        "op" : "=",
        "value" : "LP6360-4"
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
      "version" : "2.82",
      "filter" : [{
        "property" : "SCALE_TYP",
        "op" : "=",
        "value" : "LP7753-9"
      },
      {
        "property" : "METHOD_TYP",
        "op" : "=",
        "value" : "LP6416-4"
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
