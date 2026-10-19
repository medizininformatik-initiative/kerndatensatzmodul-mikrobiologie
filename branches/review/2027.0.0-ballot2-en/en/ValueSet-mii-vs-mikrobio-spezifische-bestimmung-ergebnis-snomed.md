# MII VS Microbiology Specific Determination Result [SNOMED] - MII Implementation Guide Microbiology v2027.0.0-ballot2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII VS Microbiology Specific Determination Result [SNOMED]**

## ValueSet: MII VS Microbiology Specific Determination Result [SNOMED] 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/ValueSet/mii-vs-mikrobio-spezifische-bestimmung-ergebnis-snomed | *Version*:2027.0.0-ballot2 |
| Active as of 2026-10-19 | *Computable Name*:MII_VS_Mikrobio_Spezifische_Bestimmung_Ergebnis_SNOMED |

 
Result ValueSet for specific determination: detection or exclusion of the target already named in the investigation code, including the grey-zone findings weakly positive and equivocal. An indeterminable result is represented not via value[x] but via Observation.dataAbsentReason. 

 **References** 

* [MII PR Microbiology Specific Determination](StructureDefinition-mii-pr-mikrobio-spezifische-bestimmung.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-mikrobio-spezifische-bestimmung-ergebnis-snomed",
  "url" : "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/ValueSet/mii-vs-mikrobio-spezifische-bestimmung-ergebnis-snomed",
  "version" : "2027.0.0-ballot2",
  "name" : "MII_VS_Mikrobio_Spezifische_Bestimmung_Ergebnis_SNOMED",
  "title" : "MII VS Microbiology Specific Determination Result [SNOMED]",
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
  "description" : "Result ValueSet for specific determination: detection or exclusion of the target already named in the investigation code, including the grey-zone findings weakly positive and equivocal. An indeterminable result is represented not via value[x] but via Observation.dataAbsentReason.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "compose" : {
    "include" : [{
      "valueSet" : ["https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/ValueSet/mii-vs-mikrobio-detected-not-detected-snomed"]
    },
    {
      "system" : "http://snomed.info/sct",
      "version" : "http://snomed.info/sct/900000000000207008/version/20260701",
      "concept" : [{
        "code" : "260408008",
        "display" : "Weakly positive"
      },
      {
        "code" : "280414007",
        "display" : "Equivocal result"
      }]
    }]
  }
}

```
