# MII VS Microbiology LOINC Ontology Colony Count By Culture - MII Implementation Guide Microbiology v2027.0.0-ballot2

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII VS Microbiology LOINC Ontology Colony Count By Culture**

## ValueSet: MII VS Microbiology LOINC Ontology Colony Count By Culture (Experimentell) 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/ValueSet/mii-vs-mikrobio-loinc-ontology-colony-count-by-culture | *Version*:2027.0.0-ballot2 |
| Draft Stand: 2026-11-03 | *Maschinenlesbarer Name*:MII_VS_Mikrobio_LOINC_Ontology_Colony_Count_By_Culture |
| **Copyright/Rechtliches**: This material includes SNOMED Clinical Terms® (SNOMED CT®) which is used by permission of SNOMED International. All rights reserved. SNOMED CT®, was originally created by The College of American Pathologists. SNOMED and SNOMED CT are registered trademarks of SNOMED International. Implementers of these artefacts must have the appropriate SNOMED CT Affiliate license. | |

 
Proposal: LOINC codes of the microbiology request 'Colony count: Colony count — with culture technique asserted', computed by ECL over the LOINC Ontology 2026-10-21. Same, restricted to observables that assert a culture technique (viable counts). Zero on 2026-10-21: counts are modelled without technique. Parts: LOINC enumeration (4, LOINC 2.83), LOINC Ontology observables without LOINC code (0), and the ECL as an intensional include. ECL: `<< 363787002 |Observable entity (observable entity)| : 370130000 |Property (attribute)| = (118550005 |Number concentration (property) (qualifier value)| OR 705056007 |Logarithmic number concentration (property) (qualifier value)|), (246093002 |Component (attribute)| = << 410607006 |Organism (organism)| OR 704319004 |Inheres in (attribute)| = << 410607006 |Organism (organism)|), 246501002 |Technique (attribute)| = << 703725008 |Culture technique (qualifier value)|` 

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
  "id" : "mii-vs-mikrobio-loinc-ontology-colony-count-by-culture",
  "url" : "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/ValueSet/mii-vs-mikrobio-loinc-ontology-colony-count-by-culture",
  "version" : "2027.0.0-ballot2",
  "name" : "MII_VS_Mikrobio_LOINC_Ontology_Colony_Count_By_Culture",
  "title" : "MII VS Microbiology LOINC Ontology Colony Count By Culture",
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
  "description" : "Proposal: LOINC codes of the microbiology request 'Colony count: Colony count — with culture technique asserted', computed by ECL over the LOINC Ontology 2026-10-21. Same, restricted to observables that assert a culture technique (viable counts). Zero on 2026-10-21: counts are modelled without technique. Parts: LOINC enumeration (4, LOINC 2.83), LOINC Ontology observables without LOINC code (0), and the ECL as an intensional include. ECL: `<< 363787002 |Observable entity (observable entity)| : 370130000 |Property (attribute)| = (118550005 |Number concentration (property) (qualifier value)| OR 705056007 |Logarithmic number concentration (property) (qualifier value)|), (246093002 |Component (attribute)| = << 410607006 |Organism (organism)| OR 704319004 |Inheres in (attribute)| = << 410607006 |Organism (organism)|), 246501002 |Technique (attribute)| = << 703725008 |Culture technique (qualifier value)|`",
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
        "code" : "100906-7"
      },
      {
        "code" : "105610-0"
      },
      {
        "code" : "106018-5"
      },
      {
        "code" : "20696-1"
      }]
    },
    {
      "system" : "http://snomed.info/sct",
      "version" : "http://snomed.info/sct/11010000107/version/20261021",
      "filter" : [{
        "property" : "constraint",
        "op" : "=",
        "value" : "<< 363787002 |Observable entity (observable entity)| : 370130000 |Property (attribute)| = (118550005 |Number concentration (property) (qualifier value)| OR 705056007 |Logarithmic number concentration (property) (qualifier value)|), (246093002 |Component (attribute)| = << 410607006 |Organism (organism)| OR 704319004 |Inheres in (attribute)| = << 410607006 |Organism (organism)|), 246501002 |Technique (attribute)| = << 703725008 |Culture technique (qualifier value)|"
      }]
    }]
  }
}

```
