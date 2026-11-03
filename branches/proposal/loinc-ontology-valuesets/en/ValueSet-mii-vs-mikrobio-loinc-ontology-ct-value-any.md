# MII VS Microbiology LOINC Ontology Ct Value Any - MII Implementation Guide Microbiology v2027.0.0-ballot2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII VS Microbiology LOINC Ontology Ct Value Any**

## ValueSet: MII VS Microbiology LOINC Ontology Ct Value Any (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/ValueSet/mii-vs-mikrobio-loinc-ontology-ct-value-any | *Version*:2027.0.0-ballot2 |
| Draft as of 2026-11-03 | *Computable Name*:MII_VS_Mikrobio_LOINC_Ontology_Ct_Value_Any |
| **Copyright/Legal**: This material includes SNOMED Clinical Terms® (SNOMED CT®) which is used by permission of SNOMED International. All rights reserved. SNOMED CT®, was originally created by The College of American Pathologists. SNOMED and SNOMED CT are registered trademarks of SNOMED International. Implementers of these artefacts must have the appropriate SNOMED CT Affiliate license. | |

 
Proposal: LOINC codes of the microbiology request 'Ct value: Ct value — all threshold-number observables (upper bound)', computed by ECL over the LOINC Ontology 2026-10-21. Every Threshold number observable, including human targets (RNase P control, TREC, SMN1). The difference to the query above is the non-microbiological remainder. Parts: LOINC enumeration (44, LOINC 2.83), LOINC Ontology observables without LOINC code (1), and the ECL as an intensional include. ECL: `<< 363787002 |Observable entity (observable entity)| : 370130000 |Property (attribute)| = 1268648001 |Threshold number (property) (qualifier value)|` 

 **References** 

This value set is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)

### Logical Definition (CLD)

 

### Expansion

No Expansion for this valueset (Unsupported Code System Version)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-mikrobio-loinc-ontology-ct-value-any",
  "url" : "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/ValueSet/mii-vs-mikrobio-loinc-ontology-ct-value-any",
  "version" : "2027.0.0-ballot2",
  "name" : "MII_VS_Mikrobio_LOINC_Ontology_Ct_Value_Any",
  "title" : "MII VS Microbiology LOINC Ontology Ct Value Any",
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
  "description" : "Proposal: LOINC codes of the microbiology request 'Ct value: Ct value — all threshold-number observables (upper bound)', computed by ECL over the LOINC Ontology 2026-10-21. Every Threshold number observable, including human targets (RNase P control, TREC, SMN1). The difference to the query above is the non-microbiological remainder. Parts: LOINC enumeration (44, LOINC 2.83), LOINC Ontology observables without LOINC code (1), and the ECL as an intensional include. ECL: `<< 363787002 |Observable entity (observable entity)| : 370130000 |Property (attribute)| = 1268648001 |Threshold number (property) (qualifier value)|`",
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
        "code" : "101178-2"
      },
      {
        "code" : "105765-2"
      },
      {
        "code" : "105767-8"
      },
      {
        "code" : "105770-2"
      },
      {
        "code" : "105771-0"
      },
      {
        "code" : "105772-8"
      },
      {
        "code" : "105774-4"
      },
      {
        "code" : "105775-1"
      },
      {
        "code" : "105776-9"
      },
      {
        "code" : "105796-7"
      },
      {
        "code" : "105797-5"
      },
      {
        "code" : "105798-3"
      },
      {
        "code" : "105800-7"
      },
      {
        "code" : "105802-3"
      },
      {
        "code" : "105803-1"
      },
      {
        "code" : "105805-6"
      },
      {
        "code" : "105806-4"
      },
      {
        "code" : "74038-1"
      },
      {
        "code" : "74039-9"
      },
      {
        "code" : "74040-7"
      },
      {
        "code" : "74423-5"
      },
      {
        "code" : "74424-3"
      },
      {
        "code" : "81305-5"
      },
      {
        "code" : "81308-9"
      },
      {
        "code" : "81309-7"
      },
      {
        "code" : "81320-4"
      },
      {
        "code" : "81321-2"
      },
      {
        "code" : "81325-3"
      },
      {
        "code" : "81326-1"
      },
      {
        "code" : "81327-9"
      },
      {
        "code" : "86316-7"
      },
      {
        "code" : "86317-5"
      },
      {
        "code" : "86700-2"
      },
      {
        "code" : "86701-0"
      },
      {
        "code" : "86702-8"
      },
      {
        "code" : "86731-7"
      },
      {
        "code" : "87394-3"
      },
      {
        "code" : "87395-0"
      },
      {
        "code" : "90321-1"
      },
      {
        "code" : "90886-3"
      },
      {
        "code" : "92002-5"
      },
      {
        "code" : "92006-6"
      },
      {
        "code" : "94745-7"
      },
      {
        "code" : "94746-5"
      }]
    },
    {
      "system" : "http://snomed.info/sct",
      "version" : "http://snomed.info/sct/11010000107/version/20261021",
      "concept" : [{
        "code" : "1268647006",
        "display" : "Cycle threshold for nucleic acid detection in specimen using real-time polymerase chain reaction (observable entity)"
      }]
    },
    {
      "system" : "http://snomed.info/sct",
      "version" : "http://snomed.info/sct/11010000107/version/20261021",
      "filter" : [{
        "property" : "constraint",
        "op" : "=",
        "value" : "<< 363787002 |Observable entity (observable entity)| : 370130000 |Property (attribute)| = 1268648001 |Threshold number (property) (qualifier value)|"
      }]
    }]
  }
}

```
