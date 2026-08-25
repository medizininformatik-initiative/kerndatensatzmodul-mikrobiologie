# MII PR Mikrobio Resistenzkategorie Status - MII Implementation Guide Microbiology v2027.0.0-alpha.6

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII PR Mikrobio Resistenzkategorie Status**

## Ressourcenprofil: MII PR Mikrobio Resistenzkategorie Status 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-resistenzkategorie-status | *Version*:2027.0.0-alpha.6 |
| Active Stand: 2026-08-25 | *Maschinenlesbarer Name*:MII_PR_Mikrobio_Resistenzkategorie_Status |

 
Bewertung eines nachgewiesenen Erregers hinsichtlich einer definierten Resistenzkategorie, z. B. MRSA, VRE, LRE oder LVRE. Die bewertete Kategorie steht in Observation.code, das Ergebnis der Bewertung in Observation.value. 

> **Während der Migration geschrieben — vor der Veröffentlichung prüfen.** TODO:REVIEW — die englische Standardfassung dieser Seite ist eine Maschinenübersetzung dieses deutschen Textes. Diese deutsche Fassung trägt den Originalwortlaut der Simplifier-Quellseite; zu prüfen ist die englische Entsprechung (Gate C).

Resistenzkategorie-Status bildet die Bewertung eines nachgewiesenen Erregers hinsichtlich einer definierten Resistenzkategorie ab. Die bewertete Kategorie steht in `Observation.code`, das Ergebnis der Bewertung in `Observation.valueCodeableConcept`.

```
MRSA-Status: Positive
VRE-Status:  Negative
LRE-Status:  Positive

```

Das Profil löst `mii-pr-mikrobio-mre-klasse` ab. Dort war der Wert die konkrete resistente Organismusart, z. B. MRSA oder VRE. Diese Modellierung wiederholte Erreger- und Resistenzinformationen, die bereits über Identifikation, Empfindlichkeit und Resistenzmechanismen abgebildet sind, und war semantisch breiter als „MRE".

### Kategorien

| | | |
| :--- | :--- | :--- |
| `mrsa-status` | MRSA | Identifikation als**Staphylococcus aureus**und Nachweis der Methicillin-/Oxacillinresistenz, phänotypisch oder über`mecA`/`mecC` |
| `vre-status` | VRE | Identifikation als**Enterococcus**und Nachweis der Vancomycinresistenz, phänotypisch oder über`vanA`/`vanB` |
| `lre-status` | LRE | Identifikation als**Enterococcus**und Nachweis der Linezolidresistenz |
| `lvre-status` | LVRE | Identifikation als**Enterococcus**und Nachweis sowohl der Linezolid- als auch der Vancomycinresistenz |

Die Kategorien schließen sich nicht gegenseitig aus: Ein linezolid- und vancomycinresistenter **Enterococcus** kann zugleich `vre-status`, `lre-status` und `lvre-status` mit `Positive` erhalten.

### Terminologie

`Observation.code` verwendet MII-eigene Codes aus `mii-cs-mikrobio-resistenzkategorie`.

### Ergebnis

| | |
| :--- | :--- |
| `10828004 - Positive` | Der bewertete Erreger erfüllt die Kriterien der in`code`angegebenen Kategorie. |
| `260385009- Negative` | Der Erreger wurde anhand der für diese Kategorie relevanten Untersuchungen ausreichend bewertet und erfüllt die Kriterien nicht. |

`Negative` bedeutet ausdrücklich **nicht**: negativer zielgerichteter Erregernachweis, keine Resistenz vorhanden, Erreger nicht nachgewiesen, oder keine ausreichende Diagnostik durchgeführt. War die Kategorie nicht ausreichend bewertbar, wird nicht `Negative` angegeben, sondern `dataAbsentReason` gesetzt.

### Ableitung

Die Kategorienbewertung ist eine abgeleitete fachliche Aussage. Die zugrunde liegenden Untersuchungen werden über `Observation.derivedFrom` referenziert. Als Eingangsgrößen kommen infrage: Erregeridentifikation, Empfindlichkeitstestung sowie Resistenzmechanismen bzw. Resistenzdeterminanten.

Diese Untersuchungen **sollten** angegeben werden, damit die Bewertungsgrundlage nachvollziehbar ist.

`triggeredBy` wird hierfür **nicht** verwendet: Die Bewertung entsteht durch fachliche Ableitung und nicht als ausgelöste Folgeuntersuchung.

### Abgrenzung zum direkten Nachweis

Der Kategorienstatus ersetzt keinen zielgerichteten Erregernachweis:

| | | |
| :--- | :--- | :--- |
| MRSA-PCR | [Spezifische Bestimmung](StructureDefinition-mii-pr-mikrobio-spezifische-bestimmung.md) | `Detected`/`Not detected` |
| MRSA-Kultur | [Spezifische Kultur](StructureDefinition-mii-pr-mikrobio-spezifische-kultur.md) | `Organism growth`/`No growth` |
| Bewertung eines vorliegenden**S. aureus**als MRSA | Resistenzkategorie-Status | `MRSA-Status`=`Positive`/`Negative` |

Dasselbe Prinzip gilt für VRE und die übrigen Kategorien.

### Beispiele

Die Beispiele zeigen das Muster an der Kategorie VRE. Für die übrigen Kategorien ist es identisch — es ändert sich allein der Code in `Observation.code`.

VRE-Status positiv, mit vollständiger Ableitung über `derivedFrom`:

[mii-exa-mikrobio-resistenzkategorie-vre-positiv](Observation-mii-exa-mikrobio-resistenzkategorie-vre-positiv.md)

VRE-Status negativ:

[mii-exa-mikrobio-resistenzkategorie-vre-negativ](Observation-mii-exa-mikrobio-resistenzkategorie-vre-negativ.md)

**Usages:**

* Refer to this Profile: [MII PR Mikrobio Diagnostic Report](StructureDefinition-mii-pr-mikrobio-diagnostic-report.md)
* Examples for this Profile: [Observation/mii-exa-mikrobio-resistenzkategorie-vre-negativ](Observation-mii-exa-mikrobio-resistenzkategorie-vre-negativ.md) and [Observation/mii-exa-mikrobio-resistenzkategorie-vre-positiv](Observation-mii-exa-mikrobio-resistenzkategorie-vre-positiv.md)
* CapabilityStatements using this Profile: [MII CPS Mikrobio Metadata](CapabilityStatement-mii-cps-mikrobio-metadata.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.medizininformatikinitiative.kerndatensatz.mikrobiologie|current/StructureDefinition/StructureDefinition-mii-pr-mikrobio-resistenzkategorie-status.json)

### Formale Ansichten des Profilinhalts

 [Beschreibung von Profilen, Differentials, Snapshots und deren Repräsentationen](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Schlüsselelemente-Tabelle](#tabs-key) 
*  [Differential-Tabelle](#tabs-diff) 
*  [Snapshot-Tabelle](#tabs-snap) 
*  [Statistiken/Referenzen](#tabs-summ) 
*  [Alle](#tabs-all) 

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [MII_PR_Labor_Laboruntersuchung](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.laborbefund@2026.0.3&canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/ObservationLab) 

#### Terminology Bindings (Differential)

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [MII_PR_Labor_Laboruntersuchung](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.laborbefund@2026.0.3&canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/ObservationLab) 

** Summary **

Mandatory: 5 elements
 Must-Support: 5 elements

**Extensions**

This structure refers to these extensions:

* [http://hl7.org/fhir/5.0/StructureDefinition/extension-Observation.triggeredBy](StructureDefinition-ext-R5-Observation.triggeredBy.md)

**Slices**

This structure defines the following [Slices](http://hl7.org/fhir/R4/profiling.html#slices):

* The element 1 is sliced based on the value of Observation.category

 **Schlüsselelemente-Ansicht** 

#### Terminology Bindings

#### Constraints

 **Differential-Ansicht** 

Diese Struktur ist abgeleitet von [MII_PR_Labor_Laboruntersuchung](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.laborbefund@2026.0.3&canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/ObservationLab) 

#### Terminology Bindings (Differential)

 **Snapshot-AnsichtView** 

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [MII_PR_Labor_Laboruntersuchung](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.laborbefund@2026.0.3&canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/ObservationLab) 

** Summary **

Mandatory: 5 elements
 Must-Support: 5 elements

**Extensions**

This structure refers to these extensions:

* [http://hl7.org/fhir/5.0/StructureDefinition/extension-Observation.triggeredBy](StructureDefinition-ext-R5-Observation.triggeredBy.md)

**Slices**

This structure defines the following [Slices](http://hl7.org/fhir/R4/profiling.html#slices):

* The element 1 is sliced based on the value of Observation.category

 

Weitere Repräsentationen des Profils: [CSV](../StructureDefinition-mii-pr-mikrobio-resistenzkategorie-status.csv), [Excel](../StructureDefinition-mii-pr-mikrobio-resistenzkategorie-status.xlsx), [Schematron](../StructureDefinition-mii-pr-mikrobio-resistenzkategorie-status.sch) 



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
  "date" : "2026-08-25T18:44:55+00:00",
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
