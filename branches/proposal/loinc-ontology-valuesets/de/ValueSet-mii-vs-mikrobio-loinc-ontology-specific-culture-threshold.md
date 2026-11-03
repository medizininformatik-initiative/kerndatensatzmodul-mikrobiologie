# MII VS Microbiology LOINC Ontology Specific Culture Threshold - MII Implementation Guide Microbiology v2027.0.0-ballot2

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII VS Microbiology LOINC Ontology Specific Culture Threshold**

## ValueSet: MII VS Microbiology LOINC Ontology Specific Culture Threshold (Experimentell) 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/ValueSet/mii-vs-mikrobio-loinc-ontology-specific-culture-threshold | *Version*:2027.0.0-ballot2 |
| Draft Stand: 2026-11-03 | *Maschinenlesbarer Name*:MII_VS_Mikrobio_LOINC_Ontology_Specific_Culture_Threshold |
| **Copyright/Rechtliches**: This material includes SNOMED Clinical Terms® (SNOMED CT®) which is used by permission of SNOMED International. All rights reserved. SNOMED CT®, was originally created by The College of American Pathologists. SNOMED and SNOMED CT are registered trademarks of SNOMED International. Implementers of these artefacts must have the appropriate SNOMED CT Affiliate license. | |

 
Proposal: LOINC codes of the microbiology request 'General culture: Targeted culture — threshold presence of a named organism by culture technique', computed by ECL over the LOINC Ontology 2026-10-21. Culture requests that already name the organism (MRSA screening, VRE, Salmonella …): ordinal presence/threshold of a named organism by culture. In the 2027 module these are 'specific determination' with method = culture rather than 'general culture'. Contains 13316-5. Parts: LOINC enumeration (203, LOINC 2.83), LOINC Ontology observables without LOINC code (1), and the ECL as an intensional include. ECL: `<< 363787002 |Observable entity (observable entity)| : 370130000 |Property (attribute)| = (118589004 |Threshold (property) (qualifier value)| OR 705057003 |Presence (property) (qualifier value)|), 246501002 |Technique (attribute)| = << 703725008 |Culture technique (qualifier value)|, (704319004 |Inheres in (attribute)| = << 410607006 |Organism (organism)| OR 246093002 |Component (attribute)| = << 410607006 |Organism (organism)|)` 

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
  "id" : "mii-vs-mikrobio-loinc-ontology-specific-culture-threshold",
  "url" : "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/ValueSet/mii-vs-mikrobio-loinc-ontology-specific-culture-threshold",
  "version" : "2027.0.0-ballot2",
  "name" : "MII_VS_Mikrobio_LOINC_Ontology_Specific_Culture_Threshold",
  "title" : "MII VS Microbiology LOINC Ontology Specific Culture Threshold",
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
  "description" : "Proposal: LOINC codes of the microbiology request 'General culture: Targeted culture — threshold presence of a named organism by culture technique', computed by ECL over the LOINC Ontology 2026-10-21. Culture requests that already name the organism (MRSA screening, VRE, Salmonella ...): ordinal presence/threshold of a named organism by culture. In the 2027 module these are 'specific determination' with method = culture rather than 'general culture'. Contains 13316-5. Parts: LOINC enumeration (203, LOINC 2.83), LOINC Ontology observables without LOINC code (1), and the ECL as an intensional include. ECL: `<< 363787002 |Observable entity (observable entity)| : 370130000 |Property (attribute)| = (118589004 |Threshold (property) (qualifier value)| OR 705057003 |Presence (property) (qualifier value)|), 246501002 |Technique (attribute)| = << 703725008 |Culture technique (qualifier value)|, (704319004 |Inheres in (attribute)| = << 410607006 |Organism (organism)| OR 246093002 |Component (attribute)| = << 410607006 |Organism (organism)|)`",
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
        "code" : "100897-8"
      },
      {
        "code" : "100908-3"
      },
      {
        "code" : "100909-1"
      },
      {
        "code" : "100911-7"
      },
      {
        "code" : "104343-9"
      },
      {
        "code" : "104347-0"
      },
      {
        "code" : "104349-6"
      },
      {
        "code" : "104351-2"
      },
      {
        "code" : "104371-0"
      },
      {
        "code" : "104372-8"
      },
      {
        "code" : "104373-6"
      },
      {
        "code" : "104374-4"
      },
      {
        "code" : "105619-1"
      },
      {
        "code" : "105622-5"
      },
      {
        "code" : "106044-1"
      },
      {
        "code" : "106046-6"
      },
      {
        "code" : "10670-8"
      },
      {
        "code" : "10851-4"
      },
      {
        "code" : "10860-5"
      },
      {
        "code" : "11255-7"
      },
      {
        "code" : "11267-2"
      },
      {
        "code" : "11268-0"
      },
      {
        "code" : "112888-3"
      },
      {
        "code" : "11469-4"
      },
      {
        "code" : "11550-1"
      },
      {
        "code" : "13316-5"
      },
      {
        "code" : "13317-3"
      },
      {
        "code" : "13921-2"
      },
      {
        "code" : "14127-5"
      },
      {
        "code" : "14129-1"
      },
      {
        "code" : "14461-8"
      },
      {
        "code" : "14462-6"
      },
      {
        "code" : "14463-4"
      },
      {
        "code" : "14464-2"
      },
      {
        "code" : "14465-9"
      },
      {
        "code" : "14467-5"
      },
      {
        "code" : "14838-7"
      },
      {
        "code" : "15388-2"
      },
      {
        "code" : "16134-9"
      },
      {
        "code" : "16291-7"
      },
      {
        "code" : "16483-0"
      },
      {
        "code" : "16676-9"
      },
      {
        "code" : "17656-0"
      },
      {
        "code" : "17852-5"
      },
      {
        "code" : "18482-0"
      },
      {
        "code" : "18483-8"
      },
      {
        "code" : "19054-6"
      },
      {
        "code" : "20752-2"
      },
      {
        "code" : "20762-1"
      },
      {
        "code" : "20869-4"
      },
      {
        "code" : "20870-2"
      },
      {
        "code" : "20871-0"
      },
      {
        "code" : "20898-3"
      },
      {
        "code" : "20899-1"
      },
      {
        "code" : "21184-7"
      },
      {
        "code" : "21284-5"
      },
      {
        "code" : "23602-6"
      },
      {
        "code" : "30099-6"
      },
      {
        "code" : "30122-6"
      },
      {
        "code" : "32675-1"
      },
      {
        "code" : "33676-8"
      },
      {
        "code" : "33677-6"
      },
      {
        "code" : "33685-9"
      },
      {
        "code" : "33686-7"
      },
      {
        "code" : "33694-1"
      },
      {
        "code" : "33695-8"
      },
      {
        "code" : "34201-4"
      },
      {
        "code" : "34891-2"
      },
      {
        "code" : "38377-8"
      },
      {
        "code" : "38382-8"
      },
      {
        "code" : "43879-6"
      },
      {
        "code" : "43890-3"
      },
      {
        "code" : "43896-0"
      },
      {
        "code" : "43925-7"
      },
      {
        "code" : "44015-6"
      },
      {
        "code" : "44090-9"
      },
      {
        "code" : "44463-8"
      },
      {
        "code" : "44464-6"
      },
      {
        "code" : "44465-3"
      },
      {
        "code" : "44466-1"
      },
      {
        "code" : "44467-9"
      },
      {
        "code" : "44468-7"
      },
      {
        "code" : "44484-4"
      },
      {
        "code" : "44485-1"
      },
      {
        "code" : "44486-9"
      },
      {
        "code" : "44487-7"
      },
      {
        "code" : "44488-5"
      },
      {
        "code" : "44489-3"
      },
      {
        "code" : "44490-1"
      },
      {
        "code" : "44797-9"
      },
      {
        "code" : "44799-5"
      },
      {
        "code" : "44800-1"
      },
      {
        "code" : "45093-2"
      },
      {
        "code" : "45094-0"
      },
      {
        "code" : "45095-7"
      },
      {
        "code" : "45096-5"
      },
      {
        "code" : "46454-5"
      },
      {
        "code" : "48310-7"
      },
      {
        "code" : "48741-3"
      },
      {
        "code" : "48872-6"
      },
      {
        "code" : "48874-2"
      },
      {
        "code" : "48875-9"
      },
      {
        "code" : "50941-4"
      },
      {
        "code" : "51723-5"
      },
      {
        "code" : "52968-5"
      },
      {
        "code" : "52969-3"
      },
      {
        "code" : "53572-4"
      },
      {
        "code" : "546-2"
      },
      {
        "code" : "547-0"
      },
      {
        "code" : "548-8"
      },
      {
        "code" : "549-6"
      },
      {
        "code" : "55097-0"
      },
      {
        "code" : "55098-8"
      },
      {
        "code" : "55099-6"
      },
      {
        "code" : "55100-2"
      },
      {
        "code" : "562-9"
      },
      {
        "code" : "563-7"
      },
      {
        "code" : "581-9"
      },
      {
        "code" : "582-7"
      },
      {
        "code" : "583-5"
      },
      {
        "code" : "5835-4"
      },
      {
        "code" : "5836-2"
      },
      {
        "code" : "5837-0"
      },
      {
        "code" : "5838-8"
      },
      {
        "code" : "584-3"
      },
      {
        "code" : "585-0"
      },
      {
        "code" : "586-8"
      },
      {
        "code" : "587-6"
      },
      {
        "code" : "59065-3"
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
        "code" : "6349-5"
      },
      {
        "code" : "64412-0"
      },
      {
        "code" : "6595-3"
      },
      {
        "code" : "688-2"
      },
      {
        "code" : "690-8"
      },
      {
        "code" : "691-6"
      },
      {
        "code" : "692-4"
      },
      {
        "code" : "693-2"
      },
      {
        "code" : "694-0"
      },
      {
        "code" : "695-7"
      },
      {
        "code" : "696-5"
      },
      {
        "code" : "697-3"
      },
      {
        "code" : "698-1"
      },
      {
        "code" : "70850-3"
      },
      {
        "code" : "70851-1"
      },
      {
        "code" : "72607-5"
      },
      {
        "code" : "76081-9"
      },
      {
        "code" : "76626-1"
      },
      {
        "code" : "77495-0"
      },
      {
        "code" : "77496-8"
      },
      {
        "code" : "77924-9"
      },
      {
        "code" : "80367-6"
      },
      {
        "code" : "80368-4"
      },
      {
        "code" : "81316-2"
      },
      {
        "code" : "82298-1"
      },
      {
        "code" : "82300-5"
      },
      {
        "code" : "82301-3"
      },
      {
        "code" : "82302-1"
      },
      {
        "code" : "82303-9"
      },
      {
        "code" : "82304-7"
      },
      {
        "code" : "86319-1"
      },
      {
        "code" : "86322-5"
      },
      {
        "code" : "86581-6"
      },
      {
        "code" : "87241-6"
      },
      {
        "code" : "87242-4"
      },
      {
        "code" : "87445-3"
      },
      {
        "code" : "87948-6"
      },
      {
        "code" : "87950-2"
      },
      {
        "code" : "87952-8"
      },
      {
        "code" : "87953-6"
      },
      {
        "code" : "87958-5"
      },
      {
        "code" : "87982-5"
      },
      {
        "code" : "88135-9"
      },
      {
        "code" : "88136-7"
      },
      {
        "code" : "88161-5"
      },
      {
        "code" : "88527-7"
      },
      {
        "code" : "88564-0"
      },
      {
        "code" : "88584-8"
      },
      {
        "code" : "88623-4"
      },
      {
        "code" : "88625-9"
      },
      {
        "code" : "89599-5"
      },
      {
        "code" : "89632-4"
      },
      {
        "code" : "89648-0"
      },
      {
        "code" : "90002-7"
      },
      {
        "code" : "90275-9"
      },
      {
        "code" : "90285-8"
      },
      {
        "code" : "90301-3"
      },
      {
        "code" : "91780-7"
      },
      {
        "code" : "91781-5"
      },
      {
        "code" : "91782-3"
      },
      {
        "code" : "91783-1"
      },
      {
        "code" : "91784-9"
      },
      {
        "code" : "91785-6"
      },
      {
        "code" : "91786-4"
      },
      {
        "code" : "91787-2"
      },
      {
        "code" : "91788-0"
      },
      {
        "code" : "91789-8"
      },
      {
        "code" : "91790-6"
      },
      {
        "code" : "94763-0"
      },
      {
        "code" : "97513-6"
      },
      {
        "code" : "97529-2"
      }]
    },
    {
      "system" : "http://snomed.info/sct",
      "version" : "http://snomed.info/sct/11010000107/version/20261021",
      "concept" : [{
        "code" : "364061000119103",
        "display" : "Presence of Streptococcus agalactiae in genital system by organism specific culture (observable entity)"
      }]
    },
    {
      "system" : "http://snomed.info/sct",
      "version" : "http://snomed.info/sct/11010000107/version/20261021",
      "filter" : [{
        "property" : "constraint",
        "op" : "=",
        "value" : "<< 363787002 |Observable entity (observable entity)| : 370130000 |Property (attribute)| = (118589004 |Threshold (property) (qualifier value)| OR 705057003 |Presence (property) (qualifier value)|), 246501002 |Technique (attribute)| = << 703725008 |Culture technique (qualifier value)|, (704319004 |Inheres in (attribute)| = << 410607006 |Organism (organism)| OR 246093002 |Component (attribute)| = << 410607006 |Organism (organism)|)"
      }]
    }]
  }
}

```
