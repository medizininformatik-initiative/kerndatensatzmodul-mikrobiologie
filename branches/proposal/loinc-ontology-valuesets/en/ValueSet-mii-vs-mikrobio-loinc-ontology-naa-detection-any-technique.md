# MII VS Microbiology LOINC Ontology NAA Detection Any Technique - MII Implementation Guide Microbiology v2027.0.0-ballot2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII VS Microbiology LOINC Ontology NAA Detection Any Technique**

## ValueSet: MII VS Microbiology LOINC Ontology NAA Detection Any Technique (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/ValueSet/mii-vs-mikrobio-loinc-ontology-naa-detection-any-technique | *Version*:2027.0.0-ballot2 |
| Draft as of 2026-11-03 | *Computable Name*:MII_VS_Mikrobio_LOINC_Ontology_NAA_Detection_Any_Technique |
| **Copyright/Legal**: This material includes SNOMED Clinical Terms® (SNOMED CT®) which is used by permission of SNOMED International. All rights reserved. SNOMED CT®, was originally created by The College of American Pathologists. SNOMED and SNOMED CT are registered trademarks of SNOMED International. Implementers of these artefacts must have the appropriate SNOMED CT Affiliate license. | |

 
Proposal: LOINC codes of the microbiology request 'Specific determination: Nucleic-acid detection — any or no technique', computed by ECL over the LOINC Ontology 2026-10-21. Threshold presence / presence / identity of a microbial nucleic acid, regardless of technique. The reference set for the specific-determination request; includes 35492-8 (MRSA DNA by probe with target amplification). Parts: LOINC enumeration (2500, LOINC 2.83), LOINC Ontology observables without LOINC code (7), and the ECL as an intensional include. ECL: `<< 363787002 |Observable entity (observable entity)| : 370130000 |Property (attribute)| = (118589004 |Threshold (property) (qualifier value)| OR 705057003 |Presence (property) (qualifier value)| OR 118584009 |Presence or identity (property) (qualifier value)|), 246093002 |Component (attribute)| = << 117174000 |Nucleic acid sequence with relative specificity for microorganism (substance)|` 

 **References** 

* Included into [MII VS Microbiology LOINC Ontology Specific determination](ValueSet-mii-vs-mikrobio-loinc-ontology-spezifische-bestimmung.md)

### Logical Definition (CLD)

 

### Expansion

No Expansion for this valueset (Unsupported Code System Version)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-mikrobio-loinc-ontology-naa-detection-any-technique",
  "url" : "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/ValueSet/mii-vs-mikrobio-loinc-ontology-naa-detection-any-technique",
  "version" : "2027.0.0-ballot2",
  "name" : "MII_VS_Mikrobio_LOINC_Ontology_NAA_Detection_Any_Technique",
  "title" : "MII VS Microbiology LOINC Ontology NAA Detection Any Technique",
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
  "description" : "Proposal: LOINC codes of the microbiology request 'Specific determination: Nucleic-acid detection — any or no technique', computed by ECL over the LOINC Ontology 2026-10-21. Threshold presence / presence / identity of a microbial nucleic acid, regardless of technique. The reference set for the specific-determination request; includes 35492-8 (MRSA DNA by probe with target amplification). Parts: LOINC enumeration (2500, LOINC 2.83), LOINC Ontology observables without LOINC code (7), and the ECL as an intensional include. ECL: `<< 363787002 |Observable entity (observable entity)| : 370130000 |Property (attribute)| = (118589004 |Threshold (property) (qualifier value)| OR 705057003 |Presence (property) (qualifier value)| OR 118584009 |Presence or identity (property) (qualifier value)|), 246093002 |Component (attribute)| = << 117174000 |Nucleic acid sequence with relative specificity for microorganism (substance)|`",
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
        "code" : "100343-3"
      },
      {
        "code" : "100344-1"
      },
      {
        "code" : "100383-9"
      },
      {
        "code" : "100671-7"
      },
      {
        "code" : "100672-5"
      },
      {
        "code" : "100673-3"
      },
      {
        "code" : "100700-4"
      },
      {
        "code" : "100701-2"
      },
      {
        "code" : "100702-0"
      },
      {
        "code" : "100703-8"
      },
      {
        "code" : "100704-6"
      },
      {
        "code" : "100705-3"
      },
      {
        "code" : "100706-1"
      },
      {
        "code" : "100885-3"
      },
      {
        "code" : "100886-1"
      },
      {
        "code" : "100887-9"
      },
      {
        "code" : "100973-7"
      },
      {
        "code" : "100974-5"
      },
      {
        "code" : "100979-4"
      },
      {
        "code" : "101219-4"
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
        "code" : "101340-8"
      },
      {
        "code" : "101345-7"
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
        "code" : "101406-7"
      },
      {
        "code" : "101419-0"
      },
      {
        "code" : "101420-8"
      },
      {
        "code" : "101421-6"
      },
      {
        "code" : "101422-4"
      },
      {
        "code" : "101423-2"
      },
      {
        "code" : "101424-0"
      },
      {
        "code" : "101425-7"
      },
      {
        "code" : "101426-5"
      },
      {
        "code" : "101427-3"
      },
      {
        "code" : "101428-1"
      },
      {
        "code" : "101552-8"
      },
      {
        "code" : "101553-6"
      },
      {
        "code" : "101554-4"
      },
      {
        "code" : "101555-1"
      },
      {
        "code" : "101556-9"
      },
      {
        "code" : "101557-7"
      },
      {
        "code" : "101558-5"
      },
      {
        "code" : "101559-3"
      },
      {
        "code" : "101560-1"
      },
      {
        "code" : "101561-9"
      },
      {
        "code" : "101563-5"
      },
      {
        "code" : "101744-1"
      },
      {
        "code" : "101749-0"
      },
      {
        "code" : "101754-0"
      },
      {
        "code" : "101755-7"
      },
      {
        "code" : "101756-5"
      },
      {
        "code" : "101757-3"
      },
      {
        "code" : "101758-1"
      },
      {
        "code" : "101759-9"
      },
      {
        "code" : "101760-7"
      },
      {
        "code" : "101761-5"
      },
      {
        "code" : "101762-3"
      },
      {
        "code" : "101766-4"
      },
      {
        "code" : "101767-2"
      },
      {
        "code" : "101768-0"
      },
      {
        "code" : "101769-8"
      },
      {
        "code" : "101770-6"
      },
      {
        "code" : "101771-4"
      },
      {
        "code" : "101772-2"
      },
      {
        "code" : "101773-0"
      },
      {
        "code" : "101774-8"
      },
      {
        "code" : "101775-5"
      },
      {
        "code" : "101776-3"
      },
      {
        "code" : "101777-1"
      },
      {
        "code" : "101778-9"
      },
      {
        "code" : "101781-3"
      },
      {
        "code" : "101783-9"
      },
      {
        "code" : "101784-7"
      },
      {
        "code" : "101786-2"
      },
      {
        "code" : "101936-3"
      },
      {
        "code" : "101938-9"
      },
      {
        "code" : "101940-5"
      },
      {
        "code" : "101941-3"
      },
      {
        "code" : "101942-1"
      },
      {
        "code" : "101943-9"
      },
      {
        "code" : "101944-7"
      },
      {
        "code" : "101945-4"
      },
      {
        "code" : "101946-2"
      },
      {
        "code" : "101947-0"
      },
      {
        "code" : "101948-8"
      },
      {
        "code" : "101950-4"
      },
      {
        "code" : "101984-3"
      },
      {
        "code" : "101985-0"
      },
      {
        "code" : "101986-8"
      },
      {
        "code" : "101987-6"
      },
      {
        "code" : "101988-4"
      },
      {
        "code" : "101989-2"
      },
      {
        "code" : "103162-4"
      },
      {
        "code" : "103164-0"
      },
      {
        "code" : "103167-3"
      },
      {
        "code" : "103169-9"
      },
      {
        "code" : "103170-7"
      },
      {
        "code" : "103172-3"
      },
      {
        "code" : "103176-4"
      },
      {
        "code" : "103177-2"
      },
      {
        "code" : "103178-0"
      },
      {
        "code" : "103179-8"
      },
      {
        "code" : "103180-6"
      },
      {
        "code" : "103181-4"
      },
      {
        "code" : "103182-2"
      },
      {
        "code" : "103183-0"
      },
      {
        "code" : "103185-5"
      },
      {
        "code" : "103187-1"
      },
      {
        "code" : "103188-9"
      },
      {
        "code" : "103189-7"
      },
      {
        "code" : "103191-3"
      },
      {
        "code" : "103192-1"
      },
      {
        "code" : "103193-9"
      },
      {
        "code" : "103194-7"
      },
      {
        "code" : "103195-4"
      },
      {
        "code" : "103196-2"
      },
      {
        "code" : "103197-0"
      },
      {
        "code" : "103198-8"
      },
      {
        "code" : "103199-6"
      },
      {
        "code" : "103201-0"
      },
      {
        "code" : "103555-9"
      },
      {
        "code" : "103559-1"
      },
      {
        "code" : "103625-0"
      },
      {
        "code" : "103626-8"
      },
      {
        "code" : "103627-6"
      },
      {
        "code" : "103660-7"
      },
      {
        "code" : "103686-2"
      },
      {
        "code" : "103687-0"
      },
      {
        "code" : "103688-8"
      },
      {
        "code" : "103712-6"
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
        "code" : "103787-8"
      },
      {
        "code" : "104110-2"
      },
      {
        "code" : "104111-0"
      },
      {
        "code" : "104183-9"
      },
      {
        "code" : "104337-1"
      },
      {
        "code" : "104338-9"
      },
      {
        "code" : "104339-7"
      },
      {
        "code" : "104340-5"
      },
      {
        "code" : "104341-3"
      },
      {
        "code" : "104342-1"
      },
      {
        "code" : "104344-7"
      },
      {
        "code" : "104352-0"
      },
      {
        "code" : "104353-8"
      },
      {
        "code" : "104354-6"
      },
      {
        "code" : "104355-3"
      },
      {
        "code" : "104356-1"
      },
      {
        "code" : "104357-9"
      },
      {
        "code" : "104359-5"
      },
      {
        "code" : "104375-1"
      },
      {
        "code" : "104433-8"
      },
      {
        "code" : "104450-2"
      },
      {
        "code" : "104451-0"
      },
      {
        "code" : "104706-7"
      },
      {
        "code" : "104709-1"
      },
      {
        "code" : "104711-7"
      },
      {
        "code" : "104712-5"
      },
      {
        "code" : "104715-8"
      },
      {
        "code" : "104716-6"
      },
      {
        "code" : "104722-4"
      },
      {
        "code" : "104724-0"
      },
      {
        "code" : "104727-3"
      },
      {
        "code" : "104730-7"
      },
      {
        "code" : "104735-6"
      },
      {
        "code" : "104737-2"
      },
      {
        "code" : "104744-8"
      },
      {
        "code" : "104757-0"
      },
      {
        "code" : "104758-8"
      },
      {
        "code" : "104760-4"
      },
      {
        "code" : "104765-3"
      },
      {
        "code" : "104776-0"
      },
      {
        "code" : "104780-2"
      },
      {
        "code" : "104788-5"
      },
      {
        "code" : "104794-3"
      },
      {
        "code" : "104806-5"
      },
      {
        "code" : "104815-6"
      },
      {
        "code" : "105056-6"
      },
      {
        "code" : "105057-4"
      },
      {
        "code" : "105062-4"
      },
      {
        "code" : "105067-3"
      },
      {
        "code" : "105073-1"
      },
      {
        "code" : "105075-6"
      },
      {
        "code" : "105076-4"
      },
      {
        "code" : "105077-2"
      },
      {
        "code" : "105078-0"
      },
      {
        "code" : "105079-8"
      },
      {
        "code" : "105084-8"
      },
      {
        "code" : "105094-7"
      },
      {
        "code" : "105210-9"
      },
      {
        "code" : "105211-7"
      },
      {
        "code" : "105212-5"
      },
      {
        "code" : "105213-3"
      },
      {
        "code" : "105215-8"
      },
      {
        "code" : "105216-6"
      },
      {
        "code" : "105217-4"
      },
      {
        "code" : "105218-2"
      },
      {
        "code" : "105219-0"
      },
      {
        "code" : "105220-8"
      },
      {
        "code" : "105221-6"
      },
      {
        "code" : "105222-4"
      },
      {
        "code" : "105223-2"
      },
      {
        "code" : "105226-5"
      },
      {
        "code" : "105227-3"
      },
      {
        "code" : "105228-1"
      },
      {
        "code" : "105230-7"
      },
      {
        "code" : "105231-5"
      },
      {
        "code" : "105233-1"
      },
      {
        "code" : "105234-9"
      },
      {
        "code" : "105235-6"
      },
      {
        "code" : "105236-4"
      },
      {
        "code" : "105237-2"
      },
      {
        "code" : "105238-0"
      },
      {
        "code" : "105339-6"
      },
      {
        "code" : "105340-4"
      },
      {
        "code" : "105430-3"
      },
      {
        "code" : "105431-1"
      },
      {
        "code" : "105432-9"
      },
      {
        "code" : "105433-7"
      },
      {
        "code" : "105434-5"
      },
      {
        "code" : "105435-2"
      },
      {
        "code" : "105436-0"
      },
      {
        "code" : "105437-8"
      },
      {
        "code" : "105609-2"
      },
      {
        "code" : "105611-8"
      },
      {
        "code" : "105612-6"
      },
      {
        "code" : "105613-4"
      },
      {
        "code" : "105615-9"
      },
      {
        "code" : "105616-7"
      },
      {
        "code" : "105623-3"
      },
      {
        "code" : "105624-1"
      },
      {
        "code" : "105625-8"
      },
      {
        "code" : "105627-4"
      },
      {
        "code" : "105629-0"
      },
      {
        "code" : "105630-8"
      },
      {
        "code" : "105631-6"
      },
      {
        "code" : "105632-4"
      },
      {
        "code" : "105633-2"
      },
      {
        "code" : "105634-0"
      },
      {
        "code" : "105635-7"
      },
      {
        "code" : "105636-5"
      },
      {
        "code" : "105637-3"
      },
      {
        "code" : "105640-7"
      },
      {
        "code" : "105641-5"
      },
      {
        "code" : "105643-1"
      },
      {
        "code" : "105644-9"
      },
      {
        "code" : "105646-4"
      },
      {
        "code" : "105647-2"
      },
      {
        "code" : "105648-0"
      },
      {
        "code" : "105649-8"
      },
      {
        "code" : "105650-6"
      },
      {
        "code" : "105651-4"
      },
      {
        "code" : "105652-2"
      },
      {
        "code" : "105653-0"
      },
      {
        "code" : "105654-8"
      },
      {
        "code" : "105655-5"
      },
      {
        "code" : "105656-3"
      },
      {
        "code" : "105657-1"
      },
      {
        "code" : "105658-9"
      },
      {
        "code" : "105659-7"
      },
      {
        "code" : "105660-5"
      },
      {
        "code" : "105662-1"
      },
      {
        "code" : "105663-9"
      },
      {
        "code" : "105665-4"
      },
      {
        "code" : "105666-2"
      },
      {
        "code" : "105667-0"
      },
      {
        "code" : "105668-8"
      },
      {
        "code" : "105669-6"
      },
      {
        "code" : "105670-4"
      },
      {
        "code" : "105671-2"
      },
      {
        "code" : "105672-0"
      },
      {
        "code" : "105673-8"
      },
      {
        "code" : "105674-6"
      },
      {
        "code" : "105675-3"
      },
      {
        "code" : "105677-9"
      },
      {
        "code" : "105678-7"
      },
      {
        "code" : "105679-5"
      },
      {
        "code" : "105680-3"
      },
      {
        "code" : "105681-1"
      },
      {
        "code" : "105682-9"
      },
      {
        "code" : "105683-7"
      },
      {
        "code" : "105684-5"
      },
      {
        "code" : "105686-0"
      },
      {
        "code" : "105687-8"
      },
      {
        "code" : "105688-6"
      },
      {
        "code" : "105689-4"
      },
      {
        "code" : "105691-0"
      },
      {
        "code" : "105692-8"
      },
      {
        "code" : "105693-6"
      },
      {
        "code" : "105694-4"
      },
      {
        "code" : "105695-1"
      },
      {
        "code" : "105696-9"
      },
      {
        "code" : "105697-7"
      },
      {
        "code" : "105698-5"
      },
      {
        "code" : "105699-3"
      },
      {
        "code" : "105700-9"
      },
      {
        "code" : "105726-4"
      },
      {
        "code" : "105727-2"
      },
      {
        "code" : "105728-0"
      },
      {
        "code" : "105729-8"
      },
      {
        "code" : "105730-6"
      },
      {
        "code" : "105731-4"
      },
      {
        "code" : "105732-2"
      },
      {
        "code" : "105733-0"
      },
      {
        "code" : "105735-5"
      },
      {
        "code" : "105736-3"
      },
      {
        "code" : "105738-9"
      },
      {
        "code" : "105739-7"
      },
      {
        "code" : "105740-5"
      },
      {
        "code" : "105741-3"
      },
      {
        "code" : "105743-9"
      },
      {
        "code" : "105744-7"
      },
      {
        "code" : "105745-4"
      },
      {
        "code" : "105746-2"
      },
      {
        "code" : "105747-0"
      },
      {
        "code" : "105748-8"
      },
      {
        "code" : "105749-6"
      },
      {
        "code" : "105875-9"
      },
      {
        "code" : "105876-7"
      },
      {
        "code" : "105881-7"
      },
      {
        "code" : "105882-5"
      },
      {
        "code" : "105884-1"
      },
      {
        "code" : "105885-8"
      },
      {
        "code" : "105886-6"
      },
      {
        "code" : "105887-4"
      },
      {
        "code" : "105890-8"
      },
      {
        "code" : "105892-4"
      },
      {
        "code" : "105898-1"
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
        "code" : "105909-6"
      },
      {
        "code" : "105918-7"
      },
      {
        "code" : "105919-5"
      },
      {
        "code" : "105922-9"
      },
      {
        "code" : "105927-8"
      },
      {
        "code" : "106013-6"
      },
      {
        "code" : "106014-4"
      },
      {
        "code" : "106015-1"
      },
      {
        "code" : "106019-3"
      },
      {
        "code" : "106020-1"
      },
      {
        "code" : "106021-9"
      },
      {
        "code" : "106022-7"
      },
      {
        "code" : "106023-5"
      },
      {
        "code" : "106025-0"
      },
      {
        "code" : "106026-8"
      },
      {
        "code" : "106027-6"
      },
      {
        "code" : "106028-4"
      },
      {
        "code" : "106029-2"
      },
      {
        "code" : "106206-6"
      },
      {
        "code" : "106207-4"
      },
      {
        "code" : "106209-0"
      },
      {
        "code" : "106210-8"
      },
      {
        "code" : "106212-4"
      },
      {
        "code" : "106213-2"
      },
      {
        "code" : "106214-0"
      },
      {
        "code" : "10650-0"
      },
      {
        "code" : "106508-5"
      },
      {
        "code" : "10652-6"
      },
      {
        "code" : "106552-3"
      },
      {
        "code" : "106555-6"
      },
      {
        "code" : "106557-2"
      },
      {
        "code" : "106559-8"
      },
      {
        "code" : "106560-6"
      },
      {
        "code" : "106561-4"
      },
      {
        "code" : "106562-2"
      },
      {
        "code" : "106566-3"
      },
      {
        "code" : "106567-1"
      },
      {
        "code" : "106568-9"
      },
      {
        "code" : "106569-7"
      },
      {
        "code" : "106570-5"
      },
      {
        "code" : "106571-3"
      },
      {
        "code" : "106572-1"
      },
      {
        "code" : "106573-9"
      },
      {
        "code" : "106574-7"
      },
      {
        "code" : "106575-4"
      },
      {
        "code" : "106576-2"
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
        "code" : "107168-7"
      },
      {
        "code" : "107342-8"
      },
      {
        "code" : "107343-6"
      },
      {
        "code" : "107345-1"
      },
      {
        "code" : "107346-9"
      },
      {
        "code" : "107355-0"
      },
      {
        "code" : "107356-8"
      },
      {
        "code" : "107357-6"
      },
      {
        "code" : "107358-4"
      },
      {
        "code" : "107359-2"
      },
      {
        "code" : "107360-0"
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
        "code" : "107925-0"
      },
      {
        "code" : "108081-1"
      },
      {
        "code" : "108082-9"
      },
      {
        "code" : "108083-7"
      },
      {
        "code" : "108084-5"
      },
      {
        "code" : "108089-4"
      },
      {
        "code" : "108092-8"
      },
      {
        "code" : "108097-7"
      },
      {
        "code" : "108098-5"
      },
      {
        "code" : "108103-3"
      },
      {
        "code" : "108104-1"
      },
      {
        "code" : "108105-8"
      },
      {
        "code" : "108106-6"
      },
      {
        "code" : "108107-4"
      },
      {
        "code" : "108108-2"
      },
      {
        "code" : "108109-0"
      },
      {
        "code" : "108111-6"
      },
      {
        "code" : "108112-4"
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
        "code" : "108188-4"
      },
      {
        "code" : "108191-8"
      },
      {
        "code" : "108194-2"
      },
      {
        "code" : "108211-4"
      },
      {
        "code" : "10846-4"
      },
      {
        "code" : "10847-2"
      },
      {
        "code" : "111509-6"
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
        "code" : "112390-0"
      },
      {
        "code" : "112395-9"
      },
      {
        "code" : "112396-7"
      },
      {
        "code" : "112397-5"
      },
      {
        "code" : "112399-1"
      },
      {
        "code" : "112400-7"
      },
      {
        "code" : "112401-5"
      },
      {
        "code" : "112402-3"
      },
      {
        "code" : "112403-1"
      },
      {
        "code" : "112405-6"
      },
      {
        "code" : "112408-0"
      },
      {
        "code" : "11259-9"
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
        "code" : "112707-5"
      },
      {
        "code" : "112708-3"
      },
      {
        "code" : "112709-1"
      },
      {
        "code" : "112710-9"
      },
      {
        "code" : "112711-7"
      },
      {
        "code" : "112712-5"
      },
      {
        "code" : "112713-3"
      },
      {
        "code" : "112714-1"
      },
      {
        "code" : "112716-6"
      },
      {
        "code" : "112717-4"
      },
      {
        "code" : "112723-2"
      },
      {
        "code" : "112724-0"
      },
      {
        "code" : "112725-7"
      },
      {
        "code" : "112726-5"
      },
      {
        "code" : "112727-3"
      },
      {
        "code" : "112728-1"
      },
      {
        "code" : "112729-9"
      },
      {
        "code" : "112732-3"
      },
      {
        "code" : "112733-1"
      },
      {
        "code" : "112735-6"
      },
      {
        "code" : "112736-4"
      },
      {
        "code" : "112749-7"
      },
      {
        "code" : "112750-5"
      },
      {
        "code" : "112755-4"
      },
      {
        "code" : "112757-0"
      },
      {
        "code" : "112776-0"
      },
      {
        "code" : "112777-8"
      },
      {
        "code" : "112778-6"
      },
      {
        "code" : "112779-4"
      },
      {
        "code" : "112780-2"
      },
      {
        "code" : "112781-0"
      },
      {
        "code" : "112782-8"
      },
      {
        "code" : "112783-6"
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
        "code" : "112894-1"
      },
      {
        "code" : "112895-8"
      },
      {
        "code" : "114505-1"
      },
      {
        "code" : "114507-7"
      },
      {
        "code" : "114508-5"
      },
      {
        "code" : "114510-1"
      },
      {
        "code" : "114512-7"
      },
      {
        "code" : "114513-5"
      },
      {
        "code" : "114514-3"
      },
      {
        "code" : "114516-8"
      },
      {
        "code" : "114517-6"
      },
      {
        "code" : "114523-4"
      },
      {
        "code" : "114524-2"
      },
      {
        "code" : "114525-9"
      },
      {
        "code" : "114526-7"
      },
      {
        "code" : "114529-1"
      },
      {
        "code" : "114530-9"
      },
      {
        "code" : "114531-7"
      },
      {
        "code" : "114534-1"
      },
      {
        "code" : "114536-6"
      },
      {
        "code" : "114537-4"
      },
      {
        "code" : "114539-0"
      },
      {
        "code" : "114540-8"
      },
      {
        "code" : "114541-6"
      },
      {
        "code" : "114542-4"
      },
      {
        "code" : "114543-2"
      },
      {
        "code" : "114544-0"
      },
      {
        "code" : "114545-7"
      },
      {
        "code" : "114546-5"
      },
      {
        "code" : "114547-3"
      },
      {
        "code" : "114548-1"
      },
      {
        "code" : "114549-9"
      },
      {
        "code" : "114550-7"
      },
      {
        "code" : "114551-5"
      },
      {
        "code" : "114552-3"
      },
      {
        "code" : "114555-6"
      },
      {
        "code" : "114557-2"
      },
      {
        "code" : "114559-8"
      },
      {
        "code" : "114561-4"
      },
      {
        "code" : "114562-2"
      },
      {
        "code" : "114572-1"
      },
      {
        "code" : "114574-7"
      },
      {
        "code" : "114575-4"
      },
      {
        "code" : "114577-0"
      },
      {
        "code" : "114578-8"
      },
      {
        "code" : "114579-6"
      },
      {
        "code" : "114581-2"
      },
      {
        "code" : "114583-8"
      },
      {
        "code" : "114584-6"
      },
      {
        "code" : "114585-3"
      },
      {
        "code" : "114586-1"
      },
      {
        "code" : "114587-9"
      },
      {
        "code" : "114588-7"
      },
      {
        "code" : "114589-5"
      },
      {
        "code" : "114590-3"
      },
      {
        "code" : "114593-7"
      },
      {
        "code" : "114594-5"
      },
      {
        "code" : "114596-0"
      },
      {
        "code" : "114597-8"
      },
      {
        "code" : "114598-6"
      },
      {
        "code" : "114601-8"
      },
      {
        "code" : "114603-4"
      },
      {
        "code" : "114604-2"
      },
      {
        "code" : "114606-7"
      },
      {
        "code" : "114607-5"
      },
      {
        "code" : "114609-1"
      },
      {
        "code" : "114622-4"
      },
      {
        "code" : "114624-0"
      },
      {
        "code" : "114626-5"
      },
      {
        "code" : "114628-1"
      },
      {
        "code" : "114629-9"
      },
      {
        "code" : "114631-5"
      },
      {
        "code" : "114632-3"
      },
      {
        "code" : "114633-1"
      },
      {
        "code" : "114639-8"
      },
      {
        "code" : "114640-6"
      },
      {
        "code" : "114651-3"
      },
      {
        "code" : "114652-1"
      },
      {
        "code" : "114654-7"
      },
      {
        "code" : "114655-4"
      },
      {
        "code" : "114656-2"
      },
      {
        "code" : "114660-4"
      },
      {
        "code" : "114666-1"
      },
      {
        "code" : "114667-9"
      },
      {
        "code" : "114668-7"
      },
      {
        "code" : "114669-5"
      },
      {
        "code" : "114670-3"
      },
      {
        "code" : "114671-1"
      },
      {
        "code" : "114672-9"
      },
      {
        "code" : "114673-7"
      },
      {
        "code" : "114674-5"
      },
      {
        "code" : "114677-8"
      },
      {
        "code" : "114679-4"
      },
      {
        "code" : "114680-2"
      },
      {
        "code" : "114681-0"
      },
      {
        "code" : "114682-8"
      },
      {
        "code" : "114683-6"
      },
      {
        "code" : "114684-4"
      },
      {
        "code" : "114685-1"
      },
      {
        "code" : "114686-9"
      },
      {
        "code" : "114687-7"
      },
      {
        "code" : "114689-3"
      },
      {
        "code" : "114692-7"
      },
      {
        "code" : "114695-0"
      },
      {
        "code" : "114696-8"
      },
      {
        "code" : "114698-4"
      },
      {
        "code" : "114705-7"
      },
      {
        "code" : "114707-3"
      },
      {
        "code" : "114708-1"
      },
      {
        "code" : "114709-9"
      },
      {
        "code" : "114710-7"
      },
      {
        "code" : "114711-5"
      },
      {
        "code" : "114713-1"
      },
      {
        "code" : "114714-9"
      },
      {
        "code" : "114715-6"
      },
      {
        "code" : "114716-4"
      },
      {
        "code" : "114717-2"
      },
      {
        "code" : "114732-1"
      },
      {
        "code" : "114733-9"
      },
      {
        "code" : "114735-4"
      },
      {
        "code" : "114736-2"
      },
      {
        "code" : "114737-0"
      },
      {
        "code" : "114738-8"
      },
      {
        "code" : "114739-6"
      },
      {
        "code" : "114740-4"
      },
      {
        "code" : "114741-2"
      },
      {
        "code" : "114742-0"
      },
      {
        "code" : "114743-8"
      },
      {
        "code" : "114745-3"
      },
      {
        "code" : "114746-1"
      },
      {
        "code" : "114748-7"
      },
      {
        "code" : "114749-5"
      },
      {
        "code" : "114750-3"
      },
      {
        "code" : "114751-1"
      },
      {
        "code" : "114752-9"
      },
      {
        "code" : "114753-7"
      },
      {
        "code" : "114754-5"
      },
      {
        "code" : "114755-2"
      },
      {
        "code" : "114756-0"
      },
      {
        "code" : "114757-8"
      },
      {
        "code" : "114758-6"
      },
      {
        "code" : "114765-1"
      },
      {
        "code" : "114770-1"
      },
      {
        "code" : "114771-9"
      },
      {
        "code" : "114772-7"
      },
      {
        "code" : "114773-5"
      },
      {
        "code" : "114774-3"
      },
      {
        "code" : "114775-0"
      },
      {
        "code" : "114776-8"
      },
      {
        "code" : "114778-4"
      },
      {
        "code" : "114779-2"
      },
      {
        "code" : "114781-8"
      },
      {
        "code" : "114782-6"
      },
      {
        "code" : "114783-4"
      },
      {
        "code" : "114784-2"
      },
      {
        "code" : "114785-9"
      },
      {
        "code" : "114786-7"
      },
      {
        "code" : "114787-5"
      },
      {
        "code" : "114788-3"
      },
      {
        "code" : "114789-1"
      },
      {
        "code" : "114790-9"
      },
      {
        "code" : "114791-7"
      },
      {
        "code" : "114792-5"
      },
      {
        "code" : "114793-3"
      },
      {
        "code" : "114794-1"
      },
      {
        "code" : "114795-8"
      },
      {
        "code" : "114798-2"
      },
      {
        "code" : "114799-0"
      },
      {
        "code" : "114800-6"
      },
      {
        "code" : "114801-4"
      },
      {
        "code" : "114804-8"
      },
      {
        "code" : "114805-5"
      },
      {
        "code" : "114806-3"
      },
      {
        "code" : "114811-3"
      },
      {
        "code" : "114815-4"
      },
      {
        "code" : "114816-2"
      },
      {
        "code" : "114817-0"
      },
      {
        "code" : "114818-8"
      },
      {
        "code" : "114819-6"
      },
      {
        "code" : "11482-7"
      },
      {
        "code" : "114820-4"
      },
      {
        "code" : "114821-2"
      },
      {
        "code" : "114822-0"
      },
      {
        "code" : "114823-8"
      },
      {
        "code" : "114824-6"
      },
      {
        "code" : "114825-3"
      },
      {
        "code" : "114826-1"
      },
      {
        "code" : "114827-9"
      },
      {
        "code" : "11483-5"
      },
      {
        "code" : "114830-3"
      },
      {
        "code" : "114831-1"
      },
      {
        "code" : "114832-9"
      },
      {
        "code" : "114833-7"
      },
      {
        "code" : "114834-5"
      },
      {
        "code" : "114835-2"
      },
      {
        "code" : "114836-0"
      },
      {
        "code" : "114837-8"
      },
      {
        "code" : "114838-6"
      },
      {
        "code" : "114843-6"
      },
      {
        "code" : "114844-4"
      },
      {
        "code" : "114845-1"
      },
      {
        "code" : "114846-9"
      },
      {
        "code" : "114847-7"
      },
      {
        "code" : "114848-5"
      },
      {
        "code" : "114849-3"
      },
      {
        "code" : "114850-1"
      },
      {
        "code" : "114851-9"
      },
      {
        "code" : "114852-7"
      },
      {
        "code" : "114853-5"
      },
      {
        "code" : "114854-3"
      },
      {
        "code" : "114856-8"
      },
      {
        "code" : "114858-4"
      },
      {
        "code" : "114859-2"
      },
      {
        "code" : "114861-8"
      },
      {
        "code" : "114864-2"
      },
      {
        "code" : "114865-9"
      },
      {
        "code" : "114866-7"
      },
      {
        "code" : "114867-5"
      },
      {
        "code" : "114869-1"
      },
      {
        "code" : "114870-9"
      },
      {
        "code" : "114871-7"
      },
      {
        "code" : "114872-5"
      },
      {
        "code" : "114873-3"
      },
      {
        "code" : "114874-1"
      },
      {
        "code" : "114877-4"
      },
      {
        "code" : "114878-2"
      },
      {
        "code" : "114881-6"
      },
      {
        "code" : "114883-2"
      },
      {
        "code" : "114885-7"
      },
      {
        "code" : "114887-3"
      },
      {
        "code" : "114888-1"
      },
      {
        "code" : "114889-9"
      },
      {
        "code" : "114890-7"
      },
      {
        "code" : "114891-5"
      },
      {
        "code" : "114892-3"
      },
      {
        "code" : "114893-1"
      },
      {
        "code" : "114897-2"
      },
      {
        "code" : "114899-8"
      },
      {
        "code" : "114900-4"
      },
      {
        "code" : "114902-0"
      },
      {
        "code" : "114905-3"
      },
      {
        "code" : "114906-1"
      },
      {
        "code" : "114908-7"
      },
      {
        "code" : "114912-9"
      },
      {
        "code" : "114914-5"
      },
      {
        "code" : "114916-0"
      },
      {
        "code" : "114918-6"
      },
      {
        "code" : "114919-4"
      },
      {
        "code" : "114920-2"
      },
      {
        "code" : "114921-0"
      },
      {
        "code" : "114922-8"
      },
      {
        "code" : "114923-6"
      },
      {
        "code" : "114924-4"
      },
      {
        "code" : "114925-1"
      },
      {
        "code" : "114930-1"
      },
      {
        "code" : "114931-9"
      },
      {
        "code" : "114932-7"
      },
      {
        "code" : "114934-3"
      },
      {
        "code" : "114935-0"
      },
      {
        "code" : "114936-8"
      },
      {
        "code" : "114937-6"
      },
      {
        "code" : "114938-4"
      },
      {
        "code" : "114939-2"
      },
      {
        "code" : "114940-0"
      },
      {
        "code" : "114941-8"
      },
      {
        "code" : "114944-2"
      },
      {
        "code" : "114946-7"
      },
      {
        "code" : "114951-7"
      },
      {
        "code" : "114953-3"
      },
      {
        "code" : "114956-6"
      },
      {
        "code" : "114966-5"
      },
      {
        "code" : "114968-1"
      },
      {
        "code" : "114971-5"
      },
      {
        "code" : "114972-3"
      },
      {
        "code" : "114974-9"
      },
      {
        "code" : "114975-6"
      },
      {
        "code" : "114981-4"
      },
      {
        "code" : "114984-8"
      },
      {
        "code" : "114987-1"
      },
      {
        "code" : "114989-7"
      },
      {
        "code" : "114990-5"
      },
      {
        "code" : "114997-0"
      },
      {
        "code" : "114998-8"
      },
      {
        "code" : "115002-8"
      },
      {
        "code" : "115003-6"
      },
      {
        "code" : "115004-4"
      },
      {
        "code" : "115005-1"
      },
      {
        "code" : "115006-9"
      },
      {
        "code" : "115007-7"
      },
      {
        "code" : "115008-5"
      },
      {
        "code" : "115009-3"
      },
      {
        "code" : "115011-9"
      },
      {
        "code" : "115013-5"
      },
      {
        "code" : "115016-8"
      },
      {
        "code" : "115017-6"
      },
      {
        "code" : "115018-4"
      },
      {
        "code" : "115020-0"
      },
      {
        "code" : "115021-8"
      },
      {
        "code" : "115023-4"
      },
      {
        "code" : "115025-9"
      },
      {
        "code" : "115026-7"
      },
      {
        "code" : "115027-5"
      },
      {
        "code" : "115028-3"
      },
      {
        "code" : "115029-1"
      },
      {
        "code" : "115030-9"
      },
      {
        "code" : "115031-7"
      },
      {
        "code" : "115032-5"
      },
      {
        "code" : "115033-3"
      },
      {
        "code" : "115034-1"
      },
      {
        "code" : "115037-4"
      },
      {
        "code" : "115040-8"
      },
      {
        "code" : "115041-6"
      },
      {
        "code" : "115042-4"
      },
      {
        "code" : "115043-2"
      },
      {
        "code" : "115044-0"
      },
      {
        "code" : "115049-9"
      },
      {
        "code" : "115050-7"
      },
      {
        "code" : "115052-3"
      },
      {
        "code" : "115053-1"
      },
      {
        "code" : "115054-9"
      },
      {
        "code" : "115055-6"
      },
      {
        "code" : "115056-4"
      },
      {
        "code" : "115057-2"
      },
      {
        "code" : "115059-8"
      },
      {
        "code" : "115064-8"
      },
      {
        "code" : "115065-5"
      },
      {
        "code" : "115066-3"
      },
      {
        "code" : "115067-1"
      },
      {
        "code" : "115068-9"
      },
      {
        "code" : "115069-7"
      },
      {
        "code" : "115072-1"
      },
      {
        "code" : "115073-9"
      },
      {
        "code" : "115074-7"
      },
      {
        "code" : "115076-2"
      },
      {
        "code" : "115085-3"
      },
      {
        "code" : "115087-9"
      },
      {
        "code" : "115088-7"
      },
      {
        "code" : "115089-5"
      },
      {
        "code" : "115090-3"
      },
      {
        "code" : "115099-4"
      },
      {
        "code" : "115101-8"
      },
      {
        "code" : "115102-6"
      },
      {
        "code" : "115104-2"
      },
      {
        "code" : "115107-5"
      },
      {
        "code" : "115115-8"
      },
      {
        "code" : "115116-6"
      },
      {
        "code" : "115118-2"
      },
      {
        "code" : "115119-0"
      },
      {
        "code" : "115121-6"
      },
      {
        "code" : "115123-2"
      },
      {
        "code" : "115124-0"
      },
      {
        "code" : "115126-5"
      },
      {
        "code" : "115127-3"
      },
      {
        "code" : "115129-9"
      },
      {
        "code" : "115132-3"
      },
      {
        "code" : "115134-9"
      },
      {
        "code" : "115135-6"
      },
      {
        "code" : "115138-0"
      },
      {
        "code" : "115139-8"
      },
      {
        "code" : "115140-6"
      },
      {
        "code" : "115141-4"
      },
      {
        "code" : "115144-8"
      },
      {
        "code" : "115146-3"
      },
      {
        "code" : "115147-1"
      },
      {
        "code" : "115148-9"
      },
      {
        "code" : "115149-7"
      },
      {
        "code" : "115150-5"
      },
      {
        "code" : "115151-3"
      },
      {
        "code" : "115154-7"
      },
      {
        "code" : "115155-4"
      },
      {
        "code" : "115156-2"
      },
      {
        "code" : "115157-0"
      },
      {
        "code" : "115158-8"
      },
      {
        "code" : "115160-4"
      },
      {
        "code" : "115162-0"
      },
      {
        "code" : "115165-3"
      },
      {
        "code" : "115166-1"
      },
      {
        "code" : "115167-9"
      },
      {
        "code" : "115169-5"
      },
      {
        "code" : "115170-3"
      },
      {
        "code" : "115171-1"
      },
      {
        "code" : "115173-7"
      },
      {
        "code" : "115176-0"
      },
      {
        "code" : "115177-8"
      },
      {
        "code" : "115178-6"
      },
      {
        "code" : "115179-4"
      },
      {
        "code" : "115181-0"
      },
      {
        "code" : "115186-9"
      },
      {
        "code" : "115187-7"
      },
      {
        "code" : "115188-5"
      },
      {
        "code" : "115189-3"
      },
      {
        "code" : "115190-1"
      },
      {
        "code" : "115192-7"
      },
      {
        "code" : "115193-5"
      },
      {
        "code" : "115196-8"
      },
      {
        "code" : "115197-6"
      },
      {
        "code" : "115199-2"
      },
      {
        "code" : "115200-8"
      },
      {
        "code" : "115202-4"
      },
      {
        "code" : "115203-2"
      },
      {
        "code" : "115204-0"
      },
      {
        "code" : "115205-7"
      },
      {
        "code" : "115206-5"
      },
      {
        "code" : "115210-7"
      },
      {
        "code" : "115212-3"
      },
      {
        "code" : "115213-1"
      },
      {
        "code" : "115214-9"
      },
      {
        "code" : "115215-6"
      },
      {
        "code" : "115216-4"
      },
      {
        "code" : "115217-2"
      },
      {
        "code" : "115218-0"
      },
      {
        "code" : "115222-2"
      },
      {
        "code" : "115234-7"
      },
      {
        "code" : "115242-0"
      },
      {
        "code" : "115243-8"
      },
      {
        "code" : "115245-3"
      },
      {
        "code" : "115246-1"
      },
      {
        "code" : "115248-7"
      },
      {
        "code" : "115249-5"
      },
      {
        "code" : "115251-1"
      },
      {
        "code" : "115253-7"
      },
      {
        "code" : "115256-0"
      },
      {
        "code" : "115257-8"
      },
      {
        "code" : "115259-4"
      },
      {
        "code" : "115260-2"
      },
      {
        "code" : "115261-0"
      },
      {
        "code" : "115263-6"
      },
      {
        "code" : "115264-4"
      },
      {
        "code" : "115266-9"
      },
      {
        "code" : "115272-7"
      },
      {
        "code" : "115273-5"
      },
      {
        "code" : "115274-3"
      },
      {
        "code" : "115275-0"
      },
      {
        "code" : "115276-8"
      },
      {
        "code" : "115277-6"
      },
      {
        "code" : "115278-4"
      },
      {
        "code" : "115280-0"
      },
      {
        "code" : "115282-6"
      },
      {
        "code" : "115283-4"
      },
      {
        "code" : "115284-2"
      },
      {
        "code" : "115285-9"
      },
      {
        "code" : "115287-5"
      },
      {
        "code" : "115289-1"
      },
      {
        "code" : "115295-8"
      },
      {
        "code" : "115296-6"
      },
      {
        "code" : "115297-4"
      },
      {
        "code" : "115298-2"
      },
      {
        "code" : "115299-0"
      },
      {
        "code" : "115300-6"
      },
      {
        "code" : "115301-4"
      },
      {
        "code" : "115302-2"
      },
      {
        "code" : "115308-9"
      },
      {
        "code" : "115309-7"
      },
      {
        "code" : "115312-1"
      },
      {
        "code" : "115313-9"
      },
      {
        "code" : "115314-7"
      },
      {
        "code" : "115315-4"
      },
      {
        "code" : "115316-2"
      },
      {
        "code" : "115317-0"
      },
      {
        "code" : "115319-6"
      },
      {
        "code" : "115320-4"
      },
      {
        "code" : "115321-2"
      },
      {
        "code" : "115322-0"
      },
      {
        "code" : "115323-8"
      },
      {
        "code" : "115324-6"
      },
      {
        "code" : "115325-3"
      },
      {
        "code" : "115326-1"
      },
      {
        "code" : "115327-9"
      },
      {
        "code" : "115334-5"
      },
      {
        "code" : "115335-2"
      },
      {
        "code" : "115338-6"
      },
      {
        "code" : "115344-4"
      },
      {
        "code" : "115348-5"
      },
      {
        "code" : "115355-0"
      },
      {
        "code" : "115356-8"
      },
      {
        "code" : "115357-6"
      },
      {
        "code" : "115360-0"
      },
      {
        "code" : "115361-8"
      },
      {
        "code" : "115362-6"
      },
      {
        "code" : "115363-4"
      },
      {
        "code" : "115365-9"
      },
      {
        "code" : "115366-7"
      },
      {
        "code" : "115367-5"
      },
      {
        "code" : "115368-3"
      },
      {
        "code" : "115369-1"
      },
      {
        "code" : "115370-9"
      },
      {
        "code" : "115371-7"
      },
      {
        "code" : "115372-5"
      },
      {
        "code" : "115374-1"
      },
      {
        "code" : "115383-2"
      },
      {
        "code" : "115385-7"
      },
      {
        "code" : "115386-5"
      },
      {
        "code" : "115389-9"
      },
      {
        "code" : "115390-7"
      },
      {
        "code" : "115391-5"
      },
      {
        "code" : "115392-3"
      },
      {
        "code" : "115393-1"
      },
      {
        "code" : "115402-0"
      },
      {
        "code" : "115404-6"
      },
      {
        "code" : "115405-3"
      },
      {
        "code" : "115406-1"
      },
      {
        "code" : "115407-9"
      },
      {
        "code" : "115408-7"
      },
      {
        "code" : "115409-5"
      },
      {
        "code" : "115410-3"
      },
      {
        "code" : "115412-9"
      },
      {
        "code" : "115413-7"
      },
      {
        "code" : "115414-5"
      },
      {
        "code" : "115417-8"
      },
      {
        "code" : "115420-2"
      },
      {
        "code" : "115422-8"
      },
      {
        "code" : "115424-4"
      },
      {
        "code" : "115425-1"
      },
      {
        "code" : "115426-9"
      },
      {
        "code" : "115429-3"
      },
      {
        "code" : "115431-9"
      },
      {
        "code" : "115432-7"
      },
      {
        "code" : "115433-5"
      },
      {
        "code" : "115434-3"
      },
      {
        "code" : "115435-0"
      },
      {
        "code" : "115442-6"
      },
      {
        "code" : "115445-9"
      },
      {
        "code" : "115447-5"
      },
      {
        "code" : "115448-3"
      },
      {
        "code" : "115449-1"
      },
      {
        "code" : "115450-9"
      },
      {
        "code" : "115451-7"
      },
      {
        "code" : "115455-8"
      },
      {
        "code" : "115458-2"
      },
      {
        "code" : "115459-0"
      },
      {
        "code" : "115460-8"
      },
      {
        "code" : "115461-6"
      },
      {
        "code" : "11551-9"
      },
      {
        "code" : "115795-7"
      },
      {
        "code" : "115796-5"
      },
      {
        "code" : "115798-1"
      },
      {
        "code" : "13956-8"
      },
      {
        "code" : "14556-5"
      },
      {
        "code" : "14557-3"
      },
      {
        "code" : "14558-1"
      },
      {
        "code" : "14559-9"
      },
      {
        "code" : "14560-7"
      },
      {
        "code" : "14561-5"
      },
      {
        "code" : "14562-3"
      },
      {
        "code" : "14972-4"
      },
      {
        "code" : "14973-2"
      },
      {
        "code" : "14974-0"
      },
      {
        "code" : "16130-7"
      },
      {
        "code" : "16131-5"
      },
      {
        "code" : "16275-0"
      },
      {
        "code" : "16276-8"
      },
      {
        "code" : "16277-6"
      },
      {
        "code" : "16278-4"
      },
      {
        "code" : "16279-2"
      },
      {
        "code" : "16280-0"
      },
      {
        "code" : "16472-3"
      },
      {
        "code" : "16530-8"
      },
      {
        "code" : "16532-4"
      },
      {
        "code" : "16534-0"
      },
      {
        "code" : "16584-5"
      },
      {
        "code" : "16585-2"
      },
      {
        "code" : "16599-3"
      },
      {
        "code" : "16600-9"
      },
      {
        "code" : "16601-7"
      },
      {
        "code" : "16934-2"
      },
      {
        "code" : "16937-5"
      },
      {
        "code" : "16952-4"
      },
      {
        "code" : "16953-2"
      },
      {
        "code" : "16959-9"
      },
      {
        "code" : "16960-7"
      },
      {
        "code" : "16980-5"
      },
      {
        "code" : "16981-3"
      },
      {
        "code" : "17296-5"
      },
      {
        "code" : "17537-2"
      },
      {
        "code" : "17538-0"
      },
      {
        "code" : "17546-3"
      },
      {
        "code" : "17548-9"
      },
      {
        "code" : "19052-0"
      },
      {
        "code" : "20463-6"
      },
      {
        "code" : "21055-9"
      },
      {
        "code" : "21089-8"
      },
      {
        "code" : "21120-1"
      },
      {
        "code" : "21187-0"
      },
      {
        "code" : "21188-8"
      },
      {
        "code" : "21189-6"
      },
      {
        "code" : "21190-4"
      },
      {
        "code" : "21191-2"
      },
      {
        "code" : "21192-0"
      },
      {
        "code" : "21363-7"
      },
      {
        "code" : "21405-6"
      },
      {
        "code" : "21414-8"
      },
      {
        "code" : "21415-5"
      },
      {
        "code" : "21416-3"
      },
      {
        "code" : "21598-8"
      },
      {
        "code" : "21613-5"
      },
      {
        "code" : "22856-9"
      },
      {
        "code" : "22857-7"
      },
      {
        "code" : "22885-8"
      },
      {
        "code" : "22926-0"
      },
      {
        "code" : "22927-8"
      },
      {
        "code" : "22936-9"
      },
      {
        "code" : "22954-2"
      },
      {
        "code" : "22955-9"
      },
      {
        "code" : "23001-1"
      },
      {
        "code" : "23024-3"
      },
      {
        "code" : "23051-6"
      },
      {
        "code" : "23052-4"
      },
      {
        "code" : "23122-5"
      },
      {
        "code" : "23123-3"
      },
      {
        "code" : "23128-2"
      },
      {
        "code" : "23129-0"
      },
      {
        "code" : "23130-8"
      },
      {
        "code" : "23131-6"
      },
      {
        "code" : "23205-8"
      },
      {
        "code" : "23206-6"
      },
      {
        "code" : "23236-3"
      },
      {
        "code" : "23247-0"
      },
      {
        "code" : "23300-7"
      },
      {
        "code" : "23301-5"
      },
      {
        "code" : "23344-5"
      },
      {
        "code" : "23507-7"
      },
      {
        "code" : "23826-1"
      },
      {
        "code" : "23838-6"
      },
      {
        "code" : "23858-4"
      },
      {
        "code" : "24042-4"
      },
      {
        "code" : "24111-7"
      },
      {
        "code" : "25835-0"
      },
      {
        "code" : "25841-8"
      },
      {
        "code" : "25842-6"
      },
      {
        "code" : "26690-8"
      },
      {
        "code" : "26825-0"
      },
      {
        "code" : "27922-4"
      },
      {
        "code" : "27928-1"
      },
      {
        "code" : "27934-9"
      },
      {
        "code" : "27950-5"
      },
      {
        "code" : "27952-1"
      },
      {
        "code" : "27994-3"
      },
      {
        "code" : "27999-2"
      },
      {
        "code" : "28008-1"
      },
      {
        "code" : "29248-2"
      },
      {
        "code" : "29257-3"
      },
      {
        "code" : "29495-9"
      },
      {
        "code" : "29558-4"
      },
      {
        "code" : "29559-2"
      },
      {
        "code" : "29560-0"
      },
      {
        "code" : "29591-5"
      },
      {
        "code" : "29607-9"
      },
      {
        "code" : "29610-3"
      },
      {
        "code" : "29723-4"
      },
      {
        "code" : "29904-0"
      },
      {
        "code" : "29906-5"
      },
      {
        "code" : "29907-3"
      },
      {
        "code" : "29908-1"
      },
      {
        "code" : "29909-9"
      },
      {
        "code" : "29910-7"
      },
      {
        "code" : "30039-2"
      },
      {
        "code" : "30075-6"
      },
      {
        "code" : "30076-4"
      },
      {
        "code" : "30246-3"
      },
      {
        "code" : "30326-3"
      },
      {
        "code" : "30523-5"
      },
      {
        "code" : "32021-8"
      },
      {
        "code" : "32198-4"
      },
      {
        "code" : "32199-2"
      },
      {
        "code" : "32361-8"
      },
      {
        "code" : "32362-6"
      },
      {
        "code" : "32363-4"
      },
      {
        "code" : "32364-2"
      },
      {
        "code" : "32365-9"
      },
      {
        "code" : "32370-9"
      },
      {
        "code" : "32667-8"
      },
      {
        "code" : "32668-6"
      },
      {
        "code" : "32669-4"
      },
      {
        "code" : "32705-6"
      },
      {
        "code" : "32774-2"
      },
      {
        "code" : "33295-7"
      },
      {
        "code" : "33679-2"
      },
      {
        "code" : "33680-0"
      },
      {
        "code" : "33691-7"
      },
      {
        "code" : "33692-5"
      },
      {
        "code" : "33904-4"
      },
      {
        "code" : "33940-8"
      },
      {
        "code" : "33941-6"
      },
      {
        "code" : "33942-4"
      },
      {
        "code" : "33964-8"
      },
      {
        "code" : "33965-5"
      },
      {
        "code" : "33966-3"
      },
      {
        "code" : "33967-1"
      },
      {
        "code" : "33975-4"
      },
      {
        "code" : "33978-8"
      },
      {
        "code" : "33985-3"
      },
      {
        "code" : "33986-1"
      },
      {
        "code" : "34150-3"
      },
      {
        "code" : "34447-3"
      },
      {
        "code" : "34448-1"
      },
      {
        "code" : "34449-9"
      },
      {
        "code" : "34450-7"
      },
      {
        "code" : "34451-5"
      },
      {
        "code" : "34452-3"
      },
      {
        "code" : "34453-1"
      },
      {
        "code" : "34454-9"
      },
      {
        "code" : "34455-6"
      },
      {
        "code" : "34456-4"
      },
      {
        "code" : "34457-2"
      },
      {
        "code" : "34458-0"
      },
      {
        "code" : "34459-8"
      },
      {
        "code" : "34460-6"
      },
      {
        "code" : "34461-4"
      },
      {
        "code" : "34487-9"
      },
      {
        "code" : "34586-8"
      },
      {
        "code" : "34645-2"
      },
      {
        "code" : "34699-9"
      },
      {
        "code" : "34707-0"
      },
      {
        "code" : "34708-8"
      },
      {
        "code" : "34719-5"
      },
      {
        "code" : "34892-0"
      },
      {
        "code" : "35390-4"
      },
      {
        "code" : "35396-1"
      },
      {
        "code" : "35397-9"
      },
      {
        "code" : "35398-7"
      },
      {
        "code" : "35399-5"
      },
      {
        "code" : "35400-1"
      },
      {
        "code" : "35401-9"
      },
      {
        "code" : "35412-6"
      },
      {
        "code" : "35491-0"
      },
      {
        "code" : "35492-8"
      },
      {
        "code" : "35638-6"
      },
      {
        "code" : "35661-8"
      },
      {
        "code" : "35691-5"
      },
      {
        "code" : "35710-3"
      },
      {
        "code" : "35711-1"
      },
      {
        "code" : "35712-9"
      },
      {
        "code" : "35713-7"
      },
      {
        "code" : "35714-5"
      },
      {
        "code" : "35715-2"
      },
      {
        "code" : "35716-0"
      },
      {
        "code" : "35717-8"
      },
      {
        "code" : "35718-6"
      },
      {
        "code" : "35721-0"
      },
      {
        "code" : "35722-8"
      },
      {
        "code" : "35723-6"
      },
      {
        "code" : "35724-4"
      },
      {
        "code" : "35725-1"
      },
      {
        "code" : "35726-9"
      },
      {
        "code" : "35727-7"
      },
      {
        "code" : "35728-5"
      },
      {
        "code" : "35729-3"
      },
      {
        "code" : "35730-1"
      },
      {
        "code" : "35735-0"
      },
      {
        "code" : "35736-8"
      },
      {
        "code" : "37983-4"
      },
      {
        "code" : "37984-2"
      },
      {
        "code" : "37985-9"
      },
      {
        "code" : "38270-5"
      },
      {
        "code" : "38271-3"
      },
      {
        "code" : "38272-1"
      },
      {
        "code" : "38274-7"
      },
      {
        "code" : "38375-2"
      },
      {
        "code" : "38379-4"
      },
      {
        "code" : "38469-3"
      },
      {
        "code" : "38916-3"
      },
      {
        "code" : "38917-1"
      },
      {
        "code" : "38990-8"
      },
      {
        "code" : "39528-5"
      },
      {
        "code" : "40971-4"
      },
      {
        "code" : "40972-2"
      },
      {
        "code" : "40982-1"
      },
      {
        "code" : "40988-8"
      },
      {
        "code" : "41001-9"
      },
      {
        "code" : "41003-5"
      },
      {
        "code" : "41005-0"
      },
      {
        "code" : "41009-2"
      },
      {
        "code" : "41010-0"
      },
      {
        "code" : "41035-7"
      },
      {
        "code" : "41163-7"
      },
      {
        "code" : "41212-2"
      },
      {
        "code" : "41429-2"
      },
      {
        "code" : "41430-0"
      },
      {
        "code" : "41431-8"
      },
      {
        "code" : "41432-6"
      },
      {
        "code" : "41433-4"
      },
      {
        "code" : "41434-2"
      },
      {
        "code" : "41435-9"
      },
      {
        "code" : "41436-7"
      },
      {
        "code" : "41437-5"
      },
      {
        "code" : "41438-3"
      },
      {
        "code" : "41439-1"
      },
      {
        "code" : "41440-9"
      },
      {
        "code" : "41441-7"
      },
      {
        "code" : "41442-5"
      },
      {
        "code" : "41443-3"
      },
      {
        "code" : "41444-1"
      },
      {
        "code" : "41447-4"
      },
      {
        "code" : "41448-2"
      },
      {
        "code" : "41449-0"
      },
      {
        "code" : "41450-8"
      },
      {
        "code" : "41458-1"
      },
      {
        "code" : "41621-4"
      },
      {
        "code" : "41623-0"
      },
      {
        "code" : "41626-3"
      },
      {
        "code" : "41628-9"
      },
      {
        "code" : "41636-2"
      },
      {
        "code" : "41638-8"
      },
      {
        "code" : "41853-3"
      },
      {
        "code" : "41856-6"
      },
      {
        "code" : "41857-4"
      },
      {
        "code" : "42236-0"
      },
      {
        "code" : "42515-7"
      },
      {
        "code" : "42536-3"
      },
      {
        "code" : "42588-4"
      },
      {
        "code" : "42589-2"
      },
      {
        "code" : "42602-3"
      },
      {
        "code" : "42621-3"
      },
      {
        "code" : "42626-2"
      },
      {
        "code" : "42641-1"
      },
      {
        "code" : "42917-5"
      },
      {
        "code" : "42921-7"
      },
      {
        "code" : "42931-6"
      },
      {
        "code" : "43244-3"
      },
      {
        "code" : "43304-5"
      },
      {
        "code" : "43305-2"
      },
      {
        "code" : "43403-5"
      },
      {
        "code" : "43404-3"
      },
      {
        "code" : "43854-9"
      },
      {
        "code" : "43913-3"
      },
      {
        "code" : "44423-2"
      },
      {
        "code" : "44478-6"
      },
      {
        "code" : "44503-1"
      },
      {
        "code" : "44517-1"
      },
      {
        "code" : "44518-9"
      },
      {
        "code" : "44536-1"
      },
      {
        "code" : "44537-9"
      },
      {
        "code" : "44541-1"
      },
      {
        "code" : "44542-9"
      },
      {
        "code" : "44545-2"
      },
      {
        "code" : "44546-0"
      },
      {
        "code" : "44547-8"
      },
      {
        "code" : "44548-6"
      },
      {
        "code" : "44549-4"
      },
      {
        "code" : "44550-2"
      },
      {
        "code" : "44551-0"
      },
      {
        "code" : "44795-3"
      },
      {
        "code" : "44871-2"
      },
      {
        "code" : "45078-3"
      },
      {
        "code" : "45080-9"
      },
      {
        "code" : "45084-1"
      },
      {
        "code" : "45085-8"
      },
      {
        "code" : "45086-6"
      },
      {
        "code" : "45089-0"
      },
      {
        "code" : "45090-8"
      },
      {
        "code" : "45116-1"
      },
      {
        "code" : "45117-9"
      },
      {
        "code" : "45271-4"
      },
      {
        "code" : "45294-6"
      },
      {
        "code" : "46111-1"
      },
      {
        "code" : "46154-1"
      },
      {
        "code" : "46455-2"
      },
      {
        "code" : "46725-8"
      },
      {
        "code" : "46970-0"
      },
      {
        "code" : "47000-5"
      },
      {
        "code" : "47085-6"
      },
      {
        "code" : "47211-8"
      },
      {
        "code" : "47251-4"
      },
      {
        "code" : "47359-5"
      },
      {
        "code" : "47387-6"
      },
      {
        "code" : "47396-7"
      },
      {
        "code" : "47532-7"
      },
      {
        "code" : "47965-9"
      },
      {
        "code" : "48023-6"
      },
      {
        "code" : "48174-7"
      },
      {
        "code" : "48508-6"
      },
      {
        "code" : "48576-3"
      },
      {
        "code" : "48588-8"
      },
      {
        "code" : "48589-6"
      },
      {
        "code" : "48683-7"
      },
      {
        "code" : "48864-3"
      },
      {
        "code" : "48865-0"
      },
      {
        "code" : "48866-8"
      },
      {
        "code" : "48867-6"
      },
      {
        "code" : "48868-4"
      },
      {
        "code" : "48869-2"
      },
      {
        "code" : "48870-0"
      },
      {
        "code" : "48871-8"
      },
      {
        "code" : "49101-9"
      },
      {
        "code" : "49520-0"
      },
      {
        "code" : "49521-8"
      },
      {
        "code" : "49523-4"
      },
      {
        "code" : "49524-2"
      },
      {
        "code" : "49526-7"
      },
      {
        "code" : "49527-5"
      },
      {
        "code" : "49528-3"
      },
      {
        "code" : "49531-7"
      },
      {
        "code" : "49535-8"
      },
      {
        "code" : "49612-5"
      },
      {
        "code" : "49671-1"
      },
      {
        "code" : "49672-9"
      },
      {
        "code" : "49780-0"
      },
      {
        "code" : "49799-0"
      },
      {
        "code" : "49801-4"
      },
      {
        "code" : "49847-7"
      },
      {
        "code" : "49863-4"
      },
      {
        "code" : "49891-5"
      },
      {
        "code" : "4990-8"
      },
      {
        "code" : "4991-6"
      },
      {
        "code" : "4992-4"
      },
      {
        "code" : "4993-2"
      },
      {
        "code" : "4994-0"
      },
      {
        "code" : "4995-7"
      },
      {
        "code" : "4996-5"
      },
      {
        "code" : "4997-3"
      },
      {
        "code" : "4998-1"
      },
      {
        "code" : "4999-9"
      },
      {
        "code" : "5000-5"
      },
      {
        "code" : "5001-3"
      },
      {
        "code" : "5002-1"
      },
      {
        "code" : "5003-9"
      },
      {
        "code" : "5004-7"
      },
      {
        "code" : "5005-4"
      },
      {
        "code" : "5006-2"
      },
      {
        "code" : "5007-0"
      },
      {
        "code" : "5008-8"
      },
      {
        "code" : "5009-6"
      },
      {
        "code" : "5010-4"
      },
      {
        "code" : "5011-2"
      },
      {
        "code" : "5012-0"
      },
      {
        "code" : "5013-8"
      },
      {
        "code" : "5014-6"
      },
      {
        "code" : "5015-3"
      },
      {
        "code" : "5016-1"
      },
      {
        "code" : "5017-9"
      },
      {
        "code" : "5018-7"
      },
      {
        "code" : "5020-3"
      },
      {
        "code" : "5021-1"
      },
      {
        "code" : "5022-9"
      },
      {
        "code" : "5023-7"
      },
      {
        "code" : "5024-5"
      },
      {
        "code" : "5025-2"
      },
      {
        "code" : "5026-0"
      },
      {
        "code" : "5027-8"
      },
      {
        "code" : "5028-6"
      },
      {
        "code" : "5029-4"
      },
      {
        "code" : "5030-2"
      },
      {
        "code" : "5031-0"
      },
      {
        "code" : "50311-0"
      },
      {
        "code" : "5032-8"
      },
      {
        "code" : "50326-8"
      },
      {
        "code" : "5033-6"
      },
      {
        "code" : "5034-4"
      },
      {
        "code" : "50344-1"
      },
      {
        "code" : "50345-8"
      },
      {
        "code" : "50346-6"
      },
      {
        "code" : "50347-4"
      },
      {
        "code" : "50348-2"
      },
      {
        "code" : "50349-0"
      },
      {
        "code" : "5035-1"
      },
      {
        "code" : "5036-9"
      },
      {
        "code" : "50387-0"
      },
      {
        "code" : "50388-8"
      },
      {
        "code" : "50411-8"
      },
      {
        "code" : "50412-6"
      },
      {
        "code" : "50547-9"
      },
      {
        "code" : "50702-0"
      },
      {
        "code" : "50704-6"
      },
      {
        "code" : "50705-3"
      },
      {
        "code" : "50706-1"
      },
      {
        "code" : "50708-7"
      },
      {
        "code" : "51578-3"
      },
      {
        "code" : "51646-8"
      },
      {
        "code" : "51647-6"
      },
      {
        "code" : "51655-9"
      },
      {
        "code" : "51663-3"
      },
      {
        "code" : "51664-1"
      },
      {
        "code" : "51665-8"
      },
      {
        "code" : "51666-6"
      },
      {
        "code" : "51667-4"
      },
      {
        "code" : "51669-0"
      },
      {
        "code" : "51988-4"
      },
      {
        "code" : "52988-3"
      },
      {
        "code" : "52989-1"
      },
      {
        "code" : "52990-9"
      },
      {
        "code" : "53584-9"
      },
      {
        "code" : "53603-7"
      },
      {
        "code" : "53605-2"
      },
      {
        "code" : "53606-0"
      },
      {
        "code" : "53607-8"
      },
      {
        "code" : "53608-6"
      },
      {
        "code" : "53879-3"
      },
      {
        "code" : "53917-1"
      },
      {
        "code" : "53925-4"
      },
      {
        "code" : "53926-2"
      },
      {
        "code" : "53927-0"
      },
      {
        "code" : "54036-9"
      },
      {
        "code" : "54091-4"
      },
      {
        "code" : "54142-5"
      },
      {
        "code" : "54143-3"
      },
      {
        "code" : "54144-1"
      },
      {
        "code" : "54905-5"
      },
      {
        "code" : "54906-3"
      },
      {
        "code" : "55142-4"
      },
      {
        "code" : "55144-0"
      },
      {
        "code" : "55145-7"
      },
      {
        "code" : "55465-9"
      },
      {
        "code" : "56748-7"
      },
      {
        "code" : "57180-2"
      },
      {
        "code" : "57287-5"
      },
      {
        "code" : "57288-3"
      },
      {
        "code" : "57289-1"
      },
      {
        "code" : "57441-8"
      },
      {
        "code" : "57458-2"
      },
      {
        "code" : "57910-2"
      },
      {
        "code" : "57985-4"
      },
      {
        "code" : "58931-7"
      },
      {
        "code" : "59152-9"
      },
      {
        "code" : "59263-4"
      },
      {
        "code" : "59264-2"
      },
      {
        "code" : "59388-9"
      },
      {
        "code" : "59805-2"
      },
      {
        "code" : "60255-7"
      },
      {
        "code" : "60256-5"
      },
      {
        "code" : "60259-9"
      },
      {
        "code" : "60260-7"
      },
      {
        "code" : "60261-5"
      },
      {
        "code" : "60262-3"
      },
      {
        "code" : "60263-1"
      },
      {
        "code" : "60265-6"
      },
      {
        "code" : "60266-4"
      },
      {
        "code" : "60267-2"
      },
      {
        "code" : "60268-0"
      },
      {
        "code" : "60269-8"
      },
      {
        "code" : "60270-6"
      },
      {
        "code" : "60271-4"
      },
      {
        "code" : "60272-2"
      },
      {
        "code" : "60273-0"
      },
      {
        "code" : "60274-8"
      },
      {
        "code" : "60275-5"
      },
      {
        "code" : "60415-7"
      },
      {
        "code" : "60416-5"
      },
      {
        "code" : "60417-3"
      },
      {
        "code" : "60418-1"
      },
      {
        "code" : "60419-9"
      },
      {
        "code" : "60420-7"
      },
      {
        "code" : "60427-2"
      },
      {
        "code" : "60429-8"
      },
      {
        "code" : "60489-2"
      },
      {
        "code" : "60525-3"
      },
      {
        "code" : "60530-3"
      },
      {
        "code" : "60534-5"
      },
      {
        "code" : "60544-4"
      },
      {
        "code" : "60545-1"
      },
      {
        "code" : "61360-4"
      },
      {
        "code" : "61361-2"
      },
      {
        "code" : "61362-0"
      },
      {
        "code" : "61365-3"
      },
      {
        "code" : "61366-1"
      },
      {
        "code" : "61367-9"
      },
      {
        "code" : "61368-7"
      },
      {
        "code" : "61369-5"
      },
      {
        "code" : "61370-3"
      },
      {
        "code" : "61371-1"
      },
      {
        "code" : "61372-9"
      },
      {
        "code" : "61373-7"
      },
      {
        "code" : "61374-5"
      },
      {
        "code" : "61375-2"
      },
      {
        "code" : "61376-0"
      },
      {
        "code" : "61377-8"
      },
      {
        "code" : "61378-6"
      },
      {
        "code" : "61379-4"
      },
      {
        "code" : "61380-2"
      },
      {
        "code" : "61381-0"
      },
      {
        "code" : "61382-8"
      },
      {
        "code" : "61383-6"
      },
      {
        "code" : "61384-4"
      },
      {
        "code" : "61385-1"
      },
      {
        "code" : "61386-9"
      },
      {
        "code" : "61387-7"
      },
      {
        "code" : "61388-5"
      },
      {
        "code" : "61389-3"
      },
      {
        "code" : "61390-1"
      },
      {
        "code" : "61391-9"
      },
      {
        "code" : "61392-7"
      },
      {
        "code" : "61393-5"
      },
      {
        "code" : "61394-3"
      },
      {
        "code" : "61395-0"
      },
      {
        "code" : "61396-8"
      },
      {
        "code" : "61397-6"
      },
      {
        "code" : "61398-4"
      },
      {
        "code" : "61399-2"
      },
      {
        "code" : "61400-8"
      },
      {
        "code" : "61401-6"
      },
      {
        "code" : "61402-4"
      },
      {
        "code" : "61403-2"
      },
      {
        "code" : "61404-0"
      },
      {
        "code" : "61405-7"
      },
      {
        "code" : "62423-9"
      },
      {
        "code" : "62424-7"
      },
      {
        "code" : "62427-0"
      },
      {
        "code" : "62460-1"
      },
      {
        "code" : "62461-9"
      },
      {
        "code" : "62478-3"
      },
      {
        "code" : "62479-1"
      },
      {
        "code" : "62480-9"
      },
      {
        "code" : "62481-7"
      },
      {
        "code" : "62482-5"
      },
      {
        "code" : "62483-3"
      },
      {
        "code" : "62484-1"
      },
      {
        "code" : "62485-8"
      },
      {
        "code" : "62486-6"
      },
      {
        "code" : "62859-4"
      },
      {
        "code" : "62860-2"
      },
      {
        "code" : "62861-0"
      },
      {
        "code" : "6307-3"
      },
      {
        "code" : "6308-1"
      },
      {
        "code" : "6329-7"
      },
      {
        "code" : "6333-9"
      },
      {
        "code" : "6334-7"
      },
      {
        "code" : "63431-1"
      },
      {
        "code" : "63465-9"
      },
      {
        "code" : "63475-8"
      },
      {
        "code" : "6356-0"
      },
      {
        "code" : "6357-8"
      },
      {
        "code" : "63574-8"
      },
      {
        "code" : "6386-7"
      },
      {
        "code" : "6387-5"
      },
      {
        "code" : "6396-6"
      },
      {
        "code" : "6410-5"
      },
      {
        "code" : "6421-2"
      },
      {
        "code" : "6475-8"
      },
      {
        "code" : "6482-4"
      },
      {
        "code" : "6483-2"
      },
      {
        "code" : "6509-4"
      },
      {
        "code" : "6514-4"
      },
      {
        "code" : "6515-1"
      },
      {
        "code" : "6516-9"
      },
      {
        "code" : "6521-9"
      },
      {
        "code" : "6568-0"
      },
      {
        "code" : "65809-6"
      },
      {
        "code" : "67561-1"
      },
      {
        "code" : "67562-9"
      },
      {
        "code" : "67563-7"
      },
      {
        "code" : "67818-5"
      },
      {
        "code" : "67819-3"
      },
      {
        "code" : "67820-1"
      },
      {
        "code" : "67821-9"
      },
      {
        "code" : "68466-2"
      },
      {
        "code" : "68546-1"
      },
      {
        "code" : "68547-9"
      },
      {
        "code" : "68954-7"
      },
      {
        "code" : "69353-1"
      },
      {
        "code" : "69562-7"
      },
      {
        "code" : "69563-5"
      },
      {
        "code" : "69565-0"
      },
      {
        "code" : "69566-8"
      },
      {
        "code" : "69567-6"
      },
      {
        "code" : "69577-5"
      },
      {
        "code" : "69767-2"
      },
      {
        "code" : "69933-0"
      },
      {
        "code" : "69935-5"
      },
      {
        "code" : "69936-3"
      },
      {
        "code" : "69937-1"
      },
      {
        "code" : "69938-9"
      },
      {
        "code" : "69939-7"
      },
      {
        "code" : "70015-3"
      },
      {
        "code" : "70016-1"
      },
      {
        "code" : "70018-7"
      },
      {
        "code" : "70019-5"
      },
      {
        "code" : "70020-3"
      },
      {
        "code" : "70021-1"
      },
      {
        "code" : "70022-9"
      },
      {
        "code" : "70023-7"
      },
      {
        "code" : "70024-5"
      },
      {
        "code" : "70025-2"
      },
      {
        "code" : "70026-0"
      },
      {
        "code" : "70068-2"
      },
      {
        "code" : "70069-0"
      },
      {
        "code" : "70070-8"
      },
      {
        "code" : "70071-6"
      },
      {
        "code" : "70165-6"
      },
      {
        "code" : "70166-4"
      },
      {
        "code" : "70167-2"
      },
      {
        "code" : "70292-8"
      },
      {
        "code" : "70295-1"
      },
      {
        "code" : "70296-9"
      },
      {
        "code" : "70568-1"
      },
      {
        "code" : "70852-9"
      },
      {
        "code" : "70853-7"
      },
      {
        "code" : "71429-5"
      },
      {
        "code" : "71718-1"
      },
      {
        "code" : "71719-9"
      },
      {
        "code" : "72111-8"
      },
      {
        "code" : "72389-0"
      },
      {
        "code" : "72390-8"
      },
      {
        "code" : "72391-6"
      },
      {
        "code" : "72495-5"
      },
      {
        "code" : "72505-1"
      },
      {
        "code" : "74472-2"
      },
      {
        "code" : "74473-0"
      },
      {
        "code" : "74474-8"
      },
      {
        "code" : "74534-9"
      },
      {
        "code" : "74535-6"
      },
      {
        "code" : "74536-4"
      },
      {
        "code" : "74537-2"
      },
      {
        "code" : "74538-0"
      },
      {
        "code" : "74539-8"
      },
      {
        "code" : "74785-7"
      },
      {
        "code" : "74786-5"
      },
      {
        "code" : "74853-3"
      },
      {
        "code" : "74857-4"
      },
      {
        "code" : "75411-9"
      },
      {
        "code" : "75543-9"
      },
      {
        "code" : "75664-3"
      },
      {
        "code" : "75695-7"
      },
      {
        "code" : "75754-2"
      },
      {
        "code" : "76070-2"
      },
      {
        "code" : "76071-0"
      },
      {
        "code" : "76072-8"
      },
      {
        "code" : "76074-4"
      },
      {
        "code" : "76076-9"
      },
      {
        "code" : "76077-7"
      },
      {
        "code" : "76078-5"
      },
      {
        "code" : "76079-3"
      },
      {
        "code" : "76080-1"
      },
      {
        "code" : "76084-3"
      },
      {
        "code" : "76085-0"
      },
      {
        "code" : "76086-8"
      },
      {
        "code" : "76087-6"
      },
      {
        "code" : "76088-4"
      },
      {
        "code" : "76089-2"
      },
      {
        "code" : "76575-0"
      },
      {
        "code" : "77022-2"
      },
      {
        "code" : "77023-0"
      },
      {
        "code" : "77024-8"
      },
      {
        "code" : "77025-5"
      },
      {
        "code" : "77026-3"
      },
      {
        "code" : "77027-1"
      },
      {
        "code" : "77028-9"
      },
      {
        "code" : "77368-9"
      },
      {
        "code" : "77369-7"
      },
      {
        "code" : "77395-2"
      },
      {
        "code" : "77396-0"
      },
      {
        "code" : "77399-4"
      },
      {
        "code" : "77400-0"
      },
      {
        "code" : "77666-6"
      },
      {
        "code" : "7811-3"
      },
      {
        "code" : "7821-2"
      },
      {
        "code" : "78357-1"
      },
      {
        "code" : "7881-6"
      },
      {
        "code" : "7899-8"
      },
      {
        "code" : "7904-6"
      },
      {
        "code" : "7906-1"
      },
      {
        "code" : "79190-5"
      },
      {
        "code" : "7936-8"
      },
      {
        "code" : "7964-0"
      },
      {
        "code" : "7968-1"
      },
      {
        "code" : "7974-9"
      },
      {
        "code" : "7993-9"
      },
      {
        "code" : "7996-2"
      },
      {
        "code" : "8005-1"
      },
      {
        "code" : "8012-7"
      },
      {
        "code" : "8025-9"
      },
      {
        "code" : "80363-5"
      },
      {
        "code" : "80364-3"
      },
      {
        "code" : "80366-8"
      },
      {
        "code" : "8049-9"
      },
      {
        "code" : "8057-2"
      },
      {
        "code" : "80597-8"
      },
      {
        "code" : "80682-8"
      },
      {
        "code" : "80683-6"
      },
      {
        "code" : "81117-4"
      },
      {
        "code" : "81152-1"
      },
      {
        "code" : "81153-9"
      },
      {
        "code" : "81651-2"
      },
      {
        "code" : "81688-4"
      },
      {
        "code" : "81689-2"
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
        "code" : "82306-2"
      },
      {
        "code" : "83065-3"
      },
      {
        "code" : "85362-2"
      },
      {
        "code" : "85477-8"
      },
      {
        "code" : "85478-6"
      },
      {
        "code" : "85479-4"
      },
      {
        "code" : "85583-3"
      },
      {
        "code" : "85584-1"
      },
      {
        "code" : "85621-1"
      },
      {
        "code" : "85622-9"
      },
      {
        "code" : "85623-7"
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
        "code" : "86190-6"
      },
      {
        "code" : "86328-2"
      },
      {
        "code" : "86329-0"
      },
      {
        "code" : "86330-8"
      },
      {
        "code" : "86331-6"
      },
      {
        "code" : "86332-4"
      },
      {
        "code" : "86333-2"
      },
      {
        "code" : "86334-0"
      },
      {
        "code" : "86510-5"
      },
      {
        "code" : "86511-3"
      },
      {
        "code" : "86512-1"
      },
      {
        "code" : "86514-7"
      },
      {
        "code" : "86515-4"
      },
      {
        "code" : "86518-8"
      },
      {
        "code" : "86520-4"
      },
      {
        "code" : "86536-0"
      },
      {
        "code" : "86537-8"
      },
      {
        "code" : "86538-6"
      },
      {
        "code" : "86539-4"
      },
      {
        "code" : "86541-0"
      },
      {
        "code" : "86542-8"
      },
      {
        "code" : "86543-6"
      },
      {
        "code" : "86544-4"
      },
      {
        "code" : "86545-1"
      },
      {
        "code" : "86546-9"
      },
      {
        "code" : "86559-2"
      },
      {
        "code" : "86560-0"
      },
      {
        "code" : "86562-6"
      },
      {
        "code" : "86564-2"
      },
      {
        "code" : "86568-3"
      },
      {
        "code" : "86569-1"
      },
      {
        "code" : "86571-7"
      },
      {
        "code" : "86572-5"
      },
      {
        "code" : "86573-3"
      },
      {
        "code" : "86574-1"
      },
      {
        "code" : "86575-8"
      },
      {
        "code" : "86576-6"
      },
      {
        "code" : "86577-4"
      },
      {
        "code" : "86578-2"
      },
      {
        "code" : "86579-0"
      },
      {
        "code" : "86580-8"
      },
      {
        "code" : "86582-4"
      },
      {
        "code" : "86586-5"
      },
      {
        "code" : "86588-1"
      },
      {
        "code" : "86589-9"
      },
      {
        "code" : "86593-1"
      },
      {
        "code" : "86594-9"
      },
      {
        "code" : "86690-5"
      },
      {
        "code" : "86691-3"
      },
      {
        "code" : "86692-1"
      },
      {
        "code" : "87285-3"
      },
      {
        "code" : "87373-7"
      },
      {
        "code" : "87374-5"
      },
      {
        "code" : "87398-4"
      },
      {
        "code" : "87755-5"
      },
      {
        "code" : "87758-9"
      },
      {
        "code" : "87949-4"
      },
      {
        "code" : "87960-1"
      },
      {
        "code" : "87961-9"
      },
      {
        "code" : "87983-3"
      },
      {
        "code" : "87984-1"
      },
      {
        "code" : "87985-8"
      },
      {
        "code" : "87988-2"
      },
      {
        "code" : "87989-0"
      },
      {
        "code" : "87993-2"
      },
      {
        "code" : "88128-4"
      },
      {
        "code" : "88131-8"
      },
      {
        "code" : "88132-6"
      },
      {
        "code" : "88133-4"
      },
      {
        "code" : "88134-2"
      },
      {
        "code" : "88138-3"
      },
      {
        "code" : "88140-9"
      },
      {
        "code" : "88160-7"
      },
      {
        "code" : "88163-1"
      },
      {
        "code" : "88164-9"
      },
      {
        "code" : "88165-6"
      },
      {
        "code" : "88166-4"
      },
      {
        "code" : "88177-1"
      },
      {
        "code" : "88178-9"
      },
      {
        "code" : "88192-0"
      },
      {
        "code" : "88193-8"
      },
      {
        "code" : "88195-3"
      },
      {
        "code" : "88196-1"
      },
      {
        "code" : "88197-9"
      },
      {
        "code" : "88198-7"
      },
      {
        "code" : "88199-5"
      },
      {
        "code" : "88202-7"
      },
      {
        "code" : "88204-3"
      },
      {
        "code" : "88207-6"
      },
      {
        "code" : "88208-4"
      },
      {
        "code" : "88209-2"
      },
      {
        "code" : "88210-0"
      },
      {
        "code" : "88212-6"
      },
      {
        "code" : "88213-4"
      },
      {
        "code" : "88214-2"
      },
      {
        "code" : "88215-9"
      },
      {
        "code" : "88216-7"
      },
      {
        "code" : "88217-5"
      },
      {
        "code" : "88218-3"
      },
      {
        "code" : "88219-1"
      },
      {
        "code" : "88220-9"
      },
      {
        "code" : "88221-7"
      },
      {
        "code" : "88224-1"
      },
      {
        "code" : "88225-8"
      },
      {
        "code" : "88226-6"
      },
      {
        "code" : "88227-4"
      },
      {
        "code" : "88228-2"
      },
      {
        "code" : "88229-0"
      },
      {
        "code" : "88230-8"
      },
      {
        "code" : "88232-4"
      },
      {
        "code" : "88233-2"
      },
      {
        "code" : "88528-5"
      },
      {
        "code" : "88529-3"
      },
      {
        "code" : "88530-1"
      },
      {
        "code" : "88533-5"
      },
      {
        "code" : "88534-3"
      },
      {
        "code" : "88535-0"
      },
      {
        "code" : "88536-8"
      },
      {
        "code" : "88538-4"
      },
      {
        "code" : "88539-2"
      },
      {
        "code" : "88540-0"
      },
      {
        "code" : "88541-8"
      },
      {
        "code" : "88546-7"
      },
      {
        "code" : "88547-5"
      },
      {
        "code" : "88548-3"
      },
      {
        "code" : "88549-1"
      },
      {
        "code" : "88550-9"
      },
      {
        "code" : "88551-7"
      },
      {
        "code" : "88552-5"
      },
      {
        "code" : "88553-3"
      },
      {
        "code" : "88554-1"
      },
      {
        "code" : "88556-6"
      },
      {
        "code" : "88557-4"
      },
      {
        "code" : "88558-2"
      },
      {
        "code" : "88559-0"
      },
      {
        "code" : "88560-8"
      },
      {
        "code" : "88561-6"
      },
      {
        "code" : "88562-4"
      },
      {
        "code" : "88563-2"
      },
      {
        "code" : "88565-7"
      },
      {
        "code" : "88567-3"
      },
      {
        "code" : "88570-7"
      },
      {
        "code" : "88577-2"
      },
      {
        "code" : "88579-8"
      },
      {
        "code" : "88590-5"
      },
      {
        "code" : "88591-3"
      },
      {
        "code" : "88592-1"
      },
      {
        "code" : "88593-9"
      },
      {
        "code" : "88594-7"
      },
      {
        "code" : "88595-4"
      },
      {
        "code" : "88596-2"
      },
      {
        "code" : "88597-0"
      },
      {
        "code" : "88599-6"
      },
      {
        "code" : "88600-2"
      },
      {
        "code" : "88604-4"
      },
      {
        "code" : "88605-1"
      },
      {
        "code" : "88607-7"
      },
      {
        "code" : "88608-5"
      },
      {
        "code" : "88609-3"
      },
      {
        "code" : "88610-1"
      },
      {
        "code" : "88611-9"
      },
      {
        "code" : "88612-7"
      },
      {
        "code" : "88613-5"
      },
      {
        "code" : "88614-3"
      },
      {
        "code" : "88615-0"
      },
      {
        "code" : "88616-8"
      },
      {
        "code" : "88617-6"
      },
      {
        "code" : "88618-4"
      },
      {
        "code" : "88619-2"
      },
      {
        "code" : "88620-0"
      },
      {
        "code" : "88621-8"
      },
      {
        "code" : "88626-7"
      },
      {
        "code" : "88627-5"
      },
      {
        "code" : "88628-3"
      },
      {
        "code" : "88690-3"
      },
      {
        "code" : "88718-2"
      },
      {
        "code" : "88720-8"
      },
      {
        "code" : "88874-3"
      },
      {
        "code" : "88889-1"
      },
      {
        "code" : "88911-3"
      },
      {
        "code" : "88912-1"
      },
      {
        "code" : "88913-9"
      },
      {
        "code" : "88914-7"
      },
      {
        "code" : "88915-4"
      },
      {
        "code" : "88918-8"
      },
      {
        "code" : "88924-6"
      },
      {
        "code" : "88925-3"
      },
      {
        "code" : "88926-1"
      },
      {
        "code" : "88927-9"
      },
      {
        "code" : "88928-7"
      },
      {
        "code" : "89342-0"
      },
      {
        "code" : "89584-7"
      },
      {
        "code" : "89585-4"
      },
      {
        "code" : "89587-0"
      },
      {
        "code" : "89592-0"
      },
      {
        "code" : "89593-8"
      },
      {
        "code" : "89596-1"
      },
      {
        "code" : "89597-9"
      },
      {
        "code" : "89598-7"
      },
      {
        "code" : "89635-7"
      },
      {
        "code" : "89645-6"
      },
      {
        "code" : "89646-4"
      },
      {
        "code" : "89647-2"
      },
      {
        "code" : "89649-8"
      },
      {
        "code" : "89650-6"
      },
      {
        "code" : "89651-4"
      },
      {
        "code" : "89996-3"
      },
      {
        "code" : "90001-9"
      },
      {
        "code" : "90042-3"
      },
      {
        "code" : "90272-6"
      },
      {
        "code" : "90283-3"
      },
      {
        "code" : "90287-4"
      },
      {
        "code" : "90288-2"
      },
      {
        "code" : "90289-0"
      },
      {
        "code" : "90302-1"
      },
      {
        "code" : "90339-3"
      },
      {
        "code" : "90340-1"
      },
      {
        "code" : "90450-8"
      },
      {
        "code" : "90451-6"
      },
      {
        "code" : "90452-4"
      },
      {
        "code" : "90453-2"
      },
      {
        "code" : "90454-0"
      },
      {
        "code" : "90459-9"
      },
      {
        "code" : "90460-7"
      },
      {
        "code" : "90462-3"
      },
      {
        "code" : "90463-1"
      },
      {
        "code" : "90806-1"
      },
      {
        "code" : "90807-9"
      },
      {
        "code" : "90808-7"
      },
      {
        "code" : "90809-5"
      },
      {
        "code" : "90810-3"
      },
      {
        "code" : "91057-0"
      },
      {
        "code" : "91058-8"
      },
      {
        "code" : "91059-6"
      },
      {
        "code" : "91060-4"
      },
      {
        "code" : "91061-2"
      },
      {
        "code" : "91066-1"
      },
      {
        "code" : "91067-9"
      },
      {
        "code" : "91068-7"
      },
      {
        "code" : "91069-5"
      },
      {
        "code" : "91070-3"
      },
      {
        "code" : "91071-1"
      },
      {
        "code" : "91074-5"
      },
      {
        "code" : "91077-8"
      },
      {
        "code" : "91078-6"
      },
      {
        "code" : "91079-4"
      },
      {
        "code" : "91081-0"
      },
      {
        "code" : "91130-5"
      },
      {
        "code" : "91131-3"
      },
      {
        "code" : "91132-1"
      },
      {
        "code" : "91133-9"
      },
      {
        "code" : "91763-3"
      },
      {
        "code" : "91766-6"
      },
      {
        "code" : "91769-0"
      },
      {
        "code" : "91791-4"
      },
      {
        "code" : "91792-2"
      },
      {
        "code" : "91793-0"
      },
      {
        "code" : "91794-8"
      },
      {
        "code" : "91795-5"
      },
      {
        "code" : "91796-3"
      },
      {
        "code" : "91798-9"
      },
      {
        "code" : "91799-7"
      },
      {
        "code" : "91800-3"
      },
      {
        "code" : "91801-1"
      },
      {
        "code" : "91802-9"
      },
      {
        "code" : "91803-7"
      },
      {
        "code" : "91804-5"
      },
      {
        "code" : "91805-2"
      },
      {
        "code" : "91806-0"
      },
      {
        "code" : "91807-8"
      },
      {
        "code" : "91809-4"
      },
      {
        "code" : "91815-1"
      },
      {
        "code" : "91816-9"
      },
      {
        "code" : "91817-7"
      },
      {
        "code" : "91820-1"
      },
      {
        "code" : "91823-5"
      },
      {
        "code" : "91825-0"
      },
      {
        "code" : "91827-6"
      },
      {
        "code" : "91828-4"
      },
      {
        "code" : "91829-2"
      },
      {
        "code" : "91830-0"
      },
      {
        "code" : "91840-9"
      },
      {
        "code" : "91842-5"
      },
      {
        "code" : "91843-3"
      },
      {
        "code" : "91844-1"
      },
      {
        "code" : "91846-6"
      },
      {
        "code" : "91847-4"
      },
      {
        "code" : "91848-2"
      },
      {
        "code" : "91849-0"
      },
      {
        "code" : "91852-4"
      },
      {
        "code" : "91854-0"
      },
      {
        "code" : "91856-5"
      },
      {
        "code" : "91857-3"
      },
      {
        "code" : "91858-1"
      },
      {
        "code" : "91859-9"
      },
      {
        "code" : "91862-3"
      },
      {
        "code" : "91863-1"
      },
      {
        "code" : "91864-9"
      },
      {
        "code" : "91867-2"
      },
      {
        "code" : "91868-0"
      },
      {
        "code" : "91869-8"
      },
      {
        "code" : "91874-8"
      },
      {
        "code" : "91875-5"
      },
      {
        "code" : "92125-4"
      },
      {
        "code" : "92126-2"
      },
      {
        "code" : "92127-0"
      },
      {
        "code" : "92128-8"
      },
      {
        "code" : "92129-6"
      },
      {
        "code" : "92130-4"
      },
      {
        "code" : "92131-2"
      },
      {
        "code" : "92133-8"
      },
      {
        "code" : "92134-6"
      },
      {
        "code" : "92137-9"
      },
      {
        "code" : "92138-7"
      },
      {
        "code" : "92139-5"
      },
      {
        "code" : "92140-3"
      },
      {
        "code" : "92141-1"
      },
      {
        "code" : "92142-9"
      },
      {
        "code" : "92144-5"
      },
      {
        "code" : "92145-2"
      },
      {
        "code" : "92577-6"
      },
      {
        "code" : "92685-7"
      },
      {
        "code" : "92687-3"
      },
      {
        "code" : "92689-9"
      },
      {
        "code" : "92691-5"
      },
      {
        "code" : "92693-1"
      },
      {
        "code" : "92698-0"
      },
      {
        "code" : "92699-8"
      },
      {
        "code" : "92700-4"
      },
      {
        "code" : "92701-2"
      },
      {
        "code" : "92723-6"
      },
      {
        "code" : "92770-7"
      },
      {
        "code" : "92771-5"
      },
      {
        "code" : "92773-1"
      },
      {
        "code" : "92774-9"
      },
      {
        "code" : "92775-6"
      },
      {
        "code" : "92776-4"
      },
      {
        "code" : "92777-2"
      },
      {
        "code" : "92779-8"
      },
      {
        "code" : "92780-6"
      },
      {
        "code" : "92781-4"
      },
      {
        "code" : "92782-2"
      },
      {
        "code" : "92783-0"
      },
      {
        "code" : "92784-8"
      },
      {
        "code" : "92785-5"
      },
      {
        "code" : "92787-1"
      },
      {
        "code" : "92788-9"
      },
      {
        "code" : "92790-5"
      },
      {
        "code" : "92791-3"
      },
      {
        "code" : "92792-1"
      },
      {
        "code" : "92793-9"
      },
      {
        "code" : "92794-7"
      },
      {
        "code" : "92795-4"
      },
      {
        "code" : "92796-2"
      },
      {
        "code" : "92797-0"
      },
      {
        "code" : "92798-8"
      },
      {
        "code" : "92799-6"
      },
      {
        "code" : "92800-2"
      },
      {
        "code" : "92801-0"
      },
      {
        "code" : "92802-8"
      },
      {
        "code" : "92803-6"
      },
      {
        "code" : "92804-4"
      },
      {
        "code" : "92808-5"
      },
      {
        "code" : "92809-3"
      },
      {
        "code" : "92870-5"
      },
      {
        "code" : "92871-3"
      },
      {
        "code" : "92872-1"
      },
      {
        "code" : "92873-9"
      },
      {
        "code" : "92874-7"
      },
      {
        "code" : "92875-4"
      },
      {
        "code" : "92888-7"
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
        "code" : "93385-3"
      },
      {
        "code" : "93386-1"
      },
      {
        "code" : "93387-9"
      },
      {
        "code" : "93388-7"
      },
      {
        "code" : "93391-1"
      },
      {
        "code" : "93392-9"
      },
      {
        "code" : "93393-7"
      },
      {
        "code" : "93394-5"
      },
      {
        "code" : "93395-2"
      },
      {
        "code" : "93396-0"
      },
      {
        "code" : "93397-8"
      },
      {
        "code" : "93398-6"
      },
      {
        "code" : "93399-4"
      },
      {
        "code" : "93401-8"
      },
      {
        "code" : "93402-6"
      },
      {
        "code" : "93403-4"
      },
      {
        "code" : "93404-2"
      },
      {
        "code" : "93405-9"
      },
      {
        "code" : "93406-7"
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
        "code" : "94183-1"
      },
      {
        "code" : "94184-9"
      },
      {
        "code" : "94309-2"
      },
      {
        "code" : "94365-4"
      },
      {
        "code" : "94366-2"
      },
      {
        "code" : "94367-0"
      },
      {
        "code" : "94368-8"
      },
      {
        "code" : "94369-6"
      },
      {
        "code" : "94370-4"
      },
      {
        "code" : "94371-2"
      },
      {
        "code" : "94372-0"
      },
      {
        "code" : "94373-8"
      },
      {
        "code" : "94374-6"
      },
      {
        "code" : "94375-3"
      },
      {
        "code" : "94376-1"
      },
      {
        "code" : "94377-9"
      },
      {
        "code" : "94378-7"
      },
      {
        "code" : "94379-5"
      },
      {
        "code" : "94380-3"
      },
      {
        "code" : "94394-4"
      },
      {
        "code" : "94395-1"
      },
      {
        "code" : "94396-9"
      },
      {
        "code" : "94421-5"
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
        "code" : "94500-6"
      },
      {
        "code" : "94501-4"
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
        "code" : "94660-8"
      },
      {
        "code" : "94759-8"
      },
      {
        "code" : "94822-4"
      },
      {
        "code" : "94827-3"
      },
      {
        "code" : "94838-0"
      },
      {
        "code" : "94845-5"
      },
      {
        "code" : "95406-5"
      },
      {
        "code" : "95424-8"
      },
      {
        "code" : "95534-4"
      },
      {
        "code" : "95535-1"
      },
      {
        "code" : "95536-9"
      },
      {
        "code" : "95539-3"
      },
      {
        "code" : "95608-6"
      },
      {
        "code" : "95659-9"
      },
      {
        "code" : "9571-1"
      },
      {
        "code" : "9572-9"
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
        "code" : "95912-2"
      },
      {
        "code" : "95913-0"
      },
      {
        "code" : "95914-8"
      },
      {
        "code" : "95915-5"
      },
      {
        "code" : "95916-3"
      },
      {
        "code" : "95917-1"
      },
      {
        "code" : "96056-7"
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
        "code" : "96503-8"
      },
      {
        "code" : "96599-6"
      },
      {
        "code" : "96797-6"
      },
      {
        "code" : "96829-7"
      },
      {
        "code" : "97151-5"
      },
      {
        "code" : "97185-3"
      },
      {
        "code" : "97205-9"
      },
      {
        "code" : "97206-7"
      },
      {
        "code" : "97313-1"
      },
      {
        "code" : "97314-9"
      },
      {
        "code" : "97315-6"
      },
      {
        "code" : "97316-4"
      },
      {
        "code" : "97317-2"
      },
      {
        "code" : "97318-0"
      },
      {
        "code" : "97319-8"
      },
      {
        "code" : "97320-6"
      },
      {
        "code" : "97321-4"
      },
      {
        "code" : "97514-4"
      },
      {
        "code" : "97515-1"
      },
      {
        "code" : "97523-5"
      },
      {
        "code" : "97525-0"
      },
      {
        "code" : "97532-6"
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
        "code" : "97646-4"
      },
      {
        "code" : "97916-1"
      },
      {
        "code" : "97917-9"
      },
      {
        "code" : "97918-7"
      },
      {
        "code" : "97919-5"
      },
      {
        "code" : "97920-3"
      },
      {
        "code" : "97921-1"
      },
      {
        "code" : "97923-7"
      },
      {
        "code" : "97924-5"
      },
      {
        "code" : "97925-2"
      },
      {
        "code" : "97928-6"
      },
      {
        "code" : "97929-4"
      },
      {
        "code" : "97930-2"
      },
      {
        "code" : "97931-0"
      },
      {
        "code" : "97932-8"
      },
      {
        "code" : "97936-9"
      },
      {
        "code" : "97948-4"
      },
      {
        "code" : "97949-2"
      },
      {
        "code" : "97950-0"
      },
      {
        "code" : "97951-8"
      },
      {
        "code" : "9837-6"
      },
      {
        "code" : "99013-5"
      },
      {
        "code" : "99014-3"
      },
      {
        "code" : "99015-0"
      },
      {
        "code" : "99016-8"
      },
      {
        "code" : "99017-6"
      },
      {
        "code" : "99018-4"
      },
      {
        "code" : "99019-2"
      },
      {
        "code" : "99020-0"
      },
      {
        "code" : "99021-8"
      },
      {
        "code" : "99022-6"
      },
      {
        "code" : "99023-4"
      },
      {
        "code" : "99024-2"
      },
      {
        "code" : "99025-9"
      },
      {
        "code" : "99026-7"
      },
      {
        "code" : "99027-5"
      },
      {
        "code" : "99028-3"
      },
      {
        "code" : "99029-1"
      },
      {
        "code" : "99030-9"
      },
      {
        "code" : "99031-7"
      },
      {
        "code" : "99032-5"
      },
      {
        "code" : "99033-3"
      },
      {
        "code" : "99089-5"
      },
      {
        "code" : "99090-3"
      },
      {
        "code" : "99091-1"
      },
      {
        "code" : "99092-9"
      },
      {
        "code" : "99093-7"
      },
      {
        "code" : "99094-5"
      },
      {
        "code" : "99095-2"
      },
      {
        "code" : "99096-0"
      },
      {
        "code" : "99623-1"
      },
      {
        "code" : "99778-3"
      },
      {
        "code" : "99779-1"
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
      },
      {
        "code" : "1269559008",
        "display" : "Detection of ribonucleic acid of severe acute respiratory syndrome coronavirus 2 using microchip real time polymerase chain reaction (observable entity)"
      },
      {
        "code" : "871560001",
        "display" : "Detection of ribonucleic acid of severe acute respiratory syndrome coronavirus 2 using polymerase chain reaction (observable entity)"
      }]
    },
    {
      "system" : "http://snomed.info/sct",
      "version" : "http://snomed.info/sct/11010000107/version/20261021",
      "filter" : [{
        "property" : "constraint",
        "op" : "=",
        "value" : "<< 363787002 |Observable entity (observable entity)| : 370130000 |Property (attribute)| = (118589004 |Threshold (property) (qualifier value)| OR 705057003 |Presence (property) (qualifier value)| OR 118584009 |Presence or identity (property) (qualifier value)|), 246093002 |Component (attribute)| = << 117174000 |Nucleic acid sequence with relative specificity for microorganism (substance)|"
      }]
    }]
  }
}

```
