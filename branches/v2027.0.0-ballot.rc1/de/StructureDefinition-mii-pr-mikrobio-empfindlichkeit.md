# MII PR Mikrobio Empfindlichkeit - MII Implementation Guide Microbiology v2027.0.0-ballot.rc1

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII PR Mikrobio Empfindlichkeit**

## Ressourcenprofil: MII PR Mikrobio Empfindlichkeit 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-empfindlichkeit | *Version*:2027.0.0-ballot.rc1 |
| Active Stand: 2026-09-10 | *Maschinenlesbarer Name*:MII_PR_Mikrobio_Empfindlichkeit |

 
Empfindlichkeit beschreibt das Ergebnis der phänotypischen Resistenztestung eines Erregers gegenüber antimikrobiellen Substanzen unter Bezug auf ein Normsystem. 

Empfindlichkeit beschreibt das Ergebnis der phänotypischen Resistenztestung eines Erregers gegenüber antimikrobiellen Substanzen unter Bezug auf ein Normsystem.

Die Resistenz eines bereits identifizierten Erregers gegen eine einzelne Substanz wird hier abgebildet, etwa ein linezolidresistenter Enterococcus über `29258-1 |Linezolid [Susceptibility]|` mit `interpretation` R; der Negativfall ist `interpretation` S. Der zielgerichtete Nachweis eines resistenten Erregers als solchen gehört dagegen in die Nachweisprofile — siehe [Profilauswahl und Abgrenzung](profilauswahl-und-abgrenzung.md).

### Stellung in der diagnostischen Kette

Die Empfindlichkeitstestung folgt der Identifizierung des Erregers, den sie bewertet, und verweist über die `triggeredBy`-Extension mit `type = reflex` auf sie zurück. Fand keine eigene Identifizierung statt, weil der Nachweis bereits erregerspezifisch war, verweist sie unmittelbar auf diesen Nachweis.

[Resistenzkategorie-Status](StructureDefinition-mii-pr-mikrobio-resistenzkategorie-status.md) und [MRGN-Klasse](StructureDefinition-mii-pr-mikrobio-mrgn-klasse.md) stehen am Ende der Kette und verweisen über `derivedFrom` auf die Empfindlichkeitsbefunde, aus denen sie abgeleitet wurden, nicht über `triggeredBy`: Sie sind fachliche Ableitungen und keine ausgelöste Folgediagnostik.

### Ein Antibiogramm zusammenfassen

Ein Antibiogramm ist nicht ein Ergebnis, sondern viele — je getestete Substanz eine Observation dieses Profils. Das europäische Whitepaper bindet sie über eine **Organizer-Observation** zusammen: eine Observation, die den Panel-Code `29576-6 |Bacterial susceptibility panel|` trägt und selbst kein `value[x]`, und die über `Observation.hasMember` auf die Einzelergebnisse und über `triggeredBy` auf die Identifizierung verweist, der sie folgte.

Der Organizer ist in diesem Modul nicht profiliert. `Observation.hasMember` steht unbeschränkt aus dem Laborbefund-Basisprofil zur Verfügung, und ein Organizer-Profil erzeugte eine eigene Canonical für etwas, das FHIR bereits regelt. Für ihn gibt es entsprechend kein Profil unter den Zielen, die `DiagnosticReport.result` zulässt; dort werden die Einzelergebnisse unmittelbar referenziert. [Profilauswahl und Abgrenzung](profilauswahl-und-abgrenzung.md) beschreibt das Muster und die Arbeitsteilung zwischen `hasMember`, `triggeredBy` und `derivedFrom`.

### Beispiele

Beispiel (minimal):

[mii-exa-mikrobio-empfindlichkeit](Observation-mii-exa-mikrobio-empfindlichkeit.md)

**Usages:**

* Refer to this Profile: [MII PR Mikrobio Diagnostic Report](StructureDefinition-mii-pr-mikrobio-diagnostic-report.md)
* Examples for this Profile: [Observation/mii-exa-mikrobio-empfindlichkeit-nur-kategorie](Observation-mii-exa-mikrobio-empfindlichkeit-nur-kategorie.md), [Observation/mii-exa-mikrobio-empfindlichkeit](Observation-mii-exa-mikrobio-empfindlichkeit.md) and [Observation/mii-exa-mikrobio-workflow-vre-03-empfindlichkeit](Observation-mii-exa-mikrobio-workflow-vre-03-empfindlichkeit.md)
* CapabilityStatements using this Profile: [MII CPS Mikrobio Metadata](CapabilityStatement-mii-cps-mikrobio-metadata.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.medizininformatikinitiative.kerndatensatz.mikrobiologie|current/StructureDefinition/StructureDefinition-mii-pr-mikrobio-empfindlichkeit.json)

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

#### Constraints

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [MII_PR_Labor_Laboruntersuchung](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.laborbefund@2027.0.0-ballot.rc4&canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/ObservationLab) 

** Summary **

Mandatory: 2 elements(2 nested mandatory elements)
 Must-Support: 3 elements

**Structures**

This structure refers to these other structures:

* [MII PR Mikrobio Probe (https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-probe)](StructureDefinition-mii-pr-mikrobio-probe.md)

**Extensions**

This structure refers to these extensions:

* [http://hl7.org/fhir/5.0/StructureDefinition/extension-Observation.triggeredBy](StructureDefinition-ext-R5-Observation.triggeredBy.md)
* [https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-ex-mikrobio-empfindlichkeit-norm](StructureDefinition-mii-ex-mikrobio-empfindlichkeit-norm.md)

 **Schlüsselelemente-Ansicht** 

#### Terminology Bindings

#### Constraints

 **Differential-Ansicht** 

Diese Struktur ist abgeleitet von [MII_PR_Labor_Laboruntersuchung](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.laborbefund@2027.0.0-ballot.rc4&canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/ObservationLab) 

#### Terminology Bindings (Differential)

#### Constraints

 **Snapshot-AnsichtView** 

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [MII_PR_Labor_Laboruntersuchung](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.laborbefund@2027.0.0-ballot.rc4&canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/ObservationLab) 

** Summary **

Mandatory: 2 elements(2 nested mandatory elements)
 Must-Support: 3 elements

**Structures**

This structure refers to these other structures:

* [MII PR Mikrobio Probe (https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-probe)](StructureDefinition-mii-pr-mikrobio-probe.md)

**Extensions**

This structure refers to these extensions:

* [http://hl7.org/fhir/5.0/StructureDefinition/extension-Observation.triggeredBy](StructureDefinition-ext-R5-Observation.triggeredBy.md)
* [https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-ex-mikrobio-empfindlichkeit-norm](StructureDefinition-mii-ex-mikrobio-empfindlichkeit-norm.md)

 

Weitere Repräsentationen des Profils: [CSV](../StructureDefinition-mii-pr-mikrobio-empfindlichkeit.csv), [Excel](../StructureDefinition-mii-pr-mikrobio-empfindlichkeit.xlsx), [Schematron](../StructureDefinition-mii-pr-mikrobio-empfindlichkeit.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-pr-mikrobio-empfindlichkeit",
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
        "code" : "C36292"
      }]
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-topic",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl",
        "code" : "C25294"
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
  "url" : "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-empfindlichkeit",
  "version" : "2027.0.0-ballot.rc1",
  "name" : "MII_PR_Mikrobio_Empfindlichkeit",
  "title" : "MII PR Mikrobio Empfindlichkeit",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-09-10T13:32:54+00:00",
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
  "description" : "Empfindlichkeit beschreibt das Ergebnis der phänotypischen Resistenztestung eines Erregers gegenüber antimikrobiellen Substanzen unter Bezug auf ein Normsystem.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "purpose" : "Dieses Profil beschreibt die phänotypische Empfindlichkeitstestung. Die Resistenz eines bereits identifizierten Erregers gegen eine einzelne Substanz wird hier abgebildet, z. B. ein linezolidresistenter Enterococcus über 29258-1 |Linezolid [Susceptibility]| mit interpretation R; der Negativfall ist interpretation S. Der zielgerichtete Nachweis eines resistenten Erregers als solchen gehört dagegen nach MII_PR_Mikrobio_Spezifische_Bestimmung bzw. MII_PR_Mikrobio_Spezifische_Kultur.",
  "fhirVersion" : "4.0.1",
  "kind" : "resource",
  "abstract" : false,
  "type" : "Observation",
  "baseDefinition" : "https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/ObservationLab",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Observation",
      "path" : "Observation",
      "constraint" : [{
        "key" : "empfindlichkeit-kategorie-braucht-interpretation",
        "severity" : "error",
        "human" : "If the result is given as a susceptibility category rather than a measured value, Observation.interpretation SHALL be present, because the norm it was derived from is carried there.",
        "expression" : "value.ofType(CodeableConcept).exists() implies interpretation.exists()",
        "source" : "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-empfindlichkeit"
      },
      {
        "key" : "empfindlichkeit-kategorie-stimmt-mit-interpretation",
        "severity" : "error",
        "human" : "Where both a categorical result value and an interpretation are given, every code of the value SHALL also appear among the interpretation codes.",
        "expression" : "value.ofType(CodeableConcept).coding.code.subsetOf(interpretation.coding.code)",
        "source" : "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-empfindlichkeit"
      },
      {
        "key" : "empfindlichkeit-messwert-sollte-bewertet-sein",
        "severity" : "warning",
        "human" : "Where the result is a measured value, an interpretation SHOULD be given. It may be absent where no breakpoints are defined for the organism and agent.",
        "expression" : "value.ofType(Quantity).exists() implies interpretation.exists()",
        "source" : "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-empfindlichkeit"
      }]
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
      "short" : "Bevorzugt LOINC-Codes OHNE praekoordiniertes Verfahren, z. B. 100044-7 'Cefcapene [Susceptibility]' und nicht die '... by Broth dilution'-Variante — das Verfahren gehoert nach Observation.method. Das EU-Datenmodell markiert diese methodenfreie Menge als 'methodless:true' und Preferred. Ebenso bevorzugt ohne praekoordinierte Specimentype-Angabe (System = XXX); der Specimentype wird separat ueber Specimen.type kodiert. NICHT hierher gehoeren Codes mit der Methode 'Genotyping', etwa 103958-5 'Ofloxacin [Susceptibility] by Genotype': Dieses Profil verlangt ein Grenzwert-Regelwerk in interpretation.extension[Norm], und eine genotypische Vorhersage beruht auf keinem. Sie gehoert nach MII_PR_Mikrobio_Voraussichtliche_Empfindlichkeit.",
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/ValueSet/mii-vs-mikrobio-empfindlichkeit-phenotyp-loinc"
      }
    },
    {
      "id" : "Observation.value[x]",
      "path" : "Observation.value[x]",
      "type" : [{
        "code" : "Quantity"
      },
      {
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "Observation.value[x]:valueQuantity",
      "path" : "Observation.value[x]",
      "sliceName" : "valueQuantity",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Observation.value[x]:valueQuantity.code",
      "path" : "Observation.value[x].code",
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/ValueSet/mii-vs-mikrobio-empfindlichkeit-einheiten-ucum"
      }
    },
    {
      "id" : "Observation.value[x]:valueCodeableConcept",
      "path" : "Observation.value[x]",
      "sliceName" : "valueCodeableConcept",
      "short" : "Die Empfindlichkeitskategorie, wenn kein Messwert vorliegt. Aus derselben Liste wie interpretation, weil beide dasselbe aussagen — sind beide angegeben, muessen sie uebereinstimmen (empfindlichkeit-kategorie-stimmt-mit-interpretation).",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/ValueSet/mii-vs-mikrobio-susceptibility"
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
      "id" : "Observation.interpretation",
      "path" : "Observation.interpretation",
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/ValueSet/mii-vs-mikrobio-susceptibility"
      }
    },
    {
      "id" : "Observation.interpretation.extension",
      "path" : "Observation.interpretation.extension",
      "min" : 1
    },
    {
      "id" : "Observation.interpretation.extension:Norm",
      "path" : "Observation.interpretation.extension",
      "sliceName" : "Norm",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-ex-mikrobio-empfindlichkeit-norm"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Observation.method",
      "path" : "Observation.method",
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/ValueSet/mii-vs-mikrobio-empfindlichkeit-methode-snomed"
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
    }]
  }
}

```
