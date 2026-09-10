# MII VS Mikrobio Allgemeine Kultur Tests [LOINC] - MII Implementation Guide Microbiology v2027.0.0-ballot.rc1

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII VS Mikrobio Allgemeine Kultur Tests [LOINC]**

## ValueSet: MII VS Mikrobio Allgemeine Kultur Tests [LOINC] 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/ValueSet/mii-vs-mikrobio-allgemeine-kultur-tests-loinc | *Version*:2027.0.0-ballot.rc1 |
| Active Stand: 2026-09-10 | *Maschinenlesbarer Name*:MII_VS_Mikrobio_Allgemeine_Kultur_Tests_LOINC |

 
Tests-ValueSet für die allgemeine Kultur: LOINC-Codes für die ungerichtete kulturelle Untersuchung. Bevorzugt wird 11475-1, weil der Code das Verfahren selbst benennt; 41852-5 ist gleichwertig zulässig. 

 **References** 

* [MII PR Mikrobio Allgemeine Kultur](StructureDefinition-mii-pr-mikrobio-allgemeine-kultur.md)

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
  "version" : "2027.0.0-ballot.rc1",
  "name" : "MII_VS_Mikrobio_Allgemeine_Kultur_Tests_LOINC",
  "title" : "MII VS Mikrobio Allgemeine Kultur Tests [LOINC]",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-09-10T16:40:19+00:00",
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
  "description" : "Tests-ValueSet für die allgemeine Kultur: LOINC-Codes für die ungerichtete kulturelle Untersuchung. Bevorzugt wird 11475-1, weil der Code das Verfahren selbst benennt; 41852-5 ist gleichwertig zulässig.",
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
