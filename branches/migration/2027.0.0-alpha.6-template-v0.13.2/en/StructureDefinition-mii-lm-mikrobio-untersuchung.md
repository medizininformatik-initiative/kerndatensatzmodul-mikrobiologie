# MII LM Mikrobio Untersuchung - MII Implementation Guide Microbiology v2027.0.0-alpha.6

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII LM Mikrobio Untersuchung**

## Logical Model: MII LM Mikrobio Untersuchung ( Abstract ) 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-lm-mikrobio-untersuchung | *Version*:2027.0.0-alpha.6 |
| Active as of 2026-09-02 | *Computable Name*:MII_LM_Mikrobio_Untersuchung |

 
Gemeinsame Angaben aller mikrobiologischen Untersuchungen [DE] 

**Usages:**

* Derived from this Logical Model: [MII LM Mikrobio Untersuchungsarten](StructureDefinition-mii-lm-mikrobio-untersuchungsarten.md)
* Refer to this Logical Model: [MII LM Mikrobio Befund](StructureDefinition-mii-lm-mikrobio-logical-model.md), [MII LM Mikrobio Untersuchung](StructureDefinition-mii-lm-mikrobio-untersuchung.md) and [MII LM Mikrobio Untersuchungsarten](StructureDefinition-mii-lm-mikrobio-untersuchungsarten.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.medizininformatikinitiative.kerndatensatz.mikrobiologie|current/StructureDefinition/StructureDefinition-mii-lm-mikrobio-untersuchung.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots, and their representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-mii-lm-mikrobio-untersuchung.csv), [Excel](../StructureDefinition-mii-lm-mikrobio-untersuchung.xlsx) 



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
  "version" : "2027.0.0-alpha.6",
  "name" : "MII_LM_Mikrobio_Untersuchung",
  "title" : "MII LM Mikrobio Untersuchung",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-09-02T12:45:31+00:00",
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
  "description" : "Gemeinsame Angaben aller mikrobiologischen Untersuchungen [DE]",
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
      "short" : "Mikrobiologische Untersuchung",
      "definition" : "Abstrakte Basis einer mikrobiologischen Untersuchung. Die fachlichen Ausprägungen (Kultur, Bestimmung, Weitere Eigenschaften, Quantitative Tests) leiten von dieser Klasse ab und ergänzen sie um ihre jeweils spezifischen Attribute."
    },
    {
      "id" : "mii-lm-mikrobio-untersuchung.Identifikation",
      "path" : "mii-lm-mikrobio-untersuchung.Identifikation",
      "short" : "Identifikation",
      "definition" : "Eindeutiger Identifikator der Untersuchung.",
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
      "definition" : "Status der Untersuchung (z. B. vorläufig, final, korrigiert).",
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
      "definition" : "Patient, von dem das untersuchte Probenmaterial stammt.",
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
      "short" : "Probenmaterial",
      "definition" : "Untersuchtes Probenmaterial. Die Probenart wird über das Probenmaterial abgebildet und nicht über präkoordinierte Untersuchungscodes.",
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
      "short" : "Untersuchungszeitpunkt",
      "definition" : "Klinisch relevanter Zeitpunkt der Untersuchung.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "mii-lm-mikrobio-untersuchung.QuelleUntersuchungszeitpunkt",
      "path" : "mii-lm-mikrobio-untersuchung.QuelleUntersuchungszeitpunkt",
      "short" : "Quelle des Untersuchungszeitpunkts",
      "definition" : "Gibt an, worauf sich der Untersuchungszeitpunkt bezieht, z. B. Zeitpunkt der Probenentnahme oder Laboreingang.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }]
    },
    {
      "id" : "mii-lm-mikrobio-untersuchung.Dokumentationszeitpunkt",
      "path" : "mii-lm-mikrobio-untersuchung.Dokumentationszeitpunkt",
      "short" : "Dokumentationszeitpunkt",
      "definition" : "Zeitpunkt, zu dem das Untersuchungsergebnis verfügbar gemacht wurde.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "mii-lm-mikrobio-untersuchung.InterpretationsbeeinflussendeEigenschaft",
      "path" : "mii-lm-mikrobio-untersuchung.InterpretationsbeeinflussendeEigenschaft",
      "short" : "Interpretationsbeeinflussende Eigenschaft",
      "definition" : "Eigenschaft der Untersuchung oder der Probe, die die Interpretation des Ergebnisses einschränkt oder verändert, z. B. Hämolyse, Lipämie oder unzureichende Probenmenge. Die Angabe verändert die Bedeutung des Ergebnisses und darf nicht ignoriert werden.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Coding"
      }]
    },
    {
      "id" : "mii-lm-mikrobio-untersuchung.Hinweis",
      "path" : "mii-lm-mikrobio-untersuchung.Hinweis",
      "short" : "Hinweis",
      "definition" : "Freitextliche Kommentierung der Untersuchung.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "mii-lm-mikrobio-untersuchung.AusloesendeUntersuchung",
      "path" : "mii-lm-mikrobio-untersuchung.AusloesendeUntersuchung",
      "short" : "Auslösende Untersuchung",
      "definition" : "Vorangegangene Untersuchung, die diese Untersuchung ausgelöst hat, z. B. eine durch ein Vorergebnis angestoßene Folgediagnostik (Reflextestung).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "mii-lm-mikrobio-untersuchung.AusloesendeUntersuchung.Untersuchung",
      "path" : "mii-lm-mikrobio-untersuchung.AusloesendeUntersuchung.Untersuchung",
      "short" : "Untersuchung",
      "definition" : "Die auslösende Untersuchung.",
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
      "short" : "Art",
      "definition" : "Art der Auslösung: reflex | repeat | re-run.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "mii-lm-mikrobio-untersuchung.AusloesendeUntersuchung.Grund",
      "path" : "mii-lm-mikrobio-untersuchung.AusloesendeUntersuchung.Grund",
      "short" : "Grund",
      "definition" : "Begründung, warum diese Untersuchung ausgelöst wurde.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
