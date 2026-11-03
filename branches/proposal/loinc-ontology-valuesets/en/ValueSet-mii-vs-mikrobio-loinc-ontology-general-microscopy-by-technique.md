# MII VS Microbiology LOINC Ontology General Microscopy By Technique - MII Implementation Guide Microbiology v2027.0.0-ballot2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII VS Microbiology LOINC Ontology General Microscopy By Technique**

## ValueSet: MII VS Microbiology LOINC Ontology General Microscopy By Technique (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/ValueSet/mii-vs-mikrobio-loinc-ontology-general-microscopy-by-technique | *Version*:2027.0.0-ballot2 |
| Draft as of 2026-11-03 | *Computable Name*:MII_VS_Mikrobio_LOINC_Ontology_General_Microscopy_By_Technique |
| **Copyright/Legal**: This material includes SNOMED Clinical Terms® (SNOMED CT®) which is used by permission of SNOMED International. All rights reserved. SNOMED CT®, was originally created by The College of American Pathologists. SNOMED and SNOMED CT are registered trademarks of SNOMED International. Implementers of these artefacts must have the appropriate SNOMED CT Affiliate license. | |

 
Proposal: LOINC codes of the microbiology request 'Microscopy: General microscopy — nominal finding by microscopy or staining technique', computed by ECL over the LOINC Ontology 2026-10-21. Nominal microscopic observation with an explicit microscopy or staining technique (Gram, Giemsa, acid-fast, light microscopy …). Contains 664-3. Parts: LOINC enumeration (383, LOINC 2.83), LOINC Ontology observables without LOINC code (0), and the ECL as an intensional include. ECL: `<< 363787002 |Observable entity (observable entity)| : 370130000 |Property (attribute)| = 118584009 |Presence or identity (property) (qualifier value)|, 370132008 |Scale type (attribute)| = 117362005 |Nominal value (qualifier value)|, 246501002 |Technique (attribute)| = (<< 278289002 |Microscopy technique (qualifier value)| OR << 703857004 |Staining technique (qualifier value)|)` 

 **References** 

* Included into [MII VS Microbiology LOINC Ontology General microscopy](ValueSet-mii-vs-mikrobio-loinc-ontology-allgemeine-mikroskopie.md)

### Logical Definition (CLD)

 

### Expansion

No Expansion for this valueset (Unsupported Code System Version)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-mikrobio-loinc-ontology-general-microscopy-by-technique",
  "url" : "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/ValueSet/mii-vs-mikrobio-loinc-ontology-general-microscopy-by-technique",
  "version" : "2027.0.0-ballot2",
  "name" : "MII_VS_Mikrobio_LOINC_Ontology_General_Microscopy_By_Technique",
  "title" : "MII VS Microbiology LOINC Ontology General Microscopy By Technique",
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
  "description" : "Proposal: LOINC codes of the microbiology request 'Microscopy: General microscopy — nominal finding by microscopy or staining technique', computed by ECL over the LOINC Ontology 2026-10-21. Nominal microscopic observation with an explicit microscopy or staining technique (Gram, Giemsa, acid-fast, light microscopy ...). Contains 664-3. Parts: LOINC enumeration (383, LOINC 2.83), LOINC Ontology observables without LOINC code (0), and the ECL as an intensional include. ECL: `<< 363787002 |Observable entity (observable entity)| : 370130000 |Property (attribute)| = 118584009 |Presence or identity (property) (qualifier value)|, 370132008 |Scale type (attribute)| = 117362005 |Nominal value (qualifier value)|, 246501002 |Technique (attribute)| = (<< 278289002 |Microscopy technique (qualifier value)| OR << 703857004 |Staining technique (qualifier value)|)`",
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
        "code" : "10347-3"
      },
      {
        "code" : "10355-6"
      },
      {
        "code" : "10357-2"
      },
      {
        "code" : "105054-1"
      },
      {
        "code" : "10524-7"
      },
      {
        "code" : "10525-4"
      },
      {
        "code" : "10526-2"
      },
      {
        "code" : "10527-0"
      },
      {
        "code" : "10637-7"
      },
      {
        "code" : "10646-8"
      },
      {
        "code" : "10655-9"
      },
      {
        "code" : "10656-7"
      },
      {
        "code" : "10661-7"
      },
      {
        "code" : "10666-6"
      },
      {
        "code" : "10680-7"
      },
      {
        "code" : "10681-5"
      },
      {
        "code" : "10686-4"
      },
      {
        "code" : "10688-0"
      },
      {
        "code" : "10689-8"
      },
      {
        "code" : "10696-3"
      },
      {
        "code" : "10700-3"
      },
      {
        "code" : "10706-0"
      },
      {
        "code" : "10722-7"
      },
      {
        "code" : "10729-2"
      },
      {
        "code" : "10734-2"
      },
      {
        "code" : "10736-7"
      },
      {
        "code" : "10737-5"
      },
      {
        "code" : "10738-3"
      },
      {
        "code" : "10739-1"
      },
      {
        "code" : "10762-3"
      },
      {
        "code" : "10763-1"
      },
      {
        "code" : "10764-9"
      },
      {
        "code" : "10765-6"
      },
      {
        "code" : "10766-4"
      },
      {
        "code" : "10767-2"
      },
      {
        "code" : "10768-0"
      },
      {
        "code" : "10769-8"
      },
      {
        "code" : "10770-6"
      },
      {
        "code" : "10772-2"
      },
      {
        "code" : "10773-0"
      },
      {
        "code" : "10774-8"
      },
      {
        "code" : "10775-5"
      },
      {
        "code" : "10776-3"
      },
      {
        "code" : "10777-1"
      },
      {
        "code" : "10778-9"
      },
      {
        "code" : "10779-7"
      },
      {
        "code" : "10780-5"
      },
      {
        "code" : "10781-3"
      },
      {
        "code" : "10782-1"
      },
      {
        "code" : "10783-9"
      },
      {
        "code" : "10784-7"
      },
      {
        "code" : "10785-4"
      },
      {
        "code" : "10787-0"
      },
      {
        "code" : "10788-8"
      },
      {
        "code" : "10789-6"
      },
      {
        "code" : "10790-4"
      },
      {
        "code" : "10791-2"
      },
      {
        "code" : "10792-0"
      },
      {
        "code" : "10793-8"
      },
      {
        "code" : "10794-6"
      },
      {
        "code" : "10795-3"
      },
      {
        "code" : "10796-1"
      },
      {
        "code" : "10797-9"
      },
      {
        "code" : "10798-7"
      },
      {
        "code" : "10799-5"
      },
      {
        "code" : "10800-1"
      },
      {
        "code" : "10802-7"
      },
      {
        "code" : "10803-5"
      },
      {
        "code" : "10804-3"
      },
      {
        "code" : "10805-0"
      },
      {
        "code" : "10806-8"
      },
      {
        "code" : "10807-6"
      },
      {
        "code" : "10808-4"
      },
      {
        "code" : "10809-2"
      },
      {
        "code" : "10810-0"
      },
      {
        "code" : "10811-8"
      },
      {
        "code" : "10812-6"
      },
      {
        "code" : "10813-4"
      },
      {
        "code" : "10814-2"
      },
      {
        "code" : "10815-9"
      },
      {
        "code" : "10817-5"
      },
      {
        "code" : "10818-3"
      },
      {
        "code" : "10819-1"
      },
      {
        "code" : "10828-2"
      },
      {
        "code" : "10856-3"
      },
      {
        "code" : "10857-1"
      },
      {
        "code" : "10859-7"
      },
      {
        "code" : "11016-3"
      },
      {
        "code" : "11017-1"
      },
      {
        "code" : "11018-9"
      },
      {
        "code" : "11019-7"
      },
      {
        "code" : "11020-5"
      },
      {
        "code" : "11021-3"
      },
      {
        "code" : "11068-4"
      },
      {
        "code" : "11069-2"
      },
      {
        "code" : "11070-0"
      },
      {
        "code" : "11102-1"
      },
      {
        "code" : "111514-6"
      },
      {
        "code" : "112887-5"
      },
      {
        "code" : "113008-7"
      },
      {
        "code" : "113049-1"
      },
      {
        "code" : "113056-6"
      },
      {
        "code" : "11476-9"
      },
      {
        "code" : "11477-7"
      },
      {
        "code" : "11478-5"
      },
      {
        "code" : "11479-3"
      },
      {
        "code" : "11480-1"
      },
      {
        "code" : "11545-1"
      },
      {
        "code" : "11546-9"
      },
      {
        "code" : "12235-8"
      },
      {
        "code" : "12469-3"
      },
      {
        "code" : "13326-4"
      },
      {
        "code" : "13496-5"
      },
      {
        "code" : "13509-5"
      },
      {
        "code" : "13510-3"
      },
      {
        "code" : "13512-9"
      },
      {
        "code" : "14355-2"
      },
      {
        "code" : "14356-0"
      },
      {
        "code" : "14357-8"
      },
      {
        "code" : "14358-6"
      },
      {
        "code" : "14359-4"
      },
      {
        "code" : "14360-2"
      },
      {
        "code" : "14361-0"
      },
      {
        "code" : "14362-8"
      },
      {
        "code" : "14363-6"
      },
      {
        "code" : "14364-4"
      },
      {
        "code" : "14365-1"
      },
      {
        "code" : "14839-5"
      },
      {
        "code" : "14841-1"
      },
      {
        "code" : "14842-9"
      },
      {
        "code" : "16407-9"
      },
      {
        "code" : "17281-7"
      },
      {
        "code" : "18305-3"
      },
      {
        "code" : "18306-1"
      },
      {
        "code" : "18326-9"
      },
      {
        "code" : "18327-7"
      },
      {
        "code" : "18328-5"
      },
      {
        "code" : "18497-8"
      },
      {
        "code" : "18498-6"
      },
      {
        "code" : "18499-4"
      },
      {
        "code" : "18501-7"
      },
      {
        "code" : "18502-5"
      },
      {
        "code" : "18503-3"
      },
      {
        "code" : "19765-7"
      },
      {
        "code" : "20882-7"
      },
      {
        "code" : "21003-9"
      },
      {
        "code" : "21021-1"
      },
      {
        "code" : "21022-9"
      },
      {
        "code" : "21391-8"
      },
      {
        "code" : "22858-5"
      },
      {
        "code" : "24002-8"
      },
      {
        "code" : "24412-9"
      },
      {
        "code" : "27112-2"
      },
      {
        "code" : "31187-8"
      },
      {
        "code" : "31188-6"
      },
      {
        "code" : "31189-4"
      },
      {
        "code" : "31190-2"
      },
      {
        "code" : "31191-0"
      },
      {
        "code" : "31192-8"
      },
      {
        "code" : "31193-6"
      },
      {
        "code" : "31194-4"
      },
      {
        "code" : "31195-1"
      },
      {
        "code" : "31196-9"
      },
      {
        "code" : "31197-7"
      },
      {
        "code" : "31198-5"
      },
      {
        "code" : "31199-3"
      },
      {
        "code" : "32026-7"
      },
      {
        "code" : "32188-5"
      },
      {
        "code" : "32189-3"
      },
      {
        "code" : "32206-5"
      },
      {
        "code" : "32699-1"
      },
      {
        "code" : "32798-1"
      },
      {
        "code" : "32809-6"
      },
      {
        "code" : "32811-2"
      },
      {
        "code" : "32812-0"
      },
      {
        "code" : "32814-6"
      },
      {
        "code" : "32815-3"
      },
      {
        "code" : "32816-1"
      },
      {
        "code" : "32817-9"
      },
      {
        "code" : "32818-7"
      },
      {
        "code" : "32819-5"
      },
      {
        "code" : "32824-5"
      },
      {
        "code" : "33038-1"
      },
      {
        "code" : "33039-9"
      },
      {
        "code" : "33270-0"
      },
      {
        "code" : "33675-0"
      },
      {
        "code" : "33699-0"
      },
      {
        "code" : "34166-9"
      },
      {
        "code" : "34959-7"
      },
      {
        "code" : "38397-6"
      },
      {
        "code" : "38398-4"
      },
      {
        "code" : "38399-2"
      },
      {
        "code" : "38519-5"
      },
      {
        "code" : "42209-7"
      },
      {
        "code" : "42210-5"
      },
      {
        "code" : "42343-4"
      },
      {
        "code" : "42764-1"
      },
      {
        "code" : "43417-5"
      },
      {
        "code" : "44098-2"
      },
      {
        "code" : "47611-9"
      },
      {
        "code" : "48712-4"
      },
      {
        "code" : "48722-3"
      },
      {
        "code" : "49034-2"
      },
      {
        "code" : "49050-8"
      },
      {
        "code" : "51709-4"
      },
      {
        "code" : "51714-4"
      },
      {
        "code" : "53522-9"
      },
      {
        "code" : "53785-2"
      },
      {
        "code" : "53786-0"
      },
      {
        "code" : "53904-9"
      },
      {
        "code" : "53905-6"
      },
      {
        "code" : "53906-4"
      },
      {
        "code" : "53907-2"
      },
      {
        "code" : "53910-6"
      },
      {
        "code" : "53912-2"
      },
      {
        "code" : "53913-0"
      },
      {
        "code" : "53914-8"
      },
      {
        "code" : "53915-5"
      },
      {
        "code" : "53916-3"
      },
      {
        "code" : "53918-9"
      },
      {
        "code" : "55222-4"
      },
      {
        "code" : "55600-1"
      },
      {
        "code" : "55601-9"
      },
      {
        "code" : "55602-7"
      },
      {
        "code" : "55603-5"
      },
      {
        "code" : "55604-3"
      },
      {
        "code" : "5779-4"
      },
      {
        "code" : "5780-2"
      },
      {
        "code" : "5781-0"
      },
      {
        "code" : "5782-8"
      },
      {
        "code" : "58942-4"
      },
      {
        "code" : "58943-2"
      },
      {
        "code" : "58944-0"
      },
      {
        "code" : "58945-7"
      },
      {
        "code" : "59474-7"
      },
      {
        "code" : "63433-7"
      },
      {
        "code" : "638-7"
      },
      {
        "code" : "639-5"
      },
      {
        "code" : "640-3"
      },
      {
        "code" : "642-9"
      },
      {
        "code" : "643-7"
      },
      {
        "code" : "644-5"
      },
      {
        "code" : "645-2"
      },
      {
        "code" : "6464-2"
      },
      {
        "code" : "6465-9"
      },
      {
        "code" : "6467-5"
      },
      {
        "code" : "6468-3"
      },
      {
        "code" : "6469-1"
      },
      {
        "code" : "647-8"
      },
      {
        "code" : "6471-7"
      },
      {
        "code" : "6472-5"
      },
      {
        "code" : "6473-3"
      },
      {
        "code" : "6474-1"
      },
      {
        "code" : "648-6"
      },
      {
        "code" : "649-4"
      },
      {
        "code" : "650-2"
      },
      {
        "code" : "652-8"
      },
      {
        "code" : "653-6"
      },
      {
        "code" : "654-4"
      },
      {
        "code" : "656-9"
      },
      {
        "code" : "657-7"
      },
      {
        "code" : "658-5"
      },
      {
        "code" : "659-3"
      },
      {
        "code" : "662-7"
      },
      {
        "code" : "663-5"
      },
      {
        "code" : "664-3"
      },
      {
        "code" : "665-0"
      },
      {
        "code" : "6655-5"
      },
      {
        "code" : "6657-1"
      },
      {
        "code" : "6658-9"
      },
      {
        "code" : "6659-7"
      },
      {
        "code" : "666-8"
      },
      {
        "code" : "6662-1"
      },
      {
        "code" : "6663-9"
      },
      {
        "code" : "6664-7"
      },
      {
        "code" : "6665-4"
      },
      {
        "code" : "6666-2"
      },
      {
        "code" : "6667-0"
      },
      {
        "code" : "6668-8"
      },
      {
        "code" : "6669-6"
      },
      {
        "code" : "667-6"
      },
      {
        "code" : "6671-2"
      },
      {
        "code" : "6672-0"
      },
      {
        "code" : "6673-8"
      },
      {
        "code" : "6675-3"
      },
      {
        "code" : "6677-9"
      },
      {
        "code" : "6678-7"
      },
      {
        "code" : "6679-5"
      },
      {
        "code" : "668-4"
      },
      {
        "code" : "6681-1"
      },
      {
        "code" : "6682-9"
      },
      {
        "code" : "669-2"
      },
      {
        "code" : "670-0"
      },
      {
        "code" : "671-8"
      },
      {
        "code" : "672-6"
      },
      {
        "code" : "674-2"
      },
      {
        "code" : "676-7"
      },
      {
        "code" : "677-5"
      },
      {
        "code" : "678-3"
      },
      {
        "code" : "679-1"
      },
      {
        "code" : "681-7"
      },
      {
        "code" : "682-5"
      },
      {
        "code" : "6825-4"
      },
      {
        "code" : "6826-2"
      },
      {
        "code" : "68383-9"
      },
      {
        "code" : "68958-8"
      },
      {
        "code" : "72408-8"
      },
      {
        "code" : "73694-2"
      },
      {
        "code" : "75222-0"
      },
      {
        "code" : "76082-7"
      },
      {
        "code" : "79375-2"
      },
      {
        "code" : "79376-0"
      },
      {
        "code" : "81423-6"
      },
      {
        "code" : "81424-4"
      },
      {
        "code" : "81425-1"
      },
      {
        "code" : "81426-9"
      },
      {
        "code" : "81427-7"
      },
      {
        "code" : "8250-3"
      },
      {
        "code" : "87965-0"
      },
      {
        "code" : "87966-8"
      },
      {
        "code" : "87967-6"
      },
      {
        "code" : "87968-4"
      },
      {
        "code" : "87969-2"
      },
      {
        "code" : "87970-0"
      },
      {
        "code" : "87971-8"
      },
      {
        "code" : "87972-6"
      },
      {
        "code" : "87973-4"
      },
      {
        "code" : "87974-2"
      },
      {
        "code" : "87975-9"
      },
      {
        "code" : "87999-9"
      },
      {
        "code" : "88000-5"
      },
      {
        "code" : "88001-3"
      },
      {
        "code" : "88144-1"
      },
      {
        "code" : "88145-8"
      },
      {
        "code" : "88146-6"
      },
      {
        "code" : "88147-4"
      },
      {
        "code" : "88148-2"
      },
      {
        "code" : "88149-0"
      },
      {
        "code" : "88150-8"
      },
      {
        "code" : "88151-6"
      },
      {
        "code" : "88152-4"
      },
      {
        "code" : "88153-2"
      },
      {
        "code" : "88154-0"
      },
      {
        "code" : "88155-7"
      },
      {
        "code" : "88156-5"
      },
      {
        "code" : "88157-3"
      },
      {
        "code" : "88158-1"
      },
      {
        "code" : "88159-9"
      },
      {
        "code" : "88170-6"
      },
      {
        "code" : "88231-6"
      },
      {
        "code" : "88235-7"
      },
      {
        "code" : "88337-1"
      },
      {
        "code" : "88632-5"
      },
      {
        "code" : "88633-3"
      },
      {
        "code" : "88634-1"
      },
      {
        "code" : "88635-8"
      },
      {
        "code" : "88684-6"
      },
      {
        "code" : "88685-3"
      },
      {
        "code" : "89582-1"
      },
      {
        "code" : "89657-1"
      },
      {
        "code" : "89658-9"
      },
      {
        "code" : "89659-7"
      },
      {
        "code" : "89660-5"
      },
      {
        "code" : "89661-3"
      },
      {
        "code" : "89662-1"
      },
      {
        "code" : "90261-9"
      },
      {
        "code" : "90262-7"
      },
      {
        "code" : "90263-5"
      },
      {
        "code" : "90267-6"
      },
      {
        "code" : "90268-4"
      },
      {
        "code" : "90269-2"
      },
      {
        "code" : "90282-5"
      },
      {
        "code" : "90296-5"
      },
      {
        "code" : "91808-6"
      },
      {
        "code" : "91850-8"
      },
      {
        "code" : "94543-6"
      },
      {
        "code" : "96035-1"
      },
      {
        "code" : "96713-3"
      },
      {
        "code" : "9786-5"
      },
      {
        "code" : "9787-3"
      },
      {
        "code" : "98025-0"
      },
      {
        "code" : "98028-4"
      },
      {
        "code" : "98029-2"
      }]
    },
    {
      "system" : "http://snomed.info/sct",
      "version" : "http://snomed.info/sct/11010000107/version/20261021",
      "filter" : [{
        "property" : "constraint",
        "op" : "=",
        "value" : "<< 363787002 |Observable entity (observable entity)| : 370130000 |Property (attribute)| = 118584009 |Presence or identity (property) (qualifier value)|, 370132008 |Scale type (attribute)| = 117362005 |Nominal value (qualifier value)|, 246501002 |Technique (attribute)| = (<< 278289002 |Microscopy technique (qualifier value)| OR << 703857004 |Staining technique (qualifier value)|)"
      }]
    }]
  }
}

```
