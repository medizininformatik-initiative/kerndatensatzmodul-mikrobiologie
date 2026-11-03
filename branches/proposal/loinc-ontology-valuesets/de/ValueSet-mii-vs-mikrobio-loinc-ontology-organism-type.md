# MII VS Microbiology LOINC Ontology Organism Type - MII Implementation Guide Microbiology v2027.0.0-ballot2

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII VS Microbiology LOINC Ontology Organism Type**

## ValueSet: MII VS Microbiology LOINC Ontology Organism Type (Experimentell) 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/ValueSet/mii-vs-mikrobio-loinc-ontology-organism-type | *Version*:2027.0.0-ballot2 |
| Draft Stand: 2026-11-03 | *Maschinenlesbarer Name*:MII_VS_Mikrobio_LOINC_Ontology_Organism_Type |
| **Copyright/Rechtliches**: This material includes SNOMED Clinical Terms® (SNOMED CT®) which is used by permission of SNOMED International. All rights reserved. SNOMED CT®, was originally created by The College of American Pathologists. SNOMED and SNOMED CT are registered trademarks of SNOMED International. Implementers of these artefacts must have the appropriate SNOMED CT Affiliate license. | |

 
Proposal: LOINC codes of the microbiology request 'General determination: Typing — type of an organism (serotype, genotype, biotype)', computed by ECL over the LOINC Ontology 2026-10-21. Property = Type with an organism in 'Inheres in': serotyping, HBV/HCV genotype, biotype of an isolate. Sits between determination and susceptibility in the 2027 module (no own profile). Parts: LOINC enumeration (21, LOINC 2.83), LOINC Ontology observables without LOINC code (1), and the ECL as an intensional include. ECL: `<< 363787002 |Observable entity (observable entity)| : 370130000 |Property (attribute)| = 410656007 |Type (property) (qualifier value)|, 704319004 |Inheres in (attribute)| = << 410607006 |Organism (organism)|` 

 **References** 

This value set is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)

### Logical Definition (CLD)

 

### Expansion

No Expansion for this valueset (Unsupported Code System Version)

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-mikrobio-loinc-ontology-organism-type",
  "url" : "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/ValueSet/mii-vs-mikrobio-loinc-ontology-organism-type",
  "version" : "2027.0.0-ballot2",
  "name" : "MII_VS_Mikrobio_LOINC_Ontology_Organism_Type",
  "title" : "MII VS Microbiology LOINC Ontology Organism Type",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-11-03",
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
  "description" : "Proposal: LOINC codes of the microbiology request 'General determination: Typing — type of an organism (serotype, genotype, biotype)', computed by ECL over the LOINC Ontology 2026-10-21. Property = Type with an organism in 'Inheres in': serotyping, HBV/HCV genotype, biotype of an isolate. Sits between determination and susceptibility in the 2027 module (no own profile). Parts: LOINC enumeration (21, LOINC 2.83), LOINC Ontology observables without LOINC code (1), and the ECL as an intensional include. ECL: `<< 363787002 |Observable entity (observable entity)| : 370130000 |Property (attribute)| = 410656007 |Type (property) (qualifier value)|, 704319004 |Inheres in (attribute)| = << 410607006 |Organism (organism)|`",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "purpose" : "Guidance for binding Observation.code of the MII microbiology request profiles to a computably defined LOINC set; accompanies ballot comments on 2027.0.0-ballot2. Generated, not hand-curated.",
  "copyright" : "This material includes SNOMED Clinical Terms® (SNOMED CT®) which is used by permission of SNOMED International. All rights reserved. SNOMED CT®, was originally created by The College of American Pathologists. SNOMED and SNOMED CT are registered trademarks of SNOMED International. Implementers of these artefacts must have the appropriate SNOMED CT Affiliate license.",
  "compose" : {
    "include" : [{
      "system" : "http://loinc.org",
      "version" : "2.83",
      "concept" : [{
        "code" : "59846-6"
      },
      {
        "code" : "60528-7"
      },
      {
        "code" : "60546-9"
      },
      {
        "code" : "61112-9"
      },
      {
        "code" : "65756-9"
      },
      {
        "code" : "72412-0"
      },
      {
        "code" : "72413-8"
      },
      {
        "code" : "72482-3"
      },
      {
        "code" : "72483-1"
      },
      {
        "code" : "72484-9"
      },
      {
        "code" : "73658-7"
      },
      {
        "code" : "73659-5"
      },
      {
        "code" : "73666-0"
      },
      {
        "code" : "73671-0"
      },
      {
        "code" : "73672-8"
      },
      {
        "code" : "73673-6"
      },
      {
        "code" : "73702-3"
      },
      {
        "code" : "73733-8"
      },
      {
        "code" : "82512-5"
      },
      {
        "code" : "86732-5"
      },
      {
        "code" : "87962-7"
      }]
    },
    {
      "system" : "http://snomed.info/sct",
      "version" : "http://snomed.info/sct/11010000107/version/20261021",
      "concept" : [{
        "code" : "1285113001",
        "display" : "Type of antimicrobial resistant organism (observable entity)"
      }]
    },
    {
      "system" : "http://snomed.info/sct",
      "version" : "http://snomed.info/sct/11010000107/version/20261021",
      "filter" : [{
        "property" : "constraint",
        "op" : "=",
        "value" : "<< 363787002 |Observable entity (observable entity)| : 370130000 |Property (attribute)| = 410656007 |Type (property) (qualifier value)|, 704319004 |Inheres in (attribute)| = << 410607006 |Organism (organism)|"
      }]
    }]
  }
}

```
