# mii-sp-mikrobio-interpretation - MII Implementation Guide Microbiology v2027.0.0-alpha.6

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-sp-mikrobio-interpretation**

## SearchParameter: mii-sp-mikrobio-interpretation 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/SearchParameter/Observation-norm-kategorie | *Version*:2027.0.0-alpha.6 |
| Active as of 2026-04-02 | *Computable Name*:MII_SP_Mikrobio_NormKategorie |

 
Suchparameter für die Normkategorie der Empfindlichkeitsextension 



## Resource Content

```json
{
  "resourceType" : "SearchParameter",
  "id" : "mii-sp-mikrobio-interpretation",
  "url" : "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/SearchParameter/Observation-norm-kategorie",
  "version" : "2027.0.0-alpha.6",
  "name" : "MII_SP_Mikrobio_NormKategorie",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-04-02",
  "publisher" : "Medizininformatik Initiative",
  "contact" : [{
    "name" : "Medizininformatik Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de"
    }]
  }],
  "description" : "Suchparameter für die Normkategorie der Empfindlichkeitsextension",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "code" : "norm-kategorie",
  "base" : ["Observation"],
  "type" : "token",
  "expression" : "Observation.interpretation.extension('https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-ex-mikrobio-empfindlichkeit-norm').value.ofType(CodeableConcept)"
}

```
