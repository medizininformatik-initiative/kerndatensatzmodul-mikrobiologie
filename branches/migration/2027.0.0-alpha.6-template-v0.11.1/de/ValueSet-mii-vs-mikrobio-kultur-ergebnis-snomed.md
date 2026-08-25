# MII VS Mikrobio Kultur Ergebnis [SNOMED] - MII Implementation Guide Microbiology v2027.0.0-alpha.6

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII VS Mikrobio Kultur Ergebnis [SNOMED]**

## ValueSet: MII VS Mikrobio Kultur Ergebnis [SNOMED] 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/ValueSet/mii-vs-mikrobio-kultur-ergebnis-snomed | *Version*:2027.0.0-alpha.6 |
| Active Stand: 2026-08-25 | *Maschinenlesbarer Name*:MII_VS_Mikrobio_Kultur_Ergebnis_SNOMED |

 
Ergebnis-ValueSet fuer die allgemeine und die spezifische Kultur: Wachstum oder kein Wachstum. Ein unbestimmbares Ergebnis wird nicht ueber value[x], sondern ueber Observation.dataAbsentReason abgebildet. 

 **References** 

* [MII PR Mikrobio Allgemeine Kultur](StructureDefinition-mii-pr-mikrobio-allgemeine-kultur.md)
* [MII PR Mikrobio Spezifische Kultur](StructureDefinition-mii-pr-mikrobio-spezifische-kultur.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-mikrobio-kultur-ergebnis-snomed",
  "url" : "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/ValueSet/mii-vs-mikrobio-kultur-ergebnis-snomed",
  "version" : "2027.0.0-alpha.6",
  "name" : "MII_VS_Mikrobio_Kultur_Ergebnis_SNOMED",
  "title" : "MII VS Mikrobio Kultur Ergebnis [SNOMED]",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-08-25T18:53:02+00:00",
  "publisher" : "NUM-DIZ",
  "_publisher" : {
    "extension" : [{
      "extension" : [{
        "url" : "lang",
        "valueCode" : "de"
      },
      {
        "url" : "content",
        "valueString" : "NUM-DIZ"
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/translation"
    }]
  },
  "contact" : [{
    "name" : "NUM-DIZ",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.netzwerk-universitaetsmedizin.de"
    }]
  }],
  "description" : "Ergebnis-ValueSet fuer die allgemeine und die spezifische Kultur: Wachstum oder kein Wachstum. Ein unbestimmbares Ergebnis wird nicht ueber value[x], sondern ueber Observation.dataAbsentReason abgebildet.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "http://snomed.info/sct",
      "concept" : [{
        "code" : "365698005",
        "display" : "Organism growth"
      },
      {
        "code" : "264868006",
        "display" : "No growth (qualifier value)"
      }]
    }]
  }
}

```
