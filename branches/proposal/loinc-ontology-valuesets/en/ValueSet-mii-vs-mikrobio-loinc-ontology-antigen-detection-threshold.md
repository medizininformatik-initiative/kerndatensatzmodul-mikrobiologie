# MII VS Microbiology LOINC Ontology Antigen Detection Threshold - MII Implementation Guide Microbiology v2027.0.0-ballot2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII VS Microbiology LOINC Ontology Antigen Detection Threshold**

## ValueSet: MII VS Microbiology LOINC Ontology Antigen Detection Threshold (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/ValueSet/mii-vs-mikrobio-loinc-ontology-antigen-detection-threshold | *Version*:2027.0.0-ballot2 |
| Draft as of 2026-11-03 | *Computable Name*:MII_VS_Mikrobio_LOINC_Ontology_Antigen_Detection_Threshold |
| **Copyright/Legal**: This material includes SNOMED Clinical Terms® (SNOMED CT®) which is used by permission of SNOMED International. All rights reserved. SNOMED CT®, was originally created by The College of American Pathologists. SNOMED and SNOMED CT are registered trademarks of SNOMED International. Implementers of these artefacts must have the appropriate SNOMED CT Affiliate license. | |

 
Proposal: LOINC codes of the microbiology request 'Specific determination: Antigen detection — threshold presence of a microbial antigen', computed by ECL over the LOINC Ontology 2026-10-21. Rapid antigen tests and antigen immunoassays: ordinal presence of a microbial antigen in a specimen. Parts: LOINC enumeration (895, LOINC 2.83), LOINC Ontology observables without LOINC code (4), and the ECL as an intensional include. ECL: `<< 363787002 |Observable entity (observable entity)| : 370130000 |Property (attribute)| = (118589004 |Threshold (property) (qualifier value)| OR 705057003 |Presence (property) (qualifier value)|), 246093002 |Component (attribute)| = << 116633006 |Microbial antigen (substance)|` 

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
  "id" : "mii-vs-mikrobio-loinc-ontology-antigen-detection-threshold",
  "url" : "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/ValueSet/mii-vs-mikrobio-loinc-ontology-antigen-detection-threshold",
  "version" : "2027.0.0-ballot2",
  "name" : "MII_VS_Mikrobio_LOINC_Ontology_Antigen_Detection_Threshold",
  "title" : "MII VS Microbiology LOINC Ontology Antigen Detection Threshold",
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
  "description" : "Proposal: LOINC codes of the microbiology request 'Specific determination: Antigen detection — threshold presence of a microbial antigen', computed by ECL over the LOINC Ontology 2026-10-21. Rapid antigen tests and antigen immunoassays: ordinal presence of a microbial antigen in a specimen. Parts: LOINC enumeration (895, LOINC 2.83), LOINC Ontology observables without LOINC code (4), and the ECL as an intensional include. ECL: `<< 363787002 |Observable entity (observable entity)| : 370130000 |Property (attribute)| = (118589004 |Threshold (property) (qualifier value)| OR 705057003 |Presence (property) (qualifier value)|), 246093002 |Component (attribute)| = << 116633006 |Microbial antigen (substance)|`",
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
        "code" : "104345-4"
      },
      {
        "code" : "104346-2"
      },
      {
        "code" : "104434-6"
      },
      {
        "code" : "105074-9"
      },
      {
        "code" : "105923-7"
      },
      {
        "code" : "10645-0"
      },
      {
        "code" : "10651-8"
      },
      {
        "code" : "10660-9"
      },
      {
        "code" : "10673-2"
      },
      {
        "code" : "10674-0"
      },
      {
        "code" : "10675-7"
      },
      {
        "code" : "10677-3"
      },
      {
        "code" : "10679-9"
      },
      {
        "code" : "10705-2"
      },
      {
        "code" : "107211-5"
      },
      {
        "code" : "108113-2"
      },
      {
        "code" : "11086-6"
      },
      {
        "code" : "111819-9"
      },
      {
        "code" : "112294-4"
      },
      {
        "code" : "11266-4"
      },
      {
        "code" : "11269-8"
      },
      {
        "code" : "115347-7"
      },
      {
        "code" : "12222-6"
      },
      {
        "code" : "12232-5"
      },
      {
        "code" : "12237-4"
      },
      {
        "code" : "12251-5"
      },
      {
        "code" : "13327-2"
      },
      {
        "code" : "13328-0"
      },
      {
        "code" : "13916-2"
      },
      {
        "code" : "13954-3"
      },
      {
        "code" : "14205-9"
      },
      {
        "code" : "14210-9"
      },
      {
        "code" : "14321-4"
      },
      {
        "code" : "14322-2"
      },
      {
        "code" : "14323-0"
      },
      {
        "code" : "14324-8"
      },
      {
        "code" : "14468-3"
      },
      {
        "code" : "14469-1"
      },
      {
        "code" : "14470-9"
      },
      {
        "code" : "14471-7"
      },
      {
        "code" : "14472-5"
      },
      {
        "code" : "14474-1"
      },
      {
        "code" : "14499-8"
      },
      {
        "code" : "14500-3"
      },
      {
        "code" : "14501-1"
      },
      {
        "code" : "14502-9"
      },
      {
        "code" : "14507-8"
      },
      {
        "code" : "14508-6"
      },
      {
        "code" : "14509-4"
      },
      {
        "code" : "14510-2"
      },
      {
        "code" : "14511-0"
      },
      {
        "code" : "14513-6"
      },
      {
        "code" : "14514-4"
      },
      {
        "code" : "14515-1"
      },
      {
        "code" : "14516-9"
      },
      {
        "code" : "14517-7"
      },
      {
        "code" : "14518-5"
      },
      {
        "code" : "14519-3"
      },
      {
        "code" : "14520-1"
      },
      {
        "code" : "14521-9"
      },
      {
        "code" : "14522-7"
      },
      {
        "code" : "14523-5"
      },
      {
        "code" : "14524-3"
      },
      {
        "code" : "14525-0"
      },
      {
        "code" : "14526-8"
      },
      {
        "code" : "14527-6"
      },
      {
        "code" : "14528-4"
      },
      {
        "code" : "14529-2"
      },
      {
        "code" : "14530-0"
      },
      {
        "code" : "14531-8"
      },
      {
        "code" : "14532-6"
      },
      {
        "code" : "14533-4"
      },
      {
        "code" : "14534-2"
      },
      {
        "code" : "14535-9"
      },
      {
        "code" : "14536-7"
      },
      {
        "code" : "14537-5"
      },
      {
        "code" : "14538-3"
      },
      {
        "code" : "14539-1"
      },
      {
        "code" : "14540-9"
      },
      {
        "code" : "14541-7"
      },
      {
        "code" : "14542-5"
      },
      {
        "code" : "14543-3"
      },
      {
        "code" : "14544-1"
      },
      {
        "code" : "14545-8"
      },
      {
        "code" : "14546-6"
      },
      {
        "code" : "14547-4"
      },
      {
        "code" : "14548-2"
      },
      {
        "code" : "14549-0"
      },
      {
        "code" : "14550-8"
      },
      {
        "code" : "14551-6"
      },
      {
        "code" : "14552-4"
      },
      {
        "code" : "14553-2"
      },
      {
        "code" : "14554-0"
      },
      {
        "code" : "14555-7"
      },
      {
        "code" : "15379-1"
      },
      {
        "code" : "16539-9"
      },
      {
        "code" : "16593-6"
      },
      {
        "code" : "16692-6"
      },
      {
        "code" : "16693-4"
      },
      {
        "code" : "16717-1"
      },
      {
        "code" : "16718-9"
      },
      {
        "code" : "16833-6"
      },
      {
        "code" : "16834-4"
      },
      {
        "code" : "16879-9"
      },
      {
        "code" : "16898-9"
      },
      {
        "code" : "16899-7"
      },
      {
        "code" : "16925-0"
      },
      {
        "code" : "16926-8"
      },
      {
        "code" : "16945-8"
      },
      {
        "code" : "16977-1"
      },
      {
        "code" : "17057-1"
      },
      {
        "code" : "17058-9"
      },
      {
        "code" : "17059-7"
      },
      {
        "code" : "17323-7"
      },
      {
        "code" : "17326-0"
      },
      {
        "code" : "17328-6"
      },
      {
        "code" : "17329-4"
      },
      {
        "code" : "17330-2"
      },
      {
        "code" : "17333-6"
      },
      {
        "code" : "17398-9"
      },
      {
        "code" : "17399-7"
      },
      {
        "code" : "17401-1"
      },
      {
        "code" : "17402-9"
      },
      {
        "code" : "17404-5"
      },
      {
        "code" : "17405-2"
      },
      {
        "code" : "17406-0"
      },
      {
        "code" : "17407-8"
      },
      {
        "code" : "17408-6"
      },
      {
        "code" : "17409-4"
      },
      {
        "code" : "17410-2"
      },
      {
        "code" : "17411-0"
      },
      {
        "code" : "17547-1"
      },
      {
        "code" : "17652-9"
      },
      {
        "code" : "17780-8"
      },
      {
        "code" : "18396-2"
      },
      {
        "code" : "18481-2"
      },
      {
        "code" : "19108-0"
      },
      {
        "code" : "19109-8"
      },
      {
        "code" : "20459-4"
      },
      {
        "code" : "20488-3"
      },
      {
        "code" : "20489-1"
      },
      {
        "code" : "20703-5"
      },
      {
        "code" : "20704-3"
      },
      {
        "code" : "20741-5"
      },
      {
        "code" : "20753-0"
      },
      {
        "code" : "20755-5"
      },
      {
        "code" : "20756-3"
      },
      {
        "code" : "20757-1"
      },
      {
        "code" : "20760-5"
      },
      {
        "code" : "20763-9"
      },
      {
        "code" : "20765-4"
      },
      {
        "code" : "20766-2"
      },
      {
        "code" : "20901-5"
      },
      {
        "code" : "20959-3"
      },
      {
        "code" : "21233-2"
      },
      {
        "code" : "21302-5"
      },
      {
        "code" : "21303-3"
      },
      {
        "code" : "21320-7"
      },
      {
        "code" : "22820-5"
      },
      {
        "code" : "22825-4"
      },
      {
        "code" : "22831-2"
      },
      {
        "code" : "22866-8"
      },
      {
        "code" : "22867-6"
      },
      {
        "code" : "22888-2"
      },
      {
        "code" : "22943-5"
      },
      {
        "code" : "22944-3"
      },
      {
        "code" : "22945-0"
      },
      {
        "code" : "22946-8"
      },
      {
        "code" : "22947-6"
      },
      {
        "code" : "22948-4"
      },
      {
        "code" : "22949-2"
      },
      {
        "code" : "22964-1"
      },
      {
        "code" : "22965-8"
      },
      {
        "code" : "22966-6"
      },
      {
        "code" : "22997-1"
      },
      {
        "code" : "22998-9"
      },
      {
        "code" : "22999-7"
      },
      {
        "code" : "23000-3"
      },
      {
        "code" : "23021-9"
      },
      {
        "code" : "23022-7"
      },
      {
        "code" : "23023-5"
      },
      {
        "code" : "23028-4"
      },
      {
        "code" : "23047-4"
      },
      {
        "code" : "23048-2"
      },
      {
        "code" : "23049-0"
      },
      {
        "code" : "23050-8"
      },
      {
        "code" : "23126-6"
      },
      {
        "code" : "23127-4"
      },
      {
        "code" : "23148-0"
      },
      {
        "code" : "23149-8"
      },
      {
        "code" : "23150-6"
      },
      {
        "code" : "23203-3"
      },
      {
        "code" : "23204-1"
      },
      {
        "code" : "23241-3"
      },
      {
        "code" : "23242-1"
      },
      {
        "code" : "23298-3"
      },
      {
        "code" : "23299-1"
      },
      {
        "code" : "23389-0"
      },
      {
        "code" : "23390-8"
      },
      {
        "code" : "23391-6"
      },
      {
        "code" : "23401-3"
      },
      {
        "code" : "23402-1"
      },
      {
        "code" : "23403-9"
      },
      {
        "code" : "23404-7"
      },
      {
        "code" : "23405-4"
      },
      {
        "code" : "23406-2"
      },
      {
        "code" : "23449-2"
      },
      {
        "code" : "23450-0"
      },
      {
        "code" : "23535-8"
      },
      {
        "code" : "23548-1"
      },
      {
        "code" : "23550-7"
      },
      {
        "code" : "23551-5"
      },
      {
        "code" : "23557-2"
      },
      {
        "code" : "23558-0"
      },
      {
        "code" : "23559-8"
      },
      {
        "code" : "23560-6"
      },
      {
        "code" : "23589-5"
      },
      {
        "code" : "23590-3"
      },
      {
        "code" : "23591-1"
      },
      {
        "code" : "23598-6"
      },
      {
        "code" : "23678-6"
      },
      {
        "code" : "23679-4"
      },
      {
        "code" : "23744-6"
      },
      {
        "code" : "23750-3"
      },
      {
        "code" : "23759-4"
      },
      {
        "code" : "23760-2"
      },
      {
        "code" : "23977-2"
      },
      {
        "code" : "24010-1"
      },
      {
        "code" : "24012-7"
      },
      {
        "code" : "24017-6"
      },
      {
        "code" : "24018-4"
      },
      {
        "code" : "24020-0"
      },
      {
        "code" : "24027-5"
      },
      {
        "code" : "24036-6"
      },
      {
        "code" : "26621-3"
      },
      {
        "code" : "27265-8"
      },
      {
        "code" : "29311-8"
      },
      {
        "code" : "29533-7"
      },
      {
        "code" : "29721-8"
      },
      {
        "code" : "29722-6"
      },
      {
        "code" : "29896-8"
      },
      {
        "code" : "29903-2"
      },
      {
        "code" : "29905-7"
      },
      {
        "code" : "29957-8"
      },
      {
        "code" : "30094-7"
      },
      {
        "code" : "30095-4"
      },
      {
        "code" : "30096-2"
      },
      {
        "code" : "30097-0"
      },
      {
        "code" : "30098-8"
      },
      {
        "code" : "30324-8"
      },
      {
        "code" : "31710-7"
      },
      {
        "code" : "31711-5"
      },
      {
        "code" : "31712-3"
      },
      {
        "code" : "31713-1"
      },
      {
        "code" : "31714-9"
      },
      {
        "code" : "31718-0"
      },
      {
        "code" : "31725-5"
      },
      {
        "code" : "31726-3"
      },
      {
        "code" : "31727-1"
      },
      {
        "code" : "31728-9"
      },
      {
        "code" : "31731-3"
      },
      {
        "code" : "31735-4"
      },
      {
        "code" : "31736-2"
      },
      {
        "code" : "31737-0"
      },
      {
        "code" : "31738-8"
      },
      {
        "code" : "31739-6"
      },
      {
        "code" : "31753-7"
      },
      {
        "code" : "31754-5"
      },
      {
        "code" : "31755-2"
      },
      {
        "code" : "31756-0"
      },
      {
        "code" : "31757-8"
      },
      {
        "code" : "31758-6"
      },
      {
        "code" : "31763-6"
      },
      {
        "code" : "31764-4"
      },
      {
        "code" : "31765-1"
      },
      {
        "code" : "31766-9"
      },
      {
        "code" : "31767-7"
      },
      {
        "code" : "31768-5"
      },
      {
        "code" : "31769-3"
      },
      {
        "code" : "31770-1"
      },
      {
        "code" : "31771-9"
      },
      {
        "code" : "31772-7"
      },
      {
        "code" : "31774-3"
      },
      {
        "code" : "31775-0"
      },
      {
        "code" : "31776-8"
      },
      {
        "code" : "31777-6"
      },
      {
        "code" : "31778-4"
      },
      {
        "code" : "31779-2"
      },
      {
        "code" : "31780-0"
      },
      {
        "code" : "31782-6"
      },
      {
        "code" : "31783-4"
      },
      {
        "code" : "31784-2"
      },
      {
        "code" : "31788-3"
      },
      {
        "code" : "31790-9"
      },
      {
        "code" : "31794-1"
      },
      {
        "code" : "31795-8"
      },
      {
        "code" : "31796-6"
      },
      {
        "code" : "31797-4"
      },
      {
        "code" : "31798-2"
      },
      {
        "code" : "31799-0"
      },
      {
        "code" : "31800-6"
      },
      {
        "code" : "31806-3"
      },
      {
        "code" : "31807-1"
      },
      {
        "code" : "31808-9"
      },
      {
        "code" : "31824-6"
      },
      {
        "code" : "31825-3"
      },
      {
        "code" : "31828-7"
      },
      {
        "code" : "31829-5"
      },
      {
        "code" : "31830-3"
      },
      {
        "code" : "31831-1"
      },
      {
        "code" : "31832-9"
      },
      {
        "code" : "31833-7"
      },
      {
        "code" : "31834-5"
      },
      {
        "code" : "31835-2"
      },
      {
        "code" : "31836-0"
      },
      {
        "code" : "31837-8"
      },
      {
        "code" : "31838-6"
      },
      {
        "code" : "31839-4"
      },
      {
        "code" : "31840-2"
      },
      {
        "code" : "31841-0"
      },
      {
        "code" : "31842-8"
      },
      {
        "code" : "31843-6"
      },
      {
        "code" : "31844-4"
      },
      {
        "code" : "31846-9"
      },
      {
        "code" : "31847-7"
      },
      {
        "code" : "31848-5"
      },
      {
        "code" : "31849-3"
      },
      {
        "code" : "31850-1"
      },
      {
        "code" : "31851-9"
      },
      {
        "code" : "31852-7"
      },
      {
        "code" : "31853-5"
      },
      {
        "code" : "31854-3"
      },
      {
        "code" : "31858-4"
      },
      {
        "code" : "31859-2"
      },
      {
        "code" : "31863-4"
      },
      {
        "code" : "31864-2"
      },
      {
        "code" : "31865-9"
      },
      {
        "code" : "31866-7"
      },
      {
        "code" : "31867-5"
      },
      {
        "code" : "31868-3"
      },
      {
        "code" : "31869-1"
      },
      {
        "code" : "31870-9"
      },
      {
        "code" : "31871-7"
      },
      {
        "code" : "31872-5"
      },
      {
        "code" : "31875-8"
      },
      {
        "code" : "31876-6"
      },
      {
        "code" : "31877-4"
      },
      {
        "code" : "31878-2"
      },
      {
        "code" : "31879-0"
      },
      {
        "code" : "31880-8"
      },
      {
        "code" : "31881-6"
      },
      {
        "code" : "31882-4"
      },
      {
        "code" : "31883-2"
      },
      {
        "code" : "31884-0"
      },
      {
        "code" : "31885-7"
      },
      {
        "code" : "31886-5"
      },
      {
        "code" : "31887-3"
      },
      {
        "code" : "31888-1"
      },
      {
        "code" : "31889-9"
      },
      {
        "code" : "31890-7"
      },
      {
        "code" : "31891-5"
      },
      {
        "code" : "31892-3"
      },
      {
        "code" : "31893-1"
      },
      {
        "code" : "31894-9"
      },
      {
        "code" : "31895-6"
      },
      {
        "code" : "31896-4"
      },
      {
        "code" : "31897-2"
      },
      {
        "code" : "31898-0"
      },
      {
        "code" : "31899-8"
      },
      {
        "code" : "31900-4"
      },
      {
        "code" : "31905-3"
      },
      {
        "code" : "31906-1"
      },
      {
        "code" : "31907-9"
      },
      {
        "code" : "31908-7"
      },
      {
        "code" : "31912-9"
      },
      {
        "code" : "31913-7"
      },
      {
        "code" : "31916-0"
      },
      {
        "code" : "31917-8"
      },
      {
        "code" : "31918-6"
      },
      {
        "code" : "31919-4"
      },
      {
        "code" : "31920-2"
      },
      {
        "code" : "31921-0"
      },
      {
        "code" : "31923-6"
      },
      {
        "code" : "31924-4"
      },
      {
        "code" : "31925-1"
      },
      {
        "code" : "31926-9"
      },
      {
        "code" : "31927-7"
      },
      {
        "code" : "31928-5"
      },
      {
        "code" : "31929-3"
      },
      {
        "code" : "31932-7"
      },
      {
        "code" : "31933-5"
      },
      {
        "code" : "31934-3"
      },
      {
        "code" : "31935-0"
      },
      {
        "code" : "31936-8"
      },
      {
        "code" : "31937-6"
      },
      {
        "code" : "31938-4"
      },
      {
        "code" : "31939-2"
      },
      {
        "code" : "31940-0"
      },
      {
        "code" : "31941-8"
      },
      {
        "code" : "31942-6"
      },
      {
        "code" : "31943-4"
      },
      {
        "code" : "31946-7"
      },
      {
        "code" : "31947-5"
      },
      {
        "code" : "31949-1"
      },
      {
        "code" : "31950-9"
      },
      {
        "code" : "31951-7"
      },
      {
        "code" : "31955-8"
      },
      {
        "code" : "31956-6"
      },
      {
        "code" : "31957-4"
      },
      {
        "code" : "31958-2"
      },
      {
        "code" : "31959-0"
      },
      {
        "code" : "31960-8"
      },
      {
        "code" : "31961-6"
      },
      {
        "code" : "31962-4"
      },
      {
        "code" : "31963-2"
      },
      {
        "code" : "31964-0"
      },
      {
        "code" : "31965-7"
      },
      {
        "code" : "31966-5"
      },
      {
        "code" : "31967-3"
      },
      {
        "code" : "31968-1"
      },
      {
        "code" : "31969-9"
      },
      {
        "code" : "31970-7"
      },
      {
        "code" : "31971-5"
      },
      {
        "code" : "31974-9"
      },
      {
        "code" : "31975-6"
      },
      {
        "code" : "31978-0"
      },
      {
        "code" : "31980-6"
      },
      {
        "code" : "31981-4"
      },
      {
        "code" : "31982-2"
      },
      {
        "code" : "31983-0"
      },
      {
        "code" : "31984-8"
      },
      {
        "code" : "31985-5"
      },
      {
        "code" : "31986-3"
      },
      {
        "code" : "31987-1"
      },
      {
        "code" : "31988-9"
      },
      {
        "code" : "32001-0"
      },
      {
        "code" : "32003-6"
      },
      {
        "code" : "32004-4"
      },
      {
        "code" : "32040-8"
      },
      {
        "code" : "32139-8"
      },
      {
        "code" : "32371-7"
      },
      {
        "code" : "32671-0"
      },
      {
        "code" : "32777-5"
      },
      {
        "code" : "32781-7"
      },
      {
        "code" : "33045-6"
      },
      {
        "code" : "33464-9"
      },
      {
        "code" : "33616-4"
      },
      {
        "code" : "33660-2"
      },
      {
        "code" : "33678-4"
      },
      {
        "code" : "33687-5"
      },
      {
        "code" : "33688-3"
      },
      {
        "code" : "33697-4"
      },
      {
        "code" : "34470-5"
      },
      {
        "code" : "34709-6"
      },
      {
        "code" : "34710-4"
      },
      {
        "code" : "34883-9"
      },
      {
        "code" : "35271-6"
      },
      {
        "code" : "35705-3"
      },
      {
        "code" : "35734-3"
      },
      {
        "code" : "38197-0"
      },
      {
        "code" : "38198-8"
      },
      {
        "code" : "38385-1"
      },
      {
        "code" : "38395-0"
      },
      {
        "code" : "38396-8"
      },
      {
        "code" : "38403-2"
      },
      {
        "code" : "38460-2"
      },
      {
        "code" : "38461-0"
      },
      {
        "code" : "38462-8"
      },
      {
        "code" : "38463-6"
      },
      {
        "code" : "39007-0"
      },
      {
        "code" : "39019-5"
      },
      {
        "code" : "39534-3"
      },
      {
        "code" : "39541-8"
      },
      {
        "code" : "40771-8"
      },
      {
        "code" : "40776-7"
      },
      {
        "code" : "40784-1"
      },
      {
        "code" : "40863-3"
      },
      {
        "code" : "40979-7"
      },
      {
        "code" : "40986-2"
      },
      {
        "code" : "41004-3"
      },
      {
        "code" : "41007-6"
      },
      {
        "code" : "41453-2"
      },
      {
        "code" : "41487-0"
      },
      {
        "code" : "41495-3"
      },
      {
        "code" : "41499-5"
      },
      {
        "code" : "41503-4"
      },
      {
        "code" : "41508-3"
      },
      {
        "code" : "41511-7"
      },
      {
        "code" : "41624-8"
      },
      {
        "code" : "41627-1"
      },
      {
        "code" : "41637-0"
      },
      {
        "code" : "41643-8"
      },
      {
        "code" : "41746-9"
      },
      {
        "code" : "42256-8"
      },
      {
        "code" : "42257-6"
      },
      {
        "code" : "42258-4"
      },
      {
        "code" : "42259-2"
      },
      {
        "code" : "42368-1"
      },
      {
        "code" : "42369-9"
      },
      {
        "code" : "42370-7"
      },
      {
        "code" : "42371-5"
      },
      {
        "code" : "42372-3"
      },
      {
        "code" : "42373-1"
      },
      {
        "code" : "42374-9"
      },
      {
        "code" : "42375-6"
      },
      {
        "code" : "42505-8"
      },
      {
        "code" : "43228-6"
      },
      {
        "code" : "43360-7"
      },
      {
        "code" : "43429-0"
      },
      {
        "code" : "43430-8"
      },
      {
        "code" : "43431-6"
      },
      {
        "code" : "43432-4"
      },
      {
        "code" : "43610-5"
      },
      {
        "code" : "43611-3"
      },
      {
        "code" : "43612-1"
      },
      {
        "code" : "43613-9"
      },
      {
        "code" : "43614-7"
      },
      {
        "code" : "43615-4"
      },
      {
        "code" : "43874-7"
      },
      {
        "code" : "43891-1"
      },
      {
        "code" : "43895-2"
      },
      {
        "code" : "43909-1"
      },
      {
        "code" : "44087-5"
      },
      {
        "code" : "44269-9"
      },
      {
        "code" : "44270-7"
      },
      {
        "code" : "44470-3"
      },
      {
        "code" : "44471-1"
      },
      {
        "code" : "44472-9"
      },
      {
        "code" : "44473-7"
      },
      {
        "code" : "44474-5"
      },
      {
        "code" : "44475-2"
      },
      {
        "code" : "44476-0"
      },
      {
        "code" : "44477-8"
      },
      {
        "code" : "44495-0"
      },
      {
        "code" : "44496-8"
      },
      {
        "code" : "44497-6"
      },
      {
        "code" : "44498-4"
      },
      {
        "code" : "44499-2"
      },
      {
        "code" : "44500-7"
      },
      {
        "code" : "44501-5"
      },
      {
        "code" : "44502-3"
      },
      {
        "code" : "44508-0"
      },
      {
        "code" : "44509-8"
      },
      {
        "code" : "44510-6"
      },
      {
        "code" : "44511-4"
      },
      {
        "code" : "44512-2"
      },
      {
        "code" : "44513-0"
      },
      {
        "code" : "44514-8"
      },
      {
        "code" : "44515-5"
      },
      {
        "code" : "44516-3"
      },
      {
        "code" : "44524-7"
      },
      {
        "code" : "44525-4"
      },
      {
        "code" : "44531-2"
      },
      {
        "code" : "44544-5"
      },
      {
        "code" : "44558-5"
      },
      {
        "code" : "44559-3"
      },
      {
        "code" : "44560-1"
      },
      {
        "code" : "44561-9"
      },
      {
        "code" : "44562-7"
      },
      {
        "code" : "44563-5"
      },
      {
        "code" : "44564-3"
      },
      {
        "code" : "44571-8"
      },
      {
        "code" : "44572-6"
      },
      {
        "code" : "44573-4"
      },
      {
        "code" : "44574-2"
      },
      {
        "code" : "44575-9"
      },
      {
        "code" : "44576-7"
      },
      {
        "code" : "44577-5"
      },
      {
        "code" : "44754-0"
      },
      {
        "code" : "44870-4"
      },
      {
        "code" : "44872-0"
      },
      {
        "code" : "45041-1"
      },
      {
        "code" : "45091-6"
      },
      {
        "code" : "45092-4"
      },
      {
        "code" : "45103-9"
      },
      {
        "code" : "45104-7"
      },
      {
        "code" : "45105-4"
      },
      {
        "code" : "45106-2"
      },
      {
        "code" : "45107-0"
      },
      {
        "code" : "45108-8"
      },
      {
        "code" : "45109-6"
      },
      {
        "code" : "45112-0"
      },
      {
        "code" : "45113-8"
      },
      {
        "code" : "45114-6"
      },
      {
        "code" : "45115-3"
      },
      {
        "code" : "45118-7"
      },
      {
        "code" : "45120-3"
      },
      {
        "code" : "45125-2"
      },
      {
        "code" : "45126-0"
      },
      {
        "code" : "45127-8"
      },
      {
        "code" : "45128-6"
      },
      {
        "code" : "45131-0"
      },
      {
        "code" : "45132-8"
      },
      {
        "code" : "45133-6"
      },
      {
        "code" : "45162-5"
      },
      {
        "code" : "46082-4"
      },
      {
        "code" : "46083-2"
      },
      {
        "code" : "46094-9"
      },
      {
        "code" : "46964-3"
      },
      {
        "code" : "47001-3"
      },
      {
        "code" : "47229-0"
      },
      {
        "code" : "47234-0"
      },
      {
        "code" : "47364-5"
      },
      {
        "code" : "48056-6"
      },
      {
        "code" : "48335-4"
      },
      {
        "code" : "48336-2"
      },
      {
        "code" : "48338-8"
      },
      {
        "code" : "48339-6"
      },
      {
        "code" : "48412-1"
      },
      {
        "code" : "48804-9"
      },
      {
        "code" : "49117-5"
      },
      {
        "code" : "49480-7"
      },
      {
        "code" : "49522-6"
      },
      {
        "code" : "49529-1"
      },
      {
        "code" : "49534-1"
      },
      {
        "code" : "49718-0"
      },
      {
        "code" : "49846-9"
      },
      {
        "code" : "50015-7"
      },
      {
        "code" : "50320-1"
      },
      {
        "code" : "50329-2"
      },
      {
        "code" : "50687-3"
      },
      {
        "code" : "50701-2"
      },
      {
        "code" : "50967-9"
      },
      {
        "code" : "51659-1"
      },
      {
        "code" : "5192-0"
      },
      {
        "code" : "5195-3"
      },
      {
        "code" : "5196-1"
      },
      {
        "code" : "5197-9"
      },
      {
        "code" : "51976-9"
      },
      {
        "code" : "5222-5"
      },
      {
        "code" : "53941-1"
      },
      {
        "code" : "54033-6"
      },
      {
        "code" : "54034-4"
      },
      {
        "code" : "54035-1"
      },
      {
        "code" : "54240-7"
      },
      {
        "code" : "54241-5"
      },
      {
        "code" : "544-7"
      },
      {
        "code" : "545-4"
      },
      {
        "code" : "550-4"
      },
      {
        "code" : "561-1"
      },
      {
        "code" : "566-0"
      },
      {
        "code" : "5823-0"
      },
      {
        "code" : "5824-8"
      },
      {
        "code" : "5825-5"
      },
      {
        "code" : "5826-3"
      },
      {
        "code" : "5827-1"
      },
      {
        "code" : "5828-9"
      },
      {
        "code" : "5829-7"
      },
      {
        "code" : "5830-5"
      },
      {
        "code" : "5831-3"
      },
      {
        "code" : "5832-1"
      },
      {
        "code" : "5833-9"
      },
      {
        "code" : "5834-7"
      },
      {
        "code" : "5844-6"
      },
      {
        "code" : "5845-3"
      },
      {
        "code" : "5846-1"
      },
      {
        "code" : "5847-9"
      },
      {
        "code" : "5848-7"
      },
      {
        "code" : "5849-5"
      },
      {
        "code" : "5850-3"
      },
      {
        "code" : "5851-1"
      },
      {
        "code" : "5852-9"
      },
      {
        "code" : "5853-7"
      },
      {
        "code" : "5854-5"
      },
      {
        "code" : "5855-2"
      },
      {
        "code" : "5860-2"
      },
      {
        "code" : "5861-0"
      },
      {
        "code" : "5862-8"
      },
      {
        "code" : "5863-6"
      },
      {
        "code" : "5864-4"
      },
      {
        "code" : "5865-1"
      },
      {
        "code" : "5866-9"
      },
      {
        "code" : "5867-7"
      },
      {
        "code" : "5868-5"
      },
      {
        "code" : "5869-3"
      },
      {
        "code" : "5870-1"
      },
      {
        "code" : "5871-9"
      },
      {
        "code" : "5872-7"
      },
      {
        "code" : "5873-5"
      },
      {
        "code" : "5874-3"
      },
      {
        "code" : "5875-0"
      },
      {
        "code" : "5876-8"
      },
      {
        "code" : "5877-6"
      },
      {
        "code" : "5879-2"
      },
      {
        "code" : "588-4"
      },
      {
        "code" : "5880-0"
      },
      {
        "code" : "5881-8"
      },
      {
        "code" : "5882-6"
      },
      {
        "code" : "60424-9"
      },
      {
        "code" : "60425-6"
      },
      {
        "code" : "60541-0"
      },
      {
        "code" : "6313-1"
      },
      {
        "code" : "6337-0"
      },
      {
        "code" : "6338-8"
      },
      {
        "code" : "6339-6"
      },
      {
        "code" : "6340-4"
      },
      {
        "code" : "6341-2"
      },
      {
        "code" : "6343-8"
      },
      {
        "code" : "6344-6"
      },
      {
        "code" : "6345-3"
      },
      {
        "code" : "6346-1"
      },
      {
        "code" : "6347-9"
      },
      {
        "code" : "6350-3"
      },
      {
        "code" : "6351-1"
      },
      {
        "code" : "6352-9"
      },
      {
        "code" : "6353-7"
      },
      {
        "code" : "6354-5"
      },
      {
        "code" : "6355-2"
      },
      {
        "code" : "6371-9"
      },
      {
        "code" : "6376-8"
      },
      {
        "code" : "6377-6"
      },
      {
        "code" : "6379-2"
      },
      {
        "code" : "6381-8"
      },
      {
        "code" : "6384-2"
      },
      {
        "code" : "6385-9"
      },
      {
        "code" : "6388-3"
      },
      {
        "code" : "6389-1"
      },
      {
        "code" : "6408-9"
      },
      {
        "code" : "6412-1"
      },
      {
        "code" : "6413-9"
      },
      {
        "code" : "6414-7"
      },
      {
        "code" : "6416-2"
      },
      {
        "code" : "6417-0"
      },
      {
        "code" : "6418-8"
      },
      {
        "code" : "6445-1"
      },
      {
        "code" : "6446-9"
      },
      {
        "code" : "6447-7"
      },
      {
        "code" : "6448-5"
      },
      {
        "code" : "6449-3"
      },
      {
        "code" : "6452-7"
      },
      {
        "code" : "6480-8"
      },
      {
        "code" : "6487-3"
      },
      {
        "code" : "6488-1"
      },
      {
        "code" : "6489-9"
      },
      {
        "code" : "6490-7"
      },
      {
        "code" : "6492-3"
      },
      {
        "code" : "6493-1"
      },
      {
        "code" : "6494-9"
      },
      {
        "code" : "6495-6"
      },
      {
        "code" : "6496-4"
      },
      {
        "code" : "6497-2"
      },
      {
        "code" : "6498-0"
      },
      {
        "code" : "6499-8"
      },
      {
        "code" : "6500-3"
      },
      {
        "code" : "6501-1"
      },
      {
        "code" : "6503-7"
      },
      {
        "code" : "6504-5"
      },
      {
        "code" : "6505-2"
      },
      {
        "code" : "6506-0"
      },
      {
        "code" : "6507-8"
      },
      {
        "code" : "6508-6"
      },
      {
        "code" : "6518-5"
      },
      {
        "code" : "6519-3"
      },
      {
        "code" : "6528-4"
      },
      {
        "code" : "6532-6"
      },
      {
        "code" : "6551-6"
      },
      {
        "code" : "6553-2"
      },
      {
        "code" : "6554-0"
      },
      {
        "code" : "6555-7"
      },
      {
        "code" : "6557-3"
      },
      {
        "code" : "6558-1"
      },
      {
        "code" : "6559-9"
      },
      {
        "code" : "65633-0"
      },
      {
        "code" : "6566-4"
      },
      {
        "code" : "6567-2"
      },
      {
        "code" : "6572-2"
      },
      {
        "code" : "6573-0"
      },
      {
        "code" : "65762-7"
      },
      {
        "code" : "65763-5"
      },
      {
        "code" : "6585-4"
      },
      {
        "code" : "6586-2"
      },
      {
        "code" : "6599-5"
      },
      {
        "code" : "6605-0"
      },
      {
        "code" : "6610-0"
      },
      {
        "code" : "6611-8"
      },
      {
        "code" : "6612-6"
      },
      {
        "code" : "6613-4"
      },
      {
        "code" : "6614-2"
      },
      {
        "code" : "6615-9"
      },
      {
        "code" : "67805-2"
      },
      {
        "code" : "67806-0"
      },
      {
        "code" : "67807-8"
      },
      {
        "code" : "67808-6"
      },
      {
        "code" : "67809-4"
      },
      {
        "code" : "67810-2"
      },
      {
        "code" : "67811-0"
      },
      {
        "code" : "67812-8"
      },
      {
        "code" : "68460-5"
      },
      {
        "code" : "68966-1"
      },
      {
        "code" : "700-5"
      },
      {
        "code" : "70065-8"
      },
      {
        "code" : "70854-5"
      },
      {
        "code" : "70855-2"
      },
      {
        "code" : "70908-9"
      },
      {
        "code" : "70909-7"
      },
      {
        "code" : "70910-5"
      },
      {
        "code" : "70911-3"
      },
      {
        "code" : "71699-3"
      },
      {
        "code" : "71708-2"
      },
      {
        "code" : "71768-6"
      },
      {
        "code" : "71778-5"
      },
      {
        "code" : "72174-6"
      },
      {
        "code" : "72885-7"
      },
      {
        "code" : "73685-0"
      },
      {
        "code" : "75408-5"
      },
      {
        "code" : "75410-1"
      },
      {
        "code" : "76772-3"
      },
      {
        "code" : "77382-0"
      },
      {
        "code" : "77383-8"
      },
      {
        "code" : "77384-6"
      },
      {
        "code" : "77385-3"
      },
      {
        "code" : "77386-1"
      },
      {
        "code" : "77387-9"
      },
      {
        "code" : "77388-7"
      },
      {
        "code" : "77389-5"
      },
      {
        "code" : "77390-3"
      },
      {
        "code" : "77391-1"
      },
      {
        "code" : "77392-9"
      },
      {
        "code" : "77684-9"
      },
      {
        "code" : "77739-1"
      },
      {
        "code" : "77949-6"
      },
      {
        "code" : "78012-2"
      },
      {
        "code" : "7810-5"
      },
      {
        "code" : "78529-5"
      },
      {
        "code" : "7905-3"
      },
      {
        "code" : "79189-7"
      },
      {
        "code" : "7946-7"
      },
      {
        "code" : "80373-4"
      },
      {
        "code" : "80375-9"
      },
      {
        "code" : "80382-5"
      },
      {
        "code" : "80383-3"
      },
      {
        "code" : "8271-9"
      },
      {
        "code" : "86323-3"
      },
      {
        "code" : "86517-0"
      },
      {
        "code" : "86540-2"
      },
      {
        "code" : "86565-9"
      },
      {
        "code" : "86590-7"
      },
      {
        "code" : "86592-3"
      },
      {
        "code" : "86737-4"
      },
      {
        "code" : "86740-8"
      },
      {
        "code" : "87959-3"
      },
      {
        "code" : "88194-6"
      },
      {
        "code" : "88201-9"
      },
      {
        "code" : "88211-8"
      },
      {
        "code" : "88222-5"
      },
      {
        "code" : "88566-5"
      },
      {
        "code" : "88602-8"
      },
      {
        "code" : "88603-6"
      },
      {
        "code" : "88678-8"
      },
      {
        "code" : "88679-6"
      },
      {
        "code" : "88680-4"
      },
      {
        "code" : "88681-2"
      },
      {
        "code" : "88691-1"
      },
      {
        "code" : "88897-4"
      },
      {
        "code" : "88904-8"
      },
      {
        "code" : "88905-5"
      },
      {
        "code" : "88906-3"
      },
      {
        "code" : "88907-1"
      },
      {
        "code" : "88908-9"
      },
      {
        "code" : "88909-7"
      },
      {
        "code" : "88920-4"
      },
      {
        "code" : "89583-9"
      },
      {
        "code" : "89586-2"
      },
      {
        "code" : "89588-8"
      },
      {
        "code" : "89589-6"
      },
      {
        "code" : "89594-6"
      },
      {
        "code" : "89595-3"
      },
      {
        "code" : "91075-2"
      },
      {
        "code" : "91076-0"
      },
      {
        "code" : "91676-7"
      },
      {
        "code" : "91677-5"
      },
      {
        "code" : "91761-7"
      },
      {
        "code" : "91774-0"
      },
      {
        "code" : "91810-2"
      },
      {
        "code" : "91811-0"
      },
      {
        "code" : "91814-4"
      },
      {
        "code" : "91821-9"
      },
      {
        "code" : "91822-7"
      },
      {
        "code" : "91824-3"
      },
      {
        "code" : "91831-8"
      },
      {
        "code" : "91832-6"
      },
      {
        "code" : "91833-4"
      },
      {
        "code" : "91834-2"
      },
      {
        "code" : "91835-9"
      },
      {
        "code" : "91839-1"
      },
      {
        "code" : "91841-7"
      },
      {
        "code" : "91860-7"
      },
      {
        "code" : "91861-5"
      },
      {
        "code" : "91870-6"
      },
      {
        "code" : "91873-0"
      },
      {
        "code" : "93758-1"
      },
      {
        "code" : "93812-6"
      },
      {
        "code" : "9543-0"
      },
      {
        "code" : "9821-0"
      },
      {
        "code" : "99105-9"
      }]
    },
    {
      "system" : "http://snomed.info/sct",
      "version" : "http://snomed.info/sct/11010000107/version/20261021",
      "concept" : [{
        "code" : "364301000119102",
        "display" : "Detection of Helicobacter pylori antigen in stool (observable entity)"
      },
      {
        "code" : "364321000119106",
        "display" : "Detection of Legionella pneumophila antigen in urine (observable entity)"
      },
      {
        "code" : "364351000119103",
        "display" : "Detection of Streptococcus pneumoniae antigen in urine (observable entity)"
      },
      {
        "code" : "871553007",
        "display" : "Detection of severe acute respiratory syndrome coronavirus 2 antigen (observable entity)"
      }]
    },
    {
      "system" : "http://snomed.info/sct",
      "version" : "http://snomed.info/sct/11010000107/version/20261021",
      "filter" : [{
        "property" : "constraint",
        "op" : "=",
        "value" : "<< 363787002 |Observable entity (observable entity)| : 370130000 |Property (attribute)| = (118589004 |Threshold (property) (qualifier value)| OR 705057003 |Presence (property) (qualifier value)|), 246093002 |Component (attribute)| = << 116633006 |Microbial antigen (substance)|"
      }]
    }]
  }
}

```
