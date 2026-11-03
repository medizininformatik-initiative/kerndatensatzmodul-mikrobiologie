# MII VS Microbiology LOINC Ontology Susceptibility Genotype Predicted - MII Implementation Guide Microbiology v2027.0.0-ballot2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII VS Microbiology LOINC Ontology Susceptibility Genotype Predicted**

## ValueSet: MII VS Microbiology LOINC Ontology Susceptibility Genotype Predicted (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/ValueSet/mii-vs-mikrobio-loinc-ontology-susceptibility-genotype-predicted | *Version*:2027.0.0-ballot2 |
| Draft as of 2026-11-03 | *Computable Name*:MII_VS_Mikrobio_LOINC_Ontology_Susceptibility_Genotype_Predicted |
| **Copyright/Legal**: This material includes SNOMED Clinical Terms® (SNOMED CT®) which is used by permission of SNOMED International. All rights reserved. SNOMED CT®, was originally created by The College of American Pathologists. SNOMED and SNOMED CT are registered trademarks of SNOMED International. Implementers of these artefacts must have the appropriate SNOMED CT Affiliate license. | |

 
Proposal: LOINC codes of the microbiology request 'Susceptibility: Predicted susceptibility — by genotype determination technique', computed by ECL over the LOINC Ontology 2026-10-21. Genotypic prediction of susceptibility (HIV, HBV, HCV, M. tuberculosis drug resistance mutations). The LOINC filter METHOD_TYP = Genotyping maps to Technique = Genotype determination technique. Parts: LOINC enumeration (81, LOINC 2.83), LOINC Ontology observables without LOINC code (0), and the ECL as an intensional include. ECL: `<< 363787002 |Observable entity (observable entity)| : 370130000 |Property (attribute)| = 118588007 |Susceptibility (property) (qualifier value)|, 246501002 |Technique (attribute)| = << 708060009 |Genotype determination technique (qualifier value)|` 

 **References** 

* [MII PR Microbiology LOINC Ontology Predicted susceptibility](StructureDefinition-mii-pr-mikrobio-loinc-ontology-voraussichtliche-empfindlichkeit.md)

### Logical Definition (CLD)

 

### Expansion

No Expansion for this valueset (Unsupported Code System Version)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-mikrobio-loinc-ontology-susceptibility-genotype-predicted",
  "url" : "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/ValueSet/mii-vs-mikrobio-loinc-ontology-susceptibility-genotype-predicted",
  "version" : "2027.0.0-ballot2",
  "name" : "MII_VS_Mikrobio_LOINC_Ontology_Susceptibility_Genotype_Predicted",
  "title" : "MII VS Microbiology LOINC Ontology Susceptibility Genotype Predicted",
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
  "description" : "Proposal: LOINC codes of the microbiology request 'Susceptibility: Predicted susceptibility — by genotype determination technique', computed by ECL over the LOINC Ontology 2026-10-21. Genotypic prediction of susceptibility (HIV, HBV, HCV, M. tuberculosis drug resistance mutations). The LOINC filter METHOD_TYP = Genotyping maps to Technique = Genotype determination technique. Parts: LOINC enumeration (81, LOINC 2.83), LOINC Ontology observables without LOINC code (0), and the ECL as an intensional include. ECL: `<< 363787002 |Observable entity (observable entity)| : 370130000 |Property (attribute)| = 118588007 |Susceptibility (property) (qualifier value)|, 246501002 |Technique (attribute)| = << 708060009 |Genotype determination technique (qualifier value)|`",
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
        "code" : "103958-5"
      },
      {
        "code" : "103959-3"
      },
      {
        "code" : "103960-1"
      },
      {
        "code" : "106742-0"
      },
      {
        "code" : "30282-8"
      },
      {
        "code" : "30283-6"
      },
      {
        "code" : "30284-4"
      },
      {
        "code" : "30285-1"
      },
      {
        "code" : "30286-9"
      },
      {
        "code" : "30287-7"
      },
      {
        "code" : "30288-5"
      },
      {
        "code" : "30289-3"
      },
      {
        "code" : "30290-1"
      },
      {
        "code" : "30291-9"
      },
      {
        "code" : "30292-7"
      },
      {
        "code" : "30293-5"
      },
      {
        "code" : "30294-3"
      },
      {
        "code" : "30295-0"
      },
      {
        "code" : "30297-6"
      },
      {
        "code" : "41031-6"
      },
      {
        "code" : "41396-3"
      },
      {
        "code" : "41402-9"
      },
      {
        "code" : "41403-7"
      },
      {
        "code" : "42317-8"
      },
      {
        "code" : "43736-8"
      },
      {
        "code" : "43737-6"
      },
      {
        "code" : "52749-9"
      },
      {
        "code" : "55091-3"
      },
      {
        "code" : "56791-7"
      },
      {
        "code" : "56792-5"
      },
      {
        "code" : "60440-5"
      },
      {
        "code" : "68463-9"
      },
      {
        "code" : "72525-9"
      },
      {
        "code" : "72526-7"
      },
      {
        "code" : "72839-4"
      },
      {
        "code" : "72853-5"
      },
      {
        "code" : "72854-3"
      },
      {
        "code" : "72856-8"
      },
      {
        "code" : "72857-6"
      },
      {
        "code" : "72858-4"
      },
      {
        "code" : "72859-2"
      },
      {
        "code" : "72860-0"
      },
      {
        "code" : "73574-6"
      },
      {
        "code" : "75029-9"
      },
      {
        "code" : "82376-5"
      },
      {
        "code" : "82377-3"
      },
      {
        "code" : "82378-1"
      },
      {
        "code" : "82379-9"
      },
      {
        "code" : "82382-3"
      },
      {
        "code" : "82520-8"
      },
      {
        "code" : "82521-6"
      },
      {
        "code" : "82522-4"
      },
      {
        "code" : "82523-2"
      },
      {
        "code" : "89480-8"
      },
      {
        "code" : "89481-6"
      },
      {
        "code" : "89482-4"
      },
      {
        "code" : "89483-2"
      },
      {
        "code" : "89484-0"
      },
      {
        "code" : "89485-7"
      },
      {
        "code" : "89487-3"
      },
      {
        "code" : "89488-1"
      },
      {
        "code" : "89489-9"
      },
      {
        "code" : "89490-7"
      },
      {
        "code" : "89491-5"
      },
      {
        "code" : "90080-3"
      },
      {
        "code" : "91897-9"
      },
      {
        "code" : "92241-9"
      },
      {
        "code" : "92242-7"
      },
      {
        "code" : "92255-9"
      },
      {
        "code" : "92733-5"
      },
      {
        "code" : "92734-3"
      },
      {
        "code" : "92735-0"
      },
      {
        "code" : "96107-8"
      },
      {
        "code" : "96108-6"
      },
      {
        "code" : "96109-4"
      },
      {
        "code" : "96110-2"
      },
      {
        "code" : "96111-0"
      },
      {
        "code" : "96112-8"
      },
      {
        "code" : "96113-6"
      },
      {
        "code" : "96114-4"
      },
      {
        "code" : "96566-5"
      }]
    },
    {
      "system" : "http://snomed.info/sct",
      "version" : "http://snomed.info/sct/11010000107/version/20261021",
      "filter" : [{
        "property" : "constraint",
        "op" : "=",
        "value" : "<< 363787002 |Observable entity (observable entity)| : 370130000 |Property (attribute)| = 118588007 |Susceptibility (property) (qualifier value)|, 246501002 |Technique (attribute)| = << 708060009 |Genotype determination technique (qualifier value)|"
      }]
    }]
  }
}

```
