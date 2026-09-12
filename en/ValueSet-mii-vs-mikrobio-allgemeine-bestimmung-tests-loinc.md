# MII VS Mikrobio Allgemeine Bestimmung Tests [LOINC] - MII Implementation Guide Microbiology v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII VS Mikrobio Allgemeine Bestimmung Tests [LOINC]**

## ValueSet: MII VS Mikrobio Allgemeine Bestimmung Tests [LOINC] 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/ValueSet/mii-vs-mikrobio-allgemeine-bestimmung-tests-loinc | *Version*:2027.0.0-ballot.rc1 |
| Active as of 2026-09-12 | *Computable Name*:MII_VS_Mikrobio_Allgemeine_Bestimmung_Tests_LOINC |

 
Tests-ValueSet für die allgemeine Bestimmung: LOINC-Codes für die ungerichtete Identifizierung eines Mikroorganismus. Bevorzugt wird 41852-5; die übrigen Codes sind gleichwertig zulässig, wo das Labor die Erregergruppe oder das Sequenzierziel im Code benennt. 

 **References** 

* [MII PR Mikrobio Allgemeine Bestimmung (Identifizierung)](StructureDefinition-mii-pr-mikrobio-allgemeine-bestimmung.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-mikrobio-allgemeine-bestimmung-tests-loinc",
  "url" : "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/ValueSet/mii-vs-mikrobio-allgemeine-bestimmung-tests-loinc",
  "version" : "2027.0.0-ballot.rc1",
  "name" : "MII_VS_Mikrobio_Allgemeine_Bestimmung_Tests_LOINC",
  "title" : "MII VS Mikrobio Allgemeine Bestimmung Tests [LOINC]",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-09-12T20:31:09+00:00",
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
  "description" : "Tests-ValueSet für die allgemeine Bestimmung: LOINC-Codes für die ungerichtete Identifizierung eines Mikroorganismus. Bevorzugt wird 41852-5; die übrigen Codes sind gleichwertig zulässig, wo das Labor die Erregergruppe oder das Sequenzierziel im Code benennt.",
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
      "version" : "2.82",
      "concept" : [{
        "code" : "41852-5",
        "display" : "Microorganism or agent identified in Specimen"
      },
      {
        "code" : "23667-9",
        "display" : "Bacteria identified in Specimen"
      },
      {
        "code" : "42805-2",
        "display" : "Fungus identified in Specimen"
      },
      {
        "code" : "41461-5",
        "display" : "Virus identified in Specimen"
      },
      {
        "code" : "66885-5",
        "display" : "Bacteria identified based on 16S rRNA gene [Identifier] in Specimen by Sequencing"
      },
      {
        "code" : "101534-6",
        "display" : "Fungal 18s rRNA gene [Identifier] in Specimen by Sequencing"
      }]
    }]
  }
}

```
