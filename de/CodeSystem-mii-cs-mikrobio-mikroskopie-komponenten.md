# MII CS Mikrobio Mikroskopie Komponenten - MII Implementation Guide Microbiology v2027.0.0-ballot.rc1

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII CS Mikrobio Mikroskopie Komponenten**

## CodeSystem: MII CS Mikrobio Mikroskopie Komponenten 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/CodeSystem/mii-cs-mikrobio-mikroskopie-komponenten | *Version*:2027.0.0-ballot.rc1 |
| Active Stand: 2026-09-10 | *Maschinenlesbarer Name*:MII_CS_Mikrobio_Mikroskopie_Komponenten |

 
Interims-CodeSystem für Komponenten des mikroskopischen Befunds, für die noch kein LOINC-Code existiert. Der enthaltene Code wird ersetzt, sobald der im EU-Datenmodell angeforderte LOINC-Code verfügbar ist. 

Dieses CodeSystem wird in der Definition der folgenden ValueSets referenziert:

* This CodeSystem is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "mii-cs-mikrobio-mikroskopie-komponenten",
  "url" : "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/CodeSystem/mii-cs-mikrobio-mikroskopie-komponenten",
  "version" : "2027.0.0-ballot.rc1",
  "name" : "MII_CS_Mikrobio_Mikroskopie_Komponenten",
  "title" : "MII CS Mikrobio Mikroskopie Komponenten",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-09-10T17:52:15+00:00",
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
  "description" : "Interims-CodeSystem für Komponenten des mikroskopischen Befunds, für die noch kein LOINC-Code existiert. Der enthaltene Code wird ersetzt, sobald der im EU-Datenmodell angeforderte LOINC-Code verfügbar ist.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 1,
  "concept" : [{
    "code" : "semiquantitative-menge",
    "display" : "Semiquantitative Menge",
    "definition" : "Die semiquantitative Menge, in der der im Ergebnis benannte mikroskopische Befund gesehen wurde. INTERIMSCODE: ersetzt den im EU-Datenmodell (Blatt 'Microscopy', Zeile 13) angeforderten LOINC-Code 'Semiquantitive value for microscopy finding', solange dieser nicht existiert."
  }]
}

```
