# MII CS Mikrobio MRGN Ergebnis - MII Implementation Guide Microbiology v2027.0.0-alpha.6

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII CS Mikrobio MRGN Ergebnis**

## CodeSystem: MII CS Mikrobio MRGN Ergebnis 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/CodeSystem/mii-cs-mikrobio-mrgn-ergebnis | *Version*:2027.0.0-alpha.6 |
| Active as of 2026-09-02 | *Computable Name*:MII_CS_Mikrobio_MRGN_Ergebnis |

 
CodeSystem für Ergebnisse der MRGN-Klassifikation, die sich nicht über LOINC abbilden lassen. Die LOINC-AnswerList LL6195-3 zu 99780-9 enthält ausschließlich 2MRGN, 3MRGN und 4MRGN und damit keinen Negativwert. 

This Code system is referenced in the definition of the following value sets:

* [MII VS Mikrobio MRGN Klasse [LOINC]](ValueSet-mii-vs-mikrobio-mrgn-klasse-loinc.md)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "mii-cs-mikrobio-mrgn-ergebnis",
  "url" : "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/CodeSystem/mii-cs-mikrobio-mrgn-ergebnis",
  "version" : "2027.0.0-alpha.6",
  "name" : "MII_CS_Mikrobio_MRGN_Ergebnis",
  "title" : "MII CS Mikrobio MRGN Ergebnis",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-09-02T12:45:31+00:00",
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
  "description" : "CodeSystem für Ergebnisse der MRGN-Klassifikation, die sich nicht über LOINC abbilden lassen. Die LOINC-AnswerList LL6195-3 zu 99780-9 enthält ausschließlich 2MRGN, 3MRGN und 4MRGN und damit keinen Negativwert.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "content" : "complete",
  "count" : 1,
  "concept" : [{
    "code" : "keine-mrgn-klasse",
    "display" : "Keine MRGN-Klasse",
    "definition" : "Das identifizierte gramnegative Isolat wurde anhand der vorliegenden Empfindlichkeitsbefunde bewertet und ist keiner MRGN-Klasse (2MRGN, 3MRGN, 4MRGN) zuzuordnen. Abzugrenzen vom negativen Ergebnis eines zielgerichteten Erregernachweises: Dieses wird über MII_PR_Mikrobio_Spezifische_Bestimmung bzw. MII_PR_Mikrobio_Spezifische_Kultur abgebildet."
  }]
}

```
