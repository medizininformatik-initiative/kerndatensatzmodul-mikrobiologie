# MII VS Microbiology General Culture Tests [LOINC] - MII Implementation Guide Microbiology v2027.0.0-ballot2

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII VS Microbiology General Culture Tests [LOINC]**

## ValueSet: MII VS Microbiology General Culture Tests [LOINC] 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/ValueSet/mii-vs-mikrobio-allgemeine-kultur-tests-loinc | *Version*:2027.0.0-ballot2 |
| Active Stand: 2026-10-19 | *Maschinenlesbarer Name*:MII_VS_Mikrobio_Allgemeine_Kultur_Tests_LOINC |

 
Test ValueSet for general culture: LOINC codes for untargeted culture investigation. 11475-1 is preferred because the code names the procedure itself; 41852-5 is equally permitted. 

 **References** 

* [MII PR Microbiology General Culture](StructureDefinition-mii-pr-mikrobio-allgemeine-kultur.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-mikrobio-allgemeine-kultur-tests-loinc",
  "url" : "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/ValueSet/mii-vs-mikrobio-allgemeine-kultur-tests-loinc",
  "version" : "2027.0.0-ballot2",
  "name" : "MII_VS_Mikrobio_Allgemeine_Kultur_Tests_LOINC",
  "title" : "MII VS Microbiology General Culture Tests [LOINC]",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-10-19T01:04:27+00:00",
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
  "description" : "Test ValueSet for general culture: LOINC codes for untargeted culture investigation. 11475-1 is preferred because the code names the procedure itself; 41852-5 is equally permitted.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "http://loinc.org",
      "version" : "2.82",
      "concept" : [{
        "code" : "11475-1",
        "display" : "Microorganism identified in Specimen by Culture"
      },
      {
        "code" : "41852-5",
        "display" : "Microorganism or agent identified in Specimen"
      }]
    }]
  }
}

```
