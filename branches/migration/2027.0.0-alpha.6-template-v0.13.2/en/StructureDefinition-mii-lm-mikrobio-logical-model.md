# MII LM Mikrobio Befund - MII Implementation Guide Microbiology v2027.0.0-alpha.6

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII LM Mikrobio Befund**

## Logical Model: MII LM Mikrobio Befund 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-lm-mikrobio-logical-model-de | *Version*:2027.0.0-alpha.6 |
| Active as of 2026-09-02 | *Computable Name*:MII_LM_Mikrobio_Befund |

 
Logical Model des mikrobiologischen Befunds für die grafische Darstellung des Mikrobiologie-Datenmodells 2027 [DE] 

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
  "version" : "2027.0.0-alpha.6",
  "name" : "MII_LM_Mikrobio_Befund",
  "title" : "MII LM Mikrobio Befund",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-09-02T09:13:42+00:00",
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
  "description" : "Logical Model des mikrobiologischen Befunds für die grafische Darstellung des Mikrobiologie-Datenmodells 2027 [DE]",
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
      "short" : "Mikrobiologischer Befund",
      "definition" : "Mikrobiologischer Befundbericht, der zusammengehörige mikrobiologische Untersuchungsergebnisse zusammenfasst und kontextualisiert."
    },
    {
      "id" : "mii-lm-mikrobio-logical-model-de.Identifikation",
      "path" : "mii-lm-mikrobio-logical-model-de.Identifikation",
      "short" : "Identifikation",
      "definition" : "Eindeutiger Identifikator des Befunds.",
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
      "definition" : "Status des Befunds (z. B. vorläufig, final, korrigiert).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "mii-lm-mikrobio-logical-model-de.Befundtyp",
      "path" : "mii-lm-mikrobio-logical-model-de.Befundtyp",
      "short" : "Befundtyp",
      "definition" : "Fachliche Einordnung des mikrobiologischen Befunds (LOINC). Mehrfachangabe, wenn der Befund mehrere Studientypen umfasst, z. B. bakteriologisch und mykologisch.",
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
      "definition" : "Patient, auf den sich der Befund bezieht.",
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
      "short" : "Klinischer Bezugszeitpunkt",
      "definition" : "Zeitpunkt, auf den sich der Befund inhaltlich bezieht (in der Regel der Zeitpunkt der Probenentnahme).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "mii-lm-mikrobio-logical-model-de.QuelleKlinischerBezugszeitpunkt",
      "path" : "mii-lm-mikrobio-logical-model-de.QuelleKlinischerBezugszeitpunkt",
      "short" : "Quelle des klinischen Bezugszeitpunkts",
      "definition" : "Gibt an, worauf sich der klinische Bezugszeitpunkt bezieht, z. B. Zeitpunkt der Probenentnahme oder Laboreingang.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }]
    },
    {
      "id" : "mii-lm-mikrobio-logical-model-de.Dokumentationszeitpunkt",
      "path" : "mii-lm-mikrobio-logical-model-de.Dokumentationszeitpunkt",
      "short" : "Dokumentationszeitpunkt",
      "definition" : "Zeitpunkt, zu dem der Befund freigegeben bzw. verfügbar gemacht wurde.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "mii-lm-mikrobio-logical-model-de.Anforderung",
      "path" : "mii-lm-mikrobio-logical-model-de.Anforderung",
      "short" : "Anforderung",
      "definition" : "Zugrunde liegende Laboranforderung.",
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
      "short" : "Befundinterpret",
      "definition" : "Person, die den Befund fachlich beurteilt und verantwortet.",
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
      "short" : "Probenmaterial",
      "definition" : "Probenmaterialien, auf denen der Befund beruht.",
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
      "short" : "Untersuchung",
      "definition" : "Die im Befund enthaltenen mikrobiologischen Untersuchungen.",
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
