# MII LM Microbiology Report - MII Implementation Guide Microbiology v2027.0.0-ballot2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII LM Microbiology Report**

## Logical Model: MII LM Microbiology Report 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-lm-mikrobio-logical-model-de | *Version*:2027.0.0-ballot2 |
| Active as of 2026-10-19 | *Computable Name*:MII_LM_Mikrobio_Befund |

 
Logical model of the microbiological report for the graphical representation of the 2027 microbiology data model 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.medizininformatikinitiative.kerndatensatz.mikrobiologie|current/StructureDefinition/StructureDefinition-mii-lm-mikrobio-logical-model.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots, and their representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-mii-lm-mikrobio-logical-model.csv), [Excel](../StructureDefinition-mii-lm-mikrobio-logical-model.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-lm-mikrobio-logical-model",
  "url" : "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-lm-mikrobio-logical-model-de",
  "version" : "2027.0.0-ballot2",
  "name" : "MII_LM_Mikrobio_Befund",
  "title" : "MII LM Microbiology Report",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-10-19T02:49:08+00:00",
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
  "description" : "Logical model of the microbiological report for the graphical representation of the 2027 microbiology data model",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-lm-mikrobio-logical-model-de",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Element",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "mii-lm-mikrobio-logical-model-de",
      "path" : "mii-lm-mikrobio-logical-model-de",
      "short" : "Microbiological report",
      "definition" : "Microbiological report that summarises and contextualises related microbiological investigation results."
    },
    {
      "id" : "mii-lm-mikrobio-logical-model-de.Identifikation",
      "path" : "mii-lm-mikrobio-logical-model-de.Identifikation",
      "short" : "Identification",
      "definition" : "Unique identifier of the report.",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "mii-lm-mikrobio-logical-model-de.Status",
      "path" : "mii-lm-mikrobio-logical-model-de.Status",
      "short" : "Status",
      "definition" : "Status of the report (e.g. preliminary, final, corrected).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "mii-lm-mikrobio-logical-model-de.Befundtyp",
      "path" : "mii-lm-mikrobio-logical-model-de.Befundtyp",
      "short" : "Report type",
      "definition" : "Clinical classification of the microbiological report (LOINC). Multiple entries if the report covers several study types, e.g. bacteriological and mycological.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "mii-lm-mikrobio-logical-model-de.Patient",
      "path" : "mii-lm-mikrobio-logical-model-de.Patient",
      "short" : "Patient",
      "definition" : "Patient to whom the report relates.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Patient"]
      }]
    },
    {
      "id" : "mii-lm-mikrobio-logical-model-de.KlinischerBezugszeitpunkt",
      "path" : "mii-lm-mikrobio-logical-model-de.KlinischerBezugszeitpunkt",
      "short" : "Clinical reference time",
      "definition" : "Time to which the content of the report relates (usually the time of specimen collection).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "mii-lm-mikrobio-logical-model-de.QuelleKlinischerBezugszeitpunkt",
      "path" : "mii-lm-mikrobio-logical-model-de.QuelleKlinischerBezugszeitpunkt",
      "short" : "Source of the clinical reference time",
      "definition" : "Indicates what the clinical reference time refers to, e.g. time of specimen collection or receipt in the laboratory.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }]
    },
    {
      "id" : "mii-lm-mikrobio-logical-model-de.Dokumentationszeitpunkt",
      "path" : "mii-lm-mikrobio-logical-model-de.Dokumentationszeitpunkt",
      "short" : "Documentation time",
      "definition" : "Time at which the report was released or made available.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "mii-lm-mikrobio-logical-model-de.Anforderung",
      "path" : "mii-lm-mikrobio-logical-model-de.Anforderung",
      "short" : "Order",
      "definition" : "Underlying laboratory order.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/ServiceRequest"]
      }]
    },
    {
      "id" : "mii-lm-mikrobio-logical-model-de.Befundinterpret",
      "path" : "mii-lm-mikrobio-logical-model-de.Befundinterpret",
      "short" : "Results interpreter",
      "definition" : "Person who clinically assesses and is responsible for the report.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Practitioner"]
      }]
    },
    {
      "id" : "mii-lm-mikrobio-logical-model-de.Probenmaterial",
      "path" : "mii-lm-mikrobio-logical-model-de.Probenmaterial",
      "short" : "Specimen",
      "definition" : "Specimens on which the report is based.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Specimen"]
      }]
    },
    {
      "id" : "mii-lm-mikrobio-logical-model-de.Untersuchung",
      "path" : "mii-lm-mikrobio-logical-model-de.Untersuchung",
      "short" : "Investigation",
      "definition" : "The microbiological investigations contained in the report.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-lm-mikrobio-untersuchung"]
      }]
    }]
  }
}

```
