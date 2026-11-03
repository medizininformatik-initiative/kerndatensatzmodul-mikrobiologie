# MII VS Microbiology LOINC Ontology Resistant Organism Detection - MII Implementation Guide Microbiology v2027.0.0-ballot2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII VS Microbiology LOINC Ontology Resistant Organism Detection**

## ValueSet: MII VS Microbiology LOINC Ontology Resistant Organism Detection (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/ValueSet/mii-vs-mikrobio-loinc-ontology-resistant-organism-detection | *Version*:2027.0.0-ballot2 |
| Draft as of 2026-11-03 | *Computable Name*:MII_VS_Mikrobio_LOINC_Ontology_Resistant_Organism_Detection |
| **Copyright/Legal**: This material includes SNOMED Clinical Terms® (SNOMED CT®) which is used by permission of SNOMED International. All rights reserved. SNOMED CT®, was originally created by The College of American Pathologists. SNOMED and SNOMED CT are registered trademarks of SNOMED International. Implementers of these artefacts must have the appropriate SNOMED CT Affiliate license. | |

 

| | | |
| :--- | :--- | :--- |
| Proposal: LOINC codes of the microbiology request 'Resistant organisms and resistance mechanisms: Resistant-organism detection — presence/identity of an antimicrobial resistant organism', computed by ECL over the LOINC Ontology 2026-10-21. Threshold presence or identity where the organism (Component or Inheres in) is « 409793007 | Antimicrobial resistant bacteria | : MRSA, VRE, ESBL producers, carbapenem-resistant bacteria. Nucleic-acid codes such as 35492-8 (MRSA DNA) are NOT included because their Component is the DNA substance, which is not under the resistant-bacteria grouper. Parts: LOINC enumeration (16, LOINC 2.83), LOINC Ontology observables without LOINC code (0), and the ECL as an intensional include. ECL:`<< 363787002 |Observable entity (observable entity)| : 370130000 |Property (attribute)| = (118589004 |Threshold (property) (qualifier value)| OR 705057003 |Presence (property) (qualifier value)| OR 118584009 |Presence or identity (property) (qualifier value)|), (246093002 |Component (attribute)| = << 409793007 |Antimicrobial resistant bacteria (organism)| OR 704319004 |Inheres in (attribute)| = << 409793007 |Antimicrobial resistant bacteria (organism)|)` |

 

 **References** 

* [MII PR Microbiology LOINC Ontology Resistance mechanisms and determinants](StructureDefinition-mii-pr-mikrobio-loinc-ontology-resistenzmechanismen.md)

### Logical Definition (CLD)

 

### Expansion

No Expansion for this valueset (Unsupported Code System Version)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-mikrobio-loinc-ontology-resistant-organism-detection",
  "url" : "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/ValueSet/mii-vs-mikrobio-loinc-ontology-resistant-organism-detection",
  "version" : "2027.0.0-ballot2",
  "name" : "MII_VS_Mikrobio_LOINC_Ontology_Resistant_Organism_Detection",
  "title" : "MII VS Microbiology LOINC Ontology Resistant Organism Detection",
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
  "description" : "Proposal: LOINC codes of the microbiology request 'Resistant organisms and resistance mechanisms: Resistant-organism detection — presence/identity of an antimicrobial resistant organism', computed by ECL over the LOINC Ontology 2026-10-21. Threshold presence or identity where the organism (Component or Inheres in) is << 409793007 |Antimicrobial resistant bacteria|: MRSA, VRE, ESBL producers, carbapenem-resistant bacteria. Nucleic-acid codes such as 35492-8 (MRSA DNA) are NOT included because their Component is the DNA substance, which is not under the resistant-bacteria grouper. Parts: LOINC enumeration (16, LOINC 2.83), LOINC Ontology observables without LOINC code (0), and the ECL as an intensional include. ECL: `<< 363787002 |Observable entity (observable entity)| : 370130000 |Property (attribute)| = (118589004 |Threshold (property) (qualifier value)| OR 705057003 |Presence (property) (qualifier value)| OR 118584009 |Presence or identity (property) (qualifier value)|), (246093002 |Component (attribute)| = << 409793007 |Antimicrobial resistant bacteria (organism)| OR 704319004 |Inheres in (attribute)| = << 409793007 |Antimicrobial resistant bacteria (organism)|)`",
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
        "code" : "100907-5"
      },
      {
        "code" : "105904-7"
      },
      {
        "code" : "106044-1"
      },
      {
        "code" : "106046-6"
      },
      {
        "code" : "13316-5"
      },
      {
        "code" : "13317-3"
      },
      {
        "code" : "52969-3"
      },
      {
        "code" : "53572-4"
      },
      {
        "code" : "59150-3"
      },
      {
        "code" : "59151-1"
      },
      {
        "code" : "63480-8"
      },
      {
        "code" : "73834-4"
      },
      {
        "code" : "73836-9"
      },
      {
        "code" : "76081-9"
      },
      {
        "code" : "77924-9"
      },
      {
        "code" : "94151-8"
      }]
    },
    {
      "system" : "http://snomed.info/sct",
      "version" : "http://snomed.info/sct/11010000107/version/20261021",
      "filter" : [{
        "property" : "constraint",
        "op" : "=",
        "value" : "<< 363787002 |Observable entity (observable entity)| : 370130000 |Property (attribute)| = (118589004 |Threshold (property) (qualifier value)| OR 705057003 |Presence (property) (qualifier value)| OR 118584009 |Presence or identity (property) (qualifier value)|), (246093002 |Component (attribute)| = << 409793007 |Antimicrobial resistant bacteria (organism)| OR 704319004 |Inheres in (attribute)| = << 409793007 |Antimicrobial resistant bacteria (organism)|)"
      }]
    }]
  }
}

```
