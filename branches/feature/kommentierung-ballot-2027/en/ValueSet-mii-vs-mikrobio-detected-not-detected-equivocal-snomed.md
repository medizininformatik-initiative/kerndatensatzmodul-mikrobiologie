# MII VS Mikrobio Detected Not Detected Equivocal [SNOMED] - MII Implementation Guide Microbiology v2027.0.0-ballot2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII VS Mikrobio Detected Not Detected Equivocal [SNOMED]**

## ValueSet: MII VS Mikrobio Detected Not Detected Equivocal [SNOMED] 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/ValueSet/mii-vs-mikrobio-detected-not-detected-equivocal-snomed | *Version*:2027.0.0-ballot2 |
| Active as of 2026-11-27 | *Computable Name*:MII_VS_Mikrobio_Detected_Not_Detected_Equivocal_SNOMED |

 
Ergebnis-ValueSet für qualitative Nachweise von Virulenzfaktoren und Resistenzmechanismen/Determinanten: nachgewiesen, nicht nachgewiesen oder nicht eindeutig. Ein unbestimmbares Ergebnis wird über Observation.dataAbsentReason abgebildet. 

 **References** 

* Included into [MII VS Mikrobio Spezifische Bestimmung Ergebnis [SNOMED]](ValueSet-mii-vs-mikrobio-spezifische-bestimmung-ergebnis-snomed.md)
* [MII PR Mikrobio Resistenzmechanismen Determinanten](StructureDefinition-mii-pr-mikrobio-resistenzmechanismen-determinanten.md)
* [MII PR Mikrobio Virulenzfaktor](StructureDefinition-mii-pr-mikrobio-virulenzfaktor.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-mikrobio-detected-not-detected-equivocal-snomed",
  "url" : "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/ValueSet/mii-vs-mikrobio-detected-not-detected-equivocal-snomed",
  "version" : "2027.0.0-ballot2",
  "name" : "MII_VS_Mikrobio_Detected_Not_Detected_Equivocal_SNOMED",
  "title" : "MII VS Mikrobio Detected Not Detected Equivocal [SNOMED]",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-11-27T14:29:27+00:00",
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
  "description" : "Ergebnis-ValueSet für qualitative Nachweise von Virulenzfaktoren und Resistenzmechanismen/Determinanten: nachgewiesen, nicht nachgewiesen oder nicht eindeutig. Ein unbestimmbares Ergebnis wird über Observation.dataAbsentReason abgebildet.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "compose" : {
    "include" : [{
      "valueSet" : ["https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/ValueSet/mii-vs-mikrobio-detected-not-detected-snomed"]
    },
    {
      "system" : "http://snomed.info/sct",
      "version" : "http://snomed.info/sct/900000000000207008/version/20260701",
      "concept" : [{
        "code" : "280414007",
        "display" : "Equivocal result"
      }]
    }]
  }
}

```
