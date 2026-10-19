# MII VS Microbiology Data Absent Reason - MII Implementation Guide Microbiology v2027.0.0-ballot2

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII VS Microbiology Data Absent Reason**

## ValueSet: MII VS Microbiology Data Absent Reason 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/ValueSet/mii-vs-mikrobio-data-absent-reason | *Version*:2027.0.0-ballot2 |
| Active Stand: 2026-10-19 | *Maschinenlesbarer Name*:MII_VS_Mikrobio_Data_Absent_Reason |

 
Reasons for a missing investigation result. Supplements the FHIR base codes with the indeterminable result that was previously coded via value[x]. 

 **References** 

* [MII PR Microbiology General Determination (Identification)](StructureDefinition-mii-pr-mikrobio-allgemeine-bestimmung.md)
* [MII PR Microbiology General Culture](StructureDefinition-mii-pr-mikrobio-allgemeine-kultur.md)
* [MII PR Microbiology Antigen Antibody Quantitative](StructureDefinition-mii-pr-mikrobio-antigen-antikoerper-quantitativ.md)
* [MII PR Microbiology Avidity](StructureDefinition-mii-pr-mikrobio-aviditaet.md)
* [MII PR Microbiology Bartlett Score](StructureDefinition-mii-pr-mikrobio-bartlett-score.md)
* [MII PR Microbiology Ct Value](StructureDefinition-mii-pr-mikrobio-ct-wert.md)
* [MII PR Microbiology Susceptibility](StructureDefinition-mii-pr-mikrobio-empfindlichkeit.md)
* [MII PR Microbiology Colony Count](StructureDefinition-mii-pr-mikrobio-keimzahl.md)
* [MII PR Microbiology General Microscopy](StructureDefinition-mii-pr-mikrobio-mikroskopie.md)
* [MII PR Microbiology Molecular Pathogen Load](StructureDefinition-mii-pr-mikrobio-molekulare-pathogenlast.md)
* [MII PR Microbiology MRGN Class](StructureDefinition-mii-pr-mikrobio-mrgn-klasse.md)
* [MII PR Microbiology Nugent Score](StructureDefinition-mii-pr-mikrobio-nugent-score.md)
* [MII PR Microbiology Resistance Category Status](StructureDefinition-mii-pr-mikrobio-resistenzkategorie-status.md)
* [MII PR Microbiology Resistance Mechanisms Determinants](StructureDefinition-mii-pr-mikrobio-resistenzmechanismen-determinanten.md)
* [MII PR Microbiology Specific Determination](StructureDefinition-mii-pr-mikrobio-spezifische-bestimmung.md)
* [MII PR Microbiology Specific Microscopy](StructureDefinition-mii-pr-mikrobio-spezifische-mikroskopie.md)
* [MII PR Microbiology Titre](StructureDefinition-mii-pr-mikrobio-titer.md)
* [MII PR Microbiology Virulence Factor](StructureDefinition-mii-pr-mikrobio-virulenzfaktor.md)
* [MII PR Microbiology Predicted Susceptibility](StructureDefinition-mii-pr-mikrobio-voraussichtliche-empfindlichkeit.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-mikrobio-data-absent-reason",
  "url" : "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/ValueSet/mii-vs-mikrobio-data-absent-reason",
  "version" : "2027.0.0-ballot2",
  "name" : "MII_VS_Mikrobio_Data_Absent_Reason",
  "title" : "MII VS Microbiology Data Absent Reason",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-10-19T02:33:36+00:00",
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
  "description" : "Reasons for a missing investigation result. Supplements the FHIR base codes with the indeterminable result that was previously coded via value[x].",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "compose" : {
    "include" : [{
      "valueSet" : ["http://hl7.org/fhir/ValueSet/data-absent-reason"]
    },
    {
      "system" : "http://snomed.info/sct",
      "version" : "http://snomed.info/sct/900000000000207008/version/20260701",
      "concept" : [{
        "code" : "82334004",
        "display" : "Indeterminate (qualifier value)"
      }]
    }]
  }
}

```
