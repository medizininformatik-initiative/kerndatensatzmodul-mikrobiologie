# MII EX Mikrobio Färbung - MII Implementation Guide Microbiology v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII EX Mikrobio Färbung**

## Extension: MII EX Mikrobio Färbung 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-ex-mikrobio-faerbung | *Version*:2027.0.0-ballot.rc1 |
| Active as of 2026-09-12 | *Computable Name*:MII_EX_Mikrobio_Faerbung |

Staining technique used for the microscopic examination, coded with the same SNOMED CT hierarchy as the European laboratory coordination.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [MII PR Mikrobio Allgemeine Mikroskopie](StructureDefinition-mii-pr-mikrobio-mikroskopie.md) and [MII PR Mikrobio Spezifische Mikroskopie](StructureDefinition-mii-pr-mikrobio-spezifische-mikroskopie.md)
* Examples for this Extension: [Observation/mii-exa-mikrobio-mikroskopie-gram-kokken-wenig](Observation-mii-exa-mikrobio-mikroskopie-gram-kokken-wenig.md), [Observation/mii-exa-mikrobio-spezifische-mikroskopie-auramin-negativ](Observation-mii-exa-mikrobio-spezifische-mikroskopie-auramin-negativ.md), [Observation/mii-exa-mikrobio-spezifische-mikroskopie-kinyoun-zweiplus](Observation-mii-exa-mikrobio-spezifische-mikroskopie-kinyoun-zweiplus.md) and [Observation/mii-exa-mikrobio-spezifische-mikroskopie-leukozyten-gesichtsfeld](Observation-mii-exa-mikrobio-spezifische-mikroskopie-leukozyten-gesichtsfeld.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.medizininformatikinitiative.kerndatensatz.mikrobiologie|current/StructureDefinition/StructureDefinition-mii-ex-mikrobio-faerbung.json)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and their representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-mii-ex-mikrobio-faerbung.csv), [Excel](../StructureDefinition-mii-ex-mikrobio-faerbung.xlsx), [Schematron](../StructureDefinition-mii-ex-mikrobio-faerbung.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-ex-mikrobio-faerbung",
  "url" : "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-ex-mikrobio-faerbung",
  "version" : "2027.0.0-ballot.rc1",
  "name" : "MII_EX_Mikrobio_Faerbung",
  "title" : "MII EX Mikrobio Färbung",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-09-12T16:17:49+00:00",
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
  "description" : "Staining technique used for the microscopic examination, coded with the same SNOMED CT hierarchy as the European laboratory coordination.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
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
      "path" : "Extension"
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-ex-mikrobio-faerbung"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "short" : "Eingesetzte Faerbung, z. B. 62777006 'Gram stain method'. Immer angeben, wenn gefaerbt wurde — auch dann, wenn der Untersuchungscode die Faerbung schon nennt, damit die Angabe unabhaengig von der Codewahl an einer Stelle auswertbar ist.",
      "min" : 1,
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "mustSupport" : true,
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/ValueSet/mii-vs-mikrobio-faerbung-snomed"
      }
    }]
  }
}

```
