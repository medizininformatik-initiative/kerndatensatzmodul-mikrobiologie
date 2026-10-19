# MII CS Microbiology MRGN Result - MII Implementation Guide Microbiology v2027.0.0-ballot2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII CS Microbiology MRGN Result**

## CodeSystem: MII CS Microbiology MRGN Result 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/CodeSystem/mii-cs-mikrobio-mrgn-ergebnis | *Version*:2027.0.0-ballot2 |
| Active as of 2026-10-19 | *Computable Name*:MII_CS_Mikrobio_MRGN_Ergebnis |

 
CodeSystem for results of the MRGN classification that cannot be represented with LOINC. The LOINC answer list LL6195-3 for 99780-9 contains only 2MRGN, 3MRGN and 4MRGN and therefore no negative value. 

This Code system is referenced in the definition of the following value sets:

* [MII VS Microbiology MRGN Class [LOINC]](ValueSet-mii-vs-mikrobio-mrgn-klasse-loinc.md)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "mii-cs-mikrobio-mrgn-ergebnis",
  "url" : "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/CodeSystem/mii-cs-mikrobio-mrgn-ergebnis",
  "version" : "2027.0.0-ballot2",
  "name" : "MII_CS_Mikrobio_MRGN_Ergebnis",
  "title" : "MII CS Microbiology MRGN Result",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-10-19T02:49:08+00:00",
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
  "description" : "CodeSystem for results of the MRGN classification that cannot be represented with LOINC. The LOINC answer list LL6195-3 for 99780-9 contains only 2MRGN, 3MRGN and 4MRGN and therefore no negative value.",
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
    "code" : "keine-mrgn-klasse",
    "display" : "Keine MRGN-Klasse",
    "definition" : "The identified Gram-negative isolate was assessed on the basis of the available susceptibility results and cannot be assigned to any MRGN class (2MRGN, 3MRGN, 4MRGN). To be distinguished from the negative result of a targeted pathogen detection, which is represented by MII_PR_Mikrobio_Spezifische_Bestimmung or MII_PR_Mikrobio_Spezifische_Kultur."
  }]
}

```
