# MII VS Mikrobio Allgemeine Mikroskopie Tests [LOINC] - MII Implementation Guide Microbiology v2027.0.0-ballot.rc1

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII VS Mikrobio Allgemeine Mikroskopie Tests [LOINC]**

## ValueSet: MII VS Mikrobio Allgemeine Mikroskopie Tests [LOINC] 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/ValueSet/mii-vs-mikrobio-allgemeine-mikroskopie-tests-loinc | *Version*:2027.0.0-ballot.rc1 |
| Active Stand: 2026-09-10 | *Maschinenlesbarer Name*:MII_VS_Mikrobio_Allgemeine_Mikroskopie_Tests_LOINC |

 
Tests-ValueSet für die allgemeine Mikroskopie: nominale LOINC-Codes der mikroskopischen Beobachtung, deren Ergebnis die gesehene Morphologie ist. Bevorzugt wird 105059-0; 664-3 ist gleichwertig zulässig, wenn die Färbung im Code stehen soll. 

 **References** 

* [MII PR Mikrobio Allgemeine Mikroskopie](StructureDefinition-mii-pr-mikrobio-mikroskopie.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-mikrobio-allgemeine-mikroskopie-tests-loinc",
  "url" : "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/ValueSet/mii-vs-mikrobio-allgemeine-mikroskopie-tests-loinc",
  "version" : "2027.0.0-ballot.rc1",
  "name" : "MII_VS_Mikrobio_Allgemeine_Mikroskopie_Tests_LOINC",
  "title" : "MII VS Mikrobio Allgemeine Mikroskopie Tests [LOINC]",
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
  "description" : "Tests-ValueSet für die allgemeine Mikroskopie: nominale LOINC-Codes der mikroskopischen Beobachtung, deren Ergebnis die gesehene Morphologie ist. Bevorzugt wird 105059-0; 664-3 ist gleichwertig zulässig, wenn die Färbung im Code stehen soll.",
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
        "code" : "105059-0",
        "display" : "Microscopic observation [Identifier] in Specimen"
      },
      {
        "code" : "664-3",
        "display" : "Microscopic observation [Identifier] in Specimen by Gram stain"
      }]
    }]
  }
}

```
