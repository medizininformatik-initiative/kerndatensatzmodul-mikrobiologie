# MII VS Microbiology General Microscopy Tests [LOINC] - MII Implementation Guide Microbiology v2027.0.0-ballot2

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII VS Microbiology General Microscopy Tests [LOINC]**

## ValueSet: MII VS Microbiology General Microscopy Tests [LOINC] 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/ValueSet/mii-vs-mikrobio-allgemeine-mikroskopie-tests-loinc | *Version*:2027.0.0-ballot2 |
| Active Stand: 2026-10-19 | *Maschinenlesbarer Name*:MII_VS_Mikrobio_Allgemeine_Mikroskopie_Tests_LOINC |

 
Test ValueSet for general microscopy: nominal LOINC codes for microscopic observation whose result is the morphology seen. 105059-0 is preferred because it is method-neutral; the codes with a stain in the name (Gram, acid-fast, rhodamine-auramine) are equally permitted and leave Observation.method free in return. 

 **References** 

* [MII PR Microbiology General Microscopy](StructureDefinition-mii-pr-mikrobio-mikroskopie.md)

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
  "version" : "2027.0.0-ballot2",
  "name" : "MII_VS_Mikrobio_Allgemeine_Mikroskopie_Tests_LOINC",
  "title" : "MII VS Microbiology General Microscopy Tests [LOINC]",
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
  "description" : "Test ValueSet for general microscopy: nominal LOINC codes for microscopic observation whose result is the morphology seen. 105059-0 is preferred because it is method-neutral; the codes with a stain in the name (Gram, acid-fast, rhodamine-auramine) are equally permitted and leave Observation.method free in return.",
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
      },
      {
        "code" : "11545-1",
        "display" : "Microscopic observation [Identifier] in Specimen by Acid fast stain"
      },
      {
        "code" : "676-7",
        "display" : "Microscopic observation [Identifier] in Specimen by Rhodamine-auramine fluorochrome stain"
      }]
    }]
  }
}

```
