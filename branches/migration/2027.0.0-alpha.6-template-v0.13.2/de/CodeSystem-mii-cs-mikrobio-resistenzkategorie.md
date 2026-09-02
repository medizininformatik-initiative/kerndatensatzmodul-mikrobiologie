# MII CS Mikrobio Resistenzkategorie - MII Implementation Guide Microbiology v2027.0.0-alpha.6

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII CS Mikrobio Resistenzkategorie**

## CodeSystem: MII CS Mikrobio Resistenzkategorie 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/CodeSystem/mii-cs-mikrobio-resistenzkategorie | *Version*:2027.0.0-alpha.6 |
| Active Stand: 2026-09-02 | *Maschinenlesbarer Name*:MII_CS_Mikrobio_Resistenzkategorie |

 
Untersuchungscodes (Observation.code) für die Bewertung eines nachgewiesenen Erregers hinsichtlich einer definierten Resistenzkategorie. Jeder Code benennt die bewertete Kategorie; das Ergebnis der Bewertung steht in Observation.value. 

Dieses CodeSystem wird in der Definition der folgenden ValueSets referenziert:

* [MII VS Mikrobio Resistenzkategorie Status](ValueSet-mii-vs-mikrobio-resistenzkategorie-status.md)

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



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
  "date" : "2026-09-02T11:53:33+00:00",
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
