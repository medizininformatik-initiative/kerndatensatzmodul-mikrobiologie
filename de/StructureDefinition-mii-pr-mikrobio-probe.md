# MII PR Mikrobio Probe - MII Implementation Guide Microbiology v2027.0.0-ballot.rc1

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII PR Mikrobio Probe**

## Ressourcenprofil: MII PR Mikrobio Probe 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-probe | *Version*:2027.0.0-ballot.rc1 |
| Active Stand: 2026-09-12 | *Maschinenlesbarer Name*:MII_PR_Mikrobio_Probe |

 
Probe beschreibt das mikrobiologisch untersuchte Material. Das Profil leitet vom Bioproben-Basisprofil der MII-Biobank ab und ergaenzt die Erwartungen der mikrobiologischen Diagnostik. 

Probe beschreibt das mikrobiologisch untersuchte Material. Das Profil leitet von [MII_PR_Biobank_Specimen_Bioprobe_Core](https://simplifier.net/medizininformatikinitiative-modulbiobank/mii_pr_biobank_specimen_bioprobe_core) ab, einem Basisprofil, das dafür geschrieben ist, dass Module davon ableiten statt es direkt zu implementieren. `Observation.specimen` jedes Untersuchungsprofils dieses Moduls verweist darauf.

**Ballotfrage 1 — können Sie zu jedem Befund eine Specimen-Ressource liefern?** Jedes Untersuchungsprofil hier verlangt `Observation.specimen`. Die HL7 EU Lab Semantic Workgroup hält fest, dass die Probe immer ausdrücklich in einer Specimen-Ressource abzubilden ist, auch wenn der LOINC-Code sie bereits trägt — die Frage ist also die Erfüllbarkeit, nicht der Grundsatz. Aus der deutschen Laborpraxis kommt die Rückmeldung, dass sie häufig nicht erzeugt wird. Die Frage steht vollständig auf [Probe](probe.md).

**Ballotfrage 3 — Pflicht-Temperaturbedingungen an `Specimen.processing`.** Das Basisprofil verlangt die Extension `temperaturbedingungen` an jedem `Specimen.processing`-Element. Für die mikrobiologische Aufarbeitung trägt sie keine Aussage, und ein abgeleitetes Profil kann sie nicht lockern. Die Frage steht vollständig auf [Probe](probe.md).

### Probenart

`Specimen.type.coding:sct` behält die geerbte Bindung an das Probenart-ValueSet der Biobank. Es ist `descendent-of 123038009 |Specimen|` und trifft damit die mikrobiologischen Probenarten; ein eigenes ValueSet wäre eine Teilmenge ohne zusätzliche Aussage. Eine Lücke bleibt: Der Wurzelcode `123038009` selbst ist ausgeschlossen, „Probe, nicht näher bestimmt" also nicht ausdrückbar. Die Bindung ist extensible, der Fall bleibt damit eine Warnung und kein Fehler.

**Usages:**

* Refer to this Profile: [MII PR Mikrobio Allgemeine Bestimmung (Identifizierung)](StructureDefinition-mii-pr-mikrobio-allgemeine-bestimmung.md), [MII PR Mikrobio Allgemeine Kultur](StructureDefinition-mii-pr-mikrobio-allgemeine-kultur.md), [MII PR Mikrobio Antigen Antikoerper Quantitativ](StructureDefinition-mii-pr-mikrobio-antigen-antikoerper-quantitativ.md), [MII PR Mikrobio Aviditaet](StructureDefinition-mii-pr-mikrobio-aviditaet.md)... Show 15 more, [MII PR Mikrobio Bartlett Score](StructureDefinition-mii-pr-mikrobio-bartlett-score.md), [MII PR Mikrobio CT Wert](StructureDefinition-mii-pr-mikrobio-ct-wert.md), [MII PR Mikrobio Empfindlichkeit](StructureDefinition-mii-pr-mikrobio-empfindlichkeit.md), [MII PR Mikrobio Keimzahl](StructureDefinition-mii-pr-mikrobio-keimzahl.md), [MII PR Mikrobio Allgemeine Mikroskopie](StructureDefinition-mii-pr-mikrobio-mikroskopie.md), [MII PR Mikrobio Molekulare Pathogenlast](StructureDefinition-mii-pr-mikrobio-molekulare-pathogenlast.md), [MII PR Mikrobio MRGN Klasse](StructureDefinition-mii-pr-mikrobio-mrgn-klasse.md), [MII PR Mikrobio Nugent Score](StructureDefinition-mii-pr-mikrobio-nugent-score.md), [MII PR Mikrobio Resistenzkategorie Status](StructureDefinition-mii-pr-mikrobio-resistenzkategorie-status.md), [MII PR Mikrobio Resistenzmechanismen Determinanten](StructureDefinition-mii-pr-mikrobio-resistenzmechanismen-determinanten.md), [MII PR Mikrobio Spezifische Bestimmung](StructureDefinition-mii-pr-mikrobio-spezifische-bestimmung.md), [MII PR Mikrobio Spezifische Mikroskopie](StructureDefinition-mii-pr-mikrobio-spezifische-mikroskopie.md), [MII PR Mikrobio Titer](StructureDefinition-mii-pr-mikrobio-titer.md), [MII PR Mikrobio Virulenzfaktor](StructureDefinition-mii-pr-mikrobio-virulenzfaktor.md) and [MII PR Mikrobio Voraussichtliche Empfindlichkeit](StructureDefinition-mii-pr-mikrobio-voraussichtliche-empfindlichkeit.md)
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

Diese Struktur ist abgeleitet von [MII_PR_Biobank_Specimen_Bioprobe_Core](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.biobank@2027.0.0-ballot.rc2&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore) 

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [MII_PR_Biobank_Specimen_Bioprobe_Core](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.biobank@2027.0.0-ballot.rc2&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore) 

** Summary **

 **Schlüsselelemente-Ansicht** 

#### Terminology Bindings

#### Constraints

 **Differential-Ansicht** 

Diese Struktur ist abgeleitet von [MII_PR_Biobank_Specimen_Bioprobe_Core](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.biobank@2027.0.0-ballot.rc2&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore) 

 **Snapshot-AnsichtView** 

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [MII_PR_Biobank_Specimen_Bioprobe_Core](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.biobank@2027.0.0-ballot.rc2&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore) 

** Summary **

 

Weitere Repräsentationen des Profils: [CSV](../StructureDefinition-mii-pr-mikrobio-probe.csv), [Excel](../StructureDefinition-mii-pr-mikrobio-probe.xlsx), [Schematron](../StructureDefinition-mii-pr-mikrobio-probe.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-pr-mikrobio-probe",
  "extension" : [{
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
  "version" : "2027.0.0-ballot.rc1",
  "name" : "MII_PR_Mikrobio_Probe",
  "title" : "MII PR Mikrobio Probe",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-09-12T17:28:38+00:00",
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
      "comment" : "Der Parent verlangt hier verpflichtend die Extension 'temperaturbedingungen'. Diese Pflicht stammt aus der Beschreibung von Lagerprozessen in der Biobank und traegt fuer die mikrobiologische Aufarbeitung nicht; ein abgeleitetes Profil kann sie nicht loesen. Sie ist als Ballotfrage 3 offen und mit dem Biobank-Modul zu klaeren. Solange sie besteht, wird die Faerbetechnik nicht hier, sondern in Observation.method angegeben."
    }]
  }
}

```
