# MII VS Microbiology LOINC Ontology Pathogen Load Amplification - MII Implementation Guide Microbiology v2027.0.0-ballot2

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII VS Microbiology LOINC Ontology Pathogen Load Amplification**

## ValueSet: MII VS Microbiology LOINC Ontology Pathogen Load Amplification (Experimentell) 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/ValueSet/mii-vs-mikrobio-loinc-ontology-pathogen-load-amplification | *Version*:2027.0.0-ballot2 |
| Draft Stand: 2026-11-03 | *Maschinenlesbarer Name*:MII_VS_Mikrobio_LOINC_Ontology_Pathogen_Load_Amplification |
| **Copyright/Rechtliches**: This material includes SNOMED Clinical Terms® (SNOMED CT®) which is used by permission of SNOMED International. All rights reserved. SNOMED CT®, was originally created by The College of American Pathologists. SNOMED and SNOMED CT are registered trademarks of SNOMED International. Implementers of these artefacts must have the appropriate SNOMED CT Affiliate license. | |

 
Proposal: LOINC codes of the microbiology request 'Molecular pathogen load: Pathogen load — amplification technique asserted', computed by ECL over the LOINC Ontology 2026-10-21. Same, restricted to Technique = « Molecular nucleic acid amplification technique. Shows the loss from a technique clause. Parts: LOINC enumeration (359, LOINC 2.83), LOINC Ontology observables without LOINC code (0), and the ECL as an intensional include. ECL: `<< 363787002 |Observable entity (observable entity)| : 370130000 |Property (attribute)| = (118550005 |Number concentration (property) (qualifier value)| OR 705056007 |Logarithmic number concentration (property) (qualifier value)| OR 118569000 |Arbitrary concentration (property) (qualifier value)| OR 762918005 |Logarithmic arbitrary concentration (property) (qualifier value)|), 246093002 |Component (attribute)| = << 117174000 |Nucleic acid sequence with relative specificity for microorganism (substance)|, 246501002 |Technique (attribute)| = << 1156878000 |Molecular nucleic acid amplification technique (qualifier value)|` 

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
  "id" : "mii-vs-mikrobio-loinc-ontology-pathogen-load-amplification",
  "url" : "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/ValueSet/mii-vs-mikrobio-loinc-ontology-pathogen-load-amplification",
  "version" : "2027.0.0-ballot2",
  "name" : "MII_VS_Mikrobio_LOINC_Ontology_Pathogen_Load_Amplification",
  "title" : "MII VS Microbiology LOINC Ontology Pathogen Load Amplification",
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
  "description" : "Proposal: LOINC codes of the microbiology request 'Molecular pathogen load: Pathogen load — amplification technique asserted', computed by ECL over the LOINC Ontology 2026-10-21. Same, restricted to Technique = << Molecular nucleic acid amplification technique. Shows the loss from a technique clause. Parts: LOINC enumeration (359, LOINC 2.83), LOINC Ontology observables without LOINC code (0), and the ECL as an intensional include. ECL: `<< 363787002 |Observable entity (observable entity)| : 370130000 |Property (attribute)| = (118550005 |Number concentration (property) (qualifier value)| OR 705056007 |Logarithmic number concentration (property) (qualifier value)| OR 118569000 |Arbitrary concentration (property) (qualifier value)| OR 762918005 |Logarithmic arbitrary concentration (property) (qualifier value)|), 246093002 |Component (attribute)| = << 117174000 |Nucleic acid sequence with relative specificity for microorganism (substance)|, 246501002 |Technique (attribute)| = << 1156878000 |Molecular nucleic acid amplification technique (qualifier value)|`",
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
        "code" : "100674-1"
      },
      {
        "code" : "100675-8"
      },
      {
        "code" : "100676-6"
      },
      {
        "code" : "100677-4"
      },
      {
        "code" : "100678-2"
      },
      {
        "code" : "100679-0"
      },
      {
        "code" : "100680-8"
      },
      {
        "code" : "100681-6"
      },
      {
        "code" : "100682-4"
      },
      {
        "code" : "100683-2"
      },
      {
        "code" : "100684-0"
      },
      {
        "code" : "100685-7"
      },
      {
        "code" : "100686-5"
      },
      {
        "code" : "100687-3"
      },
      {
        "code" : "100688-1"
      },
      {
        "code" : "100689-9"
      },
      {
        "code" : "100690-7"
      },
      {
        "code" : "100691-5"
      },
      {
        "code" : "100692-3"
      },
      {
        "code" : "100693-1"
      },
      {
        "code" : "100980-2"
      },
      {
        "code" : "100981-0"
      },
      {
        "code" : "100982-8"
      },
      {
        "code" : "101254-1"
      },
      {
        "code" : "101255-8"
      },
      {
        "code" : "101341-6"
      },
      {
        "code" : "101342-4"
      },
      {
        "code" : "101727-6"
      },
      {
        "code" : "101729-2"
      },
      {
        "code" : "101731-8"
      },
      {
        "code" : "101732-6"
      },
      {
        "code" : "101733-4"
      },
      {
        "code" : "101814-2"
      },
      {
        "code" : "101815-9"
      },
      {
        "code" : "101816-7"
      },
      {
        "code" : "101817-5"
      },
      {
        "code" : "101818-3"
      },
      {
        "code" : "103225-9"
      },
      {
        "code" : "103618-5"
      },
      {
        "code" : "105614-2"
      },
      {
        "code" : "105617-5"
      },
      {
        "code" : "105742-1"
      },
      {
        "code" : "106727-1"
      },
      {
        "code" : "108086-0"
      },
      {
        "code" : "108110-8"
      },
      {
        "code" : "108212-2"
      },
      {
        "code" : "108213-0"
      },
      {
        "code" : "108214-8"
      },
      {
        "code" : "108215-5"
      },
      {
        "code" : "108216-3"
      },
      {
        "code" : "108217-1"
      },
      {
        "code" : "108220-5"
      },
      {
        "code" : "108221-3"
      },
      {
        "code" : "108222-1"
      },
      {
        "code" : "108223-9"
      },
      {
        "code" : "108224-7"
      },
      {
        "code" : "108228-8"
      },
      {
        "code" : "11011-4"
      },
      {
        "code" : "112308-2"
      },
      {
        "code" : "112582-2"
      },
      {
        "code" : "112583-0"
      },
      {
        "code" : "112584-8"
      },
      {
        "code" : "112585-5"
      },
      {
        "code" : "112587-1"
      },
      {
        "code" : "112751-3"
      },
      {
        "code" : "112752-1"
      },
      {
        "code" : "112753-9"
      },
      {
        "code" : "115802-1"
      },
      {
        "code" : "20416-4"
      },
      {
        "code" : "20442-0"
      },
      {
        "code" : "20447-9"
      },
      {
        "code" : "20571-6"
      },
      {
        "code" : "23876-6"
      },
      {
        "code" : "24041-6"
      },
      {
        "code" : "25836-8"
      },
      {
        "code" : "29539-4"
      },
      {
        "code" : "29541-0"
      },
      {
        "code" : "29604-6"
      },
      {
        "code" : "29609-5"
      },
      {
        "code" : "29615-2"
      },
      {
        "code" : "30247-1"
      },
      {
        "code" : "32284-2"
      },
      {
        "code" : "32285-9"
      },
      {
        "code" : "32585-2"
      },
      {
        "code" : "33006-8"
      },
      {
        "code" : "34593-4"
      },
      {
        "code" : "34720-3"
      },
      {
        "code" : "36923-1"
      },
      {
        "code" : "38180-6"
      },
      {
        "code" : "38349-7"
      },
      {
        "code" : "38350-5"
      },
      {
        "code" : "39003-9"
      },
      {
        "code" : "40459-0"
      },
      {
        "code" : "41479-7"
      },
      {
        "code" : "41480-5"
      },
      {
        "code" : "41497-9"
      },
      {
        "code" : "41498-7"
      },
      {
        "code" : "42003-4"
      },
      {
        "code" : "42587-6"
      },
      {
        "code" : "42595-9"
      },
      {
        "code" : "42617-1"
      },
      {
        "code" : "43201-3"
      },
      {
        "code" : "43730-1"
      },
      {
        "code" : "44263-2"
      },
      {
        "code" : "44264-0"
      },
      {
        "code" : "44265-7"
      },
      {
        "code" : "44266-5"
      },
      {
        "code" : "44805-0"
      },
      {
        "code" : "45161-7"
      },
      {
        "code" : "47002-1"
      },
      {
        "code" : "47003-9"
      },
      {
        "code" : "47252-2"
      },
      {
        "code" : "47982-4"
      },
      {
        "code" : "48309-9"
      },
      {
        "code" : "48398-2"
      },
      {
        "code" : "48609-2"
      },
      {
        "code" : "49096-1"
      },
      {
        "code" : "49098-7"
      },
      {
        "code" : "49102-7"
      },
      {
        "code" : "49104-3"
      },
      {
        "code" : "49114-2"
      },
      {
        "code" : "49116-7"
      },
      {
        "code" : "49334-6"
      },
      {
        "code" : "49335-3"
      },
      {
        "code" : "49336-1"
      },
      {
        "code" : "49337-9"
      },
      {
        "code" : "49338-7"
      },
      {
        "code" : "49339-5"
      },
      {
        "code" : "49340-3"
      },
      {
        "code" : "49341-1"
      },
      {
        "code" : "49342-9"
      },
      {
        "code" : "49343-7"
      },
      {
        "code" : "49344-5"
      },
      {
        "code" : "49345-2"
      },
      {
        "code" : "49346-0"
      },
      {
        "code" : "49347-8"
      },
      {
        "code" : "49348-6"
      },
      {
        "code" : "49349-4"
      },
      {
        "code" : "49350-2"
      },
      {
        "code" : "49351-0"
      },
      {
        "code" : "49352-8"
      },
      {
        "code" : "49353-6"
      },
      {
        "code" : "49354-4"
      },
      {
        "code" : "49355-1"
      },
      {
        "code" : "49356-9"
      },
      {
        "code" : "49357-7"
      },
      {
        "code" : "49358-5"
      },
      {
        "code" : "49359-3"
      },
      {
        "code" : "49360-1"
      },
      {
        "code" : "49361-9"
      },
      {
        "code" : "49362-7"
      },
      {
        "code" : "49363-5"
      },
      {
        "code" : "49364-3"
      },
      {
        "code" : "49365-0"
      },
      {
        "code" : "49366-8"
      },
      {
        "code" : "49367-6"
      },
      {
        "code" : "49368-4"
      },
      {
        "code" : "49369-2"
      },
      {
        "code" : "49370-0"
      },
      {
        "code" : "49371-8"
      },
      {
        "code" : "49372-6"
      },
      {
        "code" : "49373-4"
      },
      {
        "code" : "49374-2"
      },
      {
        "code" : "49375-9"
      },
      {
        "code" : "49376-7"
      },
      {
        "code" : "49377-5"
      },
      {
        "code" : "49378-3"
      },
      {
        "code" : "49379-1"
      },
      {
        "code" : "49380-9"
      },
      {
        "code" : "49387-4"
      },
      {
        "code" : "49388-2"
      },
      {
        "code" : "49389-0"
      },
      {
        "code" : "49390-8"
      },
      {
        "code" : "49391-6"
      },
      {
        "code" : "49392-4"
      },
      {
        "code" : "49393-2"
      },
      {
        "code" : "49394-0"
      },
      {
        "code" : "49395-7"
      },
      {
        "code" : "49396-5"
      },
      {
        "code" : "49397-3"
      },
      {
        "code" : "49398-1"
      },
      {
        "code" : "49399-9"
      },
      {
        "code" : "49400-5"
      },
      {
        "code" : "49401-3"
      },
      {
        "code" : "49402-1"
      },
      {
        "code" : "49403-9"
      },
      {
        "code" : "49404-7"
      },
      {
        "code" : "49405-4"
      },
      {
        "code" : "49406-2"
      },
      {
        "code" : "49407-0"
      },
      {
        "code" : "49408-8"
      },
      {
        "code" : "49409-6"
      },
      {
        "code" : "49410-4"
      },
      {
        "code" : "49411-2"
      },
      {
        "code" : "49412-0"
      },
      {
        "code" : "49413-8"
      },
      {
        "code" : "49414-6"
      },
      {
        "code" : "49415-3"
      },
      {
        "code" : "49416-1"
      },
      {
        "code" : "49417-9"
      },
      {
        "code" : "49418-7"
      },
      {
        "code" : "49419-5"
      },
      {
        "code" : "49420-3"
      },
      {
        "code" : "49421-1"
      },
      {
        "code" : "49422-9"
      },
      {
        "code" : "49423-7"
      },
      {
        "code" : "49424-5"
      },
      {
        "code" : "49425-2"
      },
      {
        "code" : "49426-0"
      },
      {
        "code" : "49427-8"
      },
      {
        "code" : "49428-6"
      },
      {
        "code" : "49429-4"
      },
      {
        "code" : "49430-2"
      },
      {
        "code" : "49431-0"
      },
      {
        "code" : "49432-8"
      },
      {
        "code" : "49433-6"
      },
      {
        "code" : "49434-4"
      },
      {
        "code" : "49435-1"
      },
      {
        "code" : "49436-9"
      },
      {
        "code" : "49437-7"
      },
      {
        "code" : "49438-5"
      },
      {
        "code" : "49439-3"
      },
      {
        "code" : "49440-1"
      },
      {
        "code" : "49441-9"
      },
      {
        "code" : "49442-7"
      },
      {
        "code" : "49443-5"
      },
      {
        "code" : "49444-3"
      },
      {
        "code" : "49445-0"
      },
      {
        "code" : "49446-8"
      },
      {
        "code" : "49447-6"
      },
      {
        "code" : "49448-4"
      },
      {
        "code" : "49449-2"
      },
      {
        "code" : "49450-0"
      },
      {
        "code" : "49451-8"
      },
      {
        "code" : "49452-6"
      },
      {
        "code" : "49453-4"
      },
      {
        "code" : "49454-2"
      },
      {
        "code" : "49455-9"
      },
      {
        "code" : "49545-7"
      },
      {
        "code" : "49547-3"
      },
      {
        "code" : "49600-0"
      },
      {
        "code" : "49601-8"
      },
      {
        "code" : "49602-6"
      },
      {
        "code" : "49603-4"
      },
      {
        "code" : "49604-2"
      },
      {
        "code" : "49605-9"
      },
      {
        "code" : "49606-7"
      },
      {
        "code" : "49608-3"
      },
      {
        "code" : "49890-7"
      },
      {
        "code" : "49985-5"
      },
      {
        "code" : "49986-3"
      },
      {
        "code" : "49987-1"
      },
      {
        "code" : "49988-9"
      },
      {
        "code" : "49989-7"
      },
      {
        "code" : "49990-5"
      },
      {
        "code" : "50660-0"
      },
      {
        "code" : "50661-8"
      },
      {
        "code" : "50662-6"
      },
      {
        "code" : "50663-4"
      },
      {
        "code" : "51771-4"
      },
      {
        "code" : "53249-9"
      },
      {
        "code" : "53250-7"
      },
      {
        "code" : "53251-5"
      },
      {
        "code" : "53252-3"
      },
      {
        "code" : "53253-1"
      },
      {
        "code" : "53254-9"
      },
      {
        "code" : "53255-6"
      },
      {
        "code" : "53256-4"
      },
      {
        "code" : "53257-2"
      },
      {
        "code" : "53763-9"
      },
      {
        "code" : "53774-6"
      },
      {
        "code" : "53874-4"
      },
      {
        "code" : "54206-8"
      },
      {
        "code" : "56024-3"
      },
      {
        "code" : "59419-2"
      },
      {
        "code" : "60461-1"
      },
      {
        "code" : "60462-9"
      },
      {
        "code" : "62463-5"
      },
      {
        "code" : "62464-3"
      },
      {
        "code" : "62465-0"
      },
      {
        "code" : "62469-2"
      },
      {
        "code" : "62470-0"
      },
      {
        "code" : "62471-8"
      },
      {
        "code" : "62472-6"
      },
      {
        "code" : "62473-4"
      },
      {
        "code" : "62474-2"
      },
      {
        "code" : "62475-9"
      },
      {
        "code" : "62476-7"
      },
      {
        "code" : "62477-5"
      },
      {
        "code" : "64038-3"
      },
      {
        "code" : "66719-6"
      },
      {
        "code" : "66720-4"
      },
      {
        "code" : "66721-2"
      },
      {
        "code" : "66722-0"
      },
      {
        "code" : "66723-8"
      },
      {
        "code" : "66724-6"
      },
      {
        "code" : "66725-3"
      },
      {
        "code" : "66726-1"
      },
      {
        "code" : "66727-9"
      },
      {
        "code" : "66728-7"
      },
      {
        "code" : "66729-5"
      },
      {
        "code" : "66730-3"
      },
      {
        "code" : "66731-1"
      },
      {
        "code" : "69354-9"
      },
      {
        "code" : "69355-6"
      },
      {
        "code" : "69961-1"
      },
      {
        "code" : "72493-0"
      },
      {
        "code" : "72494-8"
      },
      {
        "code" : "74419-3"
      },
      {
        "code" : "74420-1"
      },
      {
        "code" : "74667-7"
      },
      {
        "code" : "74668-5"
      },
      {
        "code" : "74669-3"
      },
      {
        "code" : "74776-6"
      },
      {
        "code" : "74777-4"
      },
      {
        "code" : "74778-2"
      },
      {
        "code" : "74779-0"
      },
      {
        "code" : "74854-1"
      },
      {
        "code" : "74855-8"
      },
      {
        "code" : "75541-3"
      },
      {
        "code" : "76603-0"
      },
      {
        "code" : "78750-7"
      },
      {
        "code" : "80426-0"
      },
      {
        "code" : "81652-0"
      },
      {
        "code" : "85512-2"
      },
      {
        "code" : "85513-0"
      },
      {
        "code" : "86547-7"
      },
      {
        "code" : "86548-5"
      },
      {
        "code" : "86549-3"
      },
      {
        "code" : "88130-0"
      },
      {
        "code" : "88545-9"
      },
      {
        "code" : "88688-7"
      },
      {
        "code" : "90320-3"
      },
      {
        "code" : "90924-2"
      },
      {
        "code" : "91797-1"
      },
      {
        "code" : "92848-1"
      },
      {
        "code" : "92854-9"
      },
      {
        "code" : "92886-1"
      },
      {
        "code" : "92887-9"
      },
      {
        "code" : "93840-7"
      },
      {
        "code" : "93841-5"
      },
      {
        "code" : "94819-0"
      },
      {
        "code" : "94823-2"
      },
      {
        "code" : "94824-0"
      },
      {
        "code" : "94825-7"
      },
      {
        "code" : "94826-5"
      },
      {
        "code" : "94828-1"
      },
      {
        "code" : "94829-9"
      },
      {
        "code" : "94830-7"
      },
      {
        "code" : "94831-5"
      },
      {
        "code" : "94832-3"
      },
      {
        "code" : "94833-1"
      },
      {
        "code" : "94835-6"
      },
      {
        "code" : "94836-4"
      },
      {
        "code" : "95544-3"
      },
      {
        "code" : "96396-7"
      },
      {
        "code" : "97752-0"
      },
      {
        "code" : "98081-3"
      },
      {
        "code" : "99386-5"
      }]
    },
    {
      "system" : "http://snomed.info/sct",
      "version" : "http://snomed.info/sct/11010000107/version/20261021",
      "filter" : [{
        "property" : "constraint",
        "op" : "=",
        "value" : "<< 363787002 |Observable entity (observable entity)| : 370130000 |Property (attribute)| = (118550005 |Number concentration (property) (qualifier value)| OR 705056007 |Logarithmic number concentration (property) (qualifier value)| OR 118569000 |Arbitrary concentration (property) (qualifier value)| OR 762918005 |Logarithmic arbitrary concentration (property) (qualifier value)|), 246093002 |Component (attribute)| = << 117174000 |Nucleic acid sequence with relative specificity for microorganism (substance)|, 246501002 |Technique (attribute)| = << 1156878000 |Molecular nucleic acid amplification technique (qualifier value)|"
      }]
    }]
  }
}

```
