# MII VS Microbiology LOINC Ontology General microscopy - MII Implementation Guide Microbiology v2027.0.0-ballot2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII VS Microbiology LOINC Ontology General microscopy**

## ValueSet: MII VS Microbiology LOINC Ontology General microscopy (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/ValueSet/mii-vs-mikrobio-loinc-ontology-allgemeine-mikroskopie | *Version*:2027.0.0-ballot2 |
| Draft as of 2026-11-03 | *Computable Name*:MII_VS_Mikrobio_LOINC_Ontology_Allgemeine_Mikroskopie |
| **Copyright/Legal**: This material includes SNOMED Clinical Terms® (SNOMED CT®) which is used by permission of SNOMED International. All rights reserved. SNOMED CT®, was originally created by The College of American Pathologists. SNOMED and SNOMED CT are registered trademarks of SNOMED International. Implementers of these artefacts must have the appropriate SNOMED CT Affiliate license. | |

 
Proposal: union of the request ValueSets that together cover the module profile MII_PR_Mikrobio_Allgemeine_Mikroskopie (General microscopy), each computed by ECL over the LOINC Ontology 2026-10-21: MII_VS_Mikrobio_LOINC_Ontology_General_Microscopy_By_Technique, MII_VS_Mikrobio_LOINC_Ontology_General_Microscopy_Finding_In_Specimen. 

 **References** 

* [MII PR Microbiology LOINC Ontology General microscopy](StructureDefinition-mii-pr-mikrobio-loinc-ontology-allgemeine-mikroskopie.md)

### Logical Definition (CLD)

 

### Expansion

No Expansion for this valueset (Unsupported Code System Version)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-mikrobio-loinc-ontology-allgemeine-mikroskopie",
  "url" : "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/ValueSet/mii-vs-mikrobio-loinc-ontology-allgemeine-mikroskopie",
  "version" : "2027.0.0-ballot2",
  "name" : "MII_VS_Mikrobio_LOINC_Ontology_Allgemeine_Mikroskopie",
  "title" : "MII VS Microbiology LOINC Ontology General microscopy",
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
  "description" : "Proposal: union of the request ValueSets that together cover the module profile MII_PR_Mikrobio_Allgemeine_Mikroskopie (General microscopy), each computed by ECL over the LOINC Ontology 2026-10-21: MII_VS_Mikrobio_LOINC_Ontology_General_Microscopy_By_Technique, MII_VS_Mikrobio_LOINC_Ontology_General_Microscopy_Finding_In_Specimen.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "purpose" : "Binding ValueSet for the derived profile MII_PR_Mikrobio_LOINC_Ontology_Allgemeine_Mikroskopie; accompanies ballot comments on 2027.0.0-ballot2. Generated, not hand-curated.",
  "copyright" : "This material includes SNOMED Clinical Terms® (SNOMED CT®) which is used by permission of SNOMED International. All rights reserved. SNOMED CT®, was originally created by The College of American Pathologists. SNOMED and SNOMED CT are registered trademarks of SNOMED International. Implementers of these artefacts must have the appropriate SNOMED CT Affiliate license.",
  "compose" : {
    "include" : [{
      "valueSet" : ["https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/ValueSet/mii-vs-mikrobio-loinc-ontology-general-microscopy-by-technique"]
    },
    {
      "valueSet" : ["https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/ValueSet/mii-vs-mikrobio-loinc-ontology-general-microscopy-in-specimen"]
    }]
  }
}

```
