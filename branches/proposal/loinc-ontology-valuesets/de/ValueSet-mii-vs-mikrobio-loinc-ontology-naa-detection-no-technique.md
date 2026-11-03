# MII VS Microbiology LOINC Ontology NAA Detection No Technique - MII Implementation Guide Microbiology v2027.0.0-ballot2

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII VS Microbiology LOINC Ontology NAA Detection No Technique**

## ValueSet: MII VS Microbiology LOINC Ontology NAA Detection No Technique (Experimentell) 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/ValueSet/mii-vs-mikrobio-loinc-ontology-naa-detection-no-technique | *Version*:2027.0.0-ballot2 |
| Draft Stand: 2026-11-03 | *Maschinenlesbarer Name*:MII_VS_Mikrobio_LOINC_Ontology_NAA_Detection_No_Technique |
| **Copyright/Rechtliches**: This material includes SNOMED Clinical Terms® (SNOMED CT®) which is used by permission of SNOMED International. All rights reserved. SNOMED CT®, was originally created by The College of American Pathologists. SNOMED and SNOMED CT are registered trademarks of SNOMED International. Implementers of these artefacts must have the appropriate SNOMED CT Affiliate license. | |

 
Proposal: LOINC codes of the microbiology request 'Specific determination: Nucleic-acid detection — no technique modelled', computed by ECL over the LOINC Ontology 2026-10-21. The technique-free subset (LOINC METHOD_TYP 'non-probe.amp.tar' and method-less codes). Only reachable with the ECL cardinality [0..0] on Technique. Parts: LOINC enumeration (283, LOINC 2.83), LOINC Ontology observables without LOINC code (5), and the ECL as an intensional include. ECL: `<< 363787002 |Observable entity (observable entity)| : 370130000 |Property (attribute)| = (118589004 |Threshold (property) (qualifier value)| OR 705057003 |Presence (property) (qualifier value)| OR 118584009 |Presence or identity (property) (qualifier value)|), 246093002 |Component (attribute)| = << 117174000 |Nucleic acid sequence with relative specificity for microorganism (substance)|, [0..0] 246501002 |Technique (attribute)| = *` 

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
  "id" : "mii-vs-mikrobio-loinc-ontology-naa-detection-no-technique",
  "url" : "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/ValueSet/mii-vs-mikrobio-loinc-ontology-naa-detection-no-technique",
  "version" : "2027.0.0-ballot2",
  "name" : "MII_VS_Mikrobio_LOINC_Ontology_NAA_Detection_No_Technique",
  "title" : "MII VS Microbiology LOINC Ontology NAA Detection No Technique",
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
  "description" : "Proposal: LOINC codes of the microbiology request 'Specific determination: Nucleic-acid detection — no technique modelled', computed by ECL over the LOINC Ontology 2026-10-21. The technique-free subset (LOINC METHOD_TYP 'non-probe.amp.tar' and method-less codes). Only reachable with the ECL cardinality [0..0] on Technique. Parts: LOINC enumeration (283, LOINC 2.83), LOINC Ontology observables without LOINC code (5), and the ECL as an intensional include. ECL: `<< 363787002 |Observable entity (observable entity)| : 370130000 |Property (attribute)| = (118589004 |Threshold (property) (qualifier value)| OR 705057003 |Presence (property) (qualifier value)| OR 118584009 |Presence or identity (property) (qualifier value)|), 246093002 |Component (attribute)| = << 117174000 |Nucleic acid sequence with relative specificity for microorganism (substance)|, [0..0] 246501002 |Technique (attribute)| = *`",
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
        "code" : "100973-7"
      },
      {
        "code" : "100974-5"
      },
      {
        "code" : "101284-8"
      },
      {
        "code" : "101286-3"
      },
      {
        "code" : "101287-1"
      },
      {
        "code" : "101289-7"
      },
      {
        "code" : "101290-5"
      },
      {
        "code" : "101292-1"
      },
      {
        "code" : "101293-9"
      },
      {
        "code" : "101294-7"
      },
      {
        "code" : "101295-4"
      },
      {
        "code" : "101296-2"
      },
      {
        "code" : "101298-8"
      },
      {
        "code" : "101299-6"
      },
      {
        "code" : "101300-2"
      },
      {
        "code" : "101302-8"
      },
      {
        "code" : "101303-6"
      },
      {
        "code" : "101305-1"
      },
      {
        "code" : "101306-9"
      },
      {
        "code" : "101362-2"
      },
      {
        "code" : "101363-0"
      },
      {
        "code" : "101364-8"
      },
      {
        "code" : "101365-5"
      },
      {
        "code" : "101366-3"
      },
      {
        "code" : "101367-1"
      },
      {
        "code" : "101368-9"
      },
      {
        "code" : "101371-3"
      },
      {
        "code" : "101372-1"
      },
      {
        "code" : "101373-9"
      },
      {
        "code" : "103199-6"
      },
      {
        "code" : "103559-1"
      },
      {
        "code" : "103717-5"
      },
      {
        "code" : "103719-1"
      },
      {
        "code" : "103721-7"
      },
      {
        "code" : "103722-5"
      },
      {
        "code" : "103723-3"
      },
      {
        "code" : "104110-2"
      },
      {
        "code" : "104111-0"
      },
      {
        "code" : "104359-5"
      },
      {
        "code" : "104451-0"
      },
      {
        "code" : "105067-3"
      },
      {
        "code" : "105094-7"
      },
      {
        "code" : "105881-7"
      },
      {
        "code" : "105882-5"
      },
      {
        "code" : "105885-8"
      },
      {
        "code" : "105886-6"
      },
      {
        "code" : "105899-9"
      },
      {
        "code" : "105901-3"
      },
      {
        "code" : "105905-4"
      },
      {
        "code" : "10650-0"
      },
      {
        "code" : "10652-6"
      },
      {
        "code" : "106581-2"
      },
      {
        "code" : "106582-0"
      },
      {
        "code" : "106583-8"
      },
      {
        "code" : "106584-6"
      },
      {
        "code" : "106585-3"
      },
      {
        "code" : "106586-1"
      },
      {
        "code" : "106587-9"
      },
      {
        "code" : "106588-7"
      },
      {
        "code" : "106589-5"
      },
      {
        "code" : "106591-1"
      },
      {
        "code" : "106592-9"
      },
      {
        "code" : "106593-7"
      },
      {
        "code" : "106594-5"
      },
      {
        "code" : "106595-2"
      },
      {
        "code" : "106596-0"
      },
      {
        "code" : "106597-8"
      },
      {
        "code" : "106598-6"
      },
      {
        "code" : "106599-4"
      },
      {
        "code" : "106600-0"
      },
      {
        "code" : "106601-8"
      },
      {
        "code" : "106602-6"
      },
      {
        "code" : "106603-4"
      },
      {
        "code" : "106604-2"
      },
      {
        "code" : "106605-9"
      },
      {
        "code" : "106606-7"
      },
      {
        "code" : "106607-5"
      },
      {
        "code" : "106608-3"
      },
      {
        "code" : "106609-1"
      },
      {
        "code" : "106611-7"
      },
      {
        "code" : "106612-5"
      },
      {
        "code" : "107018-4"
      },
      {
        "code" : "107361-8"
      },
      {
        "code" : "107362-6"
      },
      {
        "code" : "107363-4"
      },
      {
        "code" : "107364-2"
      },
      {
        "code" : "107365-9"
      },
      {
        "code" : "107366-7"
      },
      {
        "code" : "107367-5"
      },
      {
        "code" : "107368-3"
      },
      {
        "code" : "108164-5"
      },
      {
        "code" : "108165-2"
      },
      {
        "code" : "108168-6"
      },
      {
        "code" : "108169-4"
      },
      {
        "code" : "108170-2"
      },
      {
        "code" : "108171-0"
      },
      {
        "code" : "108172-8"
      },
      {
        "code" : "108173-6"
      },
      {
        "code" : "108174-4"
      },
      {
        "code" : "108175-1"
      },
      {
        "code" : "108176-9"
      },
      {
        "code" : "108177-7"
      },
      {
        "code" : "108179-3"
      },
      {
        "code" : "108180-1"
      },
      {
        "code" : "108181-9"
      },
      {
        "code" : "108182-7"
      },
      {
        "code" : "108183-5"
      },
      {
        "code" : "108184-3"
      },
      {
        "code" : "108185-0"
      },
      {
        "code" : "108186-8"
      },
      {
        "code" : "10846-4"
      },
      {
        "code" : "10847-2"
      },
      {
        "code" : "111556-7"
      },
      {
        "code" : "111557-5"
      },
      {
        "code" : "111558-3"
      },
      {
        "code" : "111559-1"
      },
      {
        "code" : "111560-9"
      },
      {
        "code" : "111562-5"
      },
      {
        "code" : "111563-3"
      },
      {
        "code" : "111564-1"
      },
      {
        "code" : "111565-8"
      },
      {
        "code" : "111566-6"
      },
      {
        "code" : "112628-3"
      },
      {
        "code" : "112629-1"
      },
      {
        "code" : "112630-9"
      },
      {
        "code" : "112631-7"
      },
      {
        "code" : "112873-5"
      },
      {
        "code" : "112874-3"
      },
      {
        "code" : "112875-0"
      },
      {
        "code" : "112876-8"
      },
      {
        "code" : "112877-6"
      },
      {
        "code" : "112878-4"
      },
      {
        "code" : "112879-2"
      },
      {
        "code" : "112880-0"
      },
      {
        "code" : "112881-8"
      },
      {
        "code" : "112882-6"
      },
      {
        "code" : "112883-4"
      },
      {
        "code" : "112884-2"
      },
      {
        "code" : "112885-9"
      },
      {
        "code" : "112892-5"
      },
      {
        "code" : "112893-3"
      },
      {
        "code" : "11551-9"
      },
      {
        "code" : "16280-0"
      },
      {
        "code" : "19052-0"
      },
      {
        "code" : "27922-4"
      },
      {
        "code" : "47359-5"
      },
      {
        "code" : "63475-8"
      },
      {
        "code" : "82160-3"
      },
      {
        "code" : "82161-1"
      },
      {
        "code" : "82162-9"
      },
      {
        "code" : "82163-7"
      },
      {
        "code" : "82164-5"
      },
      {
        "code" : "82165-2"
      },
      {
        "code" : "82166-0"
      },
      {
        "code" : "82167-8"
      },
      {
        "code" : "82168-6"
      },
      {
        "code" : "82169-4"
      },
      {
        "code" : "82170-2"
      },
      {
        "code" : "82171-0"
      },
      {
        "code" : "82172-8"
      },
      {
        "code" : "82173-6"
      },
      {
        "code" : "82174-4"
      },
      {
        "code" : "82176-9"
      },
      {
        "code" : "82177-7"
      },
      {
        "code" : "82178-5"
      },
      {
        "code" : "82182-7"
      },
      {
        "code" : "82183-5"
      },
      {
        "code" : "82184-3"
      },
      {
        "code" : "82185-0"
      },
      {
        "code" : "82186-8"
      },
      {
        "code" : "82187-6"
      },
      {
        "code" : "82188-4"
      },
      {
        "code" : "82189-2"
      },
      {
        "code" : "82190-0"
      },
      {
        "code" : "82191-8"
      },
      {
        "code" : "82192-6"
      },
      {
        "code" : "82193-4"
      },
      {
        "code" : "82194-2"
      },
      {
        "code" : "82198-3"
      },
      {
        "code" : "82201-5"
      },
      {
        "code" : "82202-3"
      },
      {
        "code" : "82204-9"
      },
      {
        "code" : "82205-6"
      },
      {
        "code" : "82206-4"
      },
      {
        "code" : "82207-2"
      },
      {
        "code" : "82208-0"
      },
      {
        "code" : "82212-2"
      },
      {
        "code" : "85761-5"
      },
      {
        "code" : "85763-1"
      },
      {
        "code" : "85765-6"
      },
      {
        "code" : "85766-4"
      },
      {
        "code" : "85767-2"
      },
      {
        "code" : "85768-0"
      },
      {
        "code" : "85769-8"
      },
      {
        "code" : "85770-6"
      },
      {
        "code" : "85771-4"
      },
      {
        "code" : "85772-2"
      },
      {
        "code" : "85773-0"
      },
      {
        "code" : "85774-8"
      },
      {
        "code" : "85775-5"
      },
      {
        "code" : "85776-3"
      },
      {
        "code" : "85777-1"
      },
      {
        "code" : "85778-9"
      },
      {
        "code" : "85779-7"
      },
      {
        "code" : "85780-5"
      },
      {
        "code" : "85781-3"
      },
      {
        "code" : "85782-1"
      },
      {
        "code" : "85783-9"
      },
      {
        "code" : "85784-7"
      },
      {
        "code" : "85785-4"
      },
      {
        "code" : "88889-1"
      },
      {
        "code" : "89996-3"
      },
      {
        "code" : "92957-0"
      },
      {
        "code" : "92963-8"
      },
      {
        "code" : "92964-6"
      },
      {
        "code" : "92967-9"
      },
      {
        "code" : "92969-5"
      },
      {
        "code" : "92976-0"
      },
      {
        "code" : "92977-8"
      },
      {
        "code" : "92978-6"
      },
      {
        "code" : "92979-4"
      },
      {
        "code" : "92986-9"
      },
      {
        "code" : "92987-7"
      },
      {
        "code" : "93438-0"
      },
      {
        "code" : "93439-8"
      },
      {
        "code" : "93856-3"
      },
      {
        "code" : "94479-3"
      },
      {
        "code" : "94480-1"
      },
      {
        "code" : "94481-9"
      },
      {
        "code" : "94482-7"
      },
      {
        "code" : "94483-5"
      },
      {
        "code" : "94484-3"
      },
      {
        "code" : "94485-0"
      },
      {
        "code" : "94486-8"
      },
      {
        "code" : "94565-9"
      },
      {
        "code" : "94581-6"
      },
      {
        "code" : "94582-4"
      },
      {
        "code" : "94584-0"
      },
      {
        "code" : "95608-6"
      },
      {
        "code" : "95764-7"
      },
      {
        "code" : "95765-4"
      },
      {
        "code" : "95766-2"
      },
      {
        "code" : "96301-7"
      },
      {
        "code" : "96302-5"
      },
      {
        "code" : "96304-1"
      },
      {
        "code" : "96305-8"
      },
      {
        "code" : "96306-6"
      },
      {
        "code" : "96308-2"
      },
      {
        "code" : "96310-8"
      },
      {
        "code" : "96311-6"
      },
      {
        "code" : "96312-4"
      },
      {
        "code" : "96313-2"
      },
      {
        "code" : "97151-5"
      },
      {
        "code" : "97205-9"
      },
      {
        "code" : "97206-7"
      },
      {
        "code" : "97610-0"
      },
      {
        "code" : "97611-8"
      },
      {
        "code" : "97612-6"
      },
      {
        "code" : "97613-4"
      },
      {
        "code" : "97616-7"
      },
      {
        "code" : "97617-5"
      },
      {
        "code" : "97618-3"
      },
      {
        "code" : "97619-1"
      },
      {
        "code" : "97620-9"
      },
      {
        "code" : "97621-7"
      },
      {
        "code" : "97622-5"
      },
      {
        "code" : "97623-3"
      },
      {
        "code" : "97625-8"
      },
      {
        "code" : "97626-6"
      },
      {
        "code" : "97627-4"
      },
      {
        "code" : "97628-2"
      },
      {
        "code" : "97629-0"
      },
      {
        "code" : "97630-8"
      },
      {
        "code" : "97631-6"
      },
      {
        "code" : "97632-4"
      },
      {
        "code" : "97633-2"
      },
      {
        "code" : "97634-0"
      },
      {
        "code" : "97635-7"
      },
      {
        "code" : "97636-5"
      },
      {
        "code" : "97637-3"
      },
      {
        "code" : "97638-1"
      },
      {
        "code" : "97639-9"
      },
      {
        "code" : "9837-6"
      }]
    },
    {
      "system" : "http://snomed.info/sct",
      "version" : "http://snomed.info/sct/11010000107/version/20261021",
      "concept" : [{
        "code" : "871555000",
        "display" : "Detection of ribonucleic acid of severe acute respiratory syndrome coronavirus 2 (observable entity)"
      },
      {
        "code" : "871559006",
        "display" : "Detection of ribonucleic acid of severe acute respiratory syndrome coronavirus 2 in bronchoalveolar lavage fluid (observable entity)"
      },
      {
        "code" : "871556004",
        "display" : "Detection of ribonucleic acid of severe acute respiratory syndrome coronavirus 2 in nasopharyngeal swab (observable entity)"
      },
      {
        "code" : "871557008",
        "display" : "Detection of ribonucleic acid of severe acute respiratory syndrome coronavirus 2 in oropharyngeal swab (observable entity)"
      },
      {
        "code" : "871558003",
        "display" : "Detection of ribonucleic acid of severe acute respiratory syndrome coronavirus 2 in sputum (observable entity)"
      }]
    },
    {
      "system" : "http://snomed.info/sct",
      "version" : "http://snomed.info/sct/11010000107/version/20261021",
      "filter" : [{
        "property" : "constraint",
        "op" : "=",
        "value" : "<< 363787002 |Observable entity (observable entity)| : 370130000 |Property (attribute)| = (118589004 |Threshold (property) (qualifier value)| OR 705057003 |Presence (property) (qualifier value)| OR 118584009 |Presence or identity (property) (qualifier value)|), 246093002 |Component (attribute)| = << 117174000 |Nucleic acid sequence with relative specificity for microorganism (substance)|, [0..0] 246501002 |Technique (attribute)| = *"
      }]
    }]
  }
}

```
