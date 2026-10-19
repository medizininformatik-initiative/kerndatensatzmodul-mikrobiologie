# MII PR Microbiology Specimen - MII Implementation Guide Microbiology v2027.0.0-ballot2

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII PR Microbiology Specimen**

## Ressourcenprofil: MII PR Microbiology Specimen 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-probe | *Version*:2027.0.0-ballot2 |
| Active Stand: 2026-10-19 | *Maschinenlesbarer Name*:MII_PR_Mikrobio_Probe |

 
Specimen describes the material examined microbiologically. The profile derives from the biospecimen base profile of the MII Biobank module and adds the expectations of microbiological diagnostics. 

Probe beschreibt das mikrobiologisch untersuchte Material. Das Profil leitet von [MII_PR_Biobank_Specimen_Bioprobe_Core](https://simplifier.net/medizininformatikinitiative-modulbiobank/mii_pr_biobank_specimen_bioprobe_core) ab, einem Basisprofil, das dafür geschrieben ist, dass Module davon ableiten statt es direkt zu implementieren. `Observation.specimen` jedes Untersuchungsprofils dieses Moduls verweist darauf.

**Ballotfrage 1 — können Sie zu jedem Befund eine Specimen-Ressource liefern?** Jedes Untersuchungsprofil hier verlangt `Observation.specimen`. Die HL7 EU Lab Semantic Workgroup hält fest, dass die Probe immer ausdrücklich in einer Specimen-Ressource abzubilden ist, auch wenn der LOINC-Code sie bereits trägt — die Frage ist also die Erfüllbarkeit, nicht der Grundsatz. Aus der deutschen Laborpraxis kommt die Rückmeldung, dass sie häufig nicht erzeugt wird. Die Frage steht vollständig auf [Probe](probe.md).

### Probenart

`Specimen.type.coding:sct` behält die geerbte Bindung an das Probenart-ValueSet der Biobank. Es ist `descendent-of 123038009 |Specimen|` und trifft damit die mikrobiologischen Probenarten; ein eigenes ValueSet wäre eine Teilmenge ohne zusätzliche Aussage. Eine Lücke bleibt: Der Wurzelcode `123038009` selbst ist ausgeschlossen, „Probe, nicht näher bestimmt" also nicht ausdrückbar. Die Bindung ist extensible, der Fall bleibt damit eine Warnung und kein Fehler.

**Usages:**

* Refer to this Profile: [MII PR Microbiology General Determination (Identification)](StructureDefinition-mii-pr-mikrobio-allgemeine-bestimmung.md), [MII PR Microbiology General Culture](StructureDefinition-mii-pr-mikrobio-allgemeine-kultur.md), [MII PR Microbiology Antigen Antibody Quantitative](StructureDefinition-mii-pr-mikrobio-antigen-antikoerper-quantitativ.md), [MII PR Microbiology Avidity](StructureDefinition-mii-pr-mikrobio-aviditaet.md)... Show 15 more, [MII PR Microbiology Bartlett Score](StructureDefinition-mii-pr-mikrobio-bartlett-score.md), [MII PR Microbiology Ct Value](StructureDefinition-mii-pr-mikrobio-ct-wert.md), [MII PR Microbiology Susceptibility](StructureDefinition-mii-pr-mikrobio-empfindlichkeit.md), [MII PR Microbiology Colony Count](StructureDefinition-mii-pr-mikrobio-keimzahl.md), [MII PR Microbiology General Microscopy](StructureDefinition-mii-pr-mikrobio-mikroskopie.md), [MII PR Microbiology Molecular Pathogen Load](StructureDefinition-mii-pr-mikrobio-molekulare-pathogenlast.md), [MII PR Microbiology MRGN Class](StructureDefinition-mii-pr-mikrobio-mrgn-klasse.md), [MII PR Microbiology Nugent Score](StructureDefinition-mii-pr-mikrobio-nugent-score.md), [MII PR Microbiology Resistance Category Status](StructureDefinition-mii-pr-mikrobio-resistenzkategorie-status.md), [MII PR Microbiology Resistance Mechanisms Determinants](StructureDefinition-mii-pr-mikrobio-resistenzmechanismen-determinanten.md), [MII PR Microbiology Specific Determination](StructureDefinition-mii-pr-mikrobio-spezifische-bestimmung.md), [MII PR Microbiology Specific Microscopy](StructureDefinition-mii-pr-mikrobio-spezifische-mikroskopie.md), [MII PR Microbiology Titre](StructureDefinition-mii-pr-mikrobio-titer.md), [MII PR Microbiology Virulence Factor](StructureDefinition-mii-pr-mikrobio-virulenzfaktor.md) and [MII PR Microbiology Predicted Susceptibility](StructureDefinition-mii-pr-mikrobio-voraussichtliche-empfindlichkeit.md)
* Examples for this Profile: [Specimen/mii-exa-mikrobio-probe-katheterspitze](Specimen-mii-exa-mikrobio-probe-katheterspitze.md) and [Specimen/mii-exa-mikrobio-probe](Specimen-mii-exa-mikrobio-probe.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.medizininformatikinitiative.kerndatensatz.mikrobiologie|current/StructureDefinition/StructureDefinition-mii-pr-mikrobio-probe.json)

### Formale Ansichten des Profilinhalts

 [Beschreibung von Profilen, Differentials, Snapshots und deren Repräsentationen](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Schlüsselelemente-Tabelle](#tabs-key) 
*  [Differential-Tabelle](#tabs-diff) 
*  [Snapshot-Tabelle](#tabs-snap) 
*  [Statistiken/Referenzen](#tabs-summ) 
*  [Alle](#tabs-all) 

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [MII_PR_Biobank_Specimen_Bioprobe_Core](file:///home/runner/work/kerndatensatzmodul-biobank/kerndatensatzmodul-biobank/output/StructureDefinition-mii-pr-biobank-specimen-core.html) 

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [MII_PR_Biobank_Specimen_Bioprobe_Core](file:///home/runner/work/kerndatensatzmodul-biobank/kerndatensatzmodul-biobank/output/StructureDefinition-mii-pr-biobank-specimen-core.html) 

** Summary **

 **Schlüsselelemente-Ansicht** 

#### Terminology Bindings

#### Constraints

 **Differential-Ansicht** 

Diese Struktur ist abgeleitet von [MII_PR_Biobank_Specimen_Bioprobe_Core](file:///home/runner/work/kerndatensatzmodul-biobank/kerndatensatzmodul-biobank/output/StructureDefinition-mii-pr-biobank-specimen-core.html) 

 **Snapshot-AnsichtView** 

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [MII_PR_Biobank_Specimen_Bioprobe_Core](file:///home/runner/work/kerndatensatzmodul-biobank/kerndatensatzmodul-biobank/output/StructureDefinition-mii-pr-biobank-specimen-core.html) 

** Summary **

 

Weitere Repräsentationen des Profils: [CSV](../StructureDefinition-mii-pr-mikrobio-probe.csv), [Excel](../StructureDefinition-mii-pr-mikrobio-probe.xlsx), [Schematron](../StructureDefinition-mii-pr-mikrobio-probe.sch) 



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
  "version" : "2027.0.0-ballot2",
  "name" : "MII_PR_Mikrobio_Probe",
  "title" : "MII PR Microbiology Specimen",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-10-19T02:49:08+00:00",
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
  "description" : "Specimen describes the material examined microbiologically. The profile derives from the biospecimen base profile of the MII Biobank module and adds the expectations of microbiological diagnostics.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "purpose" : "This profile gives Observation.specimen of the microbiological investigation profiles a target profile and names the information that matters for microbiology.",
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
      "short" : "Specimen type. To be stated even when the material is already pre-coordinated in the LOINC code used — only then is the specimen type available in a structured form, independently of the investigation code."
    },
    {
      "id" : "Specimen.parent",
      "path" : "Specimen.parent",
      "short" : "Reference to the material from which this specimen was obtained — for instance an isolate from a primary specimen. Carries the chain from the primary specimen to the isolate to which susceptibility testing and resistance mechanisms refer."
    },
    {
      "id" : "Specimen.collection.collected[x]",
      "path" : "Specimen.collection.collected[x]",
      "short" : "Collection time. If it is unknown, Specimen.receivedTime can be documented instead; the parent, however, requires collected[x] mandatorily."
    },
    {
      "id" : "Specimen.processing",
      "path" : "Specimen.processing",
      "comment" : "Up to 2027.0.0-ballot.rc2 the parent mandatorily required the extension 'temperaturbedingungen' here, an obligation stemming from biospecimen storage with no relevance to microbiological processing. Since 2027.0.0-ballot it is 0..1 and limited to the storage-process slice. The staining technique is nevertheless stated not here but in Observation.extension[faerbung], as long as it remains open whether a Specimen resource is created at all."
    }]
  }
}

```
