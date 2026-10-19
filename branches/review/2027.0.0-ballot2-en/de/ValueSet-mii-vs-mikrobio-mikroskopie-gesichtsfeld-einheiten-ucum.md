# MII VS Microbiology Microscopy Field of View Units [UCUM] - MII Implementation Guide Microbiology v2027.0.0-ballot2

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII VS Microbiology Microscopy Field of View Units [UCUM]**

## ValueSet: MII VS Microbiology Microscopy Field of View Units [UCUM] 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/ValueSet/mii-vs-mikrobio-mikroskopie-gesichtsfeld-einheiten-ucum | *Version*:2027.0.0-ballot2 |
| Active Stand: 2026-10-19 | *Maschinenlesbarer Name*:MII_VS_Mikrobio_Mikroskopie_Gesichtsfeld_Einheiten_UCUM |

 
Units for the count per field of view in the quantity component of microscopy. 

 **References** 

* [MII PR Microbiology General Microscopy](StructureDefinition-mii-pr-mikrobio-mikroskopie.md)
* [MII PR Microbiology Specific Microscopy](StructureDefinition-mii-pr-mikrobio-spezifische-mikroskopie.md)

### Logical Definition (CLD)

 

### Expansion

No Expansion for this valueset (Unknown Code System)

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-mikrobio-mikroskopie-gesichtsfeld-einheiten-ucum",
  "url" : "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/ValueSet/mii-vs-mikrobio-mikroskopie-gesichtsfeld-einheiten-ucum",
  "version" : "2027.0.0-ballot2",
  "name" : "MII_VS_Mikrobio_Mikroskopie_Gesichtsfeld_Einheiten_UCUM",
  "title" : "MII VS Microbiology Microscopy Field of View Units [UCUM]",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-10-19T02:49:08+00:00",
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
  "description" : "Units for the count per field of view in the quantity component of microscopy.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "http://unitsofmeasure.org",
      "concept" : [{
        "code" : "/[HPF]"
      },
      {
        "code" : "/[LPF]"
      }]
    }]
  }
}

```
