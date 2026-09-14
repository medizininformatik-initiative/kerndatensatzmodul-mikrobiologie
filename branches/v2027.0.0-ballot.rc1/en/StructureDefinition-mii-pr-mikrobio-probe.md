# MII PR Mikrobio Probe - MII Implementation Guide Microbiology v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII PR Mikrobio Probe**

## Resource Profile: MII PR Mikrobio Probe 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-probe | *Version*:2027.0.0-ballot |
| Active as of 2026-09-14 | *Computable Name*:MII_PR_Mikrobio_Probe |

 
Probe beschreibt das mikrobiologisch untersuchte Material. Das Profil leitet vom Bioproben-Basisprofil der MII-Biobank ab und ergaenzt die Erwartungen der mikrobiologischen Diagnostik. 

Specimen describes the material examined microbiologically. The profile derives from [MII_PR_Biobank_Specimen_Bioprobe_Core](https://simplifier.net/medizininformatikinitiative-modulbiobank/mii_pr_biobank_specimen_bioprobe_core), a base profile written so that modules derive from it rather than implement it directly. `Observation.specimen` of every investigation profile in this module references it.

**Ballot question 1 — can you supply a Specimen resource for every result?** Every investigation profile here requires `Observation.specimen`. The HL7 EU Lab Semantic Workgroup states that the specimen shall always be represented explicitly in a Specimen resource, even where the LOINC code already carries it, so the question is deliverability rather than principle. Feedback from German laboratory practice is that one is frequently not produced. Full statement of the question on [Specimen](probe.md).

### Specimen type

`Specimen.type.coding:sct` keeps the inherited binding to the biobank specimen type set. It is `descendent-of 123038009 |Specimen|` and therefore covers the microbiological specimen types; an own value set would be a subset without additional meaning. One gap: the root code `123038009` itself is excluded, so "specimen, unspecified" cannot be expressed. The binding is extensible, so the case remains a warning rather than an error.

**Usages:**

* Refer to this Profile: [MII PR Mikrobio Allgemeine Bestimmung (Identifizierung)](StructureDefinition-mii-pr-mikrobio-allgemeine-bestimmung.md), [MII PR Mikrobio Allgemeine Kultur](StructureDefinition-mii-pr-mikrobio-allgemeine-kultur.md), [MII PR Mikrobio Antigen Antikoerper Quantitativ](StructureDefinition-mii-pr-mikrobio-antigen-antikoerper-quantitativ.md), [MII PR Mikrobio Aviditaet](StructureDefinition-mii-pr-mikrobio-aviditaet.md)... Show 15 more, [MII PR Mikrobio Bartlett Score](StructureDefinition-mii-pr-mikrobio-bartlett-score.md), [MII PR Mikrobio CT Wert](StructureDefinition-mii-pr-mikrobio-ct-wert.md), [MII PR Mikrobio Empfindlichkeit](StructureDefinition-mii-pr-mikrobio-empfindlichkeit.md), [MII PR Mikrobio Keimzahl](StructureDefinition-mii-pr-mikrobio-keimzahl.md), [MII PR Mikrobio Allgemeine Mikroskopie](StructureDefinition-mii-pr-mikrobio-mikroskopie.md), [MII PR Mikrobio Molekulare Pathogenlast](StructureDefinition-mii-pr-mikrobio-molekulare-pathogenlast.md), [MII PR Mikrobio MRGN Klasse](StructureDefinition-mii-pr-mikrobio-mrgn-klasse.md), [MII PR Mikrobio Nugent Score](StructureDefinition-mii-pr-mikrobio-nugent-score.md), [MII PR Mikrobio Resistenzkategorie Status](StructureDefinition-mii-pr-mikrobio-resistenzkategorie-status.md), [MII PR Mikrobio Resistenzmechanismen Determinanten](StructureDefinition-mii-pr-mikrobio-resistenzmechanismen-determinanten.md), [MII PR Mikrobio Spezifische Bestimmung](StructureDefinition-mii-pr-mikrobio-spezifische-bestimmung.md), [MII PR Mikrobio Spezifische Mikroskopie](StructureDefinition-mii-pr-mikrobio-spezifische-mikroskopie.md), [MII PR Mikrobio Titer](StructureDefinition-mii-pr-mikrobio-titer.md), [MII PR Mikrobio Virulenzfaktor](StructureDefinition-mii-pr-mikrobio-virulenzfaktor.md) and [MII PR Mikrobio Voraussichtliche Empfindlichkeit](StructureDefinition-mii-pr-mikrobio-voraussichtliche-empfindlichkeit.md)
* Examples for this Profile: [Specimen/mii-exa-mikrobio-probe-katheterspitze](Specimen-mii-exa-mikrobio-probe-katheterspitze.md) and [Specimen/mii-exa-mikrobio-probe](Specimen-mii-exa-mikrobio-probe.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.medizininformatikinitiative.kerndatensatz.mikrobiologie|current/StructureDefinition/StructureDefinition-mii-pr-mikrobio-probe.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots, and their representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-mii-pr-mikrobio-probe.csv), [Excel](../StructureDefinition-mii-pr-mikrobio-probe.xlsx), [Schematron](../StructureDefinition-mii-pr-mikrobio-probe.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-pr-mikrobio-probe",
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
  }],
  "url" : "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-probe",
  "version" : "2027.0.0-ballot",
  "name" : "MII_PR_Mikrobio_Probe",
  "title" : "MII PR Mikrobio Probe",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-09-14T13:24:58+00:00",
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
  "description" : "Probe beschreibt das mikrobiologisch untersuchte Material. Das Profil leitet vom Bioproben-Basisprofil der MII-Biobank ab und ergaenzt die Erwartungen der mikrobiologischen Diagnostik.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "purpose" : "Dieses Profil gibt Observation.specimen der mikrobiologischen Untersuchungsprofile ein Zielprofil und benennt die fuer die Mikrobiologie tragenden Angaben.",
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Specimen",
  "baseDefinition" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Specimen",
      "path" : "Specimen"
    },
    {
      "id" : "Specimen.type",
      "path" : "Specimen.type",
      "short" : "Probenart. Auch dann anzugeben, wenn das Material im verwendeten LOINC-Code bereits praekoordiniert ist — nur so steht die Probenart strukturiert und unabhaengig vom Untersuchungscode zur Verfuegung."
    },
    {
      "id" : "Specimen.parent",
      "path" : "Specimen.parent",
      "short" : "Verweis auf das Material, aus dem diese Probe gewonnen wurde — etwa ein Isolat aus einer Primaerprobe. Traegt die Kette von der Primaerprobe zum Isolat, auf das sich Empfindlichkeitstestung und Resistenzmechanismen beziehen."
    },
    {
      "id" : "Specimen.collection.collected[x]",
      "path" : "Specimen.collection.collected[x]",
      "short" : "Entnahmezeitpunkt. Ist er nicht bekannt, kann stattdessen Specimen.receivedTime dokumentiert werden; der Parent verlangt collected[x] jedoch verpflichtend."
    },
    {
      "id" : "Specimen.processing",
      "path" : "Specimen.processing",
      "comment" : "Bis 2027.0.0-ballot.rc2 verlangte der Parent hier verpflichtend die Extension 'temperaturbedingungen', eine Pflicht aus der Lagerung von Bioproben ohne Aussage fuer die mikrobiologische Aufarbeitung. Seit 2027.0.0-ballot ist sie 0..1 und auf den Lagerprozess-Slice begrenzt. Die Faerbetechnik wird trotzdem nicht hier, sondern in Observation.extension[faerbung] angegeben, solange offen ist, ob ueberhaupt eine Specimen-Ressource entsteht."
    }]
  }
}

```
