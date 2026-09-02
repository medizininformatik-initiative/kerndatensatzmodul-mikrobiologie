# MII VS Mikrobio Susceptibility - MII Implementation Guide Microbiology v2027.0.0-alpha.6

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII VS Mikrobio Susceptibility**

## ValueSet: MII VS Mikrobio Susceptibility 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/ValueSet/mii-vs-mikrobio-susceptibility | *Version*:2027.0.0-alpha.6 |
| Active as of 2023-03-02 | *Computable Name*:MII_VS_Mikrobio_Susceptibility |

 **References** 

* [MII PR Mikrobio Empfindlichkeit](StructureDefinition-mii-pr-mikrobio-empfindlichkeit.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-mikrobio-susceptibility",
  "url" : "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/ValueSet/mii-vs-mikrobio-susceptibility",
  "version" : "2027.0.0-alpha.6",
  "name" : "MII_VS_Mikrobio_Susceptibility",
  "title" : "MII VS Mikrobio Susceptibility",
  "status" : "active",
  "experimental" : false,
  "date" : "2023-03-02T00:00:00Z",
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
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
      "concept" : [{
        "code" : "S",
        "display" : "Susceptible"
      },
      {
        "code" : "I",
        "display" : "Intermediate"
      },
      {
        "code" : "SDD",
        "display" : "Susceptible- Dose Dependent"
      },
      {
        "code" : "R",
        "display" : "Resistant"
      },
      {
        "code" : "NS",
        "display" : "Nonsusceptible"
      }]
    },
    {
      "system" : "http://snomed.info/sct",
      "concept" : [{
        "code" : "1306583007",
        "display" : "EUCAST-Kategorie 2019 - I (sensibel bei erhöhter Exposition)"
      }]
    }]
  }
}

```
