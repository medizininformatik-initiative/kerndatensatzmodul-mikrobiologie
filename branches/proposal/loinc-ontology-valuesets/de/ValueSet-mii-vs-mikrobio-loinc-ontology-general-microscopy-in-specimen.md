# MII VS Microbiology LOINC Ontology General Microscopy Finding In Specimen - MII Implementation Guide Microbiology v2027.0.0-ballot2

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII VS Microbiology LOINC Ontology General Microscopy Finding In Specimen**

## ValueSet: MII VS Microbiology LOINC Ontology General Microscopy Finding In Specimen (Experimentell) 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/ValueSet/mii-vs-mikrobio-loinc-ontology-general-microscopy-in-specimen | *Version*:2027.0.0-ballot2 |
| Draft Stand: 2026-11-03 | *Maschinenlesbarer Name*:MII_VS_Mikrobio_LOINC_Ontology_General_Microscopy_Finding_In_Specimen |
| **Copyright/Rechtliches**: This material includes SNOMED Clinical Terms® (SNOMED CT®) which is used by permission of SNOMED International. All rights reserved. SNOMED CT®, was originally created by The College of American Pathologists. SNOMED and SNOMED CT are registered trademarks of SNOMED International. Implementers of these artefacts must have the appropriate SNOMED CT Affiliate license. | |

 
Proposal: LOINC codes of the microbiology request 'Microscopy: General microscopy — method-neutral 'finding in specimen' pattern', computed by ECL over the LOINC Ontology 2026-10-21. The technique-free pattern of 105059-0: nominal Presence or identity that inheres in the specimen itself (no organism, no technique). Catches the method-neutral microscopy codes that the technique filter misses. Parts: LOINC enumeration (357, LOINC 2.83), LOINC Ontology observables without LOINC code (0), and the ECL as an intensional include. ECL: `<< 363787002 |Observable entity (observable entity)| : 370130000 |Property (attribute)| = 118584009 |Presence or identity (property) (qualifier value)|, 370132008 |Scale type (attribute)| = 117362005 |Nominal value (qualifier value)|, 704319004 |Inheres in (attribute)| = << 123038009 |Specimen (specimen)|` 

 **References** 

* Included into [MII VS Microbiology LOINC Ontology General microscopy](ValueSet-mii-vs-mikrobio-loinc-ontology-allgemeine-mikroskopie.md)

### Logical Definition (CLD)

 

### Expansion

No Expansion for this valueset (Unsupported Code System Version)

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-mikrobio-loinc-ontology-general-microscopy-in-specimen",
  "url" : "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/ValueSet/mii-vs-mikrobio-loinc-ontology-general-microscopy-in-specimen",
  "version" : "2027.0.0-ballot2",
  "name" : "MII_VS_Mikrobio_LOINC_Ontology_General_Microscopy_Finding_In_Specimen",
  "title" : "MII VS Microbiology LOINC Ontology General Microscopy Finding In Specimen",
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
  "description" : "Proposal: LOINC codes of the microbiology request 'Microscopy: General microscopy — method-neutral 'finding in specimen' pattern', computed by ECL over the LOINC Ontology 2026-10-21. The technique-free pattern of 105059-0: nominal Presence or identity that inheres in the specimen itself (no organism, no technique). Catches the method-neutral microscopy codes that the technique filter misses. Parts: LOINC enumeration (357, LOINC 2.83), LOINC Ontology observables without LOINC code (0), and the ECL as an intensional include. ECL: `<< 363787002 |Observable entity (observable entity)| : 370130000 |Property (attribute)| = 118584009 |Presence or identity (property) (qualifier value)|, 370132008 |Scale type (attribute)| = 117362005 |Nominal value (qualifier value)|, 704319004 |Inheres in (attribute)| = << 123038009 |Specimen (specimen)|`",
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
        "code" : "10355-6"
      },
      {
        "code" : "10357-2"
      },
      {
        "code" : "104866-9"
      },
      {
        "code" : "105059-0"
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
        "code" : "10688-0"
      },
      {
        "code" : "10689-8"
      },
      {
        "code" : "107589-4"
      },
      {
        "code" : "107590-2"
      },
      {
        "code" : "107591-0"
      },
      {
        "code" : "107592-8"
      },
      {
        "code" : "107593-6"
      },
      {
        "code" : "107598-5"
      },
      {
        "code" : "107599-3"
      },
      {
        "code" : "107600-9"
      },
      {
        "code" : "107601-7"
      },
      {
        "code" : "107602-5"
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
        "code" : "10801-9"
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
        "code" : "10856-3"
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
        "code" : "112887-5"
      },
      {
        "code" : "113008-7"
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
        "code" : "13509-5"
      },
      {
        "code" : "13510-3"
      },
      {
        "code" : "13512-9"
      },
      {
        "code" : "14317-2"
      },
      {
        "code" : "14318-0"
      },
      {
        "code" : "14319-8"
      },
      {
        "code" : "14353-7"
      },
      {
        "code" : "14354-5"
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
        "code" : "14841-1"
      },
      {
        "code" : "14842-9"
      },
      {
        "code" : "17281-7"
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
        "code" : "18500-9"
      },
      {
        "code" : "18501-7"
      },
      {
        "code" : "19765-7"
      },
      {
        "code" : "20431-3"
      },
      {
        "code" : "20881-9"
      },
      {
        "code" : "20882-7"
      },
      {
        "code" : "20883-5"
      },
      {
        "code" : "20884-3"
      },
      {
        "code" : "20885-0"
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
        "code" : "23901-2"
      },
      {
        "code" : "24002-8"
      },
      {
        "code" : "27112-2"
      },
      {
        "code" : "29776-2"
      },
      {
        "code" : "31187-8"
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
        "code" : "31198-5"
      },
      {
        "code" : "31199-3"
      },
      {
        "code" : "32026-7"
      },
      {
        "code" : "32151-3"
      },
      {
        "code" : "32186-9"
      },
      {
        "code" : "32187-7"
      },
      {
        "code" : "32188-5"
      },
      {
        "code" : "32189-3"
      },
      {
        "code" : "32190-1"
      },
      {
        "code" : "32699-1"
      },
      {
        "code" : "32700-7"
      },
      {
        "code" : "32785-8"
      },
      {
        "code" : "32798-1"
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
        "code" : "32824-5"
      },
      {
        "code" : "33270-0"
      },
      {
        "code" : "33271-8"
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
        "code" : "35347-4"
      },
      {
        "code" : "35737-6"
      },
      {
        "code" : "39086-4"
      },
      {
        "code" : "42209-7"
      },
      {
        "code" : "42210-5"
      },
      {
        "code" : "43417-5"
      },
      {
        "code" : "43427-4"
      },
      {
        "code" : "44098-2"
      },
      {
        "code" : "45043-7"
      },
      {
        "code" : "48712-4"
      },
      {
        "code" : "48722-3"
      },
      {
        "code" : "50389-6"
      },
      {
        "code" : "51700-3"
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
        "code" : "57851-8"
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
        "code" : "641-1"
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
        "code" : "646-0"
      },
      {
        "code" : "6464-2"
      },
      {
        "code" : "6465-9"
      },
      {
        "code" : "6466-7"
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
        "code" : "6470-9"
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
        "code" : "651-0"
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
        "code" : "655-1"
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
        "code" : "660-1"
      },
      {
        "code" : "6607-6"
      },
      {
        "code" : "661-9"
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
        "code" : "6656-3"
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
        "code" : "6661-3"
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
        "code" : "6670-4"
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
        "code" : "6680-3"
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
        "code" : "680-9"
      },
      {
        "code" : "681-7"
      },
      {
        "code" : "682-5"
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
        "code" : "88231-6"
      },
      {
        "code" : "88235-7"
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
      }]
    },
    {
      "system" : "http://snomed.info/sct",
      "version" : "http://snomed.info/sct/11010000107/version/20261021",
      "filter" : [{
        "property" : "constraint",
        "op" : "=",
        "value" : "<< 363787002 |Observable entity (observable entity)| : 370130000 |Property (attribute)| = 118584009 |Presence or identity (property) (qualifier value)|, 370132008 |Scale type (attribute)| = 117362005 |Nominal value (qualifier value)|, 704319004 |Inheres in (attribute)| = << 123038009 |Specimen (specimen)|"
      }]
    }]
  }
}

```
