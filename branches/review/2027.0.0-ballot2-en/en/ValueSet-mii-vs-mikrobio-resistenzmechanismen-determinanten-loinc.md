# MII VS Microbiology Resistance Mechanisms Determinants [LOINC] - MII Implementation Guide Microbiology v2027.0.0-ballot2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII VS Microbiology Resistance Mechanisms Determinants [LOINC]**

## ValueSet: MII VS Microbiology Resistance Mechanisms Determinants [LOINC] 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/ValueSet/mii-vs-mikrobio-resistenzmechanismen-determinanten-loinc | *Version*:2027.0.0-ballot2 |
| Active as of 2026-10-19 | *Computable Name*:MII_VS_Mikrobio_Resistenzmechanismen_Determinanten_LOINC |

 
Test ValueSet for resistance mechanisms and determinants: LOINC codes for the detection of resistance genes, resistance proteins and functional resistance tests. 

 **References** 

* [MII PR Microbiology Resistance Mechanisms Determinants](StructureDefinition-mii-pr-mikrobio-resistenzmechanismen-determinanten.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-mikrobio-resistenzmechanismen-determinanten-loinc",
  "url" : "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/ValueSet/mii-vs-mikrobio-resistenzmechanismen-determinanten-loinc",
  "version" : "2027.0.0-ballot2",
  "name" : "MII_VS_Mikrobio_Resistenzmechanismen_Determinanten_LOINC",
  "title" : "MII VS Microbiology Resistance Mechanisms Determinants [LOINC]",
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
  "description" : "Test ValueSet for resistance mechanisms and determinants: LOINC codes for the detection of resistance genes, resistance proteins and functional resistance tests.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "http://loinc.org",
      "version" : "2.82",
      "filter" : [{
        "property" : "PROPERTY",
        "op" : "=",
        "value" : "LP217195-9"
      },
      {
        "property" : "CLASS",
        "op" : "=",
        "value" : "LP7755-4"
      },
      {
        "property" : "STATUS",
        "op" : "=",
        "value" : "ACTIVE"
      }]
    },
    {
      "system" : "http://loinc.org",
      "version" : "2.82",
      "concept" : [{
        "code" : "86930-5",
        "display" : "Carbapenemase [Presence] in Isolate"
      },
      {
        "code" : "101673-2",
        "display" : "KPC carbapenemase [Presence] in Isolate by Rapid immunoassay"
      },
      {
        "code" : "101675-7",
        "display" : "IMP Carbapenemase [Presence] in Isolate by Rapid immunoassay"
      },
      {
        "code" : "101677-3",
        "display" : "NDM Carbapenemase [Presence] in Isolate by Rapid immunoassay"
      },
      {
        "code" : "101676-5",
        "display" : "VIM Carbapenemase [Presence] in Isolate by Rapid immunoassay"
      },
      {
        "code" : "101674-0",
        "display" : "OXA-48-like carbapenemase [Presence] in Isolate by Rapid immunoassay"
      }]
    }],
    "exclude" : [{
      "system" : "http://loinc.org",
      "version" : "2.82",
      "concept" : [{
        "code" : "92246-8",
        "display" : "Microorganism resistance mutation detected [Presence] by Molecular method"
      },
      {
        "code" : "108153-8",
        "display" : "Genetic determinants of antimicrobial resistance [Presence] in Specimen by NAA with non-probe detection"
      },
      {
        "code" : "35492-8",
        "display" : "Methicillin resistant Staphylococcus aureus (MRSA) DNA [Presence] in Specimen by NAA with probe detection"
      }]
    }]
  }
}

```
