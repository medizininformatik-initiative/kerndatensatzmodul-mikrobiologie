# MII VS Microbiology LOINC Ontology Organism Identity Any Technique - MII Implementation Guide Microbiology v2027.0.0-ballot2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII VS Microbiology LOINC Ontology Organism Identity Any Technique**

## ValueSet: MII VS Microbiology LOINC Ontology Organism Identity Any Technique (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/ValueSet/mii-vs-mikrobio-loinc-ontology-organism-identity-any-technique | *Version*:2027.0.0-ballot2 |
| Draft as of 2026-11-03 | *Computable Name*:MII_VS_Mikrobio_LOINC_Ontology_Organism_Identity_Any_Technique |
| **Copyright/Legal**: This material includes SNOMED Clinical Terms® (SNOMED CT®) which is used by permission of SNOMED International. All rights reserved. SNOMED CT®, was originally created by The College of American Pathologists. SNOMED and SNOMED CT are registered trademarks of SNOMED International. Implementers of these artefacts must have the appropriate SNOMED CT Affiliate license. | |

 
Proposal: LOINC codes of the microbiology request 'General determination: General determination — organism identity, any technique', computed by ECL over the LOINC Ontology 2026-10-21. Nominal identification of an organism or organism group by any technique (culture, sequencing, mass spectrometry, stain) or none. Superset of the general-culture identity query. Parts: LOINC enumeration (772, LOINC 2.83), LOINC Ontology observables without LOINC code (8), and the ECL as an intensional include. ECL: `<< 363787002 |Observable entity (observable entity)| : 370130000 |Property (attribute)| = 118584009 |Presence or identity (property) (qualifier value)|, 704319004 |Inheres in (attribute)| = << 410607006 |Organism (organism)|` 

 **References** 

* [MII PR Microbiology LOINC Ontology General determination](StructureDefinition-mii-pr-mikrobio-loinc-ontology-allgemeine-bestimmung.md)

### Logical Definition (CLD)

 

### Expansion

No Expansion for this valueset (Unsupported Code System Version)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-mikrobio-loinc-ontology-organism-identity-any-technique",
  "url" : "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/ValueSet/mii-vs-mikrobio-loinc-ontology-organism-identity-any-technique",
  "version" : "2027.0.0-ballot2",
  "name" : "MII_VS_Mikrobio_LOINC_Ontology_Organism_Identity_Any_Technique",
  "title" : "MII VS Microbiology LOINC Ontology Organism Identity Any Technique",
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
  "description" : "Proposal: LOINC codes of the microbiology request 'General determination: General determination — organism identity, any technique', computed by ECL over the LOINC Ontology 2026-10-21. Nominal identification of an organism or organism group by any technique (culture, sequencing, mass spectrometry, stain) or none. Superset of the general-culture identity query. Parts: LOINC enumeration (772, LOINC 2.83), LOINC Ontology observables without LOINC code (8), and the ECL as an intensional include. ECL: `<< 363787002 |Observable entity (observable entity)| : 370130000 |Property (attribute)| = 118584009 |Presence or identity (property) (qualifier value)|, 704319004 |Inheres in (attribute)| = << 410607006 |Organism (organism)|`",
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
        "code" : "100905-9"
      },
      {
        "code" : "100907-5"
      },
      {
        "code" : "10347-3"
      },
      {
        "code" : "10352-3"
      },
      {
        "code" : "10353-1"
      },
      {
        "code" : "10354-9"
      },
      {
        "code" : "104553-3"
      },
      {
        "code" : "105064-0"
      },
      {
        "code" : "105224-0"
      },
      {
        "code" : "105225-7"
      },
      {
        "code" : "105289-3"
      },
      {
        "code" : "105604-3"
      },
      {
        "code" : "105605-0"
      },
      {
        "code" : "105606-8"
      },
      {
        "code" : "105607-6"
      },
      {
        "code" : "105608-4"
      },
      {
        "code" : "105618-3"
      },
      {
        "code" : "105917-9"
      },
      {
        "code" : "105924-5"
      },
      {
        "code" : "105925-2"
      },
      {
        "code" : "105926-0"
      },
      {
        "code" : "105932-8"
      },
      {
        "code" : "105933-6"
      },
      {
        "code" : "106016-9"
      },
      {
        "code" : "106017-7"
      },
      {
        "code" : "106024-3"
      },
      {
        "code" : "106032-6"
      },
      {
        "code" : "106033-4"
      },
      {
        "code" : "106034-2"
      },
      {
        "code" : "106036-7"
      },
      {
        "code" : "106037-5"
      },
      {
        "code" : "106038-3"
      },
      {
        "code" : "106039-1"
      },
      {
        "code" : "106041-7"
      },
      {
        "code" : "106042-5"
      },
      {
        "code" : "106045-8"
      },
      {
        "code" : "10635-1"
      },
      {
        "code" : "10636-9"
      },
      {
        "code" : "10639-3"
      },
      {
        "code" : "10641-9"
      },
      {
        "code" : "10642-7"
      },
      {
        "code" : "10643-5"
      },
      {
        "code" : "10644-3"
      },
      {
        "code" : "10646-8"
      },
      {
        "code" : "10647-6"
      },
      {
        "code" : "10648-4"
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
        "code" : "10667-4"
      },
      {
        "code" : "10668-2"
      },
      {
        "code" : "10669-0"
      },
      {
        "code" : "10680-7"
      },
      {
        "code" : "10681-5"
      },
      {
        "code" : "10683-1"
      },
      {
        "code" : "10684-9"
      },
      {
        "code" : "10685-6"
      },
      {
        "code" : "10686-4"
      },
      {
        "code" : "10687-2"
      },
      {
        "code" : "10690-6"
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
        "code" : "10710-2"
      },
      {
        "code" : "10712-8"
      },
      {
        "code" : "10713-6"
      },
      {
        "code" : "107176-0"
      },
      {
        "code" : "107177-8"
      },
      {
        "code" : "107178-6"
      },
      {
        "code" : "107179-4"
      },
      {
        "code" : "107180-2"
      },
      {
        "code" : "107181-0"
      },
      {
        "code" : "107182-8"
      },
      {
        "code" : "107183-6"
      },
      {
        "code" : "107186-9"
      },
      {
        "code" : "107187-7"
      },
      {
        "code" : "107188-5"
      },
      {
        "code" : "10722-7"
      },
      {
        "code" : "10727-6"
      },
      {
        "code" : "10728-4"
      },
      {
        "code" : "10729-2"
      },
      {
        "code" : "10730-0"
      },
      {
        "code" : "10731-8"
      },
      {
        "code" : "10732-6"
      },
      {
        "code" : "10733-4"
      },
      {
        "code" : "10734-2"
      },
      {
        "code" : "10735-9"
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
        "code" : "10857-1"
      },
      {
        "code" : "10859-7"
      },
      {
        "code" : "11083-3"
      },
      {
        "code" : "111515-3"
      },
      {
        "code" : "112406-4"
      },
      {
        "code" : "11261-5"
      },
      {
        "code" : "112851-1"
      },
      {
        "code" : "112852-9"
      },
      {
        "code" : "112889-1"
      },
      {
        "code" : "112891-7"
      },
      {
        "code" : "112896-6"
      },
      {
        "code" : "112897-4"
      },
      {
        "code" : "112898-2"
      },
      {
        "code" : "113006-1"
      },
      {
        "code" : "113007-9"
      },
      {
        "code" : "113009-5"
      },
      {
        "code" : "113037-6"
      },
      {
        "code" : "113049-1"
      },
      {
        "code" : "113056-6"
      },
      {
        "code" : "11474-4"
      },
      {
        "code" : "11475-1"
      },
      {
        "code" : "11481-9"
      },
      {
        "code" : "11484-3"
      },
      {
        "code" : "12272-1"
      },
      {
        "code" : "12281-2"
      },
      {
        "code" : "13314-0"
      },
      {
        "code" : "13315-7"
      },
      {
        "code" : "13318-1"
      },
      {
        "code" : "13326-4"
      },
      {
        "code" : "14093-9"
      },
      {
        "code" : "14226-5"
      },
      {
        "code" : "14325-5"
      },
      {
        "code" : "14451-9"
      },
      {
        "code" : "14452-7"
      },
      {
        "code" : "14453-5"
      },
      {
        "code" : "14454-3"
      },
      {
        "code" : "14455-0"
      },
      {
        "code" : "14456-8"
      },
      {
        "code" : "14457-6"
      },
      {
        "code" : "14458-4"
      },
      {
        "code" : "14459-2"
      },
      {
        "code" : "14460-0"
      },
      {
        "code" : "14475-8"
      },
      {
        "code" : "14477-4"
      },
      {
        "code" : "14478-2"
      },
      {
        "code" : "14488-1"
      },
      {
        "code" : "14489-9"
      },
      {
        "code" : "14490-7"
      },
      {
        "code" : "14491-5"
      },
      {
        "code" : "14492-3"
      },
      {
        "code" : "14493-1"
      },
      {
        "code" : "14494-9"
      },
      {
        "code" : "14495-6"
      },
      {
        "code" : "14496-4"
      },
      {
        "code" : "14497-2"
      },
      {
        "code" : "14498-0"
      },
      {
        "code" : "14787-6"
      },
      {
        "code" : "14839-5"
      },
      {
        "code" : "14840-3"
      },
      {
        "code" : "15378-3"
      },
      {
        "code" : "16832-8"
      },
      {
        "code" : "17279-1"
      },
      {
        "code" : "17280-9"
      },
      {
        "code" : "17520-8"
      },
      {
        "code" : "17530-7"
      },
      {
        "code" : "17563-8"
      },
      {
        "code" : "17576-0"
      },
      {
        "code" : "17873-1"
      },
      {
        "code" : "17874-9"
      },
      {
        "code" : "17875-6"
      },
      {
        "code" : "17876-4"
      },
      {
        "code" : "17877-2"
      },
      {
        "code" : "17878-0"
      },
      {
        "code" : "17879-8"
      },
      {
        "code" : "17880-6"
      },
      {
        "code" : "17881-4"
      },
      {
        "code" : "17882-2"
      },
      {
        "code" : "17883-0"
      },
      {
        "code" : "17884-8"
      },
      {
        "code" : "17885-5"
      },
      {
        "code" : "17886-3"
      },
      {
        "code" : "17887-1"
      },
      {
        "code" : "17888-9"
      },
      {
        "code" : "17889-7"
      },
      {
        "code" : "17890-5"
      },
      {
        "code" : "17891-3"
      },
      {
        "code" : "17892-1"
      },
      {
        "code" : "17893-9"
      },
      {
        "code" : "17894-7"
      },
      {
        "code" : "17895-4"
      },
      {
        "code" : "17896-2"
      },
      {
        "code" : "17897-0"
      },
      {
        "code" : "17898-8"
      },
      {
        "code" : "17899-6"
      },
      {
        "code" : "17900-2"
      },
      {
        "code" : "17901-0"
      },
      {
        "code" : "17902-8"
      },
      {
        "code" : "17903-6"
      },
      {
        "code" : "17904-4"
      },
      {
        "code" : "17905-1"
      },
      {
        "code" : "17906-9"
      },
      {
        "code" : "17907-7"
      },
      {
        "code" : "17908-5"
      },
      {
        "code" : "17909-3"
      },
      {
        "code" : "17910-1"
      },
      {
        "code" : "17911-9"
      },
      {
        "code" : "17912-7"
      },
      {
        "code" : "17913-5"
      },
      {
        "code" : "17914-3"
      },
      {
        "code" : "17915-0"
      },
      {
        "code" : "17916-8"
      },
      {
        "code" : "17917-6"
      },
      {
        "code" : "17918-4"
      },
      {
        "code" : "17919-2"
      },
      {
        "code" : "17920-0"
      },
      {
        "code" : "17921-8"
      },
      {
        "code" : "17922-6"
      },
      {
        "code" : "17923-4"
      },
      {
        "code" : "17924-2"
      },
      {
        "code" : "17925-9"
      },
      {
        "code" : "17926-7"
      },
      {
        "code" : "17927-5"
      },
      {
        "code" : "17928-3"
      },
      {
        "code" : "17929-1"
      },
      {
        "code" : "17930-9"
      },
      {
        "code" : "17931-7"
      },
      {
        "code" : "17932-5"
      },
      {
        "code" : "17933-3"
      },
      {
        "code" : "17934-1"
      },
      {
        "code" : "17935-8"
      },
      {
        "code" : "17936-6"
      },
      {
        "code" : "17937-4"
      },
      {
        "code" : "17938-2"
      },
      {
        "code" : "17939-0"
      },
      {
        "code" : "17940-8"
      },
      {
        "code" : "17941-6"
      },
      {
        "code" : "17942-4"
      },
      {
        "code" : "17943-2"
      },
      {
        "code" : "17944-0"
      },
      {
        "code" : "17945-7"
      },
      {
        "code" : "17946-5"
      },
      {
        "code" : "17947-3"
      },
      {
        "code" : "17948-1"
      },
      {
        "code" : "17949-9"
      },
      {
        "code" : "17951-5"
      },
      {
        "code" : "17952-3"
      },
      {
        "code" : "17953-1"
      },
      {
        "code" : "17954-9"
      },
      {
        "code" : "17955-6"
      },
      {
        "code" : "17956-4"
      },
      {
        "code" : "17957-2"
      },
      {
        "code" : "17958-0"
      },
      {
        "code" : "17959-8"
      },
      {
        "code" : "17960-6"
      },
      {
        "code" : "17961-4"
      },
      {
        "code" : "17962-2"
      },
      {
        "code" : "17963-0"
      },
      {
        "code" : "17964-8"
      },
      {
        "code" : "17965-5"
      },
      {
        "code" : "17966-3"
      },
      {
        "code" : "17967-1"
      },
      {
        "code" : "17968-9"
      },
      {
        "code" : "17970-5"
      },
      {
        "code" : "17971-3"
      },
      {
        "code" : "17972-1"
      },
      {
        "code" : "17973-9"
      },
      {
        "code" : "17974-7"
      },
      {
        "code" : "17975-4"
      },
      {
        "code" : "17976-2"
      },
      {
        "code" : "18305-3"
      },
      {
        "code" : "18306-1"
      },
      {
        "code" : "18308-7"
      },
      {
        "code" : "19126-2"
      },
      {
        "code" : "19127-0"
      },
      {
        "code" : "19128-8"
      },
      {
        "code" : "20474-3"
      },
      {
        "code" : "20688-8"
      },
      {
        "code" : "20693-8"
      },
      {
        "code" : "20694-6"
      },
      {
        "code" : "20734-0"
      },
      {
        "code" : "20735-7"
      },
      {
        "code" : "20738-1"
      },
      {
        "code" : "20739-9"
      },
      {
        "code" : "20740-7"
      },
      {
        "code" : "20877-7"
      },
      {
        "code" : "20878-5"
      },
      {
        "code" : "20879-3"
      },
      {
        "code" : "20955-1"
      },
      {
        "code" : "20964-3"
      },
      {
        "code" : "20966-8"
      },
      {
        "code" : "20967-6"
      },
      {
        "code" : "20968-4"
      },
      {
        "code" : "20987-4"
      },
      {
        "code" : "21003-9"
      },
      {
        "code" : "21020-3"
      },
      {
        "code" : "21442-9"
      },
      {
        "code" : "22799-1"
      },
      {
        "code" : "22800-7"
      },
      {
        "code" : "22826-2"
      },
      {
        "code" : "22827-0"
      },
      {
        "code" : "22828-8"
      },
      {
        "code" : "22832-0"
      },
      {
        "code" : "22858-5"
      },
      {
        "code" : "23160-5"
      },
      {
        "code" : "23161-3"
      },
      {
        "code" : "23162-1"
      },
      {
        "code" : "23232-2"
      },
      {
        "code" : "23233-0"
      },
      {
        "code" : "23536-6"
      },
      {
        "code" : "23594-5"
      },
      {
        "code" : "23599-4"
      },
      {
        "code" : "23600-0"
      },
      {
        "code" : "23667-9"
      },
      {
        "code" : "23752-9"
      },
      {
        "code" : "24003-6"
      },
      {
        "code" : "24005-1"
      },
      {
        "code" : "24009-3"
      },
      {
        "code" : "24412-9"
      },
      {
        "code" : "27414-2"
      },
      {
        "code" : "27907-5"
      },
      {
        "code" : "28549-4"
      },
      {
        "code" : "30045-9"
      },
      {
        "code" : "32206-5"
      },
      {
        "code" : "32355-0"
      },
      {
        "code" : "32367-5"
      },
      {
        "code" : "32368-3"
      },
      {
        "code" : "32689-2"
      },
      {
        "code" : "32701-5"
      },
      {
        "code" : "32809-6"
      },
      {
        "code" : "32810-4"
      },
      {
        "code" : "32819-5"
      },
      {
        "code" : "33038-1"
      },
      {
        "code" : "33039-9"
      },
      {
        "code" : "35417-5"
      },
      {
        "code" : "35418-3"
      },
      {
        "code" : "35419-1"
      },
      {
        "code" : "35420-9"
      },
      {
        "code" : "35421-7"
      },
      {
        "code" : "35422-5"
      },
      {
        "code" : "35423-3"
      },
      {
        "code" : "35424-1"
      },
      {
        "code" : "35425-8"
      },
      {
        "code" : "35426-6"
      },
      {
        "code" : "35427-4"
      },
      {
        "code" : "35428-2"
      },
      {
        "code" : "35429-0"
      },
      {
        "code" : "35430-8"
      },
      {
        "code" : "35431-6"
      },
      {
        "code" : "35432-4"
      },
      {
        "code" : "35433-2"
      },
      {
        "code" : "35434-0"
      },
      {
        "code" : "35451-4"
      },
      {
        "code" : "38353-9"
      },
      {
        "code" : "38393-5"
      },
      {
        "code" : "38394-3"
      },
      {
        "code" : "40435-0"
      },
      {
        "code" : "40436-8"
      },
      {
        "code" : "40479-8"
      },
      {
        "code" : "40480-6"
      },
      {
        "code" : "40698-3"
      },
      {
        "code" : "40699-1"
      },
      {
        "code" : "40958-1"
      },
      {
        "code" : "41026-6"
      },
      {
        "code" : "41454-0"
      },
      {
        "code" : "41461-5"
      },
      {
        "code" : "42343-4"
      },
      {
        "code" : "42661-9"
      },
      {
        "code" : "42803-7"
      },
      {
        "code" : "42804-5"
      },
      {
        "code" : "42805-2"
      },
      {
        "code" : "42808-6"
      },
      {
        "code" : "43214-6"
      },
      {
        "code" : "43307-8"
      },
      {
        "code" : "43364-9"
      },
      {
        "code" : "43365-6"
      },
      {
        "code" : "43383-9"
      },
      {
        "code" : "43384-7"
      },
      {
        "code" : "43385-4"
      },
      {
        "code" : "43386-2"
      },
      {
        "code" : "43387-0"
      },
      {
        "code" : "43389-6"
      },
      {
        "code" : "43390-4"
      },
      {
        "code" : "43407-6"
      },
      {
        "code" : "43408-4"
      },
      {
        "code" : "43409-2"
      },
      {
        "code" : "43410-0"
      },
      {
        "code" : "43411-8"
      },
      {
        "code" : "43426-6"
      },
      {
        "code" : "43441-5"
      },
      {
        "code" : "43442-3"
      },
      {
        "code" : "43693-1"
      },
      {
        "code" : "43696-4"
      },
      {
        "code" : "43697-2"
      },
      {
        "code" : "43698-0"
      },
      {
        "code" : "43699-8"
      },
      {
        "code" : "43979-4"
      },
      {
        "code" : "44089-1"
      },
      {
        "code" : "44093-3"
      },
      {
        "code" : "44798-7"
      },
      {
        "code" : "44840-7"
      },
      {
        "code" : "44841-5"
      },
      {
        "code" : "44842-3"
      },
      {
        "code" : "44843-1"
      },
      {
        "code" : "44844-9"
      },
      {
        "code" : "44845-6"
      },
      {
        "code" : "44846-4"
      },
      {
        "code" : "44847-2"
      },
      {
        "code" : "44848-0"
      },
      {
        "code" : "44849-8"
      },
      {
        "code" : "44850-6"
      },
      {
        "code" : "44851-4"
      },
      {
        "code" : "44852-2"
      },
      {
        "code" : "44853-0"
      },
      {
        "code" : "44854-8"
      },
      {
        "code" : "44855-5"
      },
      {
        "code" : "44856-3"
      },
      {
        "code" : "44857-1"
      },
      {
        "code" : "44858-9"
      },
      {
        "code" : "44859-7"
      },
      {
        "code" : "45097-3"
      },
      {
        "code" : "45098-1"
      },
      {
        "code" : "45099-9"
      },
      {
        "code" : "45100-5"
      },
      {
        "code" : "45101-3"
      },
      {
        "code" : "45183-1"
      },
      {
        "code" : "45275-5"
      },
      {
        "code" : "45276-3"
      },
      {
        "code" : "47291-0"
      },
      {
        "code" : "47292-8"
      },
      {
        "code" : "47293-6"
      },
      {
        "code" : "47294-4"
      },
      {
        "code" : "47295-1"
      },
      {
        "code" : "48411-3"
      },
      {
        "code" : "48561-5"
      },
      {
        "code" : "48562-3"
      },
      {
        "code" : "48563-1"
      },
      {
        "code" : "48564-9"
      },
      {
        "code" : "48565-6"
      },
      {
        "code" : "48566-4"
      },
      {
        "code" : "48567-2"
      },
      {
        "code" : "48568-0"
      },
      {
        "code" : "48569-8"
      },
      {
        "code" : "48724-9"
      },
      {
        "code" : "48727-2"
      },
      {
        "code" : "48873-4"
      },
      {
        "code" : "49034-2"
      },
      {
        "code" : "49110-0"
      },
      {
        "code" : "49122-5"
      },
      {
        "code" : "49124-1"
      },
      {
        "code" : "49125-8"
      },
      {
        "code" : "49126-6"
      },
      {
        "code" : "49127-4"
      },
      {
        "code" : "49538-2"
      },
      {
        "code" : "50024-9"
      },
      {
        "code" : "50766-5"
      },
      {
        "code" : "51709-4"
      },
      {
        "code" : "51710-2"
      },
      {
        "code" : "52966-9"
      },
      {
        "code" : "52967-7"
      },
      {
        "code" : "52973-5"
      },
      {
        "code" : "532-2"
      },
      {
        "code" : "533-0"
      },
      {
        "code" : "534-8"
      },
      {
        "code" : "535-5"
      },
      {
        "code" : "53558-3"
      },
      {
        "code" : "53571-6"
      },
      {
        "code" : "536-3"
      },
      {
        "code" : "53614-4"
      },
      {
        "code" : "53615-1"
      },
      {
        "code" : "53616-9"
      },
      {
        "code" : "53617-7"
      },
      {
        "code" : "53625-0"
      },
      {
        "code" : "53645-8"
      },
      {
        "code" : "537-1"
      },
      {
        "code" : "538-9"
      },
      {
        "code" : "539-7"
      },
      {
        "code" : "53908-0"
      },
      {
        "code" : "53909-8"
      },
      {
        "code" : "53911-4"
      },
      {
        "code" : "53955-1"
      },
      {
        "code" : "53956-9"
      },
      {
        "code" : "540-5"
      },
      {
        "code" : "541-3"
      },
      {
        "code" : "542-1"
      },
      {
        "code" : "54242-3"
      },
      {
        "code" : "54244-9"
      },
      {
        "code" : "543-9"
      },
      {
        "code" : "55096-2"
      },
      {
        "code" : "551-2"
      },
      {
        "code" : "552-0"
      },
      {
        "code" : "553-8"
      },
      {
        "code" : "554-6"
      },
      {
        "code" : "555-3"
      },
      {
        "code" : "556-1"
      },
      {
        "code" : "557-9"
      },
      {
        "code" : "558-7"
      },
      {
        "code" : "559-5"
      },
      {
        "code" : "560-3"
      },
      {
        "code" : "56714-9"
      },
      {
        "code" : "56715-6"
      },
      {
        "code" : "568-6"
      },
      {
        "code" : "569-4"
      },
      {
        "code" : "570-2"
      },
      {
        "code" : "571-0"
      },
      {
        "code" : "572-8"
      },
      {
        "code" : "573-6"
      },
      {
        "code" : "574-4"
      },
      {
        "code" : "575-1"
      },
      {
        "code" : "576-9"
      },
      {
        "code" : "577-7"
      },
      {
        "code" : "578-5"
      },
      {
        "code" : "579-3"
      },
      {
        "code" : "580-1"
      },
      {
        "code" : "5839-6"
      },
      {
        "code" : "5840-4"
      },
      {
        "code" : "5841-2"
      },
      {
        "code" : "5842-0"
      },
      {
        "code" : "5843-8"
      },
      {
        "code" : "5856-0"
      },
      {
        "code" : "5857-8"
      },
      {
        "code" : "5858-6"
      },
      {
        "code" : "5859-4"
      },
      {
        "code" : "5878-4"
      },
      {
        "code" : "5883-4"
      },
      {
        "code" : "5884-2"
      },
      {
        "code" : "5885-9"
      },
      {
        "code" : "5886-7"
      },
      {
        "code" : "5887-5"
      },
      {
        "code" : "5888-3"
      },
      {
        "code" : "589-2"
      },
      {
        "code" : "58940-8"
      },
      {
        "code" : "590-0"
      },
      {
        "code" : "59051-3"
      },
      {
        "code" : "593-4"
      },
      {
        "code" : "594-2"
      },
      {
        "code" : "595-9"
      },
      {
        "code" : "596-7"
      },
      {
        "code" : "597-5"
      },
      {
        "code" : "598-3"
      },
      {
        "code" : "599-1"
      },
      {
        "code" : "600-7"
      },
      {
        "code" : "60032-0"
      },
      {
        "code" : "601-5"
      },
      {
        "code" : "602-3"
      },
      {
        "code" : "60257-3"
      },
      {
        "code" : "60258-1"
      },
      {
        "code" : "603-1"
      },
      {
        "code" : "604-9"
      },
      {
        "code" : "605-6"
      },
      {
        "code" : "606-4"
      },
      {
        "code" : "607-2"
      },
      {
        "code" : "608-0"
      },
      {
        "code" : "609-8"
      },
      {
        "code" : "610-6"
      },
      {
        "code" : "611-4"
      },
      {
        "code" : "616-3"
      },
      {
        "code" : "617-1"
      },
      {
        "code" : "618-9"
      },
      {
        "code" : "619-7"
      },
      {
        "code" : "620-5"
      },
      {
        "code" : "621-3"
      },
      {
        "code" : "622-1"
      },
      {
        "code" : "623-9"
      },
      {
        "code" : "624-7"
      },
      {
        "code" : "625-4"
      },
      {
        "code" : "626-2"
      },
      {
        "code" : "627-0"
      },
      {
        "code" : "628-8"
      },
      {
        "code" : "630-4"
      },
      {
        "code" : "631-2"
      },
      {
        "code" : "6317-2"
      },
      {
        "code" : "632-0"
      },
      {
        "code" : "633-8"
      },
      {
        "code" : "6330-5"
      },
      {
        "code" : "6331-3"
      },
      {
        "code" : "6332-1"
      },
      {
        "code" : "634-6"
      },
      {
        "code" : "6348-7"
      },
      {
        "code" : "635-3"
      },
      {
        "code" : "636-1"
      },
      {
        "code" : "637-9"
      },
      {
        "code" : "6406-3"
      },
      {
        "code" : "6409-7"
      },
      {
        "code" : "6429-5"
      },
      {
        "code" : "6430-3"
      },
      {
        "code" : "6431-1"
      },
      {
        "code" : "6453-5"
      },
      {
        "code" : "6454-3"
      },
      {
        "code" : "6455-0"
      },
      {
        "code" : "6459-2"
      },
      {
        "code" : "6460-0"
      },
      {
        "code" : "6461-8"
      },
      {
        "code" : "6462-6"
      },
      {
        "code" : "6463-4"
      },
      {
        "code" : "6486-5"
      },
      {
        "code" : "6536-7"
      },
      {
        "code" : "6539-1"
      },
      {
        "code" : "6544-1"
      },
      {
        "code" : "6545-8"
      },
      {
        "code" : "6546-6"
      },
      {
        "code" : "6547-4"
      },
      {
        "code" : "6548-2"
      },
      {
        "code" : "6578-9"
      },
      {
        "code" : "6579-7"
      },
      {
        "code" : "6580-5"
      },
      {
        "code" : "6581-3"
      },
      {
        "code" : "6583-9"
      },
      {
        "code" : "6584-7"
      },
      {
        "code" : "6594-6"
      },
      {
        "code" : "6600-1"
      },
      {
        "code" : "6601-9"
      },
      {
        "code" : "6602-7"
      },
      {
        "code" : "6603-5"
      },
      {
        "code" : "6604-3"
      },
      {
        "code" : "6608-4"
      },
      {
        "code" : "6609-2"
      },
      {
        "code" : "67725-2"
      },
      {
        "code" : "67867-2"
      },
      {
        "code" : "68366-4"
      },
      {
        "code" : "68458-9"
      },
      {
        "code" : "69410-9"
      },
      {
        "code" : "701-3"
      },
      {
        "code" : "71377-6"
      },
      {
        "code" : "71378-4"
      },
      {
        "code" : "71760-3"
      },
      {
        "code" : "71761-1"
      },
      {
        "code" : "72373-4"
      },
      {
        "code" : "72374-2"
      },
      {
        "code" : "73834-4"
      },
      {
        "code" : "73836-9"
      },
      {
        "code" : "73907-8"
      },
      {
        "code" : "73960-7"
      },
      {
        "code" : "74348-4"
      },
      {
        "code" : "74355-9"
      },
      {
        "code" : "74356-7"
      },
      {
        "code" : "74816-0"
      },
      {
        "code" : "75269-1"
      },
      {
        "code" : "75357-4"
      },
      {
        "code" : "75358-2"
      },
      {
        "code" : "75359-0"
      },
      {
        "code" : "75518-1"
      },
      {
        "code" : "75756-7"
      },
      {
        "code" : "76073-6"
      },
      {
        "code" : "76346-6"
      },
      {
        "code" : "76687-3"
      },
      {
        "code" : "76693-1"
      },
      {
        "code" : "77193-1"
      },
      {
        "code" : "78356-3"
      },
      {
        "code" : "79425-5"
      },
      {
        "code" : "80369-2"
      },
      {
        "code" : "86337-3"
      },
      {
        "code" : "87709-2"
      },
      {
        "code" : "87929-6"
      },
      {
        "code" : "87930-4"
      },
      {
        "code" : "87931-2"
      },
      {
        "code" : "87932-0"
      },
      {
        "code" : "87933-8"
      },
      {
        "code" : "87934-6"
      },
      {
        "code" : "87935-3"
      },
      {
        "code" : "87936-1"
      },
      {
        "code" : "87937-9"
      },
      {
        "code" : "87938-7"
      },
      {
        "code" : "87939-5"
      },
      {
        "code" : "87940-3"
      },
      {
        "code" : "87941-1"
      },
      {
        "code" : "87942-9"
      },
      {
        "code" : "87943-7"
      },
      {
        "code" : "87944-5"
      },
      {
        "code" : "87954-4"
      },
      {
        "code" : "87955-1"
      },
      {
        "code" : "87956-9"
      },
      {
        "code" : "87957-7"
      },
      {
        "code" : "87976-7"
      },
      {
        "code" : "87977-5"
      },
      {
        "code" : "87978-3"
      },
      {
        "code" : "87979-1"
      },
      {
        "code" : "87980-9"
      },
      {
        "code" : "87981-7"
      },
      {
        "code" : "87986-6"
      },
      {
        "code" : "87987-4"
      },
      {
        "code" : "87990-8"
      },
      {
        "code" : "87991-6"
      },
      {
        "code" : "87998-1"
      },
      {
        "code" : "88127-6"
      },
      {
        "code" : "88139-1"
      },
      {
        "code" : "88141-7"
      },
      {
        "code" : "88142-5"
      },
      {
        "code" : "88143-3"
      },
      {
        "code" : "88162-3"
      },
      {
        "code" : "88167-2"
      },
      {
        "code" : "88168-0"
      },
      {
        "code" : "88183-9"
      },
      {
        "code" : "88187-0"
      },
      {
        "code" : "88200-1"
      },
      {
        "code" : "88236-5"
      },
      {
        "code" : "88337-1"
      },
      {
        "code" : "88531-9"
      },
      {
        "code" : "88532-7"
      },
      {
        "code" : "88537-6"
      },
      {
        "code" : "88568-1"
      },
      {
        "code" : "88580-6"
      },
      {
        "code" : "88582-2"
      },
      {
        "code" : "88585-5"
      },
      {
        "code" : "88586-3"
      },
      {
        "code" : "88606-9"
      },
      {
        "code" : "88683-8"
      },
      {
        "code" : "88686-1"
      },
      {
        "code" : "88687-9"
      },
      {
        "code" : "88717-4"
      },
      {
        "code" : "88922-0"
      },
      {
        "code" : "89633-2"
      },
      {
        "code" : "89634-0"
      },
      {
        "code" : "89636-5"
      },
      {
        "code" : "89637-3"
      },
      {
        "code" : "89638-1"
      },
      {
        "code" : "89639-9"
      },
      {
        "code" : "89643-1"
      },
      {
        "code" : "89644-9"
      },
      {
        "code" : "89652-2"
      },
      {
        "code" : "89653-0"
      },
      {
        "code" : "89654-8"
      },
      {
        "code" : "89655-5"
      },
      {
        "code" : "89656-3"
      },
      {
        "code" : "90067-0"
      },
      {
        "code" : "90073-8"
      },
      {
        "code" : "90076-1"
      },
      {
        "code" : "90078-7"
      },
      {
        "code" : "90100-9"
      },
      {
        "code" : "90270-0"
      },
      {
        "code" : "90271-8"
      },
      {
        "code" : "90273-4"
      },
      {
        "code" : "90274-2"
      },
      {
        "code" : "90276-7"
      },
      {
        "code" : "90277-5"
      },
      {
        "code" : "90278-3"
      },
      {
        "code" : "90279-1"
      },
      {
        "code" : "90280-9"
      },
      {
        "code" : "90281-7"
      },
      {
        "code" : "90284-1"
      },
      {
        "code" : "90306-2"
      },
      {
        "code" : "90458-1"
      },
      {
        "code" : "91062-0"
      },
      {
        "code" : "91063-8"
      },
      {
        "code" : "91072-9"
      },
      {
        "code" : "91764-1"
      },
      {
        "code" : "91770-8"
      },
      {
        "code" : "91771-6"
      },
      {
        "code" : "91772-4"
      },
      {
        "code" : "91773-2"
      },
      {
        "code" : "91775-7"
      },
      {
        "code" : "91777-3"
      },
      {
        "code" : "91778-1"
      },
      {
        "code" : "91779-9"
      },
      {
        "code" : "91812-8"
      },
      {
        "code" : "91818-5"
      },
      {
        "code" : "91819-3"
      },
      {
        "code" : "91865-6"
      },
      {
        "code" : "91866-4"
      },
      {
        "code" : "91872-2"
      },
      {
        "code" : "92253-4"
      },
      {
        "code" : "94151-8"
      },
      {
        "code" : "95657-3"
      },
      {
        "code" : "9781-6"
      },
      {
        "code" : "9787-3"
      },
      {
        "code" : "98025-0"
      },
      {
        "code" : "9816-0"
      },
      {
        "code" : "9822-8"
      },
      {
        "code" : "9823-6"
      },
      {
        "code" : "9824-4"
      },
      {
        "code" : "9825-1"
      },
      {
        "code" : "98393-2"
      },
      {
        "code" : "98394-0"
      },
      {
        "code" : "98398-1"
      },
      {
        "code" : "98399-9"
      },
      {
        "code" : "98400-5"
      },
      {
        "code" : "98403-9"
      },
      {
        "code" : "98404-7"
      },
      {
        "code" : "98408-8"
      },
      {
        "code" : "98409-6"
      },
      {
        "code" : "98411-2"
      }]
    },
    {
      "system" : "http://snomed.info/sct",
      "version" : "http://snomed.info/sct/11010000107/version/20261021",
      "concept" : [{
        "code" : "1285654008",
        "display" : "Identification of bacteria by matrix assisted laser desorption ionization time of flight mass spectrometry (observable entity)"
      },
      {
        "code" : "363891000119100",
        "display" : "Identification of bacteria in sputum by culture (observable entity)"
      },
      {
        "code" : "1285667006",
        "display" : "Identification of fungus by matrix assisted laser desorption ionization time of flight mass spectrometry (observable entity)"
      },
      {
        "code" : "365931000119109",
        "display" : "Identification of organism in respiratory smear by Gram stain (observable entity)"
      },
      {
        "code" : "365971000119107",
        "display" : "Identification of organism in smear by Gram stain (observable entity)"
      },
      {
        "code" : "372431000119101",
        "display" : "Identification of organism in wet smear by potassium hydroxide preparation (observable entity)"
      },
      {
        "code" : "375771000119100",
        "display" : "Identification of ovum and parasite in direct stool smear by concentration and trichrome stain (observable entity)"
      },
      {
        "code" : "1285172003",
        "display" : "Presence or identity of antibody to human immunodeficiency virus type 1 and human immunodeficiency virus type 2 by immunoassay (observable entity)"
      }]
    },
    {
      "system" : "http://snomed.info/sct",
      "version" : "http://snomed.info/sct/11010000107/version/20261021",
      "filter" : [{
        "property" : "constraint",
        "op" : "=",
        "value" : "<< 363787002 |Observable entity (observable entity)| : 370130000 |Property (attribute)| = 118584009 |Presence or identity (property) (qualifier value)|, 704319004 |Inheres in (attribute)| = << 410607006 |Organism (organism)|"
      }]
    }]
  }
}

```
