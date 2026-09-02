# R5: Triggering observation(s) (new) - MII Implementation Guide Microbiology v2027.0.0-alpha.6

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **R5: Triggering observation(s) (new)**

## Extension: R5: Triggering observation(s) (new) 

| | |
| :--- | :--- |
| *Offizielle URL*:http://hl7.org/fhir/5.0/StructureDefinition/extension-Observation.triggeredBy | *Version*:2027.0.0-alpha.6 |
| Active Stand: 2026-09-02 | *Maschinenlesbarer Name*:ExtensionObservation_TriggeredBy |

R5: `Observation.triggeredBy` (new:BackboneElement)

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [MII PR Mikrobio Allgemeine Bestimmung](StructureDefinition-mii-pr-mikrobio-allgemeine-bestimmung.md), [MII PR Mikrobio Allgemeine Kultur](StructureDefinition-mii-pr-mikrobio-allgemeine-kultur.md), [MII PR Mikrobio Antigen Antikoerper Quantitativ](StructureDefinition-mii-pr-mikrobio-antigen-antikoerper-quantitativ.md), [MII PR Mikrobio Aviditaet](StructureDefinition-mii-pr-mikrobio-aviditaet.md)... Show 16 more, [MII PR Mikrobio Barlett Score](StructureDefinition-mii-pr-mikrobio-barlett-score.md), [MII PR Mikrobio CT Wert](StructureDefinition-mii-pr-mikrobio-ct-wert.md), [MII PR Mikrobio Empfindlichkeit](StructureDefinition-mii-pr-mikrobio-empfindlichkeit.md), [MII PR Mikrobio Keimzahl](StructureDefinition-mii-pr-mikrobio-keimzahl.md), [MII PR Mikrobio Mikroskopie](StructureDefinition-mii-pr-mikrobio-mikroskopie.md), [MII PR Mikrobio Molekulare Pathogenlast](StructureDefinition-mii-pr-mikrobio-molekulare-pathogenlast.md), [MII PR Mikrobio MRGN Klasse](StructureDefinition-mii-pr-mikrobio-mrgn-klasse.md), [MII PR Mikrobio Nugent Score](StructureDefinition-mii-pr-mikrobio-nugent-score.md), [MII PR Mikrobio Resistenzkategorie Status](StructureDefinition-mii-pr-mikrobio-resistenzkategorie-status.md), [MII PR Mikrobio Resistenzmechanismen Determinanten](StructureDefinition-mii-pr-mikrobio-resistenzmechanismen-determinanten.md), [MII PR Mikrobio Spezifische Bestimmung](StructureDefinition-mii-pr-mikrobio-spezifische-bestimmung.md), [MII PR Mikrobio Spezifische Kultur](StructureDefinition-mii-pr-mikrobio-spezifische-kultur.md), [MII PR Mikrobio Titer](StructureDefinition-mii-pr-mikrobio-titer.md), [MII PR Mikrobio Virulenzfaktor](StructureDefinition-mii-pr-mikrobio-virulenzfaktor.md), [MII PR Mikrobio Voraussichtliche Empfindlichkeit](StructureDefinition-mii-pr-mikrobio-voraussichtliche-empfindlichkeit.md) and [Cross-version Profile for R5.Observation for use in FHIR R4](http://hl7.org/fhir/uv/xver-r5.r4/0.1.0/StructureDefinition-profile-Observation.html)
* Examples for this Extension: [Observation/mii-exa-mikrobio-allgemeine-bestimmung](Observation-mii-exa-mikrobio-allgemeine-bestimmung.md), [Observation/mii-exa-mikrobio-workflow-vre-02-identifikation](Observation-mii-exa-mikrobio-workflow-vre-02-identifikation.md) and [Observation/mii-exa-mikrobio-workflow-vre-03-empfindlichkeit](Observation-mii-exa-mikrobio-workflow-vre-03-empfindlichkeit.md)
* Search Parameters using this Extension: [MII_SP_Mikrobio_Observation_TriggeredBy](SearchParameter-mii-sp-mikrobio-observation-triggered-by.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.medizininformatikinitiative.kerndatensatz.mikrobiologie|current/StructureDefinition/StructureDefinition-ext-R5-Observation.triggeredBy.json)

### Formale Ansichten des Extension-Inhalts

 [Beschreibung von Profilen, Differentials, Snapshots und deren Repräsentationen](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Differential-Tabelle](#tabs-diff) 
*  [Snapshot-Tabelle](#tabs-snap) 
*  [Statistiken/Referenzen](#tabs-summ) 
*  [AlleAll](#tabs-all) 

Diese Struktur ist abgeleitet von [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

#### Terminology Bindings (Differential)

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

** Summary **

Complex Extension: R5: `Observation.triggeredBy` (new:BackboneElement)

 **Differential-AnsichtDifferential View** 

Diese Struktur ist abgeleitet von [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

#### Terminology Bindings (Differential)

 **Snapshot-Ansicht** 

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

** Summary **

Complex Extension: R5: `Observation.triggeredBy` (new:BackboneElement)

 

Weitere Repräsentationen des Profils: [CSV](../StructureDefinition-ext-R5-Observation.triggeredBy.csv), [Excel](../StructureDefinition-ext-R5-Observation.triggeredBy.xlsx), [Schematron](../StructureDefinition-ext-R5-Observation.triggeredBy.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ext-R5-Observation.triggeredBy",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg",
    "valueCode" : "fhir"
  }],
  "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-Observation.triggeredBy",
  "version" : "2027.0.0-alpha.6",
  "name" : "ExtensionObservation_TriggeredBy",
  "title" : "R5: Triggering observation(s) (new)",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-09-02T21:10:40+00:00",
  "publisher" : "Medizininformatik Initiative",
  "contact" : [{
    "name" : "Medizininformatik Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de"
    }]
  }],
  "description" : "R5: `Observation.triggeredBy` (new:BackboneElement)",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "purpose" : "This extension is part of the cross-version definitions generated to enable use of the\r\nelement `Observation.triggeredBy` as defined in FHIR R5\r\nin FHIR R4.\r\n\r\nThe source element is defined as:\r\n`Observation.triggeredBy` 0..* `BackboneElement`\r\n\r\nAcross FHIR versions, the element set has been mapped as:\r\n*  R5: `Observation.triggeredBy` 0..* `BackboneElement`\r\n\r\nFollowing are the generation technical comments:\r\nElement `Observation.triggeredBy` has a context of Observation based on following the parent source element upwards and mapping to `Observation`.\nElement `Observation.triggeredBy` has no mapping targets in FHIR R4. Typically, this is because the element has been added (is a new element).",
  "fhirVersion" : "4.0.1",
  "kind" : "complex-type",
  "abstract" : false,
  "context" : [{
    "type" : "element",
    "expression" : "Observation"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "R5: Triggering observation(s) (new)",
      "definition" : "R5: `Observation.triggeredBy` (new:BackboneElement)",
      "comment" : "Element `Observation.triggeredBy` has a context of Observation based on following the parent source element upwards and mapping to `Observation`.\nElement `Observation.triggeredBy` has no mapping targets in FHIR R4. Typically, this is because the element has been added (is a new element)."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "min" : 2
    },
    {
      "id" : "Extension.extension:observation",
      "path" : "Extension.extension",
      "sliceName" : "observation",
      "short" : "R5: Triggering observation (new)",
      "definition" : "R5: `Observation.triggeredBy.observation` (new:Reference(Observation))",
      "comment" : "Element `Observation.triggeredBy.observation` is part of an existing definition because parent element `Observation.triggeredBy` requires a cross-version extension.\nElement `Observation.triggeredBy.observation` has a context of Observation based on following the parent source element upwards and mapping to `Observation`.\nElement `Observation.triggeredBy.observation` has no mapping targets in FHIR R4. Typically, this is because the element has been added (is a new element).",
      "requirements" : "Element `Observation.triggeredBy.observation` is part of an existing definition because parent element `Observation.triggeredBy` requires a cross-version extension.\nElement `Observation.triggeredBy.observation` has a context of Observation based on following the parent source element upwards and mapping to `Observation`.\nElement `Observation.triggeredBy.observation` has no mapping targets in FHIR R4. Typically, this is because the element has been added (is a new element).",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:observation.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:observation.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "observation"
    },
    {
      "id" : "Extension.extension:observation.value[x]",
      "path" : "Extension.extension.value[x]",
      "short" : "Triggering observation",
      "definition" : "Reference to the triggering observation.",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Observation"]
      }]
    },
    {
      "id" : "Extension.extension:type",
      "path" : "Extension.extension",
      "sliceName" : "type",
      "short" : "R5: reflex | repeat | re-run (new)",
      "definition" : "R5: `Observation.triggeredBy.type` (new:code)",
      "comment" : "Element `Observation.triggeredBy.type` is part of an existing definition because parent element `Observation.triggeredBy` requires a cross-version extension.\nElement `Observation.triggeredBy.type` has a context of Observation based on following the parent source element upwards and mapping to `Observation`.\nElement `Observation.triggeredBy.type` has no mapping targets in FHIR R4. Typically, this is because the element has been added (is a new element).",
      "requirements" : "Element `Observation.triggeredBy.type` is part of an existing definition because parent element `Observation.triggeredBy` requires a cross-version extension.\nElement `Observation.triggeredBy.type` has a context of Observation based on following the parent source element upwards and mapping to `Observation`.\nElement `Observation.triggeredBy.type` has no mapping targets in FHIR R4. Typically, this is because the element has been added (is a new element).",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:type.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:type.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "type"
    },
    {
      "id" : "Extension.extension:type.value[x]",
      "path" : "Extension.extension.value[x]",
      "short" : "reflex | repeat | re-run",
      "definition" : "The type of trigger.\nReflex | Repeat | Re-run.",
      "min" : 1,
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "description" : "The type of TriggeredBy Observation.",
        "valueSet" : "http://hl7.org/fhir/uv/xver/ValueSet/R5-observation-triggeredbytype-for-R4|0.1.0"
      }
    },
    {
      "id" : "Extension.extension:reason",
      "path" : "Extension.extension",
      "sliceName" : "reason",
      "short" : "R5: Reason that the observation was triggered (new)",
      "definition" : "R5: `Observation.triggeredBy.reason` (new:string)",
      "comment" : "Element `Observation.triggeredBy.reason` is part of an existing definition because parent element `Observation.triggeredBy` requires a cross-version extension.\nElement `Observation.triggeredBy.reason` has a context of Observation based on following the parent source element upwards and mapping to `Observation`.\nElement `Observation.triggeredBy.reason` has no mapping targets in FHIR R4. Typically, this is because the element has been added (is a new element).",
      "requirements" : "Element `Observation.triggeredBy.reason` is part of an existing definition because parent element `Observation.triggeredBy` requires a cross-version extension.\nElement `Observation.triggeredBy.reason` has a context of Observation based on following the parent source element upwards and mapping to `Observation`.\nElement `Observation.triggeredBy.reason` has no mapping targets in FHIR R4. Typically, this is because the element has been added (is a new element).",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:reason.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:reason.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "reason"
    },
    {
      "id" : "Extension.extension:reason.value[x]",
      "path" : "Extension.extension.value[x]",
      "short" : "Reason that the observation was triggered",
      "definition" : "Provides the reason why this observation was performed as a result of the observation(s) referenced.",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-Observation.triggeredBy"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "max" : "0"
    }]
  }
}

```
