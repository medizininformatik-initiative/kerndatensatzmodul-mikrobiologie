# MII PR Mikrobio Resistenzkategorie Status - MII Implementation Guide Microbiology v2027.0.0-alpha.6

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII PR Mikrobio Resistenzkategorie Status**

## Resource Profile: MII PR Mikrobio Resistenzkategorie Status 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-resistenzkategorie-status | *Version*:2027.0.0-alpha.6 |
| Active as of 2026-09-02 | *Computable Name*:MII_PR_Mikrobio_Resistenzkategorie_Status |

 
Bewertung eines nachgewiesenen Erregers hinsichtlich einer definierten Resistenzkategorie, z. B. MRSA, VRE, LRE oder LVRE. Die bewertete Kategorie steht in Observation.code, das Ergebnis der Bewertung in Observation.value. 

> **Written during migration - review before release.** TODO:REVIEW - this English page is a machine translation of the German source page named above, produced because the target template renders English as the default language and the source guide is German-only. The German mirror carries the original wording verbatim.

Resistance category status represents the assessment of a detected pathogen with respect to a defined resistance category. The category assessed is in `Observation.code`, the result of the assessment in `Observation.valueCodeableConcept`.

```
MRSA status: Positive
VRE status:  Negative
LRE status:  Positive

```

The profile supersedes `mii-pr-mikrobio-mre-klasse`. There, the value was the concrete resistant organism species, e.g. MRSA or VRE. That modelling repeated pathogen and resistance information already represented via identification, susceptibility and resistance mechanisms, and was semantically broader than "MRE".

### Categories

| | | |
| :--- | :--- | :--- |
| `mrsa-status` | MRSA | Identification as**Staphylococcus aureus**and detection of methicillin/oxacillin resistance, phenotypic or via`mecA`/`mecC` |
| `vre-status` | VRE | Identification as**Enterococcus**and detection of vancomycin resistance, phenotypic or via`vanA`/`vanB` |
| `lre-status` | LRE | Identification as**Enterococcus**and detection of linezolid resistance |
| `lvre-status` | LVRE | Identification as**Enterococcus**and detection of both linezolid and vancomycin resistance |

The categories are not mutually exclusive: a linezolid- and vancomycin-resistant **Enterococcus** may carry `vre-status`, `lre-status` and `lvre-status` with `Positive` at the same time.

### Terminology

`Observation.code` uses MII-specific codes from `mii-cs-mikrobio-resistenzkategorie`.

### Result

| | |
| :--- | :--- |
| `10828004 - Positive` | The assessed pathogen meets the criteria of the category given in`code`. |
| `260385009- Negative` | The pathogen was sufficiently assessed on the basis of the investigations relevant to this category and does not meet the criteria. |

`Negative` explicitly does **not** mean: negative targeted pathogen detection, no resistance present, pathogen not detected, or insufficient diagnostics performed. If the category could not be assessed sufficiently, `Negative` is not given; `dataAbsentReason` is set instead.

### Derivation

The category assessment is a derived clinical statement. The underlying investigations are referenced via `Observation.derivedFrom`. Possible inputs are: pathogen identification, susceptibility testing, and resistance mechanisms or resistance determinants.

These investigations **should** be given so that the basis of the assessment remains traceable.

`triggeredBy` is **not** used for this: the assessment arises by clinical derivation and not as a triggered follow-up investigation.

### Delimitation against direct detection

The category status does not replace a targeted pathogen detection:

| | | |
| :--- | :--- | :--- |
| MRSA PCR | [Specific determination](StructureDefinition-mii-pr-mikrobio-spezifische-bestimmung.md) | `Detected`/`Not detected` |
| MRSA culture | [Specific culture](StructureDefinition-mii-pr-mikrobio-spezifische-kultur.md) | `Organism growth`/`No growth` |
| Assessment of a present**S. aureus**as MRSA | Resistance category status | `MRSA status`=`Positive`/`Negative` |

The same principle applies to VRE and the remaining categories.

### Examples

The examples show the pattern for the VRE category. It is identical for the remaining categories - only the code in `Observation.code` changes.

VRE status positive, with full derivation via `derivedFrom`:

[mii-exa-mikrobio-resistenzkategorie-vre-positiv](Observation-mii-exa-mikrobio-resistenzkategorie-vre-positiv.md)

VRE status negative:

[mii-exa-mikrobio-resistenzkategorie-vre-negativ](Observation-mii-exa-mikrobio-resistenzkategorie-vre-negativ.md)

**Usages:**

* Refer to this Profile: [MII PR Mikrobio Diagnostic Report](StructureDefinition-mii-pr-mikrobio-diagnostic-report.md)
* Examples for this Profile: [Observation/mii-exa-mikrobio-resistenzkategorie-vre-negativ](Observation-mii-exa-mikrobio-resistenzkategorie-vre-negativ.md) and [Observation/mii-exa-mikrobio-resistenzkategorie-vre-positiv](Observation-mii-exa-mikrobio-resistenzkategorie-vre-positiv.md)
* CapabilityStatements using this Profile: [MII CPS Mikrobio Metadata](CapabilityStatement-mii-cps-mikrobio-metadata.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.medizininformatikinitiative.kerndatensatz.mikrobiologie|current/StructureDefinition/StructureDefinition-mii-pr-mikrobio-resistenzkategorie-status.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots, and their representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-mii-pr-mikrobio-resistenzkategorie-status.csv), [Excel](../StructureDefinition-mii-pr-mikrobio-resistenzkategorie-status.xlsx), [Schematron](../StructureDefinition-mii-pr-mikrobio-resistenzkategorie-status.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-pr-mikrobio-resistenzkategorie-status",
  "extension" : [{
    "url" : "https://www.medizininformatik-initiative.de/fhir/modul-meta/StructureDefinition/mii-ex-meta-license-codeable",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://hl7.org/fhir/spdx-license",
        "code" : "CC-BY-4.0",
        "display" : "Creative Commons Attribution 4.0 International"
      }]
    }
  }],
  "url" : "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-resistenzkategorie-status",
  "version" : "2027.0.0-alpha.6",
  "name" : "MII_PR_Mikrobio_Resistenzkategorie_Status",
  "title" : "MII PR Mikrobio Resistenzkategorie Status",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-09-02T11:53:33+00:00",
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
  "description" : "Bewertung eines nachgewiesenen Erregers hinsichtlich einer definierten Resistenzkategorie, z. B. MRSA, VRE, LRE oder LVRE. Die bewertete Kategorie steht in Observation.code, das Ergebnis der Bewertung in Observation.value.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "purpose" : "Dieses Profil bildet die aus den zugrunde liegenden mikrobiologischen Untersuchungen abgeleitete Bewertung eines Erregers hinsichtlich einer definierten Resistenzkategorie ab. Es ersetzt keinen zielgerichteten Erregernachweis: Ob ein Erreger überhaupt vorhanden ist, wird über MII_PR_Mikrobio_Spezifische_Bestimmung bzw. MII_PR_Mikrobio_Spezifische_Kultur abgebildet.",
  "fhirVersion" : "4.0.1",
  "kind" : "resource",
  "abstract" : false,
  "type" : "Observation",
  "baseDefinition" : "https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/ObservationLab",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Observation",
      "path" : "Observation"
    },
    {
      "id" : "Observation.extension:triggeredBy-r5",
      "path" : "Observation.extension",
      "sliceName" : "triggeredBy-r5",
      "short" : "Nur für eine tatsächlich ausgelöste Folgediagnostik. Die fachliche Ableitung der Kategorienbewertung wird nicht hierüber, sondern über derivedFrom abgebildet.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.org/fhir/5.0/StructureDefinition/extension-Observation.triggeredBy"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Observation.extension:triggeredBy-r5.extension:observation",
      "path" : "Observation.extension.extension",
      "sliceName" : "observation",
      "short" : "Triggering observation."
    },
    {
      "id" : "Observation.extension:triggeredBy-r5.extension:type",
      "path" : "Observation.extension.extension",
      "sliceName" : "type",
      "short" : "Beschreibt die Art der Auslösung einer Untersuchung im diagnostischen Zusammenhang; insbesondere kennzeichnet der Wert „reflex“ eine durch das Ergebnis einer vorangegangenen Untersuchung ausgelöste Folgediagnostik."
    },
    {
      "id" : "Observation.category",
      "path" : "Observation.category",
      "slicing" : {
        "discriminator" : [{
          "type" : "pattern",
          "path" : "$this"
        }],
        "rules" : "open"
      }
    },
    {
      "id" : "Observation.category:mibi-category",
      "path" : "Observation.category",
      "sliceName" : "mibi-category",
      "short" : "Mikrobiologie-Kategorie",
      "definition" : "Kategorie-Slice für mikrobiologische Laboruntersuchungen.",
      "min" : 1,
      "max" : "1",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v2-0074",
          "code" : "MB"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "Observation.category:mibi-category.coding",
      "path" : "Observation.category.coding",
      "min" : 3
    },
    {
      "id" : "Observation.category:mibi-category.coding:v2-microbiology",
      "path" : "Observation.category.coding",
      "sliceName" : "v2-microbiology",
      "min" : 1,
      "max" : "1",
      "patternCoding" : {
        "system" : "http://terminology.hl7.org/CodeSystem/v2-0074",
        "code" : "MB"
      },
      "mustSupport" : true
    },
    {
      "id" : "Observation.category:mibi-category.coding:loinc-microbiology-studies",
      "path" : "Observation.category.coding",
      "sliceName" : "loinc-microbiology-studies",
      "min" : 0,
      "max" : "1",
      "patternCoding" : {
        "system" : "http://loinc.org",
        "code" : "18725-2"
      },
      "mustSupport" : true
    },
    {
      "id" : "Observation.code",
      "path" : "Observation.code",
      "short" : "Bewertete Resistenzkategorie, z. B. MRSA-Status. Es werden ausschließlich Kategorien dokumentiert, die für den vorliegenden Erreger fachlich anwendbar sind; für einen Enterococcus wird kein MRSA-Status erzeugt.",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/ValueSet/mii-vs-mikrobio-resistenzkategorie-status"
      }
    },
    {
      "id" : "Observation.value[x]",
      "path" : "Observation.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "Observation.value[x]:valueCodeableConcept",
      "path" : "Observation.value[x]",
      "sliceName" : "valueCodeableConcept",
      "short" : "Positive: Der Erreger erfüllt die Kriterien der in code angegebenen Kategorie. Negative: Der Erreger wurde anhand der relevanten Untersuchungen ausreichend bewertet und erfüllt die Kriterien nicht. Kann die Kategorie nicht ausreichend bewertet werden, wird nicht Negative angegeben, sondern dataAbsentReason gesetzt oder keine Status-Observation erzeugt.",
      "min" : 1,
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/ValueSet/mii-vs-mikrobio-resistenzkategorie-status-ergebnis"
      }
    },
    {
      "id" : "Observation.dataAbsentReason",
      "path" : "Observation.dataAbsentReason",
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/ValueSet/mii-vs-mikrobio-data-absent-reason"
      }
    },
    {
      "id" : "Observation.specimen",
      "path" : "Observation.specimen",
      "min" : 1
    },
    {
      "id" : "Observation.derivedFrom",
      "path" : "Observation.derivedFrom",
      "short" : "Untersuchungen, aus denen die Bewertung abgeleitet wurde: Erregeridentifikation, Empfindlichkeitstestung und Resistenzmechanismen/Determinanten. Diese Untersuchungen SOLLTEN angegeben werden, damit die Bewertungsgrundlage nachvollziehbar ist. Sie dürfen entfallen, wenn der Status unmittelbar aus einem bereits kategorisierten Laborbefund übernommen wird und die Einzeluntersuchungen nicht als eigene Observations vorliegen.",
      "mustSupport" : true
    }]
  }
}

```
