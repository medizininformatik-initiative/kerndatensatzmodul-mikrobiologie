# MII VS Microbiology LOINC Ontology Specific determination - MII Implementation Guide Microbiology v2027.0.0-ballot2

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII VS Microbiology LOINC Ontology Specific determination**

## ValueSet: MII VS Microbiology LOINC Ontology Specific determination (Experimentell) 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/ValueSet/mii-vs-mikrobio-loinc-ontology-spezifische-bestimmung | *Version*:2027.0.0-ballot2 |
| Draft Stand: 2026-11-03 | *Maschinenlesbarer Name*:MII_VS_Mikrobio_LOINC_Ontology_Spezifische_Bestimmung |
| **Copyright/Rechtliches**: This material includes SNOMED Clinical Terms® (SNOMED CT®) which is used by permission of SNOMED International. All rights reserved. SNOMED CT®, was originally created by The College of American Pathologists. SNOMED and SNOMED CT are registered trademarks of SNOMED International. Implementers of these artefacts must have the appropriate SNOMED CT Affiliate license. | |

 
Proposal: union of the request ValueSets that together cover the module profile MII_PR_Mikrobio_Spezifische_Bestimmung (Specific determination), each computed by ECL over the LOINC Ontology 2026-10-21: MII_VS_Mikrobio_LOINC_Ontology_NAA_Detection_Any_Technique, MII_VS_Mikrobio_LOINC_Ontology_Organism_Specific_Culture_Detection, MII_VS_Mikrobio_LOINC_Ontology_Antigen_Detection_Threshold. 

 **References** 

* [MII PR Microbiology LOINC Ontology Specific determination](StructureDefinition-mii-pr-mikrobio-loinc-ontology-spezifische-bestimmung.md)

### Logical Definition (CLD)

 

### Expansion

No Expansion for this valueset (Unsupported Code System Version)

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-mikrobio-loinc-ontology-spezifische-bestimmung",
  "url" : "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/ValueSet/mii-vs-mikrobio-loinc-ontology-spezifische-bestimmung",
  "version" : "2027.0.0-ballot2",
  "name" : "MII_VS_Mikrobio_LOINC_Ontology_Spezifische_Bestimmung",
  "title" : "MII VS Microbiology LOINC Ontology Specific determination",
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
  "description" : "Proposal: union of the request ValueSets that together cover the module profile MII_PR_Mikrobio_Spezifische_Bestimmung (Specific determination), each computed by ECL over the LOINC Ontology 2026-10-21: MII_VS_Mikrobio_LOINC_Ontology_NAA_Detection_Any_Technique, MII_VS_Mikrobio_LOINC_Ontology_Organism_Specific_Culture_Detection, MII_VS_Mikrobio_LOINC_Ontology_Antigen_Detection_Threshold.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "purpose" : "Binding ValueSet for the derived profile MII_PR_Mikrobio_LOINC_Ontology_Spezifische_Bestimmung; accompanies ballot comments on 2027.0.0-ballot2. Generated, not hand-curated.",
  "copyright" : "This material includes SNOMED Clinical Terms® (SNOMED CT®) which is used by permission of SNOMED International. All rights reserved. SNOMED CT®, was originally created by The College of American Pathologists. SNOMED and SNOMED CT are registered trademarks of SNOMED International. Implementers of these artefacts must have the appropriate SNOMED CT Affiliate license.",
  "compose" : {
    "include" : [{
      "valueSet" : ["https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/ValueSet/mii-vs-mikrobio-loinc-ontology-naa-detection-any-technique"]
    },
    {
      "valueSet" : ["https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/ValueSet/mii-vs-mikrobio-loinc-ontology-specific-culture-detection"]
    },
    {
      "valueSet" : ["https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/ValueSet/mii-vs-mikrobio-loinc-ontology-antigen-detection-threshold"]
    }]
  }
}

```
