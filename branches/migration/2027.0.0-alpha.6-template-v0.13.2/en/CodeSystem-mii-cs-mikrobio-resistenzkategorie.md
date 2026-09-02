# MII CS Mikrobio Resistenzkategorie - MII Implementation Guide Microbiology v2027.0.0-alpha.6

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII CS Mikrobio Resistenzkategorie**

## CodeSystem: MII CS Mikrobio Resistenzkategorie 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/CodeSystem/mii-cs-mikrobio-resistenzkategorie | *Version*:2027.0.0-alpha.6 |
| Active as of 2026-09-02 | *Computable Name*:MII_CS_Mikrobio_Resistenzkategorie |

 
Untersuchungscodes (Observation.code) für die Bewertung eines nachgewiesenen Erregers hinsichtlich einer definierten Resistenzkategorie. Jeder Code benennt die bewertete Kategorie; das Ergebnis der Bewertung steht in Observation.value. 

This Code system is referenced in the definition of the following value sets:

* [MII VS Mikrobio Resistenzkategorie Status](ValueSet-mii-vs-mikrobio-resistenzkategorie-status.md)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "mii-cs-mikrobio-resistenzkategorie",
  "url" : "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/CodeSystem/mii-cs-mikrobio-resistenzkategorie",
  "version" : "2027.0.0-alpha.6",
  "name" : "MII_CS_Mikrobio_Resistenzkategorie",
  "title" : "MII CS Mikrobio Resistenzkategorie",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-09-02T21:10:40+00:00",
  "publisher" : "Medizininformatik Initiative",
  "contact" : [{
    "name" : "Medizininformatik Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de"
    }]
  }],
  "description" : "Untersuchungscodes (Observation.code) für die Bewertung eines nachgewiesenen Erregers hinsichtlich einer definierten Resistenzkategorie. Jeder Code benennt die bewertete Kategorie; das Ergebnis der Bewertung steht in Observation.value.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "content" : "complete",
  "count" : 4,
  "concept" : [{
    "code" : "mrsa-status",
    "display" : "MRSA-Status",
    "definition" : "Erfüllt der nachgewiesene Erreger die Kriterien der Kategorie MRSA (methicillinresistenter Staphylococcus aureus)? Bewertungsgrundlage: Identifikation als Staphylococcus aureus und Nachweis der Methicillin-/Oxacillinresistenz, phänotypisch oder über mecA/mecC."
  },
  {
    "code" : "vre-status",
    "display" : "VRE-Status",
    "definition" : "Erfüllt der nachgewiesene Erreger die Kriterien der Kategorie VRE (vancomycinresistenter Enterococcus)? Bewertungsgrundlage: Identifikation als Enterococcus und Nachweis der Vancomycinresistenz, phänotypisch oder über vanA/vanB."
  },
  {
    "code" : "lre-status",
    "display" : "LRE-Status",
    "definition" : "Erfüllt der nachgewiesene Erreger die Kriterien der Kategorie LRE (linezolidresistenter Enterococcus)? Bewertungsgrundlage: Identifikation als Enterococcus und Nachweis der Linezolidresistenz."
  },
  {
    "code" : "lvre-status",
    "display" : "LVRE-Status",
    "definition" : "Erfüllt der nachgewiesene Erreger die Kriterien der Kategorie LVRE (linezolid- und vancomycinresistenter Enterococcus)? Bewertungsgrundlage: Identifikation als Enterococcus und Nachweis sowohl der Linezolid- als auch der Vancomycinresistenz."
  }]
}

```
