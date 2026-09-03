# MII VS Mikrobio Barlett Score [LOINC] - MII Implementation Guide Microbiology v2027.0.0-alpha.6

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII VS Mikrobio Barlett Score [LOINC]**

## ValueSet: MII VS Mikrobio Barlett Score [LOINC] 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/ValueSet/mii-vs-mikrobio-barlett-score-loinc | *Version*:2027.0.0-alpha.6 |
| Active as of 2023-03-02 | *Computable Name*:MII_VS_Mikrobio_Barlett_Score_LOINC |

 
Ergebnis-ValueSet für den Barlett-Score: Punktkategorien von +3 bis -1, die das Verhältnis von Entzündungs- zu Epithelzellen und damit die Eignung einer Sputumprobe für die Kultur bewerten. 

 **References** 

* [MII PR Mikrobio Barlett Score](StructureDefinition-mii-pr-mikrobio-barlett-score.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-mikrobio-barlett-score-loinc",
  "url" : "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/ValueSet/mii-vs-mikrobio-barlett-score-loinc",
  "version" : "2027.0.0-alpha.6",
  "name" : "MII_VS_Mikrobio_Barlett_Score_LOINC",
  "title" : "MII VS Mikrobio Barlett Score [LOINC]",
  "status" : "active",
  "experimental" : false,
  "date" : "2023-03-02T00:00:00Z",
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
  "description" : "Ergebnis-ValueSet für den Barlett-Score: Punktkategorien von +3 bis -1, die das Verhältnis von Entzündungs- zu Epithelzellen und damit die Eignung einer Sputumprobe für die Kultur bewerten.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "http://loinc.org",
      "concept" : [{
        "code" : "LA21392-8",
        "display" : "+3 Active inflammation"
      },
      {
        "code" : "LA21391-0",
        "display" : "+2 Active inflammation"
      },
      {
        "code" : "LA21390-2",
        "display" : "+1 Active inflammation"
      },
      {
        "code" : "LA21389-4",
        "display" : "0 Lack of inflammation and possible contamination with saliva"
      },
      {
        "code" : "LA21388-6",
        "display" : "-1 Lack of inflammation and possible contamination with saliva"
      },
      {
        "code" : "LA21387-8",
        "display" : "-2 Lack of inflammation and possible contamination with saliva"
      }]
    }]
  }
}

```
