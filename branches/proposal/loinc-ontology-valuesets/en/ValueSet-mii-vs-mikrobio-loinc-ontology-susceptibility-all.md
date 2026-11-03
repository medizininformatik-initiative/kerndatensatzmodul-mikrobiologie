# MII VS Microbiology LOINC Ontology Susceptibility All - MII Implementation Guide Microbiology v2027.0.0-ballot2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII VS Microbiology LOINC Ontology Susceptibility All**

## ValueSet: MII VS Microbiology LOINC Ontology Susceptibility All (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/ValueSet/mii-vs-mikrobio-loinc-ontology-susceptibility-all | *Version*:2027.0.0-ballot2 |
| Draft as of 2026-11-03 | *Computable Name*:MII_VS_Mikrobio_LOINC_Ontology_Susceptibility_All |
| **Copyright/Legal**: This material includes SNOMED Clinical Terms® (SNOMED CT®) which is used by permission of SNOMED International. All rights reserved. SNOMED CT®, was originally created by The College of American Pathologists. SNOMED and SNOMED CT are registered trademarks of SNOMED International. Implementers of these artefacts must have the appropriate SNOMED CT Affiliate license. | |

 
Proposal: LOINC codes of the microbiology request 'Susceptibility: All susceptibility observables (upper bound)', computed by ECL over the LOINC Ontology 2026-10-21. Every observable with Property = Susceptibility, any site, any technique. Upper bound for review; the difference to the two queries above is the set with a non-isolate site (e.g. susceptibility in blood). Parts: LOINC enumeration (1349, LOINC 2.83), LOINC Ontology observables without LOINC code (1), and the ECL as an intensional include. ECL: `<< 363787002 |Observable entity (observable entity)| : 370130000 |Property (attribute)| = 118588007 |Susceptibility (property) (qualifier value)|` 

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
  "id" : "mii-vs-mikrobio-loinc-ontology-susceptibility-all",
  "url" : "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/ValueSet/mii-vs-mikrobio-loinc-ontology-susceptibility-all",
  "version" : "2027.0.0-ballot2",
  "name" : "MII_VS_Mikrobio_LOINC_Ontology_Susceptibility_All",
  "title" : "MII VS Microbiology LOINC Ontology Susceptibility All",
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
  "description" : "Proposal: LOINC codes of the microbiology request 'Susceptibility: All susceptibility observables (upper bound)', computed by ECL over the LOINC Ontology 2026-10-21. Every observable with Property = Susceptibility, any site, any technique. Upper bound for review; the difference to the two queries above is the set with a non-isolate site (e.g. susceptibility in blood). Parts: LOINC enumeration (1349, LOINC 2.83), LOINC Ontology observables without LOINC code (1), and the ECL as an intensional include. ECL: `<< 363787002 |Observable entity (observable entity)| : 370130000 |Property (attribute)| = 118588007 |Susceptibility (property) (qualifier value)|`",
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
        "code" : "1-8"
      },
      {
        "code" : "100-8"
      },
      {
        "code" : "100041-3"
      },
      {
        "code" : "100042-1"
      },
      {
        "code" : "100046-2"
      },
      {
        "code" : "100049-6"
      },
      {
        "code" : "100053-8"
      },
      {
        "code" : "100055-3"
      },
      {
        "code" : "100056-1"
      },
      {
        "code" : "100057-9"
      },
      {
        "code" : "100058-7"
      },
      {
        "code" : "100059-5"
      },
      {
        "code" : "101-6"
      },
      {
        "code" : "101477-8"
      },
      {
        "code" : "101479-4"
      },
      {
        "code" : "101481-0"
      },
      {
        "code" : "101485-1"
      },
      {
        "code" : "101486-9"
      },
      {
        "code" : "101487-7"
      },
      {
        "code" : "101488-5"
      },
      {
        "code" : "101490-1"
      },
      {
        "code" : "101492-7"
      },
      {
        "code" : "101493-5"
      },
      {
        "code" : "101494-3"
      },
      {
        "code" : "101496-8"
      },
      {
        "code" : "101497-6"
      },
      {
        "code" : "101499-2"
      },
      {
        "code" : "101500-7"
      },
      {
        "code" : "101501-5"
      },
      {
        "code" : "101502-3"
      },
      {
        "code" : "101503-1"
      },
      {
        "code" : "101504-9"
      },
      {
        "code" : "103-2"
      },
      {
        "code" : "103653-2"
      },
      {
        "code" : "103654-0"
      },
      {
        "code" : "103673-0"
      },
      {
        "code" : "103958-5"
      },
      {
        "code" : "103959-3"
      },
      {
        "code" : "103960-1"
      },
      {
        "code" : "104-0"
      },
      {
        "code" : "105-7"
      },
      {
        "code" : "105268-7"
      },
      {
        "code" : "106433-6"
      },
      {
        "code" : "10653-4"
      },
      {
        "code" : "10654-2"
      },
      {
        "code" : "106742-0"
      },
      {
        "code" : "106858-4"
      },
      {
        "code" : "10697-1"
      },
      {
        "code" : "10698-9"
      },
      {
        "code" : "107-3"
      },
      {
        "code" : "10720-1"
      },
      {
        "code" : "10721-9"
      },
      {
        "code" : "108-1"
      },
      {
        "code" : "10868-8"
      },
      {
        "code" : "109-9"
      },
      {
        "code" : "11-7"
      },
      {
        "code" : "111-5"
      },
      {
        "code" : "112-3"
      },
      {
        "code" : "113-1"
      },
      {
        "code" : "115-6"
      },
      {
        "code" : "11575-8"
      },
      {
        "code" : "11577-4"
      },
      {
        "code" : "11578-2"
      },
      {
        "code" : "116-4"
      },
      {
        "code" : "117-2"
      },
      {
        "code" : "119-8"
      },
      {
        "code" : "12-5"
      },
      {
        "code" : "120-6"
      },
      {
        "code" : "121-4"
      },
      {
        "code" : "123-0"
      },
      {
        "code" : "124-8"
      },
      {
        "code" : "125-5"
      },
      {
        "code" : "127-1"
      },
      {
        "code" : "128-9"
      },
      {
        "code" : "129-7"
      },
      {
        "code" : "13-3"
      },
      {
        "code" : "132-1"
      },
      {
        "code" : "133-9"
      },
      {
        "code" : "134-7"
      },
      {
        "code" : "136-2"
      },
      {
        "code" : "137-0"
      },
      {
        "code" : "138-8"
      },
      {
        "code" : "13968-3"
      },
      {
        "code" : "140-4"
      },
      {
        "code" : "141-2"
      },
      {
        "code" : "142-0"
      },
      {
        "code" : "14332-1"
      },
      {
        "code" : "144-6"
      },
      {
        "code" : "145-3"
      },
      {
        "code" : "146-1"
      },
      {
        "code" : "148-7"
      },
      {
        "code" : "149-5"
      },
      {
        "code" : "15-8"
      },
      {
        "code" : "150-3"
      },
      {
        "code" : "152-9"
      },
      {
        "code" : "153-7"
      },
      {
        "code" : "154-5"
      },
      {
        "code" : "156-0"
      },
      {
        "code" : "157-8"
      },
      {
        "code" : "158-6"
      },
      {
        "code" : "16-6"
      },
      {
        "code" : "160-2"
      },
      {
        "code" : "16099-4"
      },
      {
        "code" : "161-0"
      },
      {
        "code" : "16100-0"
      },
      {
        "code" : "162-8"
      },
      {
        "code" : "164-4"
      },
      {
        "code" : "165-1"
      },
      {
        "code" : "166-9"
      },
      {
        "code" : "16623-1"
      },
      {
        "code" : "168-5"
      },
      {
        "code" : "169-3"
      },
      {
        "code" : "17-4"
      },
      {
        "code" : "170-1"
      },
      {
        "code" : "172-7"
      },
      {
        "code" : "173-5"
      },
      {
        "code" : "174-3"
      },
      {
        "code" : "176-8"
      },
      {
        "code" : "177-6"
      },
      {
        "code" : "178-4"
      },
      {
        "code" : "180-0"
      },
      {
        "code" : "181-8"
      },
      {
        "code" : "182-6"
      },
      {
        "code" : "184-2"
      },
      {
        "code" : "185-9"
      },
      {
        "code" : "186-7"
      },
      {
        "code" : "188-3"
      },
      {
        "code" : "18855-7"
      },
      {
        "code" : "18857-3"
      },
      {
        "code" : "18859-9"
      },
      {
        "code" : "18860-7"
      },
      {
        "code" : "18861-5"
      },
      {
        "code" : "18863-1"
      },
      {
        "code" : "18864-9"
      },
      {
        "code" : "18866-4"
      },
      {
        "code" : "18867-2"
      },
      {
        "code" : "18868-0"
      },
      {
        "code" : "18869-8"
      },
      {
        "code" : "18870-6"
      },
      {
        "code" : "18871-4"
      },
      {
        "code" : "18872-2"
      },
      {
        "code" : "18873-0"
      },
      {
        "code" : "18874-8"
      },
      {
        "code" : "18875-5"
      },
      {
        "code" : "18876-3"
      },
      {
        "code" : "18877-1"
      },
      {
        "code" : "18878-9"
      },
      {
        "code" : "18879-7"
      },
      {
        "code" : "18880-5"
      },
      {
        "code" : "18881-3"
      },
      {
        "code" : "18882-1"
      },
      {
        "code" : "18883-9"
      },
      {
        "code" : "18884-7"
      },
      {
        "code" : "18885-4"
      },
      {
        "code" : "18886-2"
      },
      {
        "code" : "18887-0"
      },
      {
        "code" : "18888-8"
      },
      {
        "code" : "18889-6"
      },
      {
        "code" : "18890-4"
      },
      {
        "code" : "18891-2"
      },
      {
        "code" : "18892-0"
      },
      {
        "code" : "18893-8"
      },
      {
        "code" : "18894-6"
      },
      {
        "code" : "18895-3"
      },
      {
        "code" : "18896-1"
      },
      {
        "code" : "18897-9"
      },
      {
        "code" : "18898-7"
      },
      {
        "code" : "18899-5"
      },
      {
        "code" : "189-1"
      },
      {
        "code" : "18900-1"
      },
      {
        "code" : "18901-9"
      },
      {
        "code" : "18902-7"
      },
      {
        "code" : "18903-5"
      },
      {
        "code" : "18904-3"
      },
      {
        "code" : "18905-0"
      },
      {
        "code" : "18906-8"
      },
      {
        "code" : "18907-6"
      },
      {
        "code" : "18908-4"
      },
      {
        "code" : "18909-2"
      },
      {
        "code" : "18910-0"
      },
      {
        "code" : "18911-8"
      },
      {
        "code" : "18912-6"
      },
      {
        "code" : "18913-4"
      },
      {
        "code" : "18914-2"
      },
      {
        "code" : "18915-9"
      },
      {
        "code" : "18916-7"
      },
      {
        "code" : "18917-5"
      },
      {
        "code" : "18918-3"
      },
      {
        "code" : "18919-1"
      },
      {
        "code" : "18921-7"
      },
      {
        "code" : "18922-5"
      },
      {
        "code" : "18923-3"
      },
      {
        "code" : "18924-1"
      },
      {
        "code" : "18926-6"
      },
      {
        "code" : "18927-4"
      },
      {
        "code" : "18928-2"
      },
      {
        "code" : "18929-0"
      },
      {
        "code" : "18930-8"
      },
      {
        "code" : "18931-6"
      },
      {
        "code" : "18932-4"
      },
      {
        "code" : "18934-0"
      },
      {
        "code" : "18935-7"
      },
      {
        "code" : "18936-5"
      },
      {
        "code" : "18937-3"
      },
      {
        "code" : "18938-1"
      },
      {
        "code" : "18939-9"
      },
      {
        "code" : "18940-7"
      },
      {
        "code" : "18941-5"
      },
      {
        "code" : "18942-3"
      },
      {
        "code" : "18943-1"
      },
      {
        "code" : "18944-9"
      },
      {
        "code" : "18945-6"
      },
      {
        "code" : "18946-4"
      },
      {
        "code" : "18947-2"
      },
      {
        "code" : "18948-0"
      },
      {
        "code" : "18949-8"
      },
      {
        "code" : "18950-6"
      },
      {
        "code" : "18951-4"
      },
      {
        "code" : "18952-2"
      },
      {
        "code" : "18953-0"
      },
      {
        "code" : "18954-8"
      },
      {
        "code" : "18955-5"
      },
      {
        "code" : "18956-3"
      },
      {
        "code" : "18957-1"
      },
      {
        "code" : "18958-9"
      },
      {
        "code" : "18959-7"
      },
      {
        "code" : "18960-5"
      },
      {
        "code" : "18961-3"
      },
      {
        "code" : "18962-1"
      },
      {
        "code" : "18963-9"
      },
      {
        "code" : "18964-7"
      },
      {
        "code" : "18965-4"
      },
      {
        "code" : "18966-2"
      },
      {
        "code" : "18967-0"
      },
      {
        "code" : "18968-8"
      },
      {
        "code" : "18969-6"
      },
      {
        "code" : "18971-2"
      },
      {
        "code" : "18972-0"
      },
      {
        "code" : "18973-8"
      },
      {
        "code" : "18974-6"
      },
      {
        "code" : "18975-3"
      },
      {
        "code" : "18976-1"
      },
      {
        "code" : "18977-9"
      },
      {
        "code" : "18978-7"
      },
      {
        "code" : "18979-5"
      },
      {
        "code" : "18980-3"
      },
      {
        "code" : "18981-1"
      },
      {
        "code" : "18982-9"
      },
      {
        "code" : "18983-7"
      },
      {
        "code" : "18984-5"
      },
      {
        "code" : "18985-2"
      },
      {
        "code" : "18986-0"
      },
      {
        "code" : "18987-8"
      },
      {
        "code" : "18988-6"
      },
      {
        "code" : "18989-4"
      },
      {
        "code" : "18990-2"
      },
      {
        "code" : "18991-0"
      },
      {
        "code" : "18992-8"
      },
      {
        "code" : "18993-6"
      },
      {
        "code" : "18994-4"
      },
      {
        "code" : "18996-9"
      },
      {
        "code" : "18997-7"
      },
      {
        "code" : "18999-3"
      },
      {
        "code" : "190-9"
      },
      {
        "code" : "19000-9"
      },
      {
        "code" : "19001-7"
      },
      {
        "code" : "19149-4"
      },
      {
        "code" : "192-5"
      },
      {
        "code" : "193-3"
      },
      {
        "code" : "194-1"
      },
      {
        "code" : "196-6"
      },
      {
        "code" : "197-4"
      },
      {
        "code" : "198-2"
      },
      {
        "code" : "2-6"
      },
      {
        "code" : "200-6"
      },
      {
        "code" : "201-4"
      },
      {
        "code" : "202-2"
      },
      {
        "code" : "20373-7"
      },
      {
        "code" : "20375-2"
      },
      {
        "code" : "20376-0"
      },
      {
        "code" : "20377-8"
      },
      {
        "code" : "20378-6"
      },
      {
        "code" : "20379-4"
      },
      {
        "code" : "20380-2"
      },
      {
        "code" : "20381-0"
      },
      {
        "code" : "20382-8"
      },
      {
        "code" : "20383-6"
      },
      {
        "code" : "20384-4"
      },
      {
        "code" : "20385-1"
      },
      {
        "code" : "20386-9"
      },
      {
        "code" : "20389-3"
      },
      {
        "code" : "20390-1"
      },
      {
        "code" : "20391-9"
      },
      {
        "code" : "20396-8"
      },
      {
        "code" : "20397-6"
      },
      {
        "code" : "204-8"
      },
      {
        "code" : "20461-0"
      },
      {
        "code" : "20462-8"
      },
      {
        "code" : "205-5"
      },
      {
        "code" : "206-3"
      },
      {
        "code" : "20629-2"
      },
      {
        "code" : "208-9"
      },
      {
        "code" : "209-7"
      },
      {
        "code" : "210-5"
      },
      {
        "code" : "21070-8"
      },
      {
        "code" : "212-1"
      },
      {
        "code" : "213-9"
      },
      {
        "code" : "21316-5"
      },
      {
        "code" : "21367-8"
      },
      {
        "code" : "214-7"
      },
      {
        "code" : "216-2"
      },
      {
        "code" : "217-0"
      },
      {
        "code" : "218-8"
      },
      {
        "code" : "220-4"
      },
      {
        "code" : "221-2"
      },
      {
        "code" : "222-0"
      },
      {
        "code" : "224-6"
      },
      {
        "code" : "225-3"
      },
      {
        "code" : "226-1"
      },
      {
        "code" : "228-7"
      },
      {
        "code" : "229-5"
      },
      {
        "code" : "23-2"
      },
      {
        "code" : "230-3"
      },
      {
        "code" : "232-9"
      },
      {
        "code" : "233-7"
      },
      {
        "code" : "234-5"
      },
      {
        "code" : "23607-5"
      },
      {
        "code" : "23608-3"
      },
      {
        "code" : "23609-1"
      },
      {
        "code" : "23610-9"
      },
      {
        "code" : "23611-7"
      },
      {
        "code" : "23612-5"
      },
      {
        "code" : "23613-3"
      },
      {
        "code" : "23614-1"
      },
      {
        "code" : "23615-8"
      },
      {
        "code" : "23616-6"
      },
      {
        "code" : "23627-3"
      },
      {
        "code" : "23628-1"
      },
      {
        "code" : "23629-9"
      },
      {
        "code" : "23636-4"
      },
      {
        "code" : "23637-2"
      },
      {
        "code" : "23638-0"
      },
      {
        "code" : "23639-8"
      },
      {
        "code" : "23642-2"
      },
      {
        "code" : "23643-0"
      },
      {
        "code" : "23658-8"
      },
      {
        "code" : "23712-3"
      },
      {
        "code" : "23740-4"
      },
      {
        "code" : "24-0"
      },
      {
        "code" : "240-2"
      },
      {
        "code" : "241-0"
      },
      {
        "code" : "242-8"
      },
      {
        "code" : "244-4"
      },
      {
        "code" : "245-1"
      },
      {
        "code" : "246-9"
      },
      {
        "code" : "248-5"
      },
      {
        "code" : "249-3"
      },
      {
        "code" : "25-7"
      },
      {
        "code" : "250-1"
      },
      {
        "code" : "25174-4"
      },
      {
        "code" : "25175-1"
      },
      {
        "code" : "25176-9"
      },
      {
        "code" : "25177-7"
      },
      {
        "code" : "25178-5"
      },
      {
        "code" : "25179-3"
      },
      {
        "code" : "25180-1"
      },
      {
        "code" : "25181-9"
      },
      {
        "code" : "25182-7"
      },
      {
        "code" : "25183-5"
      },
      {
        "code" : "25184-3"
      },
      {
        "code" : "25185-0"
      },
      {
        "code" : "25186-8"
      },
      {
        "code" : "25187-6"
      },
      {
        "code" : "25188-4"
      },
      {
        "code" : "25189-2"
      },
      {
        "code" : "25190-0"
      },
      {
        "code" : "25191-8"
      },
      {
        "code" : "25192-6"
      },
      {
        "code" : "25194-2"
      },
      {
        "code" : "25195-9"
      },
      {
        "code" : "25196-7"
      },
      {
        "code" : "25198-3"
      },
      {
        "code" : "25199-1"
      },
      {
        "code" : "252-7"
      },
      {
        "code" : "25200-7"
      },
      {
        "code" : "25201-5"
      },
      {
        "code" : "25202-3"
      },
      {
        "code" : "25203-1"
      },
      {
        "code" : "25204-9"
      },
      {
        "code" : "25205-6"
      },
      {
        "code" : "25206-4"
      },
      {
        "code" : "25207-2"
      },
      {
        "code" : "25208-0"
      },
      {
        "code" : "25209-8"
      },
      {
        "code" : "25210-6"
      },
      {
        "code" : "25211-4"
      },
      {
        "code" : "25212-2"
      },
      {
        "code" : "25213-0"
      },
      {
        "code" : "25214-8"
      },
      {
        "code" : "25215-5"
      },
      {
        "code" : "25216-3"
      },
      {
        "code" : "25217-1"
      },
      {
        "code" : "25218-9"
      },
      {
        "code" : "25219-7"
      },
      {
        "code" : "25220-5"
      },
      {
        "code" : "25221-3"
      },
      {
        "code" : "25222-1"
      },
      {
        "code" : "25223-9"
      },
      {
        "code" : "25224-7"
      },
      {
        "code" : "25225-4"
      },
      {
        "code" : "25226-2"
      },
      {
        "code" : "25227-0"
      },
      {
        "code" : "25228-8"
      },
      {
        "code" : "25229-6"
      },
      {
        "code" : "25230-4"
      },
      {
        "code" : "25231-2"
      },
      {
        "code" : "253-5"
      },
      {
        "code" : "25366-6"
      },
      {
        "code" : "25367-4"
      },
      {
        "code" : "254-3"
      },
      {
        "code" : "25411-0"
      },
      {
        "code" : "25452-4"
      },
      {
        "code" : "25595-0"
      },
      {
        "code" : "25596-8"
      },
      {
        "code" : "25597-6"
      },
      {
        "code" : "256-8"
      },
      {
        "code" : "25607-3"
      },
      {
        "code" : "25608-1"
      },
      {
        "code" : "25637-0"
      },
      {
        "code" : "25653-7"
      },
      {
        "code" : "257-6"
      },
      {
        "code" : "25702-2"
      },
      {
        "code" : "25722-0"
      },
      {
        "code" : "25723-8"
      },
      {
        "code" : "258-4"
      },
      {
        "code" : "25800-4"
      },
      {
        "code" : "259-2"
      },
      {
        "code" : "261-8"
      },
      {
        "code" : "262-6"
      },
      {
        "code" : "263-4"
      },
      {
        "code" : "265-9"
      },
      {
        "code" : "266-7"
      },
      {
        "code" : "267-5"
      },
      {
        "code" : "268-3"
      },
      {
        "code" : "27-3"
      },
      {
        "code" : "270-9"
      },
      {
        "code" : "271-7"
      },
      {
        "code" : "272-5"
      },
      {
        "code" : "274-1"
      },
      {
        "code" : "275-8"
      },
      {
        "code" : "276-6"
      },
      {
        "code" : "278-2"
      },
      {
        "code" : "279-0"
      },
      {
        "code" : "28-1"
      },
      {
        "code" : "280-8"
      },
      {
        "code" : "286-5"
      },
      {
        "code" : "287-3"
      },
      {
        "code" : "288-1"
      },
      {
        "code" : "29-9"
      },
      {
        "code" : "290-7"
      },
      {
        "code" : "291-5"
      },
      {
        "code" : "292-3"
      },
      {
        "code" : "29254-0"
      },
      {
        "code" : "29255-7"
      },
      {
        "code" : "29258-1"
      },
      {
        "code" : "29315-9"
      },
      {
        "code" : "294-9"
      },
      {
        "code" : "295-6"
      },
      {
        "code" : "296-4"
      },
      {
        "code" : "298-0"
      },
      {
        "code" : "299-8"
      },
      {
        "code" : "3-4"
      },
      {
        "code" : "300-4"
      },
      {
        "code" : "302-0"
      },
      {
        "code" : "30268-7"
      },
      {
        "code" : "30269-5"
      },
      {
        "code" : "30270-3"
      },
      {
        "code" : "30271-1"
      },
      {
        "code" : "30272-9"
      },
      {
        "code" : "30273-7"
      },
      {
        "code" : "30274-5"
      },
      {
        "code" : "30275-2"
      },
      {
        "code" : "30276-0"
      },
      {
        "code" : "30277-8"
      },
      {
        "code" : "30278-6"
      },
      {
        "code" : "30279-4"
      },
      {
        "code" : "30280-2"
      },
      {
        "code" : "30281-0"
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
        "code" : "30296-8"
      },
      {
        "code" : "30297-6"
      },
      {
        "code" : "30298-4"
      },
      {
        "code" : "30299-2"
      },
      {
        "code" : "303-8"
      },
      {
        "code" : "30300-8"
      },
      {
        "code" : "30301-6"
      },
      {
        "code" : "30302-4"
      },
      {
        "code" : "30303-2"
      },
      {
        "code" : "30304-0"
      },
      {
        "code" : "30305-7"
      },
      {
        "code" : "30306-5"
      },
      {
        "code" : "30307-3"
      },
      {
        "code" : "30308-1"
      },
      {
        "code" : "30309-9"
      },
      {
        "code" : "30310-7"
      },
      {
        "code" : "30311-5"
      },
      {
        "code" : "304-6"
      },
      {
        "code" : "306-1"
      },
      {
        "code" : "307-9"
      },
      {
        "code" : "308-7"
      },
      {
        "code" : "310-3"
      },
      {
        "code" : "31036-7"
      },
      {
        "code" : "31037-5"
      },
      {
        "code" : "31038-3"
      },
      {
        "code" : "31039-1"
      },
      {
        "code" : "31040-9"
      },
      {
        "code" : "31041-7"
      },
      {
        "code" : "31042-5"
      },
      {
        "code" : "31043-3"
      },
      {
        "code" : "311-1"
      },
      {
        "code" : "31138-1"
      },
      {
        "code" : "31139-9"
      },
      {
        "code" : "31140-7"
      },
      {
        "code" : "31141-5"
      },
      {
        "code" : "31142-3"
      },
      {
        "code" : "31143-1"
      },
      {
        "code" : "312-9"
      },
      {
        "code" : "314-5"
      },
      {
        "code" : "315-2"
      },
      {
        "code" : "316-0"
      },
      {
        "code" : "318-6"
      },
      {
        "code" : "319-4"
      },
      {
        "code" : "320-2"
      },
      {
        "code" : "322-8"
      },
      {
        "code" : "323-6"
      },
      {
        "code" : "32372-5"
      },
      {
        "code" : "32373-3"
      },
      {
        "code" : "32374-1"
      },
      {
        "code" : "32376-6"
      },
      {
        "code" : "32377-4"
      },
      {
        "code" : "32378-2"
      },
      {
        "code" : "32379-0"
      },
      {
        "code" : "32381-6"
      },
      {
        "code" : "32384-0"
      },
      {
        "code" : "324-4"
      },
      {
        "code" : "32597-7"
      },
      {
        "code" : "326-9"
      },
      {
        "code" : "32603-3"
      },
      {
        "code" : "327-7"
      },
      {
        "code" : "328-5"
      },
      {
        "code" : "330-1"
      },
      {
        "code" : "331-9"
      },
      {
        "code" : "332-7"
      },
      {
        "code" : "33332-8"
      },
      {
        "code" : "33333-6"
      },
      {
        "code" : "334-3"
      },
      {
        "code" : "335-0"
      },
      {
        "code" : "336-8"
      },
      {
        "code" : "33627-1"
      },
      {
        "code" : "33628-9"
      },
      {
        "code" : "338-4"
      },
      {
        "code" : "339-2"
      },
      {
        "code" : "340-0"
      },
      {
        "code" : "342-6"
      },
      {
        "code" : "343-4"
      },
      {
        "code" : "344-2"
      },
      {
        "code" : "346-7"
      },
      {
        "code" : "34643-7"
      },
      {
        "code" : "34644-5"
      },
      {
        "code" : "347-5"
      },
      {
        "code" : "348-3"
      },
      {
        "code" : "35-6"
      },
      {
        "code" : "350-9"
      },
      {
        "code" : "351-7"
      },
      {
        "code" : "352-5"
      },
      {
        "code" : "354-1"
      },
      {
        "code" : "355-8"
      },
      {
        "code" : "356-6"
      },
      {
        "code" : "35757-4"
      },
      {
        "code" : "35758-2"
      },
      {
        "code" : "35759-0"
      },
      {
        "code" : "35760-8"
      },
      {
        "code" : "35761-6"
      },
      {
        "code" : "35762-4"
      },
      {
        "code" : "35764-0"
      },
      {
        "code" : "35765-7"
      },
      {
        "code" : "35766-5"
      },
      {
        "code" : "35767-3"
      },
      {
        "code" : "35772-3"
      },
      {
        "code" : "35773-1"
      },
      {
        "code" : "35777-2"
      },
      {
        "code" : "35778-0"
      },
      {
        "code" : "35779-8"
      },
      {
        "code" : "35784-8"
      },
      {
        "code" : "35785-5"
      },
      {
        "code" : "35786-3"
      },
      {
        "code" : "35787-1"
      },
      {
        "code" : "35788-9"
      },
      {
        "code" : "35789-7"
      },
      {
        "code" : "35793-9"
      },
      {
        "code" : "35794-7"
      },
      {
        "code" : "35795-4"
      },
      {
        "code" : "35796-2"
      },
      {
        "code" : "35797-0"
      },
      {
        "code" : "35798-8"
      },
      {
        "code" : "35799-6"
      },
      {
        "code" : "358-2"
      },
      {
        "code" : "35800-2"
      },
      {
        "code" : "35801-0"
      },
      {
        "code" : "35802-8"
      },
      {
        "code" : "35803-6"
      },
      {
        "code" : "35804-4"
      },
      {
        "code" : "35805-1"
      },
      {
        "code" : "35806-9"
      },
      {
        "code" : "35807-7"
      },
      {
        "code" : "35808-5"
      },
      {
        "code" : "35809-3"
      },
      {
        "code" : "35810-1"
      },
      {
        "code" : "35814-3"
      },
      {
        "code" : "35815-0"
      },
      {
        "code" : "35816-8"
      },
      {
        "code" : "35817-6"
      },
      {
        "code" : "35818-4"
      },
      {
        "code" : "35820-0"
      },
      {
        "code" : "35821-8"
      },
      {
        "code" : "35822-6"
      },
      {
        "code" : "35823-4"
      },
      {
        "code" : "35824-2"
      },
      {
        "code" : "35825-9"
      },
      {
        "code" : "35826-7"
      },
      {
        "code" : "35827-5"
      },
      {
        "code" : "35828-3"
      },
      {
        "code" : "35829-1"
      },
      {
        "code" : "35830-9"
      },
      {
        "code" : "35831-7"
      },
      {
        "code" : "35832-5"
      },
      {
        "code" : "35836-6"
      },
      {
        "code" : "35837-4"
      },
      {
        "code" : "35838-2"
      },
      {
        "code" : "35839-0"
      },
      {
        "code" : "35840-8"
      },
      {
        "code" : "35841-6"
      },
      {
        "code" : "35842-4"
      },
      {
        "code" : "35843-2"
      },
      {
        "code" : "35844-0"
      },
      {
        "code" : "35845-7"
      },
      {
        "code" : "35849-9"
      },
      {
        "code" : "35850-7"
      },
      {
        "code" : "35851-5"
      },
      {
        "code" : "35855-6"
      },
      {
        "code" : "35856-4"
      },
      {
        "code" : "35857-2"
      },
      {
        "code" : "35858-0"
      },
      {
        "code" : "35859-8"
      },
      {
        "code" : "35860-6"
      },
      {
        "code" : "35861-4"
      },
      {
        "code" : "35862-2"
      },
      {
        "code" : "35863-0"
      },
      {
        "code" : "359-0"
      },
      {
        "code" : "36-4"
      },
      {
        "code" : "360-8"
      },
      {
        "code" : "362-4"
      },
      {
        "code" : "363-2"
      },
      {
        "code" : "364-0"
      },
      {
        "code" : "366-5"
      },
      {
        "code" : "367-3"
      },
      {
        "code" : "368-1"
      },
      {
        "code" : "37-2"
      },
      {
        "code" : "370-7"
      },
      {
        "code" : "371-5"
      },
      {
        "code" : "372-3"
      },
      {
        "code" : "374-9"
      },
      {
        "code" : "375-6"
      },
      {
        "code" : "376-4"
      },
      {
        "code" : "378-0"
      },
      {
        "code" : "379-8"
      },
      {
        "code" : "380-6"
      },
      {
        "code" : "382-2"
      },
      {
        "code" : "383-0"
      },
      {
        "code" : "384-8"
      },
      {
        "code" : "386-3"
      },
      {
        "code" : "387-1"
      },
      {
        "code" : "388-9"
      },
      {
        "code" : "39-8"
      },
      {
        "code" : "390-5"
      },
      {
        "code" : "391-3"
      },
      {
        "code" : "392-1"
      },
      {
        "code" : "393-9"
      },
      {
        "code" : "395-4"
      },
      {
        "code" : "396-2"
      },
      {
        "code" : "397-0"
      },
      {
        "code" : "399-6"
      },
      {
        "code" : "4-2"
      },
      {
        "code" : "40-6"
      },
      {
        "code" : "400-2"
      },
      {
        "code" : "401-0"
      },
      {
        "code" : "403-6"
      },
      {
        "code" : "404-4"
      },
      {
        "code" : "405-1"
      },
      {
        "code" : "407-7"
      },
      {
        "code" : "408-5"
      },
      {
        "code" : "409-3"
      },
      {
        "code" : "41-4"
      },
      {
        "code" : "41031-6"
      },
      {
        "code" : "41199-1"
      },
      {
        "code" : "41200-7"
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
        "code" : "41408-6"
      },
      {
        "code" : "41409-4"
      },
      {
        "code" : "41410-2"
      },
      {
        "code" : "41494-6"
      },
      {
        "code" : "415-0"
      },
      {
        "code" : "41500-0"
      },
      {
        "code" : "41502-6"
      },
      {
        "code" : "41504-2"
      },
      {
        "code" : "416-8"
      },
      {
        "code" : "41658-6"
      },
      {
        "code" : "41659-4"
      },
      {
        "code" : "41660-2"
      },
      {
        "code" : "41661-0"
      },
      {
        "code" : "41665-1"
      },
      {
        "code" : "41666-9"
      },
      {
        "code" : "41667-7"
      },
      {
        "code" : "41668-5"
      },
      {
        "code" : "41669-3"
      },
      {
        "code" : "41670-1"
      },
      {
        "code" : "41684-2"
      },
      {
        "code" : "41685-9"
      },
      {
        "code" : "41686-7"
      },
      {
        "code" : "41687-5"
      },
      {
        "code" : "41688-3"
      },
      {
        "code" : "41689-1"
      },
      {
        "code" : "41690-9"
      },
      {
        "code" : "41691-7"
      },
      {
        "code" : "41692-5"
      },
      {
        "code" : "41693-3"
      },
      {
        "code" : "41697-4"
      },
      {
        "code" : "41698-2"
      },
      {
        "code" : "41699-0"
      },
      {
        "code" : "417-6"
      },
      {
        "code" : "41700-6"
      },
      {
        "code" : "41701-4"
      },
      {
        "code" : "41702-2"
      },
      {
        "code" : "41703-0"
      },
      {
        "code" : "41704-8"
      },
      {
        "code" : "41705-5"
      },
      {
        "code" : "41706-3"
      },
      {
        "code" : "41707-1"
      },
      {
        "code" : "41708-9"
      },
      {
        "code" : "41709-7"
      },
      {
        "code" : "41710-5"
      },
      {
        "code" : "41711-3"
      },
      {
        "code" : "41712-1"
      },
      {
        "code" : "41713-9"
      },
      {
        "code" : "41714-7"
      },
      {
        "code" : "41715-4"
      },
      {
        "code" : "41716-2"
      },
      {
        "code" : "41717-0"
      },
      {
        "code" : "41718-8"
      },
      {
        "code" : "41719-6"
      },
      {
        "code" : "41720-4"
      },
      {
        "code" : "41721-2"
      },
      {
        "code" : "41722-0"
      },
      {
        "code" : "41723-8"
      },
      {
        "code" : "41724-6"
      },
      {
        "code" : "41725-3"
      },
      {
        "code" : "41726-1"
      },
      {
        "code" : "41728-7"
      },
      {
        "code" : "41733-7"
      },
      {
        "code" : "41734-5"
      },
      {
        "code" : "41736-0"
      },
      {
        "code" : "41737-8"
      },
      {
        "code" : "41738-6"
      },
      {
        "code" : "41739-4"
      },
      {
        "code" : "41740-2"
      },
      {
        "code" : "419-2"
      },
      {
        "code" : "41993-7"
      },
      {
        "code" : "420-0"
      },
      {
        "code" : "421-8"
      },
      {
        "code" : "423-4"
      },
      {
        "code" : "42317-8"
      },
      {
        "code" : "42354-1"
      },
      {
        "code" : "42355-8"
      },
      {
        "code" : "42356-6"
      },
      {
        "code" : "42357-4"
      },
      {
        "code" : "424-2"
      },
      {
        "code" : "425-9"
      },
      {
        "code" : "42500-9"
      },
      {
        "code" : "42535-5"
      },
      {
        "code" : "42642-9"
      },
      {
        "code" : "42651-0"
      },
      {
        "code" : "42655-1"
      },
      {
        "code" : "427-5"
      },
      {
        "code" : "42720-3"
      },
      {
        "code" : "428-3"
      },
      {
        "code" : "429-1"
      },
      {
        "code" : "43-0"
      },
      {
        "code" : "431-7"
      },
      {
        "code" : "432-5"
      },
      {
        "code" : "43269-0"
      },
      {
        "code" : "43270-8"
      },
      {
        "code" : "43271-6"
      },
      {
        "code" : "43272-4"
      },
      {
        "code" : "433-3"
      },
      {
        "code" : "435-8"
      },
      {
        "code" : "436-6"
      },
      {
        "code" : "437-4"
      },
      {
        "code" : "43736-8"
      },
      {
        "code" : "43737-6"
      },
      {
        "code" : "439-0"
      },
      {
        "code" : "43986-9"
      },
      {
        "code" : "43987-7"
      },
      {
        "code" : "43988-5"
      },
      {
        "code" : "43989-3"
      },
      {
        "code" : "43990-1"
      },
      {
        "code" : "43991-9"
      },
      {
        "code" : "44-8"
      },
      {
        "code" : "440-8"
      },
      {
        "code" : "441-6"
      },
      {
        "code" : "443-2"
      },
      {
        "code" : "444-0"
      },
      {
        "code" : "445-7"
      },
      {
        "code" : "447-3"
      },
      {
        "code" : "448-1"
      },
      {
        "code" : "449-9"
      },
      {
        "code" : "45-5"
      },
      {
        "code" : "451-5"
      },
      {
        "code" : "45187-2"
      },
      {
        "code" : "452-3"
      },
      {
        "code" : "45215-1"
      },
      {
        "code" : "453-1"
      },
      {
        "code" : "455-6"
      },
      {
        "code" : "456-4"
      },
      {
        "code" : "457-2"
      },
      {
        "code" : "459-8"
      },
      {
        "code" : "460-6"
      },
      {
        "code" : "461-4"
      },
      {
        "code" : "463-0"
      },
      {
        "code" : "464-8"
      },
      {
        "code" : "465-5"
      },
      {
        "code" : "467-1"
      },
      {
        "code" : "46719-1"
      },
      {
        "code" : "468-9"
      },
      {
        "code" : "469-7"
      },
      {
        "code" : "47-1"
      },
      {
        "code" : "471-3"
      },
      {
        "code" : "472-1"
      },
      {
        "code" : "473-9"
      },
      {
        "code" : "475-4"
      },
      {
        "code" : "476-2"
      },
      {
        "code" : "477-0"
      },
      {
        "code" : "479-6"
      },
      {
        "code" : "48-9"
      },
      {
        "code" : "480-4"
      },
      {
        "code" : "481-2"
      },
      {
        "code" : "48169-7"
      },
      {
        "code" : "48170-5"
      },
      {
        "code" : "48173-9"
      },
      {
        "code" : "48177-0"
      },
      {
        "code" : "483-8"
      },
      {
        "code" : "484-6"
      },
      {
        "code" : "485-3"
      },
      {
        "code" : "48685-2"
      },
      {
        "code" : "487-9"
      },
      {
        "code" : "488-7"
      },
      {
        "code" : "489-5"
      },
      {
        "code" : "49-7"
      },
      {
        "code" : "49080-5"
      },
      {
        "code" : "491-1"
      },
      {
        "code" : "492-9"
      },
      {
        "code" : "493-7"
      },
      {
        "code" : "495-2"
      },
      {
        "code" : "496-0"
      },
      {
        "code" : "49666-1"
      },
      {
        "code" : "49667-9"
      },
      {
        "code" : "49668-7"
      },
      {
        "code" : "49669-5"
      },
      {
        "code" : "497-8"
      },
      {
        "code" : "499-4"
      },
      {
        "code" : "500-9"
      },
      {
        "code" : "501-7"
      },
      {
        "code" : "50630-3"
      },
      {
        "code" : "50631-1"
      },
      {
        "code" : "50632-9"
      },
      {
        "code" : "50633-7"
      },
      {
        "code" : "507-4"
      },
      {
        "code" : "508-2"
      },
      {
        "code" : "509-0"
      },
      {
        "code" : "51-3"
      },
      {
        "code" : "511-6"
      },
      {
        "code" : "512-4"
      },
      {
        "code" : "513-2"
      },
      {
        "code" : "51503-1"
      },
      {
        "code" : "51504-9"
      },
      {
        "code" : "51698-9"
      },
      {
        "code" : "51719-3"
      },
      {
        "code" : "51724-3"
      },
      {
        "code" : "51774-8"
      },
      {
        "code" : "519-9"
      },
      {
        "code" : "52-1"
      },
      {
        "code" : "520-7"
      },
      {
        "code" : "521-5"
      },
      {
        "code" : "52128-6"
      },
      {
        "code" : "523-1"
      },
      {
        "code" : "524-9"
      },
      {
        "code" : "525-6"
      },
      {
        "code" : "527-2"
      },
      {
        "code" : "52749-9"
      },
      {
        "code" : "528-0"
      },
      {
        "code" : "529-8"
      },
      {
        "code" : "53-9"
      },
      {
        "code" : "531-4"
      },
      {
        "code" : "53716-7"
      },
      {
        "code" : "53812-4"
      },
      {
        "code" : "53818-1"
      },
      {
        "code" : "53823-1"
      },
      {
        "code" : "53824-9"
      },
      {
        "code" : "54169-8"
      },
      {
        "code" : "54173-0"
      },
      {
        "code" : "54175-5"
      },
      {
        "code" : "54176-3"
      },
      {
        "code" : "54177-1"
      },
      {
        "code" : "54178-9"
      },
      {
        "code" : "54179-7"
      },
      {
        "code" : "54180-5"
      },
      {
        "code" : "54181-3"
      },
      {
        "code" : "54182-1"
      },
      {
        "code" : "54183-9"
      },
      {
        "code" : "54184-7"
      },
      {
        "code" : "54185-4"
      },
      {
        "code" : "54186-2"
      },
      {
        "code" : "54187-0"
      },
      {
        "code" : "54188-8"
      },
      {
        "code" : "54189-6"
      },
      {
        "code" : "54190-4"
      },
      {
        "code" : "54200-1"
      },
      {
        "code" : "54201-9"
      },
      {
        "code" : "54202-7"
      },
      {
        "code" : "54204-3"
      },
      {
        "code" : "54908-9"
      },
      {
        "code" : "54928-7"
      },
      {
        "code" : "55-4"
      },
      {
        "code" : "55091-3"
      },
      {
        "code" : "55136-6"
      },
      {
        "code" : "55137-4"
      },
      {
        "code" : "55156-4"
      },
      {
        "code" : "55158-0"
      },
      {
        "code" : "55189-5"
      },
      {
        "code" : "55190-3"
      },
      {
        "code" : "55194-5"
      },
      {
        "code" : "55196-0"
      },
      {
        "code" : "55289-3"
      },
      {
        "code" : "55290-1"
      },
      {
        "code" : "55291-9"
      },
      {
        "code" : "55343-8"
      },
      {
        "code" : "55617-5"
      },
      {
        "code" : "55618-3"
      },
      {
        "code" : "55620-9"
      },
      {
        "code" : "55621-7"
      },
      {
        "code" : "55622-5"
      },
      {
        "code" : "55623-3"
      },
      {
        "code" : "55628-2"
      },
      {
        "code" : "55629-0"
      },
      {
        "code" : "55638-1"
      },
      {
        "code" : "55639-9"
      },
      {
        "code" : "55640-7"
      },
      {
        "code" : "55642-3"
      },
      {
        "code" : "55643-1"
      },
      {
        "code" : "55645-6"
      },
      {
        "code" : "55646-4"
      },
      {
        "code" : "55647-2"
      },
      {
        "code" : "55654-8"
      },
      {
        "code" : "55655-5"
      },
      {
        "code" : "55656-3"
      },
      {
        "code" : "55657-1"
      },
      {
        "code" : "55658-9"
      },
      {
        "code" : "55659-7"
      },
      {
        "code" : "55660-5"
      },
      {
        "code" : "55661-3"
      },
      {
        "code" : "55662-1"
      },
      {
        "code" : "55663-9"
      },
      {
        "code" : "55664-7"
      },
      {
        "code" : "55665-4"
      },
      {
        "code" : "55666-2"
      },
      {
        "code" : "55667-0"
      },
      {
        "code" : "55668-8"
      },
      {
        "code" : "55673-8"
      },
      {
        "code" : "55674-6"
      },
      {
        "code" : "55675-3"
      },
      {
        "code" : "55676-1"
      },
      {
        "code" : "55677-9"
      },
      {
        "code" : "55678-7"
      },
      {
        "code" : "55679-5"
      },
      {
        "code" : "55680-3"
      },
      {
        "code" : "55681-1"
      },
      {
        "code" : "55682-9"
      },
      {
        "code" : "55683-7"
      },
      {
        "code" : "55684-5"
      },
      {
        "code" : "55685-2"
      },
      {
        "code" : "55686-0"
      },
      {
        "code" : "55687-8"
      },
      {
        "code" : "55688-6"
      },
      {
        "code" : "55689-4"
      },
      {
        "code" : "55690-2"
      },
      {
        "code" : "55691-0"
      },
      {
        "code" : "55692-8"
      },
      {
        "code" : "55693-6"
      },
      {
        "code" : "55694-4"
      },
      {
        "code" : "55695-1"
      },
      {
        "code" : "55696-9"
      },
      {
        "code" : "55697-7"
      },
      {
        "code" : "55698-5"
      },
      {
        "code" : "55699-3"
      },
      {
        "code" : "55701-7"
      },
      {
        "code" : "55702-5"
      },
      {
        "code" : "55703-3"
      },
      {
        "code" : "55710-8"
      },
      {
        "code" : "55711-6"
      },
      {
        "code" : "55712-4"
      },
      {
        "code" : "55713-2"
      },
      {
        "code" : "55714-0"
      },
      {
        "code" : "55715-7"
      },
      {
        "code" : "55720-7"
      },
      {
        "code" : "55721-5"
      },
      {
        "code" : "55722-3"
      },
      {
        "code" : "55723-1"
      },
      {
        "code" : "56-2"
      },
      {
        "code" : "56025-0"
      },
      {
        "code" : "56026-8"
      },
      {
        "code" : "56031-8"
      },
      {
        "code" : "56791-7"
      },
      {
        "code" : "56792-5"
      },
      {
        "code" : "57-0"
      },
      {
        "code" : "57095-2"
      },
      {
        "code" : "58080-3"
      },
      {
        "code" : "58085-2"
      },
      {
        "code" : "58412-8"
      },
      {
        "code" : "58705-5"
      },
      {
        "code" : "58711-3"
      },
      {
        "code" : "59-6"
      },
      {
        "code" : "59833-4"
      },
      {
        "code" : "6-7"
      },
      {
        "code" : "60-4"
      },
      {
        "code" : "60440-5"
      },
      {
        "code" : "60535-2"
      },
      {
        "code" : "60564-2"
      },
      {
        "code" : "60565-9"
      },
      {
        "code" : "61-2"
      },
      {
        "code" : "61188-9"
      },
      {
        "code" : "61198-8"
      },
      {
        "code" : "61355-4"
      },
      {
        "code" : "63-8"
      },
      {
        "code" : "63565-6"
      },
      {
        "code" : "64-6"
      },
      {
        "code" : "65-3"
      },
      {
        "code" : "65340-2"
      },
      {
        "code" : "6643-1"
      },
      {
        "code" : "6644-9"
      },
      {
        "code" : "6651-4"
      },
      {
        "code" : "6652-2"
      },
      {
        "code" : "6653-0"
      },
      {
        "code" : "67-9"
      },
      {
        "code" : "68-7"
      },
      {
        "code" : "6827-0"
      },
      {
        "code" : "68463-9"
      },
      {
        "code" : "69-5"
      },
      {
        "code" : "6932-8"
      },
      {
        "code" : "6933-6"
      },
      {
        "code" : "69574-2"
      },
      {
        "code" : "6975-7"
      },
      {
        "code" : "6976-5"
      },
      {
        "code" : "6978-1"
      },
      {
        "code" : "6979-9"
      },
      {
        "code" : "6981-5"
      },
      {
        "code" : "6982-3"
      },
      {
        "code" : "6983-1"
      },
      {
        "code" : "6984-9"
      },
      {
        "code" : "6985-6"
      },
      {
        "code" : "6986-4"
      },
      {
        "code" : "6987-2"
      },
      {
        "code" : "6988-0"
      },
      {
        "code" : "6989-8"
      },
      {
        "code" : "6990-6"
      },
      {
        "code" : "6991-4"
      },
      {
        "code" : "6992-2"
      },
      {
        "code" : "6993-0"
      },
      {
        "code" : "6994-8"
      },
      {
        "code" : "6995-5"
      },
      {
        "code" : "6996-3"
      },
      {
        "code" : "6997-1"
      },
      {
        "code" : "6998-9"
      },
      {
        "code" : "6999-7"
      },
      {
        "code" : "7-5"
      },
      {
        "code" : "7000-3"
      },
      {
        "code" : "7001-1"
      },
      {
        "code" : "7002-9"
      },
      {
        "code" : "7003-7"
      },
      {
        "code" : "7004-5"
      },
      {
        "code" : "7005-2"
      },
      {
        "code" : "7006-0"
      },
      {
        "code" : "7007-8"
      },
      {
        "code" : "7008-6"
      },
      {
        "code" : "7009-4"
      },
      {
        "code" : "7010-2"
      },
      {
        "code" : "7011-0"
      },
      {
        "code" : "7012-8"
      },
      {
        "code" : "7013-6"
      },
      {
        "code" : "7014-4"
      },
      {
        "code" : "7015-1"
      },
      {
        "code" : "7016-9"
      },
      {
        "code" : "7017-7"
      },
      {
        "code" : "7018-5"
      },
      {
        "code" : "7019-3"
      },
      {
        "code" : "7020-1"
      },
      {
        "code" : "7021-9"
      },
      {
        "code" : "7022-7"
      },
      {
        "code" : "7023-5"
      },
      {
        "code" : "7024-3"
      },
      {
        "code" : "7025-0"
      },
      {
        "code" : "7026-8"
      },
      {
        "code" : "7027-6"
      },
      {
        "code" : "7028-4"
      },
      {
        "code" : "7029-2"
      },
      {
        "code" : "7030-0"
      },
      {
        "code" : "7031-8"
      },
      {
        "code" : "7032-6"
      },
      {
        "code" : "7033-4"
      },
      {
        "code" : "7034-2"
      },
      {
        "code" : "7035-9"
      },
      {
        "code" : "7036-7"
      },
      {
        "code" : "7037-5"
      },
      {
        "code" : "7038-3"
      },
      {
        "code" : "7039-1"
      },
      {
        "code" : "7040-9"
      },
      {
        "code" : "7041-7"
      },
      {
        "code" : "7042-5"
      },
      {
        "code" : "7043-3"
      },
      {
        "code" : "7045-8"
      },
      {
        "code" : "7046-6"
      },
      {
        "code" : "7047-4"
      },
      {
        "code" : "7048-2"
      },
      {
        "code" : "7049-0"
      },
      {
        "code" : "7050-8"
      },
      {
        "code" : "7051-6"
      },
      {
        "code" : "7052-4"
      },
      {
        "code" : "7053-2"
      },
      {
        "code" : "7055-7"
      },
      {
        "code" : "7056-5"
      },
      {
        "code" : "7058-1"
      },
      {
        "code" : "7059-9"
      },
      {
        "code" : "71-1"
      },
      {
        "code" : "72-9"
      },
      {
        "code" : "72168-8"
      },
      {
        "code" : "72525-9"
      },
      {
        "code" : "72526-7"
      },
      {
        "code" : "72557-2"
      },
      {
        "code" : "72558-0"
      },
      {
        "code" : "72834-5"
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
        "code" : "72855-0"
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
        "code" : "72861-8"
      },
      {
        "code" : "72893-1"
      },
      {
        "code" : "72894-9"
      },
      {
        "code" : "73-7"
      },
      {
        "code" : "73574-6"
      },
      {
        "code" : "73585-2"
      },
      {
        "code" : "73586-0"
      },
      {
        "code" : "73587-8"
      },
      {
        "code" : "73588-6"
      },
      {
        "code" : "73589-4"
      },
      {
        "code" : "73590-2"
      },
      {
        "code" : "73591-0"
      },
      {
        "code" : "73592-8"
      },
      {
        "code" : "73594-4"
      },
      {
        "code" : "73595-1"
      },
      {
        "code" : "73596-9"
      },
      {
        "code" : "73597-7"
      },
      {
        "code" : "73598-5"
      },
      {
        "code" : "73599-3"
      },
      {
        "code" : "73600-9"
      },
      {
        "code" : "73605-8"
      },
      {
        "code" : "73606-6"
      },
      {
        "code" : "73607-4"
      },
      {
        "code" : "73608-2"
      },
      {
        "code" : "73609-0"
      },
      {
        "code" : "73610-8"
      },
      {
        "code" : "73611-6"
      },
      {
        "code" : "73612-4"
      },
      {
        "code" : "73613-2"
      },
      {
        "code" : "73614-0"
      },
      {
        "code" : "73616-5"
      },
      {
        "code" : "73617-3"
      },
      {
        "code" : "73618-1"
      },
      {
        "code" : "73619-9"
      },
      {
        "code" : "73620-7"
      },
      {
        "code" : "73621-5"
      },
      {
        "code" : "73622-3"
      },
      {
        "code" : "73627-2"
      },
      {
        "code" : "73628-0"
      },
      {
        "code" : "73629-8"
      },
      {
        "code" : "73630-6"
      },
      {
        "code" : "73631-4"
      },
      {
        "code" : "73632-2"
      },
      {
        "code" : "73633-0"
      },
      {
        "code" : "73634-8"
      },
      {
        "code" : "73635-5"
      },
      {
        "code" : "73636-3"
      },
      {
        "code" : "73637-1"
      },
      {
        "code" : "73639-7"
      },
      {
        "code" : "73640-5"
      },
      {
        "code" : "73641-3"
      },
      {
        "code" : "73642-1"
      },
      {
        "code" : "73643-9"
      },
      {
        "code" : "73644-7"
      },
      {
        "code" : "73645-4"
      },
      {
        "code" : "73650-4"
      },
      {
        "code" : "73651-2"
      },
      {
        "code" : "73665-2"
      },
      {
        "code" : "74170-2"
      },
      {
        "code" : "74699-0"
      },
      {
        "code" : "75-2"
      },
      {
        "code" : "75029-9"
      },
      {
        "code" : "76-0"
      },
      {
        "code" : "76040-5"
      },
      {
        "code" : "76041-3"
      },
      {
        "code" : "76042-1"
      },
      {
        "code" : "76043-9"
      },
      {
        "code" : "76044-7"
      },
      {
        "code" : "76045-4"
      },
      {
        "code" : "76145-2"
      },
      {
        "code" : "76150-2"
      },
      {
        "code" : "76627-9"
      },
      {
        "code" : "77-8"
      },
      {
        "code" : "77162-6"
      },
      {
        "code" : "77960-3"
      },
      {
        "code" : "79-4"
      },
      {
        "code" : "8-3"
      },
      {
        "code" : "80-2"
      },
      {
        "code" : "81-0"
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
        "code" : "82719-6"
      },
      {
        "code" : "8272-7"
      },
      {
        "code" : "8274-3"
      },
      {
        "code" : "8275-0"
      },
      {
        "code" : "8276-8"
      },
      {
        "code" : "83-6"
      },
      {
        "code" : "84-4"
      },
      {
        "code" : "85-1"
      },
      {
        "code" : "85048-7"
      },
      {
        "code" : "85051-1"
      },
      {
        "code" : "85052-9"
      },
      {
        "code" : "85381-2"
      },
      {
        "code" : "85422-4"
      },
      {
        "code" : "85423-2"
      },
      {
        "code" : "85425-7"
      },
      {
        "code" : "85426-5"
      },
      {
        "code" : "85428-1"
      },
      {
        "code" : "85429-9"
      },
      {
        "code" : "87-7"
      },
      {
        "code" : "88-5"
      },
      {
        "code" : "88002-1"
      },
      {
        "code" : "88462-7"
      },
      {
        "code" : "88703-4"
      },
      {
        "code" : "88704-2"
      },
      {
        "code" : "88705-9"
      },
      {
        "code" : "88706-7"
      },
      {
        "code" : "88707-5"
      },
      {
        "code" : "88886-7"
      },
      {
        "code" : "88887-5"
      },
      {
        "code" : "89-3"
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
        "code" : "9-1"
      },
      {
        "code" : "90080-3"
      },
      {
        "code" : "90849-1"
      },
      {
        "code" : "90850-9"
      },
      {
        "code" : "91-9"
      },
      {
        "code" : "91897-9"
      },
      {
        "code" : "92-7"
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
        "code" : "93-5"
      },
      {
        "code" : "93497-6"
      },
      {
        "code" : "93767-2"
      },
      {
        "code" : "93850-6"
      },
      {
        "code" : "93851-4"
      },
      {
        "code" : "94274-8"
      },
      {
        "code" : "94719-2"
      },
      {
        "code" : "95-0"
      },
      {
        "code" : "95767-0"
      },
      {
        "code" : "96-8"
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
      },
      {
        "code" : "97-6"
      },
      {
        "code" : "97941-9"
      },
      {
        "code" : "99-2"
      },
      {
        "code" : "99280-0"
      },
      {
        "code" : "99281-8"
      },
      {
        "code" : "99503-5"
      }]
    },
    {
      "system" : "http://snomed.info/sct",
      "version" : "http://snomed.info/sct/11010000107/version/20261021",
      "concept" : [{
        "code" : "1285474005",
        "display" : "Susceptibility of organism to antimicrobial agent by matrix assisted laser desorption ionization time of flight mass spectrometry (observable entity)"
      }]
    },
    {
      "system" : "http://snomed.info/sct",
      "version" : "http://snomed.info/sct/11010000107/version/20261021",
      "filter" : [{
        "property" : "constraint",
        "op" : "=",
        "value" : "<< 363787002 |Observable entity (observable entity)| : 370130000 |Property (attribute)| = 118588007 |Susceptibility (property) (qualifier value)|"
      }]
    }]
  }
}

```
