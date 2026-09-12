# MII PR Mikrobio Allgemeine Mikroskopie - MII Implementation Guide Microbiology v2027.0.0-ballot.rc1

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII PR Mikrobio Allgemeine Mikroskopie**

## Ressourcenprofil: MII PR Mikrobio Allgemeine Mikroskopie 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-mikroskopie | *Version*:2027.0.0-ballot.rc1 |
| Active Stand: 2026-09-12 | *Maschinenlesbarer Name*:MII_PR_Mikrobio_Allgemeine_Mikroskopie |

 
Allgemeine Mikroskopie beschreibt die morphologische Beobachtung von Mikroorganismen in einer Probe mittels mikroskopischer Untersuchung, optional mit Färbetechniken (z. B. Gramfärbung). Das Ergebnis ist eine morphologische Gruppe, keine Spezies. 

Allgemeine Mikroskopie beschreibt die morphologische Beobachtung von Mikroorganismen in einer Probe mittels mikroskopischer Untersuchung, optional mit Färbetechniken (z. B. Gramfärbung). Das Ergebnis ist eine morphologische Gruppe, keine Spezies.

Sie ist die offene Hälfte der Mikroskopie: Der Code fragt, was zu sehen ist, und die Antwort ist die beobachtete Morphologie. Steht das gesuchte Objekt bereits im Untersuchungscode und ist die Antwort, wie viel davon gesehen wurde, ist [Spezifische Mikroskopie](StructureDefinition-mii-pr-mikrobio-spezifische-mikroskopie.md) das richtige Profil.

### Färbung

Die Färbung steht in `extension[faerbung]`, codiert mit den Nachkommen von `37926009 |Microbial stain method (procedure)|` — denselben Codes, die die HL7 EU Lab Semantic Workgroup verwendet. Sie wird immer angegeben, wenn gefärbt wurde, auch dann, wenn der Untersuchungscode sie schon nennt: Sie ist damit an einer Stelle auswertbar, unabhängig davon, welchen Code ein Labor wählt. `Observation.method` trägt nur noch das Mikroskopieverfahren — bei nativer Mikroskopie ohne Färbung die einzige Angabe, die zu machen ist.

**Ballotfrage 2 — wohin gehört die Färbetechnik?** Dieses Modul weicht von dem Modell ab, das in der HL7 EU Lab Semantic Workgroup diskutiert wird: Es führt die Färbung in `extension[faerbung]` an der Observation, nicht in `Specimen.processing.procedure`. Die Codes sind dieselben. Können Sie die Färbung an der Probe liefern, oder brauchen Sie die Extension?

Zwei Dinge sprechen dagegen, dass `Specimen` der einzige Ort ist. Es setzt eine Specimen-Ressource voraus, und die stellt Ballotfrage 1 in Zweifel; und der Parent von [Probe](StructureDefinition-mii-pr-mikrobio-probe.md) macht unter `processing` Lagertemperaturbedingungen verpflichtend (Ballotfrage 3), die eine Färbung nicht liefern kann. Weil die Terminologie auf beiden Wegen dieselbe ist, ändert ein späterer Umzug das Element und nichts weiter.

## Morphologie zusammen mit ihrer Menge

Der häufigste Grambefund braucht zwei Aussagen auf einmal — **wenig** grampositive Kokken —, und `value[x]` kann nur eine davon tragen. Die Morphologie ist der Wert, die Menge eine Komponente: `component[menge]`. Dieselbe Komponente, mit demselben Code und denselben Antworten, trägt die Menge in der [Spezifischen Mikroskopie](StructureDefinition-mii-pr-mikrobio-spezifische-mikroskopie.md).

Ihr Code ist `103392008 |Semi-quantitative value|`, das Konzept, das die HL7 EU Lab Semantic Workgroup für diese Komponente vorschlägt. Für denselben Zweck ist ein LOINC-Code angefordert; er tritt an diese Stelle, sobald er existiert. Neben der semiquantitativen Stufe nimmt die Komponente eine Zählung je Gesichtsfeld, als `Quantity` oder als `Range`.

**Ballotfrage 5 — können Sie eine Komponente für die Menge verarbeiten?** Beide Mikroskopieprofile führen die Menge in `component[menge]` und folgen damit der HL7 EU Lab Semantic Workgroup, die die Menge eines einzelnen Befunds in einer Komponente führt und mehrere Befunde einer Untersuchung mit `hasMember` gruppiert.

Die Komponente dreht eine Entscheidung dieses Zyklus zurück: `2027.0.0-alpha.1` hat die Komponenten aus genau diesem Profil entfernt und in eigenständige Observations überführt.

### Beispiele

Beispiel (minimal):

[mii-exa-mikrobio-mikroskopie](Observation-mii-exa-mikrobio-mikroskopie.md)

**Usages:**

* Refer to this Profile: [MII PR Mikrobio Diagnostic Report](StructureDefinition-mii-pr-mikrobio-diagnostic-report.md)
* Examples for this Profile: [Observation/mii-exa-mikrobio-mikroskopie-gram-kokken-wenig](Observation-mii-exa-mikrobio-mikroskopie-gram-kokken-wenig.md) and [Observation/mii-exa-mikrobio-mikroskopie](Observation-mii-exa-mikrobio-mikroskopie.md)
* CapabilityStatements using this Profile: [MII CPS Mikrobio Metadata](CapabilityStatement-mii-cps-mikrobio-metadata.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.medizininformatikinitiative.kerndatensatz.mikrobiologie|current/StructureDefinition/StructureDefinition-mii-pr-mikrobio-mikroskopie.json)

### Formale Ansichten des Profilinhalts

 [Beschreibung von Profilen, Differentials, Snapshots und deren Repräsentationen](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Schlüsselelemente-Tabelle](#tabs-key) 
*  [Differential-Tabelle](#tabs-diff) 
*  [Snapshot-Tabelle](#tabs-snap) 
*  [Statistiken/Referenzen](#tabs-summ) 
*  [Alle](#tabs-all) 

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [MII_PR_Labor_Laboruntersuchung](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.laborbefund@2027.0.0-ballot.rc4&canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/ObservationLab) 

#### Terminology Bindings (Differential)

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [MII_PR_Labor_Laboruntersuchung](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.laborbefund@2027.0.0-ballot.rc4&canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/ObservationLab) 

** Summary **

Mandatory: 2 elements
 Must-Support: 4 elements

**Structures**

This structure refers to these other structures:

* [MII PR Mikrobio Probe (https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-probe)](StructureDefinition-mii-pr-mikrobio-probe.md)

**Extensions**

This structure refers to these extensions:

* [http://hl7.org/fhir/5.0/StructureDefinition/extension-Observation.triggeredBy](StructureDefinition-ext-R5-Observation.triggeredBy.md)
* [https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-ex-mikrobio-faerbung](StructureDefinition-mii-ex-mikrobio-faerbung.md)

**Slices**

This structure defines the following [Slices](http://hl7.org/fhir/R4/profiling.html#slices):

* The element 1 is sliced based on the value of Observation.component
* The element 1 is sliced based on the value of Observation.component.value[x]

 **Schlüsselelemente-Ansicht** 

#### Terminology Bindings

#### Constraints

 **Differential-Ansicht** 

Diese Struktur ist abgeleitet von [MII_PR_Labor_Laboruntersuchung](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.laborbefund@2027.0.0-ballot.rc4&canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/ObservationLab) 

#### Terminology Bindings (Differential)

 **Snapshot-AnsichtView** 

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [MII_PR_Labor_Laboruntersuchung](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.laborbefund@2027.0.0-ballot.rc4&canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/ObservationLab) 

** Summary **

Mandatory: 2 elements
 Must-Support: 4 elements

**Structures**

This structure refers to these other structures:

* [MII PR Mikrobio Probe (https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-probe)](StructureDefinition-mii-pr-mikrobio-probe.md)

**Extensions**

This structure refers to these extensions:

* [http://hl7.org/fhir/5.0/StructureDefinition/extension-Observation.triggeredBy](StructureDefinition-ext-R5-Observation.triggeredBy.md)
* [https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-ex-mikrobio-faerbung](StructureDefinition-mii-ex-mikrobio-faerbung.md)

**Slices**

This structure defines the following [Slices](http://hl7.org/fhir/R4/profiling.html#slices):

* The element 1 is sliced based on the value of Observation.component
* The element 1 is sliced based on the value of Observation.component.value[x]

 

Weitere Repräsentationen des Profils: [CSV](../StructureDefinition-mii-pr-mikrobio-mikroskopie.csv), [Excel](../StructureDefinition-mii-pr-mikrobio-mikroskopie.xlsx), [Schematron](../StructureDefinition-mii-pr-mikrobio-mikroskopie.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-pr-mikrobio-mikroskopie",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-versionAlgorithm",
    "valueCoding" : {
      "system" : "http://hl7.org/fhir/version-algorithm",
      "code" : "semver",
      "display" : "SemVer"
    }
  },
  {
    "url" : "https://www.medizininformatik-initiative.de/fhir/modul-meta/StructureDefinition/mii-ex-meta-license-codeable",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://hl7.org/fhir/spdx-license",
        "code" : "CC-BY-4.0",
        "display" : "Creative Commons Attribution 4.0 International"
      }]
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/cqf-knowledgeCapability",
    "valueCode" : "shareable"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/cqf-knowledgeCapability",
    "valueCode" : "publishable"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-versionPolicy",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/artifact-version-policy-codes",
        "code" : "package",
        "display" : "Package"
      }]
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-usage",
    "valueMarkdown" : "Use this profile as the technical FHIR representation of the corresponding Medical Informatics Initiative logical model. The profile constrains a base FHIR resource for the MII module context by specifying how elements are used, which elements are required or not used, which extensions and terminology bindings apply, and how the resource maps to the module-specific content model. Implementers should produce and consume resource instances that conform to this profile when exchanging data for the corresponding MII module."
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-topic",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl",
        "code" : "C16851"
      }]
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-topic",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl",
        "code" : "C217438"
      }]
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-author",
    "valueContactDetail" : {
      "telecom" : [{
        "system" : "email",
        "value" : "pw@gefyra.de"
      }]
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-editor",
    "valueContactDetail" : {
      "name" : "Taskforce Core Data Set"
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-reviewer",
    "valueContactDetail" : {
      "name" : "Interoperability Working Group",
      "telecom" : [{
        "system" : "url",
        "value" : "https://www.medizininformatik-initiative.de/en/collaboration/interoperability-working-group"
      }]
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-reviewer",
    "valueContactDetail" : {
      "name" : "National Steering Committee",
      "telecom" : [{
        "system" : "url",
        "value" : "https://www.medizininformatik-initiative.de/en/collaboration/national-steering-committee"
      }]
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-endorser",
    "valueContactDetail" : {
      "name" : "Interoperability Working Group",
      "telecom" : [{
        "system" : "url",
        "value" : "https://www.medizininformatik-initiative.de/en/collaboration/interoperability-working-group"
      }]
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-endorser",
    "valueContactDetail" : {
      "name" : "National Steering Committee",
      "telecom" : [{
        "system" : "url",
        "value" : "https://www.medizininformatik-initiative.de/en/collaboration/national-steering-committee"
      }]
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/resource-approvalDate",
    "valueDate" : "2026-08-24"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/resource-lastReviewDate",
    "valueDate" : "2026-08-24"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/resource-effectivePeriod",
    "valuePeriod" : {
      "start" : "2027"
    }
  }],
  "url" : "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-mikroskopie",
  "version" : "2027.0.0-ballot.rc1",
  "name" : "MII_PR_Mikrobio_Allgemeine_Mikroskopie",
  "title" : "MII PR Mikrobio Allgemeine Mikroskopie",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-09-12T17:15:10+00:00",
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
  "description" : "Allgemeine Mikroskopie beschreibt die morphologische Beobachtung von Mikroorganismen in einer Probe mittels mikroskopischer Untersuchung, optional mit Färbetechniken (z. B. Gramfärbung). Das Ergebnis ist eine morphologische Gruppe, keine Spezies.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "purpose" : "Dieses Profil beschreibt mikroskopische Beobachtungen der Morphologie.",
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
      "id" : "Observation.extension:faerbung",
      "path" : "Observation.extension",
      "sliceName" : "faerbung",
      "short" : "Eingesetzte Faerbung, z. B. Gramfaerbung. Immer angeben, wenn gefaerbt wurde — auch wenn der Untersuchungscode sie schon nennt.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-ex-mikrobio-faerbung"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Observation.category",
      "path" : "Observation.category",
      "min" : 2
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
      "id" : "Observation.code",
      "path" : "Observation.code",
      "short" : "Bevorzugt 105059-0 'Microscopic observation [Identifier] in Specimen', weil es die Faerbung nicht in den Code zieht. 664-3 '... by Gram stain' ist gleichwertig zulaessig; die Faerbung wird in beiden Faellen zusaetzlich in extension[faerbung] angegeben, damit sie unabhaengig von der Codewahl an einer Stelle auswertbar ist.",
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/ValueSet/mii-vs-mikrobio-allgemeine-mikroskopie-tests-loinc"
      }
    },
    {
      "id" : "Observation.value[x]",
      "path" : "Observation.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "Observation.value[x]:valueCodeableConcept",
      "path" : "Observation.value[x]",
      "sliceName" : "valueCodeableConcept",
      "short" : "Die beobachtete morphologische GRUPPE — grampositive Kokken, gramnegative Staebchen, Hyphen. KEINE Spezies: Eine Speziesidentifizierung gehoert in die Allgemeine Bestimmung, auch wenn sie mikroskopisch gestellt wurde. Ein Teil der Gruppen liegt in SNOMED in der Organismus-Hierarchie, weil es sie dort nur so gibt; das macht die Aussage nicht praeziser.",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/ValueSet/mii-vs-mikrobio-morphologie-ergebnis-snomed"
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
      "id" : "Observation.method",
      "path" : "Observation.method",
      "short" : "Das mikroskopische Verfahren, z. B. 278289002 'Microscopy technique' oder eine Verengung davon. Die Faerbung gehoert NICHT hierher, sondern in extension[faerbung].",
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/ValueSet/mii-vs-mikrobio-morphologie-methode-snomed"
      }
    },
    {
      "id" : "Observation.specimen",
      "path" : "Observation.specimen",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-probe"]
      }]
    },
    {
      "id" : "Observation.component",
      "path" : "Observation.component",
      "slicing" : {
        "discriminator" : [{
          "type" : "pattern",
          "path" : "$this.code"
        }],
        "description" : "Slicing nach dem Komponenten-Code.",
        "rules" : "open"
      }
    },
    {
      "id" : "Observation.component:menge",
      "path" : "Observation.component",
      "sliceName" : "menge",
      "short" : "Semiquantitative Menge oder Zaehlung des berichteten Befunds",
      "definition" : "Wie viel des Befunds gesehen wurde: als semiquantitative Stufe, als Zaehlung je Gesichtsfeld oder als Intervall einer solchen Zaehlung.",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:menge.code",
      "path" : "Observation.component.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "version" : "http://snomed.info/sct/900000000000207008/version/20260701",
          "code" : "103392008",
          "display" : "Semi-quantitative value"
        }]
      }
    },
    {
      "id" : "Observation.component:menge.value[x]",
      "path" : "Observation.component.value[x]",
      "slicing" : {
        "discriminator" : [{
          "type" : "type",
          "path" : "$this"
        }],
        "ordered" : false,
        "rules" : "open"
      },
      "type" : [{
        "code" : "Quantity"
      },
      {
        "code" : "CodeableConcept"
      },
      {
        "code" : "Range"
      }]
    },
    {
      "id" : "Observation.component:menge.value[x]:valueCodeableConcept",
      "path" : "Observation.component.value[x]",
      "sliceName" : "valueCodeableConcept",
      "short" : "Semiquantitative Stufe, z. B. 'Few' oder 'Present two plus out of three plus'.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/ValueSet/mii-vs-mikrobio-mikroskopie-semiquantitativ-snomed"
      }
    },
    {
      "id" : "Observation.component:menge.value[x]:valueQuantity",
      "path" : "Observation.component.value[x]",
      "sliceName" : "valueQuantity",
      "short" : "Zaehlung je Gesichtsfeld, UCUM-Einheit /[HPF]. Fuer offene Grenzen wird Quantity.comparator verwendet, z. B. '<10/GF' als comparator = '<', value = 10.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Observation.component:menge.value[x]:valueRange",
      "path" : "Observation.component.value[x]",
      "sliceName" : "valueRange",
      "short" : "Zaehlung je Gesichtsfeld als Intervall, UCUM-Einheit /[HPF] — z. B. '10-25/GF' als low = 10, high = 25.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Range"
      }]
    }]
  }
}

```
