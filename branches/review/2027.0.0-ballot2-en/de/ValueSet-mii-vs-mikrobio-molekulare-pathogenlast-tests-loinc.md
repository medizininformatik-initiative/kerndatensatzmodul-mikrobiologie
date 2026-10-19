# MII VS Microbiology Molecular Pathogen Load Tests [LOINC] - MII Implementation Guide Microbiology v2027.0.0-ballot2

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII VS Microbiology Molecular Pathogen Load Tests [LOINC]**

## ValueSet: MII VS Microbiology Molecular Pathogen Load Tests [LOINC] 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/ValueSet/mii-vs-mikrobio-molekulare-pathogenlast-tests-loinc | *Version*:2027.0.0-ballot2 |
| Active Stand: 2026-10-19 | *Maschinenlesbarer Name*:MII_VS_Mikrobio_Molekulare_Pathogenlast_Tests_LOINC |

 
Test ValueSet for molecular pathogen load: quantitative LOINC codes for the nucleic acid concentration of a pathogen. 

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
  "id" : "mii-vs-mikrobio-molekulare-pathogenlast-tests-loinc",
  "url" : "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/ValueSet/mii-vs-mikrobio-molekulare-pathogenlast-tests-loinc",
  "version" : "2027.0.0-ballot2",
  "name" : "MII_VS_Mikrobio_Molekulare_Pathogenlast_Tests_LOINC",
  "title" : "MII VS Microbiology Molecular Pathogen Load Tests [LOINC]",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-10-19T01:04:27+00:00",
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
  "description" : "Test ValueSet for molecular pathogen load: quantitative LOINC codes for the nucleic acid concentration of a pathogen.",
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
      "version" : "2.82",
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
      "version" : "2.82",
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
      "version" : "2.82",
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
      "version" : "2.82",
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
