# MII VS Mikrobio Aviditaet Tests [LOINC] - MII Implementation Guide Microbiology v2027.0.0-alpha.6

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII VS Mikrobio Aviditaet Tests [LOINC]**

## ValueSet: MII VS Mikrobio Aviditaet Tests [LOINC] 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/ValueSet/mii-vs-mikrobio-aviditaet-tests-loinc | *Version*:2027.0.0-alpha.6 |
| Active as of 2026-09-03 | *Computable Name*:MII_VS_Mikrobio_Aviditaet_Tests_LOINC |

 
Tests-ValueSet für die Aviditätsbestimmung: LOINC-Codes für Aviditätstests einschließlich des Zielantigens. 

 **References** 

* [MII PR Mikrobio Aviditaet](StructureDefinition-mii-pr-mikrobio-aviditaet.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-mikrobio-aviditaet-tests-loinc",
  "url" : "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/ValueSet/mii-vs-mikrobio-aviditaet-tests-loinc",
  "version" : "2027.0.0-alpha.6",
  "name" : "MII_VS_Mikrobio_Aviditaet_Tests_LOINC",
  "title" : "MII VS Mikrobio Aviditaet Tests [LOINC]",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-09-03T05:48:26+00:00",
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
  "description" : "Tests-ValueSet für die Aviditätsbestimmung: LOINC-Codes für Aviditätstests einschließlich des Zielantigens.",
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
      "concept" : [{
        "code" : "52984-2",
        "display" : "Cytomegalovirus IgG Ab avidity [Ratio] in Serum or Plasma by Immunoassay"
      },
      {
        "code" : "81119-0",
        "display" : "Epstein Barr virus capsid Ab.IgG avidity"
      },
      {
        "code" : "104428-8",
        "display" : "Measles virus Ab.IgG avidity"
      },
      {
        "code" : "52986-7",
        "display" : "Rubella virus Ab.IgG avidity"
      },
      {
        "code" : "56990-5",
        "display" : "Toxoplasma gondii Ab.IgG avidity"
      }]
    }]
  }
}

```
