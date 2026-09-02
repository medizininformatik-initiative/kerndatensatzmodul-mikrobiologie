# MII VS Mikrobio CT Wert [LOINC] - MII Implementation Guide Microbiology v2027.0.0-alpha.6

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII VS Mikrobio CT Wert [LOINC]**

## ValueSet: MII VS Mikrobio CT Wert [LOINC] 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/ValueSet/mii-vs-mikrobio-ct-wert-loinc | *Version*:2027.0.0-alpha.6 |
| Active as of 2026-09-02 | *Computable Name*:MII_VS_Mikrobio_CT_Wert_LOINC |

 
Tests-ValueSet für den Ct-Wert: LOINC-Codes mit der Eigenschaft Zyklusschwellenwert bei Nukleinsäurenachweisen. 

 **References** 

* [MII PR Mikrobio CT Wert](StructureDefinition-mii-pr-mikrobio-ct-wert.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-mikrobio-ct-wert-loinc",
  "url" : "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/ValueSet/mii-vs-mikrobio-ct-wert-loinc",
  "version" : "2027.0.0-alpha.6",
  "name" : "MII_VS_Mikrobio_CT_Wert_LOINC",
  "title" : "MII VS Mikrobio CT Wert [LOINC]",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-09-02T21:48:21+00:00",
  "publisher" : "Medizininformatik Initiative",
  "contact" : [{
    "name" : "Medizininformatik Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de"
    }]
  }],
  "description" : "Tests-ValueSet für den Ct-Wert: LOINC-Codes mit der Eigenschaft Zyklusschwellenwert bei Nukleinsäurenachweisen.",
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
        "value" : "LP188772-0"
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
