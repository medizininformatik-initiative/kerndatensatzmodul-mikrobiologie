# MII CS Microbiology Resistance Category - MII Implementation Guide Microbiology v2027.0.0-ballot2

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII CS Microbiology Resistance Category**

## CodeSystem: MII CS Microbiology Resistance Category 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/CodeSystem/mii-cs-mikrobio-resistenzkategorie | *Version*:2027.0.0-ballot2 |
| Active Stand: 2026-10-19 | *Maschinenlesbarer Name*:MII_CS_Mikrobio_Resistenzkategorie |

 
Investigation codes (Observation.code) for assessing a detected pathogen with regard to a defined resistance category. Each code names the assessed category; the result of the assessment is in Observation.value. 

Dieses CodeSystem wird in der Definition der folgenden ValueSets referenziert:

* [MII VS Microbiology Resistance Category Status](ValueSet-mii-vs-mikrobio-resistenzkategorie-status.md)

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "mii-cs-mikrobio-resistenzkategorie",
  "url" : "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/CodeSystem/mii-cs-mikrobio-resistenzkategorie",
  "version" : "2027.0.0-ballot2",
  "name" : "MII_CS_Mikrobio_Resistenzkategorie",
  "title" : "MII CS Microbiology Resistance Category",
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
  "description" : "Investigation codes (Observation.code) for assessing a detected pathogen with regard to a defined resistance category. Each code names the assessed category; the result of the assessment is in Observation.value.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 4,
  "concept" : [{
    "code" : "mrsa-status",
    "display" : "MRSA-Status",
    "definition" : "Does the detected pathogen meet the criteria of the category MRSA (methicillin-resistant Staphylococcus aureus)? Basis of assessment: identification as Staphylococcus aureus and detection of methicillin/oxacillin resistance, phenotypically or via mecA/mecC."
  },
  {
    "code" : "vre-status",
    "display" : "VRE-Status",
    "definition" : "Does the detected pathogen meet the criteria of the category VRE (vancomycin-resistant Enterococcus)? Basis of assessment: identification as Enterococcus and detection of vancomycin resistance, phenotypically or via vanA/vanB."
  },
  {
    "code" : "lre-status",
    "display" : "LRE-Status",
    "definition" : "Does the detected pathogen meet the criteria of the category LRE (linezolid-resistant Enterococcus)? Basis of assessment: identification as Enterococcus and detection of linezolid resistance."
  },
  {
    "code" : "lvre-status",
    "display" : "LVRE-Status",
    "definition" : "Does the detected pathogen meet the criteria of the category LVRE (linezolid- and vancomycin-resistant Enterococcus)? Basis of assessment: identification as Enterococcus and detection of both linezolid and vancomycin resistance."
  }]
}

```
