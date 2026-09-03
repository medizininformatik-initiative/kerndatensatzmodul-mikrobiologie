# MII VS Mikrobio Titer Methode [SNOMED] - MII Implementation Guide Microbiology v2027.0.0-alpha.6

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII VS Mikrobio Titer Methode [SNOMED]**

## ValueSet: MII VS Mikrobio Titer Methode [SNOMED] 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/ValueSet/mii-vs-mikrobio-titer-methode-snomed | *Version*:2027.0.0-alpha.6 |
| Active Stand: 2026-09-03 | *Maschinenlesbarer Name*:MII_VS_Mikrobio_Titer_Methode_SNOMED |

 
Methoden-ValueSet für die Titerbestimmung: Verfahren serieller Verdünnungsreihen. 

 **References** 

* [MII PR Mikrobio Titer](StructureDefinition-mii-pr-mikrobio-titer.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-mikrobio-titer-methode-snomed",
  "url" : "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/ValueSet/mii-vs-mikrobio-titer-methode-snomed",
  "version" : "2027.0.0-alpha.6",
  "name" : "MII_VS_Mikrobio_Titer_Methode_SNOMED",
  "title" : "MII VS Mikrobio Titer Methode [SNOMED]",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-09-03T05:48:26+00:00",
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
  "description" : "Methoden-ValueSet für die Titerbestimmung: Verfahren serieller Verdünnungsreihen.",
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
        "code" : "708104000",
        "display" : "Agglutination technique (qualifier value)"
      },
      {
        "code" : "726449005",
        "display" : "Immunoassay technique (qualifier value)"
      },
      {
        "code" : "703458000",
        "display" : "Neutralization method (qualifier value)"
      }]
    }]
  }
}

```
