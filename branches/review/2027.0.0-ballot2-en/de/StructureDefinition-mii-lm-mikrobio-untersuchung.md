# MII LM Microbiology Investigation - MII Implementation Guide Microbiology v2027.0.0-ballot2

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII LM Microbiology Investigation**

## Logisches Modell: MII LM Microbiology Investigation ( Abstrakt ) 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-lm-mikrobio-untersuchung | *Version*:2027.0.0-ballot2 |
| Active Stand: 2026-10-19 | *Maschinenlesbarer Name*:MII_LM_Mikrobio_Untersuchung |

 
Common information of all microbiological investigations 

**Usages:**

* Derived from this Logical Model: [MII LM Microbiology Investigation Types](StructureDefinition-mii-lm-mikrobio-untersuchungsarten.md)
* Refer to this Logical Model: [MII LM Microbiology Report](StructureDefinition-mii-lm-mikrobio-logical-model.md), [MII LM Microbiology Investigation](StructureDefinition-mii-lm-mikrobio-untersuchung.md) and [MII LM Microbiology Investigation Types](StructureDefinition-mii-lm-mikrobio-untersuchungsarten.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.medizininformatikinitiative.kerndatensatz.mikrobiologie|current/StructureDefinition/StructureDefinition-mii-lm-mikrobio-untersuchung.json)

### Formale Ansichten des Profilinhalts

 [Beschreibung von Profilen, Differentials, Snapshots und deren Repräsentationen](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Schlüsselelemente-Tabelle](#tabs-key) 
*  [Differential-Tabelle](#tabs-diff) 
*  [Snapshot-Tabelle](#tabs-snap) 
*  [Statistiken/Referenzen](#tabs-summ) 
*  [Alle](#tabs-all) 

#### Constraints

Diese Struktur ist abgeleitet von [Element](http://hl7.org/fhir/R4/datatypes.html#Element) 

#### Constraints

Diese Struktur ist abgeleitet von [Element](http://hl7.org/fhir/R4/datatypes.html#Element) 

** Summary **

Mandatory: 0 element(7 nested mandatory elements)

**Structures**

This structure refers to these other structures:

* [MII LM Microbiology Investigation (https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-lm-mikrobio-untersuchung)](StructureDefinition-mii-lm-mikrobio-untersuchung.md)

 **Schlüsselelemente-Ansicht** 

#### Constraints

 **Differential-Ansicht** 

Diese Struktur ist abgeleitet von [Element](http://hl7.org/fhir/R4/datatypes.html#Element) 

 **Snapshot-AnsichtView** 

#### Constraints

Diese Struktur ist abgeleitet von [Element](http://hl7.org/fhir/R4/datatypes.html#Element) 

** Summary **

Mandatory: 0 element(7 nested mandatory elements)

**Structures**

This structure refers to these other structures:

* [MII LM Microbiology Investigation (https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-lm-mikrobio-untersuchung)](StructureDefinition-mii-lm-mikrobio-untersuchung.md)

 

Weitere Repräsentationen des Profils: [CSV](../StructureDefinition-mii-lm-mikrobio-untersuchung.csv), [Excel](../StructureDefinition-mii-lm-mikrobio-untersuchung.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-lm-mikrobio-untersuchung",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-lm-mikrobio-untersuchung",
  "version" : "2027.0.0-ballot2",
  "name" : "MII_LM_Mikrobio_Untersuchung",
  "title" : "MII LM Microbiology Investigation",
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
  "description" : "Common information of all microbiological investigations",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : true,
  "type" : "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-lm-mikrobio-untersuchung",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Element",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "mii-lm-mikrobio-untersuchung",
      "path" : "mii-lm-mikrobio-untersuchung",
      "short" : "Microbiological investigation",
      "definition" : "Abstract base of a microbiological investigation. The specialisations (culture, determination, further properties, quantitative tests) derive from this class and add their specific attributes."
    },
    {
      "id" : "mii-lm-mikrobio-untersuchung.Identifikation",
      "path" : "mii-lm-mikrobio-untersuchung.Identifikation",
      "short" : "Identification",
      "definition" : "Unique identifier of the investigation.",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "mii-lm-mikrobio-untersuchung.Status",
      "path" : "mii-lm-mikrobio-untersuchung.Status",
      "short" : "Status",
      "definition" : "Status of the investigation (e.g. preliminary, final, corrected).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "mii-lm-mikrobio-untersuchung.Patient",
      "path" : "mii-lm-mikrobio-untersuchung.Patient",
      "short" : "Patient",
      "definition" : "Patient from whom the examined specimen material originates.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Patient"]
      }]
    },
    {
      "id" : "mii-lm-mikrobio-untersuchung.Probenmaterial",
      "path" : "mii-lm-mikrobio-untersuchung.Probenmaterial",
      "short" : "Specimen material",
      "definition" : "Examined specimen material. The specimen type is represented via the specimen material and not via pre-coordinated investigation codes.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Specimen"]
      }]
    },
    {
      "id" : "mii-lm-mikrobio-untersuchung.Untersuchungszeitpunkt",
      "path" : "mii-lm-mikrobio-untersuchung.Untersuchungszeitpunkt",
      "short" : "Investigation time",
      "definition" : "Clinically relevant time of the investigation.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "mii-lm-mikrobio-untersuchung.QuelleUntersuchungszeitpunkt",
      "path" : "mii-lm-mikrobio-untersuchung.QuelleUntersuchungszeitpunkt",
      "short" : "Source of the investigation time",
      "definition" : "Indicates what the investigation time refers to, e.g. time of specimen collection or receipt in the laboratory.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }]
    },
    {
      "id" : "mii-lm-mikrobio-untersuchung.Dokumentationszeitpunkt",
      "path" : "mii-lm-mikrobio-untersuchung.Dokumentationszeitpunkt",
      "short" : "Documentation time",
      "definition" : "Time at which the investigation result was made available.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "mii-lm-mikrobio-untersuchung.InterpretationsbeeinflussendeEigenschaft",
      "path" : "mii-lm-mikrobio-untersuchung.InterpretationsbeeinflussendeEigenschaft",
      "short" : "Property affecting interpretation",
      "definition" : "Property of the investigation or the specimen that restricts or changes the interpretation of the result, e.g. haemolysis, lipaemia or insufficient specimen quantity. The information changes the meaning of the result and must not be ignored.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Coding"
      }]
    },
    {
      "id" : "mii-lm-mikrobio-untersuchung.Hinweis",
      "path" : "mii-lm-mikrobio-untersuchung.Hinweis",
      "short" : "Note",
      "definition" : "Free-text comment on the investigation.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "mii-lm-mikrobio-untersuchung.AusloesendeUntersuchung",
      "path" : "mii-lm-mikrobio-untersuchung.AusloesendeUntersuchung",
      "short" : "Triggering investigation",
      "definition" : "Preceding investigation that triggered this investigation, e.g. follow-up diagnostics initiated by a prior result (reflex testing).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "mii-lm-mikrobio-untersuchung.AusloesendeUntersuchung.Untersuchung",
      "path" : "mii-lm-mikrobio-untersuchung.AusloesendeUntersuchung.Untersuchung",
      "short" : "Investigation",
      "definition" : "The triggering investigation.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-lm-mikrobio-untersuchung"]
      }]
    },
    {
      "id" : "mii-lm-mikrobio-untersuchung.AusloesendeUntersuchung.Art",
      "path" : "mii-lm-mikrobio-untersuchung.AusloesendeUntersuchung.Art",
      "short" : "Type",
      "definition" : "Type of trigger: reflex | repeat | re-run.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "mii-lm-mikrobio-untersuchung.AusloesendeUntersuchung.Grund",
      "path" : "mii-lm-mikrobio-untersuchung.AusloesendeUntersuchung.Grund",
      "short" : "Reason",
      "definition" : "Reason why this investigation was triggered.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
