# MII VS Mikrobio Morphologie Ergebnis [SNOMED] - MII Implementation Guide Microbiology v2027.0.0-ballot.rc1

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII VS Mikrobio Morphologie Ergebnis [SNOMED]**

## ValueSet: MII VS Mikrobio Morphologie Ergebnis [SNOMED] 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/ValueSet/mii-vs-mikrobio-morphologie-ergebnis-snomed | *Version*:2027.0.0-ballot.rc1 |
| Active Stand: 2026-09-10 | *Maschinenlesbarer Name*:MII_VS_Mikrobio_Morphologie_Ergebnis_SNOMED |

 
Ergebnis-ValueSet für die Mikroskopie: die mikroskopisch beobachtete morphologische Gruppe, etwa grampositive Kokken in Haufen oder gramnegative Stäbchen. Eine Speziesidentifizierung gehört nicht hierher, auch wenn sie mikroskopisch gestellt wurde. 

 **References** 

* [MII PR Mikrobio Allgemeine Mikroskopie](StructureDefinition-mii-pr-mikrobio-mikroskopie.md)

### Logical Definition (CLD)

 

### Expansion

No Expansion for this valueset (Unsupported Code System Version)

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-mikrobio-morphologie-ergebnis-snomed",
  "url" : "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/ValueSet/mii-vs-mikrobio-morphologie-ergebnis-snomed",
  "version" : "2027.0.0-ballot.rc1",
  "name" : "MII_VS_Mikrobio_Morphologie_Ergebnis_SNOMED",
  "title" : "MII VS Mikrobio Morphologie Ergebnis [SNOMED]",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-09-10T13:00:57+00:00",
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
  "description" : "Ergebnis-ValueSet für die Mikroskopie: die mikroskopisch beobachtete morphologische Gruppe, etwa grampositive Kokken in Haufen oder gramnegative Stäbchen. Eine Speziesidentifizierung gehört nicht hierher, auch wenn sie mikroskopisch gestellt wurde.",
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
        "code" : "61609004",
        "display" : "Gram-positive cocci in chains (finding)"
      },
      {
        "code" : "70003006",
        "display" : "Gram-positive cocci in clusters (finding)"
      },
      {
        "code" : "1359949003",
        "display" : "Gram-positive cocci in pair (finding)"
      },
      {
        "code" : "734444009",
        "display" : "Gram-positive cocci in chains, clusters, and pairs (finding)"
      },
      {
        "code" : "723529006",
        "display" : "Extracellular Gram-negative diplococcus (finding)"
      },
      {
        "code" : "734447002",
        "display" : "Intracellular Gram-negative diplococcus (finding)"
      },
      {
        "code" : "404509004",
        "display" : "Large gram-negative coccobacilli (finding)"
      },
      {
        "code" : "404510009",
        "display" : "Large gram-negative rods (finding)"
      },
      {
        "code" : "427824002",
        "display" : "Small Gram-negative rods (finding)"
      },
      {
        "code" : "59206002",
        "display" : "Gram-positive coccus (organism)"
      },
      {
        "code" : "18383003",
        "display" : "Gram-negative coccus (organism)"
      },
      {
        "code" : "83514008",
        "display" : "Gram-positive bacillus (organism)"
      },
      {
        "code" : "87172008",
        "display" : "Gram-negative bacillus (organism)"
      },
      {
        "code" : "11471007",
        "display" : "Gram-positive diplococcus (organism)"
      },
      {
        "code" : "115199003",
        "display" : "Subclass Irregular Non-Sporing Gram Positive Rods (organism)"
      },
      {
        "code" : "116442009",
        "display" : "Coryneform bacteria (organism)"
      },
      {
        "code" : "62093005",
        "display" : "Yeast (organism)"
      },
      {
        "code" : "404507002",
        "display" : "Hyphae of kingdom Fungi detected (finding)"
      },
      {
        "code" : "768480006",
        "display" : "Branching hyphae of kingdom Fungi detected (finding)"
      },
      {
        "code" : "768488004",
        "display" : "Broad irregular hyphae of kingdom Fungi detected (finding)"
      },
      {
        "code" : "768479008",
        "display" : "Narrow hyphae of kingdom Fungi detected (finding)"
      },
      {
        "code" : "768481005",
        "display" : "Nonbranching hyphae of kingdom Fungi detected (finding)"
      },
      {
        "code" : "719645005",
        "display" : "Nonseptate hyphae of kingdom Fungi detected (finding)"
      },
      {
        "code" : "719644009",
        "display" : "Septate hyphae of kingdom Fungi detected (finding)"
      },
      {
        "code" : "27863008",
        "display" : "No organisms seen (finding)"
      },
      {
        "code" : "721786009",
        "display" : "No cells seen (finding)"
      },
      {
        "code" : "250440009",
        "display" : "Clue cells present (finding)"
      }]
    }]
  }
}

```
