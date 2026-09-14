# MII VS Mikrobio Mikroskopie Gesichtsfeld Einheiten [UCUM] - MII Implementation Guide Microbiology v2027.0.0-ballot

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII VS Mikrobio Mikroskopie Gesichtsfeld Einheiten [UCUM]**

## ValueSet: MII VS Mikrobio Mikroskopie Gesichtsfeld Einheiten [UCUM] 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/ValueSet/mii-vs-mikrobio-mikroskopie-gesichtsfeld-einheiten-ucum | *Version*:2027.0.0-ballot |
| Active Stand: 2026-09-14 | *Maschinenlesbarer Name*:MII_VS_Mikrobio_Mikroskopie_Gesichtsfeld_Einheiten_UCUM |

 
Einheiten für die Zählung je Gesichtsfeld in der Mengenkomponente der Mikroskopie. 

 **References** 

* [MII PR Mikrobio Allgemeine Mikroskopie](StructureDefinition-mii-pr-mikrobio-mikroskopie.md)
* [MII PR Mikrobio Spezifische Mikroskopie](StructureDefinition-mii-pr-mikrobio-spezifische-mikroskopie.md)

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
  "version" : "2027.0.0-ballot",
  "name" : "MII_VS_Mikrobio_Mikroskopie_Gesichtsfeld_Einheiten_UCUM",
  "title" : "MII VS Mikrobio Mikroskopie Gesichtsfeld Einheiten [UCUM]",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-09-14T14:30:50+00:00",
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
  "description" : "Einheiten für die Zählung je Gesichtsfeld in der Mengenkomponente der Mikroskopie.",
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
