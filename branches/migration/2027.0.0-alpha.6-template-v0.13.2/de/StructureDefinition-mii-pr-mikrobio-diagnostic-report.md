# MII PR Mikrobio Diagnostic Report - MII Implementation Guide Microbiology v2027.0.0-alpha.6

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII PR Mikrobio Diagnostic Report**

## Ressourcenprofil: MII PR Mikrobio Diagnostic Report 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-diagnostic-report | *Version*:2027.0.0-alpha.6 |
| Active Stand: 2026-09-02 | *Maschinenlesbarer Name*:MII_PR_Mikrobio_Diagnostic_Report |

 
Mikrobiologischer Befundbericht zur Zusammenfassung und Kontextualisierung zugehöriger mikrobiologischer Untersuchungsergebnisse. 

> **Während der Migration geschrieben — vor der Veröffentlichung prüfen.** TODO:REVIEW — die englische Standardfassung dieser Seite ist eine Maschinenübersetzung dieses deutschen Textes. Diese deutsche Fassung trägt den Originalwortlaut der Simplifier-Quellseite; zu prüfen ist die englische Entsprechung (Gate C).

Mikrobiologischer Befundbericht zur Zusammenfassung und Kontextualisierung zugehöriger mikrobiologischer Untersuchungsergebnisse.

### Kategorie und Befundtyp

`DiagnosticReport.category` trägt zwei Slices mit unterschiedlicher Aufgabe:

| | | |
| :--- | :--- | :--- |
| `mibi-category` | 1..1 | Kennzeichnet den Befund als mikrobiologisch:`v2-0074#MB \|Microbiology\|`, verpflichtend, dazu optional`18725-2 \|Microbiology studies\|` |
| `mibi-sub-category` | 0..* | Fachlicher Befundtyp aus`mii-vs-mikrobio-befundtyp-loinc`, z. B.`92894-5 \|Microbiology - bacterial studies\|` |

Der Befundtyp ist optional. Ein Befund, der sich keinem der Studientypen zuordnen lässt oder nur allgemein eingeordnet werden soll, wird über `mibi-category` allein abgebildet — ein allgemeiner Befundtyp-Code ist dafür nicht nötig und existiert in dieser LOINC-Familie auch nicht.

Umfasst ein Befund mehrere Studientypen, etwa den Nachweis von Bakterien **und** Pilzen, werden mehrere Subtypen angegeben:

```
"category": [
  { "coding": [
      { "system": "http://terminology.hl7.org/CodeSystem/v2-0074", "code": "MB", "display": "Microbiology" },
      { "system": "http://loinc.org", "code": "18725-2", "display": "Mikrobiologie" } ] },
  { "coding": [ { "system": "http://loinc.org", "code": "92894-5",
                  "display": "Microbiology - bacterial studies" } ] },
  { "coding": [ { "system": "http://loinc.org", "code": "96398-3",
                  "display": "Microbiology - mycology studies" } ] }
]

```

### Beispiele

Beispiel (minimal):

[mii-exa-mikrobio-diagnostic-report](DiagnosticReport-mii-exa-mikrobio-diagnostic-report.md)

**Usages:**

* Examples for this Profile: [DiagnosticReport/mii-exa-mikrobio-diagnostic-report](DiagnosticReport-mii-exa-mikrobio-diagnostic-report.md)
* CapabilityStatements using this Profile: [MII CPS Mikrobio Metadata](CapabilityStatement-mii-cps-mikrobio-metadata.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.medizininformatikinitiative.kerndatensatz.mikrobiologie|current/StructureDefinition/StructureDefinition-mii-pr-mikrobio-diagnostic-report.json)

### Formale Ansichten des Profilinhalts

 [Beschreibung von Profilen, Differentials, Snapshots und deren Repräsentationen](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Schlüsselelemente-Tabelle](#tabs-key) 
*  [Differential-Tabelle](#tabs-diff) 
*  [Snapshot-Tabelle](#tabs-snap) 
*  [Statistiken/Referenzen](#tabs-summ) 
*  [Alle](#tabs-all) 

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [MII_PR_Labor_Laborbefund](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.laborbefund@2026.0.3&canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/DiagnosticReportLab) 

#### Terminology Bindings (Differential)

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [MII_PR_Labor_Laborbefund](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.laborbefund@2026.0.3&canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/DiagnosticReportLab) 

** Summary **

Mandatory: 3 elements
 Must-Support: 5 elements

**Structures**

This structure refers to these other structures:

* [MII PR Mikrobio Allgemeine Kultur (https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-allgemeine-kultur)](StructureDefinition-mii-pr-mikrobio-allgemeine-kultur.md)
* [MII PR Mikrobio Spezifische Kultur (https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-spezifische-kultur)](StructureDefinition-mii-pr-mikrobio-spezifische-kultur.md)
* [MII PR Mikrobio Allgemeine Bestimmung (https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-allgemeine-bestimmung)](StructureDefinition-mii-pr-mikrobio-allgemeine-bestimmung.md)
* [MII PR Mikrobio Spezifische Bestimmung (https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-spezifische-bestimmung)](StructureDefinition-mii-pr-mikrobio-spezifische-bestimmung.md)
* [MII PR Mikrobio Keimzahl (https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-keimzahl)](StructureDefinition-mii-pr-mikrobio-keimzahl.md)
* [MII PR Mikrobio Empfindlichkeit (https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-empfindlichkeit)](StructureDefinition-mii-pr-mikrobio-empfindlichkeit.md)
* [MII PR Mikrobio Mikroskopie (https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-mikroskopie)](StructureDefinition-mii-pr-mikrobio-mikroskopie.md)
* [MII PR Mikrobio Antigen Antikoerper Quantitativ (https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-antigen-antikoerper-quantitativ)](StructureDefinition-mii-pr-mikrobio-antigen-antikoerper-quantitativ.md)
* [MII PR Mikrobio Aviditaet (https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-aviditaet)](StructureDefinition-mii-pr-mikrobio-aviditaet.md)
* [MII PR Mikrobio CT Wert (https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-ct-wert)](StructureDefinition-mii-pr-mikrobio-ct-wert.md)
* [MII PR Mikrobio Titer (https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-titer)](StructureDefinition-mii-pr-mikrobio-titer.md)
* [MII PR Mikrobio Nugent Score (https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-nugent-score)](StructureDefinition-mii-pr-mikrobio-nugent-score.md)
* [MII PR Mikrobio Barlett Score (https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-barlett-score)](StructureDefinition-mii-pr-mikrobio-barlett-score.md)
* [MII PR Mikrobio Molekulare Pathogenlast (https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-molekulare-pathogenlast)](StructureDefinition-mii-pr-mikrobio-molekulare-pathogenlast.md)
* [MII PR Mikrobio Resistenzmechanismen Determinanten (https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-resistenzmechanismen-determinanten)](StructureDefinition-mii-pr-mikrobio-resistenzmechanismen-determinanten.md)
* [MII PR Mikrobio Virulenzfaktor (https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-virulenzfaktor)](StructureDefinition-mii-pr-mikrobio-virulenzfaktor.md)
* [MII PR Mikrobio Resistenzkategorie Status (https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-resistenzkategorie-status)](StructureDefinition-mii-pr-mikrobio-resistenzkategorie-status.md)
* [MII PR Mikrobio MRGN Klasse (https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-mrgn-klasse)](StructureDefinition-mii-pr-mikrobio-mrgn-klasse.md)
* [MII PR Mikrobio Voraussichtliche Empfindlichkeit (https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-voraussichtliche-empfindlichkeit)](StructureDefinition-mii-pr-mikrobio-voraussichtliche-empfindlichkeit.md)

**Slices**

This structure defines the following [Slices](http://hl7.org/fhir/R4/profiling.html#slices):

* The element 1 is sliced based on the value of DiagnosticReport.category.coding

 **Schlüsselelemente-Ansicht** 

#### Terminology Bindings

#### Constraints

 **Differential-Ansicht** 

Diese Struktur ist abgeleitet von [MII_PR_Labor_Laborbefund](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.laborbefund@2026.0.3&canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/DiagnosticReportLab) 

#### Terminology Bindings (Differential)

 **Snapshot-AnsichtView** 

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [MII_PR_Labor_Laborbefund](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.laborbefund@2026.0.3&canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/DiagnosticReportLab) 

** Summary **

Mandatory: 3 elements
 Must-Support: 5 elements

**Structures**

This structure refers to these other structures:

* [MII PR Mikrobio Allgemeine Kultur (https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-allgemeine-kultur)](StructureDefinition-mii-pr-mikrobio-allgemeine-kultur.md)
* [MII PR Mikrobio Spezifische Kultur (https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-spezifische-kultur)](StructureDefinition-mii-pr-mikrobio-spezifische-kultur.md)
* [MII PR Mikrobio Allgemeine Bestimmung (https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-allgemeine-bestimmung)](StructureDefinition-mii-pr-mikrobio-allgemeine-bestimmung.md)
* [MII PR Mikrobio Spezifische Bestimmung (https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-spezifische-bestimmung)](StructureDefinition-mii-pr-mikrobio-spezifische-bestimmung.md)
* [MII PR Mikrobio Keimzahl (https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-keimzahl)](StructureDefinition-mii-pr-mikrobio-keimzahl.md)
* [MII PR Mikrobio Empfindlichkeit (https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-empfindlichkeit)](StructureDefinition-mii-pr-mikrobio-empfindlichkeit.md)
* [MII PR Mikrobio Mikroskopie (https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-mikroskopie)](StructureDefinition-mii-pr-mikrobio-mikroskopie.md)
* [MII PR Mikrobio Antigen Antikoerper Quantitativ (https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-antigen-antikoerper-quantitativ)](StructureDefinition-mii-pr-mikrobio-antigen-antikoerper-quantitativ.md)
* [MII PR Mikrobio Aviditaet (https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-aviditaet)](StructureDefinition-mii-pr-mikrobio-aviditaet.md)
* [MII PR Mikrobio CT Wert (https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-ct-wert)](StructureDefinition-mii-pr-mikrobio-ct-wert.md)
* [MII PR Mikrobio Titer (https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-titer)](StructureDefinition-mii-pr-mikrobio-titer.md)
* [MII PR Mikrobio Nugent Score (https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-nugent-score)](StructureDefinition-mii-pr-mikrobio-nugent-score.md)
* [MII PR Mikrobio Barlett Score (https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-barlett-score)](StructureDefinition-mii-pr-mikrobio-barlett-score.md)
* [MII PR Mikrobio Molekulare Pathogenlast (https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-molekulare-pathogenlast)](StructureDefinition-mii-pr-mikrobio-molekulare-pathogenlast.md)
* [MII PR Mikrobio Resistenzmechanismen Determinanten (https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-resistenzmechanismen-determinanten)](StructureDefinition-mii-pr-mikrobio-resistenzmechanismen-determinanten.md)
* [MII PR Mikrobio Virulenzfaktor (https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-virulenzfaktor)](StructureDefinition-mii-pr-mikrobio-virulenzfaktor.md)
* [MII PR Mikrobio Resistenzkategorie Status (https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-resistenzkategorie-status)](StructureDefinition-mii-pr-mikrobio-resistenzkategorie-status.md)
* [MII PR Mikrobio MRGN Klasse (https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-mrgn-klasse)](StructureDefinition-mii-pr-mikrobio-mrgn-klasse.md)
* [MII PR Mikrobio Voraussichtliche Empfindlichkeit (https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-voraussichtliche-empfindlichkeit)](StructureDefinition-mii-pr-mikrobio-voraussichtliche-empfindlichkeit.md)

**Slices**

This structure defines the following [Slices](http://hl7.org/fhir/R4/profiling.html#slices):

* The element 1 is sliced based on the value of DiagnosticReport.category.coding

 

Weitere Repräsentationen des Profils: [CSV](../StructureDefinition-mii-pr-mikrobio-diagnostic-report.csv), [Excel](../StructureDefinition-mii-pr-mikrobio-diagnostic-report.xlsx), [Schematron](../StructureDefinition-mii-pr-mikrobio-diagnostic-report.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-pr-mikrobio-diagnostic-report",
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
  "url" : "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-diagnostic-report",
  "version" : "2027.0.0-alpha.6",
  "name" : "MII_PR_Mikrobio_Diagnostic_Report",
  "title" : "MII PR Mikrobio Diagnostic Report",
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
  "description" : "Mikrobiologischer Befundbericht zur Zusammenfassung und Kontextualisierung zugehöriger mikrobiologischer Untersuchungsergebnisse.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "purpose" : "Dieses Profil beschreibt den mikrobiologischen DiagnosticReport.",
  "fhirVersion" : "4.0.1",
  "kind" : "resource",
  "abstract" : false,
  "type" : "DiagnosticReport",
  "baseDefinition" : "https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/DiagnosticReportLab",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "DiagnosticReport",
      "path" : "DiagnosticReport"
    },
    {
      "id" : "DiagnosticReport.basedOn",
      "path" : "DiagnosticReport.basedOn",
      "max" : "1"
    },
    {
      "id" : "DiagnosticReport.category",
      "path" : "DiagnosticReport.category",
      "min" : 2
    },
    {
      "id" : "DiagnosticReport.category:mibi-category",
      "path" : "DiagnosticReport.category",
      "sliceName" : "mibi-category",
      "short" : "Mikrobiologie-Kategorie",
      "definition" : "Kategorie-Slice für mikrobiologische Befunde",
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
      "id" : "DiagnosticReport.category:mibi-category.coding",
      "path" : "DiagnosticReport.category.coding",
      "slicing" : {
        "discriminator" : [{
          "type" : "pattern",
          "path" : "$this"
        }],
        "rules" : "open"
      },
      "min" : 1
    },
    {
      "id" : "DiagnosticReport.category:mibi-category.coding:v2-microbiology",
      "path" : "DiagnosticReport.category.coding",
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
      "id" : "DiagnosticReport.category:mibi-category.coding:loinc-microbiology-studies",
      "path" : "DiagnosticReport.category.coding",
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
      "id" : "DiagnosticReport.category:mibi-sub-category",
      "path" : "DiagnosticReport.category",
      "sliceName" : "mibi-sub-category",
      "short" : "Mikrobiologie-Kategorie LOINC",
      "definition" : "Kategorie-Slice für die LOINC-Kodierung von mikrobiologischen Befunden. Mehrfachangabe zulaessig, wenn der Befund mehrere Studientypen umfasst, z. B. bakteriologisch und mykologisch. Umfasst der Befund keine benennbaren Studientypen oder soll er nur allgemein eingeordnet werden, entfaellt der Subtyp; die allgemeine Einordnung erfolgt ueber category[mibi-category] mit MB und 18725-2.",
      "min" : 0,
      "max" : "*",
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/ValueSet/mii-vs-mikrobio-befundtyp-loinc"
      }
    },
    {
      "id" : "DiagnosticReport.resultsInterpreter",
      "path" : "DiagnosticReport.resultsInterpreter",
      "mustSupport" : true
    },
    {
      "id" : "DiagnosticReport.result",
      "path" : "DiagnosticReport.result",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-allgemeine-kultur",
        "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-spezifische-kultur",
        "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-allgemeine-bestimmung",
        "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-spezifische-bestimmung",
        "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-keimzahl",
        "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-empfindlichkeit",
        "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-mikroskopie",
        "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-antigen-antikoerper-quantitativ",
        "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-aviditaet",
        "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-ct-wert",
        "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-titer",
        "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-nugent-score",
        "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-barlett-score",
        "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-molekulare-pathogenlast",
        "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-resistenzmechanismen-determinanten",
        "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-virulenzfaktor",
        "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-resistenzkategorie-status",
        "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-mrgn-klasse",
        "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-voraussichtliche-empfindlichkeit"]
      }]
    }]
  }
}

```
