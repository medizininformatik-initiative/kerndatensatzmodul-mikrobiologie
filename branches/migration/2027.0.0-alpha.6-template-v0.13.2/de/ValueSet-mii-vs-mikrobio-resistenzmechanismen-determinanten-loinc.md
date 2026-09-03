# MII VS Mikrobio Resistenzmechanismen Determinanten [LOINC] - MII Implementation Guide Microbiology v2027.0.0-alpha.6

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII VS Mikrobio Resistenzmechanismen Determinanten [LOINC]**

## ValueSet: MII VS Mikrobio Resistenzmechanismen Determinanten [LOINC] 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/ValueSet/mii-vs-mikrobio-resistenzmechanismen-determinanten-loinc | *Version*:2027.0.0-alpha.6 |
| Active Stand: 2026-09-03 | *Maschinenlesbarer Name*:MII_VS_Mikrobio_Resistenzmechanismen_Determinanten_LOINC |

 
Tests-ValueSet für Resistenzmechanismen und Determinanten: LOINC-Codes für den Nachweis von Resistenzgenen, Resistenzproteinen und funktionalen Resistenztests. 

 **References** 

* [MII PR Mikrobio Resistenzmechanismen Determinanten](StructureDefinition-mii-pr-mikrobio-resistenzmechanismen-determinanten.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-mikrobio-resistenzmechanismen-determinanten-loinc",
  "url" : "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/ValueSet/mii-vs-mikrobio-resistenzmechanismen-determinanten-loinc",
  "version" : "2027.0.0-alpha.6",
  "name" : "MII_VS_Mikrobio_Resistenzmechanismen_Determinanten_LOINC",
  "title" : "MII VS Mikrobio Resistenzmechanismen Determinanten [LOINC]",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-09-03T05:02:03+00:00",
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
  "description" : "Tests-ValueSet für Resistenzmechanismen und Determinanten: LOINC-Codes für den Nachweis von Resistenzgenen, Resistenzproteinen und funktionalen Resistenztests.",
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
      "filter" : [{
        "property" : "PROPERTY",
        "op" : "=",
        "value" : "LP217195-9"
      },
      {
        "property" : "CLASS",
        "op" : "=",
        "value" : "LP7755-4"
      },
      {
        "property" : "STATUS",
        "op" : "=",
        "value" : "ACTIVE"
      }]
    }],
    "exclude" : [{
      "system" : "http://loinc.org",
      "concept" : [{
        "code" : "35492-8",
        "display" : "Methicillin resistant Staphylococcus aureus (MRSA) DNA [Presence] in Specimen by NAA with probe detection"
      }]
    }]
  }
}

```
