# MII VS Microbiology Detected Not Detected [SNOMED] - MII Implementation Guide Microbiology v2027.0.0-ballot2

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII VS Microbiology Detected Not Detected [SNOMED]**

## ValueSet: MII VS Microbiology Detected Not Detected [SNOMED] 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/ValueSet/mii-vs-mikrobio-detected-not-detected-snomed | *Version*:2027.0.0-ballot2 |
| Active Stand: 2026-10-19 | *Maschinenlesbarer Name*:MII_VS_Mikrobio_Detected_Not_Detected_SNOMED |

 
Result ValueSet for targeted qualitative detections: detected or not detected. An indeterminable result is represented not here but via Observation.dataAbsentReason. 

 **References** 

* Included into [MII VS Microbiology Specific Determination Result [SNOMED]](ValueSet-mii-vs-mikrobio-spezifische-bestimmung-ergebnis-snomed.md)
* [MII PR Microbiology Resistance Mechanisms Determinants](StructureDefinition-mii-pr-mikrobio-resistenzmechanismen-determinanten.md)
* [MII PR Microbiology Specific Microscopy](StructureDefinition-mii-pr-mikrobio-spezifische-mikroskopie.md)
* [MII PR Microbiology Virulence Factor](StructureDefinition-mii-pr-mikrobio-virulenzfaktor.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-mikrobio-detected-not-detected-snomed",
  "url" : "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/ValueSet/mii-vs-mikrobio-detected-not-detected-snomed",
  "version" : "2027.0.0-ballot2",
  "name" : "MII_VS_Mikrobio_Detected_Not_Detected_SNOMED",
  "title" : "MII VS Microbiology Detected Not Detected [SNOMED]",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-10-19T02:33:36+00:00",
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
  "description" : "Result ValueSet for targeted qualitative detections: detected or not detected. An indeterminable result is represented not here but via Observation.dataAbsentReason.",
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
      "version" : "http://snomed.info/sct/900000000000207008/version/20260701",
      "concept" : [{
        "code" : "260373001",
        "display" : "Detected (qualifier value)"
      },
      {
        "code" : "260415000",
        "display" : "Not detected (qualifier value)"
      }]
    }]
  }
}

```
