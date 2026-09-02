# MII LM Mikrobio Untersuchungsarten - MII Implementation Guide Microbiology v2027.0.0-alpha.6

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII LM Mikrobio Untersuchungsarten**

## Logical Model: MII LM Mikrobio Untersuchungsarten 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-lm-mikrobio-untersuchungsarten | *Version*:2027.0.0-alpha.6 |
| Active as of 2026-09-02 | *Computable Name*:MII_LM_Mikrobio_Untersuchungsarten |

 
Fachliche Ausprägungen der mikrobiologischen Untersuchung für die grafische Darstellung des Mikrobiologie-Datenmodells 2027 [DE] 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.medizininformatikinitiative.kerndatensatz.mikrobiologie|current/StructureDefinition/StructureDefinition-mii-lm-mikrobio-untersuchungsarten.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots, and their representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-mii-lm-mikrobio-untersuchungsarten.csv), [Excel](../StructureDefinition-mii-lm-mikrobio-untersuchungsarten.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-lm-mikrobio-untersuchungsarten",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-lm-mikrobio-untersuchungsarten",
  "version" : "2027.0.0-alpha.6",
  "name" : "MII_LM_Mikrobio_Untersuchungsarten",
  "title" : "MII LM Mikrobio Untersuchungsarten",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-09-02T09:54:50+00:00",
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
  "description" : "Fachliche Ausprägungen der mikrobiologischen Untersuchung für die grafische Darstellung des Mikrobiologie-Datenmodells 2027 [DE]",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-lm-mikrobio-untersuchungsarten",
  "baseDefinition" : "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-lm-mikrobio-untersuchung",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "mii-lm-mikrobio-untersuchungsarten",
      "path" : "mii-lm-mikrobio-untersuchungsarten",
      "short" : "Mikrobiologische Untersuchungsarten",
      "definition" : "Die fachlichen Ausprägungen einer mikrobiologischen Untersuchung. Jede Ausprägung ergänzt die von MII_LM_Mikrobio_Untersuchung geerbten gemeinsamen Angaben um ihre spezifischen Attribute."
    },
    {
      "id" : "mii-lm-mikrobio-untersuchungsarten.Kultur",
      "path" : "mii-lm-mikrobio-untersuchungsarten.Kultur",
      "short" : "Kultur",
      "definition" : "Kulturbasierte und mikroskopische Untersuchungen sowie die daran anschließende Empfindlichkeitstestung.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "mii-lm-mikrobio-untersuchungsarten.Kultur.AllgemeineKultur",
      "path" : "mii-lm-mikrobio-untersuchungsarten.Kultur.AllgemeineKultur",
      "short" : "Allgemeine Kultur",
      "definition" : "Ergebnis einer nicht zielgerichteten mikrobiologischen Kultur, die prüft, ob in der Probe irgendein Mikroorganismus wächst.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "mii-lm-mikrobio-untersuchungsarten.Kultur.AllgemeineKultur.Untersuchungscode",
      "path" : "mii-lm-mikrobio-untersuchungsarten.Kultur.AllgemeineKultur.Untersuchungscode",
      "short" : "Untersuchungscode",
      "definition" : "Kodierung der Untersuchung; hier fest: Nachweis eines Mikroorganismus mittels Kultur (LOINC).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "mii-lm-mikrobio-untersuchungsarten.Kultur.AllgemeineKultur.Ergebnis",
      "path" : "mii-lm-mikrobio-untersuchungsarten.Kultur.AllgemeineKultur.Ergebnis",
      "short" : "Ergebnis",
      "definition" : "Wachstum oder kein Wachstum in der Probe (SNOMED CT). Ein unbestimmbares Ergebnis wird nicht hier, sondern über den Grund für fehlende Daten abgebildet.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "mii-lm-mikrobio-untersuchungsarten.Kultur.AllgemeineKultur.Untersuchungsmethode",
      "path" : "mii-lm-mikrobio-untersuchungsarten.Kultur.AllgemeineKultur.Untersuchungsmethode",
      "short" : "Untersuchungsmethode",
      "definition" : "Eingesetztes Kulturverfahren (SNOMED CT).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "mii-lm-mikrobio-untersuchungsarten.Kultur.SpezifischeKultur",
      "path" : "mii-lm-mikrobio-untersuchungsarten.Kultur.SpezifischeKultur",
      "short" : "Spezifische Kultur",
      "definition" : "Ergebnis einer zielgerichteten mikrobiologischen Kultur, die prüft, ob ein vordefinierter Mikroorganismus in der Probe wächst.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "mii-lm-mikrobio-untersuchungsarten.Kultur.SpezifischeKultur.Untersuchungscode",
      "path" : "mii-lm-mikrobio-untersuchungsarten.Kultur.SpezifischeKultur.Untersuchungscode",
      "short" : "Untersuchungscode",
      "definition" : "Kodierung des gesuchten Mikroorganismus und des Kulturverfahrens (LOINC).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "mii-lm-mikrobio-untersuchungsarten.Kultur.SpezifischeKultur.Ergebnis",
      "path" : "mii-lm-mikrobio-untersuchungsarten.Kultur.SpezifischeKultur.Ergebnis",
      "short" : "Ergebnis",
      "definition" : "Wachstum oder kein Wachstum des gesuchten Mikroorganismus (SNOMED CT). Ein unbestimmbares Ergebnis wird nicht hier, sondern über den Grund für fehlende Daten abgebildet.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "mii-lm-mikrobio-untersuchungsarten.Kultur.SpezifischeKultur.Untersuchungsmethode",
      "path" : "mii-lm-mikrobio-untersuchungsarten.Kultur.SpezifischeKultur.Untersuchungsmethode",
      "short" : "Untersuchungsmethode",
      "definition" : "Eingesetztes Kulturverfahren (SNOMED CT).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "mii-lm-mikrobio-untersuchungsarten.Kultur.Mikroskopie",
      "path" : "mii-lm-mikrobio-untersuchungsarten.Kultur.Mikroskopie",
      "short" : "Mikroskopie",
      "definition" : "Morphologische Beobachtung von Mikroorganismen mittels mikroskopischer Untersuchung, ohne taxonomische Identifikation.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "mii-lm-mikrobio-untersuchungsarten.Kultur.Mikroskopie.Untersuchungscode",
      "path" : "mii-lm-mikrobio-untersuchungsarten.Kultur.Mikroskopie.Untersuchungscode",
      "short" : "Untersuchungscode",
      "definition" : "Kodierung der Untersuchung; mikroskopische Beobachtung (LOINC).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "mii-lm-mikrobio-untersuchungsarten.Kultur.Mikroskopie.Ergebnis",
      "path" : "mii-lm-mikrobio-untersuchungsarten.Kultur.Mikroskopie.Ergebnis",
      "short" : "Ergebnis",
      "definition" : "Beobachtete Morphologie (SNOMED CT).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "mii-lm-mikrobio-untersuchungsarten.Kultur.Mikroskopie.Untersuchungsmethode",
      "path" : "mii-lm-mikrobio-untersuchungsarten.Kultur.Mikroskopie.Untersuchungsmethode",
      "short" : "Untersuchungsmethode",
      "definition" : "Eingesetztes mikroskopisches Verfahren einschließlich Färbetechnik, z. B. Gramfärbung (SNOMED CT).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "mii-lm-mikrobio-untersuchungsarten.Kultur.BarlettScore",
      "path" : "mii-lm-mikrobio-untersuchungsarten.Kultur.BarlettScore",
      "short" : "Barlett Score",
      "definition" : "Qualitative mikroskopische Beurteilung der Eignung von Sputumproben für die Kultur anhand des Verhältnisses von Entzündungs- zu Epithelzellen.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "mii-lm-mikrobio-untersuchungsarten.Kultur.BarlettScore.Untersuchungscode",
      "path" : "mii-lm-mikrobio-untersuchungsarten.Kultur.BarlettScore.Untersuchungscode",
      "short" : "Untersuchungscode",
      "definition" : "Kodierung der Untersuchung; hier fest: Barlett-Score (LOINC).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "mii-lm-mikrobio-untersuchungsarten.Kultur.BarlettScore.Ergebnis",
      "path" : "mii-lm-mikrobio-untersuchungsarten.Kultur.BarlettScore.Ergebnis",
      "short" : "Ergebnis",
      "definition" : "Score-Kategorie und daraus abgeleitete Eignung der Probe (LOINC).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "mii-lm-mikrobio-untersuchungsarten.Kultur.BarlettScore.Untersuchungsmethode",
      "path" : "mii-lm-mikrobio-untersuchungsarten.Kultur.BarlettScore.Untersuchungsmethode",
      "short" : "Untersuchungsmethode",
      "definition" : "Eingesetztes Verfahren; hier fest: Mikroskopie (SNOMED CT).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "mii-lm-mikrobio-untersuchungsarten.Kultur.NugentScore",
      "path" : "mii-lm-mikrobio-untersuchungsarten.Kultur.NugentScore",
      "short" : "Nugent Score",
      "definition" : "Gramfärbungs-basiertes semiquantitatives Punktesystem zur Beurteilung vaginaler Mikrobiotamuster bei bakterieller Vaginose.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "mii-lm-mikrobio-untersuchungsarten.Kultur.NugentScore.Untersuchungscode",
      "path" : "mii-lm-mikrobio-untersuchungsarten.Kultur.NugentScore.Untersuchungscode",
      "short" : "Untersuchungscode",
      "definition" : "Kodierung der Untersuchung; hier fest: Nugent-Score (LOINC).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "mii-lm-mikrobio-untersuchungsarten.Kultur.NugentScore.Ergebnis",
      "path" : "mii-lm-mikrobio-untersuchungsarten.Kultur.NugentScore.Ergebnis",
      "short" : "Ergebnis",
      "definition" : "Punktwert des Nugent-Scores (dimensionslos).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "mii-lm-mikrobio-untersuchungsarten.Kultur.NugentScore.Untersuchungsmethode",
      "path" : "mii-lm-mikrobio-untersuchungsarten.Kultur.NugentScore.Untersuchungsmethode",
      "short" : "Untersuchungsmethode",
      "definition" : "Eingesetztes Verfahren; hier fest: Mikroskopie (SNOMED CT).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "mii-lm-mikrobio-untersuchungsarten.Kultur.Keimzahl",
      "path" : "mii-lm-mikrobio-untersuchungsarten.Kultur.Keimzahl",
      "short" : "Keimzahl",
      "definition" : "Quantitative Bestimmung lebensfähiger Mikroorganismen in einer Probe als koloniebildende Einheiten pro Volumen oder Masse.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "mii-lm-mikrobio-untersuchungsarten.Kultur.Keimzahl.Untersuchungscode",
      "path" : "mii-lm-mikrobio-untersuchungsarten.Kultur.Keimzahl.Untersuchungscode",
      "short" : "Untersuchungscode",
      "definition" : "Kodierung der Keimzahlbestimmung (LOINC).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "mii-lm-mikrobio-untersuchungsarten.Kultur.Keimzahl.Ergebnis",
      "path" : "mii-lm-mikrobio-untersuchungsarten.Kultur.Keimzahl.Ergebnis",
      "short" : "Ergebnis",
      "definition" : "Gemessene Keimzahl mit Einheit, z. B. KBE/mL (UCUM).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "mii-lm-mikrobio-untersuchungsarten.Kultur.Keimzahl.Bewertung",
      "path" : "mii-lm-mikrobio-untersuchungsarten.Kultur.Keimzahl.Bewertung",
      "short" : "Bewertung",
      "definition" : "Semiquantitative Einordnung des Messwerts, z. B. geringes / mäßiges / reichliches Wachstum.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "mii-lm-mikrobio-untersuchungsarten.Kultur.Keimzahl.Untersuchungsmethode",
      "path" : "mii-lm-mikrobio-untersuchungsarten.Kultur.Keimzahl.Untersuchungsmethode",
      "short" : "Untersuchungsmethode",
      "definition" : "Eingesetztes Verfahren; hier fest: Auszählung (SNOMED CT).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "mii-lm-mikrobio-untersuchungsarten.Kultur.Empfindlichkeit",
      "path" : "mii-lm-mikrobio-untersuchungsarten.Kultur.Empfindlichkeit",
      "short" : "Empfindlichkeit",
      "definition" : "Ergebnis der phänotypischen Resistenztestung eines Erregers gegenüber einer antimikrobiellen Substanz unter Bezug auf ein Normsystem.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "mii-lm-mikrobio-untersuchungsarten.Kultur.Empfindlichkeit.Untersuchungscode",
      "path" : "mii-lm-mikrobio-untersuchungsarten.Kultur.Empfindlichkeit.Untersuchungscode",
      "short" : "Untersuchungscode",
      "definition" : "Getestete antimikrobielle Substanz und Testverfahren (LOINC). Es werden bevorzugt Codes ohne präkoordinierte Probenart verwendet.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "mii-lm-mikrobio-untersuchungsarten.Kultur.Empfindlichkeit.Ergebnis",
      "path" : "mii-lm-mikrobio-untersuchungsarten.Kultur.Empfindlichkeit.Ergebnis",
      "short" : "Ergebnis",
      "definition" : "Gemessener Wert der Empfindlichkeitstestung, z. B. minimale Hemmkonzentration in mg/L oder Hemmhofdurchmesser in mm (UCUM).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "mii-lm-mikrobio-untersuchungsarten.Kultur.Empfindlichkeit.Bewertung",
      "path" : "mii-lm-mikrobio-untersuchungsarten.Kultur.Empfindlichkeit.Bewertung",
      "short" : "Bewertung",
      "definition" : "Kategoriale Bewertung des Messwerts (sensibel / intermediär / resistent).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "mii-lm-mikrobio-untersuchungsarten.Kultur.Empfindlichkeit.Bewertung.Kategorie",
      "path" : "mii-lm-mikrobio-untersuchungsarten.Kultur.Empfindlichkeit.Bewertung.Kategorie",
      "short" : "Kategorie",
      "definition" : "Empfindlichkeitskategorie des getesteten Erregers.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "mii-lm-mikrobio-untersuchungsarten.Kultur.Empfindlichkeit.Bewertung.Norm",
      "path" : "mii-lm-mikrobio-untersuchungsarten.Kultur.Empfindlichkeit.Bewertung.Norm",
      "short" : "Norm",
      "definition" : "Normsystem einschließlich Version, auf dessen Grenzwerten die Kategorie beruht, z. B. EUCAST oder CLSI.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "mii-lm-mikrobio-untersuchungsarten.Bestimmung",
      "path" : "mii-lm-mikrobio-untersuchungsarten.Bestimmung",
      "short" : "Bestimmung",
      "definition" : "Identifikation bzw. Nachweis eines Mikroorganismus oder infektiösen Agens in einer Probe.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "mii-lm-mikrobio-untersuchungsarten.Bestimmung.AllgemeineBestimmung",
      "path" : "mii-lm-mikrobio-untersuchungsarten.Bestimmung.AllgemeineBestimmung",
      "short" : "Allgemeine Bestimmung",
      "definition" : "Identifikation eines Mikroorganismus oder infektiösen Agens ohne Einschränkung auf ein vordefiniertes Ziel.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "mii-lm-mikrobio-untersuchungsarten.Bestimmung.AllgemeineBestimmung.Untersuchungscode",
      "path" : "mii-lm-mikrobio-untersuchungsarten.Bestimmung.AllgemeineBestimmung.Untersuchungscode",
      "short" : "Untersuchungscode",
      "definition" : "Kodierung der Untersuchung; hier fest: Nachweis eines Mikroorganismus oder Agens in der Probe (LOINC).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "mii-lm-mikrobio-untersuchungsarten.Bestimmung.AllgemeineBestimmung.Ergebnis",
      "path" : "mii-lm-mikrobio-untersuchungsarten.Bestimmung.AllgemeineBestimmung.Ergebnis",
      "short" : "Ergebnis",
      "definition" : "Identifizierter Mikroorganismus bzw. identifiziertes Agens (SNOMED CT).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "mii-lm-mikrobio-untersuchungsarten.Bestimmung.AllgemeineBestimmung.Untersuchungsmethode",
      "path" : "mii-lm-mikrobio-untersuchungsarten.Bestimmung.AllgemeineBestimmung.Untersuchungsmethode",
      "short" : "Untersuchungsmethode",
      "definition" : "Eingesetztes Nachweis- bzw. Identifikationsverfahren (SNOMED CT).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "mii-lm-mikrobio-untersuchungsarten.Bestimmung.SpezifischeBestimmung",
      "path" : "mii-lm-mikrobio-untersuchungsarten.Bestimmung.SpezifischeBestimmung",
      "short" : "Spezifische Bestimmung",
      "definition" : "Qualitativer Nachweis eines vordefinierten mikrobiellen Ziels, kulturbasiert oder mittels molekularer, immunologischer oder biochemischer Verfahren.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "mii-lm-mikrobio-untersuchungsarten.Bestimmung.SpezifischeBestimmung.Untersuchungscode",
      "path" : "mii-lm-mikrobio-untersuchungsarten.Bestimmung.SpezifischeBestimmung.Untersuchungscode",
      "short" : "Untersuchungscode",
      "definition" : "Kodierung des gesuchten Ziels und des Testverfahrens (LOINC). Es werden bevorzugt Codes ohne präkoordinierte Probenart verwendet.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "mii-lm-mikrobio-untersuchungsarten.Bestimmung.SpezifischeBestimmung.Ergebnis",
      "path" : "mii-lm-mikrobio-untersuchungsarten.Bestimmung.SpezifischeBestimmung.Ergebnis",
      "short" : "Ergebnis",
      "definition" : "Nachweisergebnis für das gesuchte Ziel (SNOMED CT).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "mii-lm-mikrobio-untersuchungsarten.Bestimmung.SpezifischeBestimmung.Untersuchungsmethode",
      "path" : "mii-lm-mikrobio-untersuchungsarten.Bestimmung.SpezifischeBestimmung.Untersuchungsmethode",
      "short" : "Untersuchungsmethode",
      "definition" : "Eingesetztes Nachweisverfahren (SNOMED CT).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "mii-lm-mikrobio-untersuchungsarten.Bestimmung.CtWert",
      "path" : "mii-lm-mikrobio-untersuchungsarten.Bestimmung.CtWert",
      "short" : "Ct-Wert",
      "definition" : "Zyklusschwellenwert bei Nukleinsäurenachweisen, z. B. Echtzeit-PCR.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "mii-lm-mikrobio-untersuchungsarten.Bestimmung.CtWert.Untersuchungscode",
      "path" : "mii-lm-mikrobio-untersuchungsarten.Bestimmung.CtWert.Untersuchungscode",
      "short" : "Untersuchungscode",
      "definition" : "Kodierung des Ct-Werts für das jeweilige Ziel (LOINC). Es werden bevorzugt Codes ohne präkoordinierte Probenart verwendet.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "mii-lm-mikrobio-untersuchungsarten.Bestimmung.CtWert.Ergebnis",
      "path" : "mii-lm-mikrobio-untersuchungsarten.Bestimmung.CtWert.Ergebnis",
      "short" : "Ergebnis",
      "definition" : "Zyklusschwellenwert (dimensionslos).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "mii-lm-mikrobio-untersuchungsarten.Bestimmung.CtWert.Untersuchungsmethode",
      "path" : "mii-lm-mikrobio-untersuchungsarten.Bestimmung.CtWert.Untersuchungsmethode",
      "short" : "Untersuchungsmethode",
      "definition" : "Eingesetztes Verfahren; hier fest: Echtzeit-PCR (SNOMED CT).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "mii-lm-mikrobio-untersuchungsarten.Bestimmung.CtWert.AbgeleitetAus",
      "path" : "mii-lm-mikrobio-untersuchungsarten.Bestimmung.CtWert.AbgeleitetAus",
      "short" : "Abgeleitet aus",
      "definition" : "Untersuchung, aus der der Ct-Wert hervorgegangen ist, in der Regel die zugehörige spezifische Bestimmung.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-lm-mikrobio-untersuchung"]
      }]
    },
    {
      "id" : "mii-lm-mikrobio-untersuchungsarten.WeitereEigenschaften",
      "path" : "mii-lm-mikrobio-untersuchungsarten.WeitereEigenschaften",
      "short" : "Weitere Eigenschaften",
      "definition" : "Ergänzende Eigenschaften eines nachgewiesenen Erregers, insbesondere zu Virulenz und Resistenz.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "mii-lm-mikrobio-untersuchungsarten.WeitereEigenschaften.Virulenzfaktor",
      "path" : "mii-lm-mikrobio-untersuchungsarten.WeitereEigenschaften.Virulenzfaktor",
      "short" : "Virulenzfaktor",
      "definition" : "Qualitativer Nachweis oder Ausschluss von Virulenzdeterminanten in einer Probe.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "mii-lm-mikrobio-untersuchungsarten.WeitereEigenschaften.Virulenzfaktor.Untersuchungscode",
      "path" : "mii-lm-mikrobio-untersuchungsarten.WeitereEigenschaften.Virulenzfaktor.Untersuchungscode",
      "short" : "Untersuchungscode",
      "definition" : "Kodierung der untersuchten Virulenzdeterminante (LOINC).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "mii-lm-mikrobio-untersuchungsarten.WeitereEigenschaften.Virulenzfaktor.Ergebnis",
      "path" : "mii-lm-mikrobio-untersuchungsarten.WeitereEigenschaften.Virulenzfaktor.Ergebnis",
      "short" : "Ergebnis",
      "definition" : "Nachgewiesen oder nicht nachgewiesen (SNOMED CT).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "mii-lm-mikrobio-untersuchungsarten.WeitereEigenschaften.ResistenzmechanismenDeterminanten",
      "path" : "mii-lm-mikrobio-untersuchungsarten.WeitereEigenschaften.ResistenzmechanismenDeterminanten",
      "short" : "Resistenzmechanismus",
      "definition" : "Nachweis von Resistenzgenen oder Resistenzmutationen als Hinweis auf einen spezifischen Resistenzmechanismus.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "mii-lm-mikrobio-untersuchungsarten.WeitereEigenschaften.ResistenzmechanismenDeterminanten.Untersuchungscode",
      "path" : "mii-lm-mikrobio-untersuchungsarten.WeitereEigenschaften.ResistenzmechanismenDeterminanten.Untersuchungscode",
      "short" : "Untersuchungscode",
      "definition" : "Kodierung des untersuchten Resistenzgens bzw. Resistenzmechanismus (LOINC).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "mii-lm-mikrobio-untersuchungsarten.WeitereEigenschaften.ResistenzmechanismenDeterminanten.Ergebnis",
      "path" : "mii-lm-mikrobio-untersuchungsarten.WeitereEigenschaften.ResistenzmechanismenDeterminanten.Ergebnis",
      "short" : "Ergebnis",
      "definition" : "Nachgewiesen oder nicht nachgewiesen (SNOMED CT).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "mii-lm-mikrobio-untersuchungsarten.WeitereEigenschaften.ResistenzmechanismenDeterminanten.Untersuchungsmethode",
      "path" : "mii-lm-mikrobio-untersuchungsarten.WeitereEigenschaften.ResistenzmechanismenDeterminanten.Untersuchungsmethode",
      "short" : "Untersuchungsmethode",
      "definition" : "Eingesetztes Nachweisverfahren (SNOMED CT).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "mii-lm-mikrobio-untersuchungsarten.WeitereEigenschaften.MRGNKlasse",
      "path" : "mii-lm-mikrobio-untersuchungsarten.WeitereEigenschaften.MRGNKlasse",
      "short" : "MRGN Klasse",
      "definition" : "Einstufung multiresistenter gramnegativer Erreger entsprechend der RKI-Kategorisierung.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "mii-lm-mikrobio-untersuchungsarten.WeitereEigenschaften.MRGNKlasse.Untersuchungscode",
      "path" : "mii-lm-mikrobio-untersuchungsarten.WeitereEigenschaften.MRGNKlasse.Untersuchungscode",
      "short" : "Untersuchungscode",
      "definition" : "Kodierung der Untersuchung; hier fest: MRGN-Klassifikation (LOINC).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "mii-lm-mikrobio-untersuchungsarten.WeitereEigenschaften.MRGNKlasse.Ergebnis",
      "path" : "mii-lm-mikrobio-untersuchungsarten.WeitereEigenschaften.MRGNKlasse.Ergebnis",
      "short" : "Ergebnis",
      "definition" : "MRGN-Klasse, z. B. 3MRGN oder 4MRGN (LOINC).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "mii-lm-mikrobio-untersuchungsarten.WeitereEigenschaften.VoraussichtlicheEmpfindlichkeit",
      "path" : "mii-lm-mikrobio-untersuchungsarten.WeitereEigenschaften.VoraussichtlicheEmpfindlichkeit",
      "short" : "Voraussichtliche Empfindlichkeit",
      "definition" : "Aus genotypischen Nachweisen abgeleitete erwartete Empfindlichkeit oder Resistenz gegenüber antimikrobiellen Substanzen.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "mii-lm-mikrobio-untersuchungsarten.WeitereEigenschaften.VoraussichtlicheEmpfindlichkeit.Untersuchungscode",
      "path" : "mii-lm-mikrobio-untersuchungsarten.WeitereEigenschaften.VoraussichtlicheEmpfindlichkeit.Untersuchungscode",
      "short" : "Untersuchungscode",
      "definition" : "Betroffene antimikrobielle Substanz bzw. Substanzklasse (LOINC, genotypisch).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "mii-lm-mikrobio-untersuchungsarten.WeitereEigenschaften.VoraussichtlicheEmpfindlichkeit.Ergebnis",
      "path" : "mii-lm-mikrobio-untersuchungsarten.WeitereEigenschaften.VoraussichtlicheEmpfindlichkeit.Ergebnis",
      "short" : "Ergebnis",
      "definition" : "Erwartete Empfindlichkeit bzw. Resistenz.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "mii-lm-mikrobio-untersuchungsarten.WeitereEigenschaften.ResistenzkategorieStatus",
      "path" : "mii-lm-mikrobio-untersuchungsarten.WeitereEigenschaften.ResistenzkategorieStatus",
      "short" : "Resistenzkategorie Status",
      "definition" : "Aus den vorliegenden mikrobiologischen Untersuchungen abgeleitete Bewertung eines Erregers hinsichtlich einer definierten Resistenzkategorie, z. B. MRSA, VRE, LRE oder LVRE.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "mii-lm-mikrobio-untersuchungsarten.WeitereEigenschaften.ResistenzkategorieStatus.Untersuchungscode",
      "path" : "mii-lm-mikrobio-untersuchungsarten.WeitereEigenschaften.ResistenzkategorieStatus.Untersuchungscode",
      "short" : "Untersuchungscode",
      "definition" : "Bewertete Resistenzkategorie (MII-CodeSystem).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "mii-lm-mikrobio-untersuchungsarten.WeitereEigenschaften.ResistenzkategorieStatus.Ergebnis",
      "path" : "mii-lm-mikrobio-untersuchungsarten.WeitereEigenschaften.ResistenzkategorieStatus.Ergebnis",
      "short" : "Ergebnis",
      "definition" : "Positive oder Negative bezogen auf die im Untersuchungscode benannte Kategorie (SNOMED CT).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "mii-lm-mikrobio-untersuchungsarten.WeitereEigenschaften.ResistenzkategorieStatus.Grundlage",
      "path" : "mii-lm-mikrobio-untersuchungsarten.WeitereEigenschaften.ResistenzkategorieStatus.Grundlage",
      "short" : "Grundlage",
      "definition" : "Untersuchungen, aus denen die Bewertung abgeleitet wurde: Identifikation, Empfindlichkeit und Resistenzmechanismen.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "mii-lm-mikrobio-untersuchungsarten.WeitereEigenschaften.Aviditaet",
      "path" : "mii-lm-mikrobio-untersuchungsarten.WeitereEigenschaften.Aviditaet",
      "short" : "Aviditaet",
      "definition" : "Beurteilung der Bindungsstärke von Antikörpern an ein spezifisches Antigen, typischerweise zur Unterscheidung frischer von zurückliegenden Infektionen.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "mii-lm-mikrobio-untersuchungsarten.WeitereEigenschaften.Aviditaet.Untersuchungscode",
      "path" : "mii-lm-mikrobio-untersuchungsarten.WeitereEigenschaften.Aviditaet.Untersuchungscode",
      "short" : "Untersuchungscode",
      "definition" : "Kodierung des Aviditätstests einschließlich Zielantigen (LOINC).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "mii-lm-mikrobio-untersuchungsarten.WeitereEigenschaften.Aviditaet.Ergebnis",
      "path" : "mii-lm-mikrobio-untersuchungsarten.WeitereEigenschaften.Aviditaet.Ergebnis",
      "short" : "Ergebnis",
      "definition" : "Aviditätsindex in Prozent.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "mii-lm-mikrobio-untersuchungsarten.WeitereEigenschaften.Aviditaet.Bewertung",
      "path" : "mii-lm-mikrobio-untersuchungsarten.WeitereEigenschaften.Aviditaet.Bewertung",
      "short" : "Bewertung",
      "definition" : "Kategoriale Einordnung der Avidität, z. B. niedrig oder hoch.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "mii-lm-mikrobio-untersuchungsarten.WeitereEigenschaften.Aviditaet.Untersuchungsmethode",
      "path" : "mii-lm-mikrobio-untersuchungsarten.WeitereEigenschaften.Aviditaet.Untersuchungsmethode",
      "short" : "Untersuchungsmethode",
      "definition" : "Eingesetztes immunologisches Verfahren (SNOMED CT).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "mii-lm-mikrobio-untersuchungsarten.QuantitativeTests",
      "path" : "mii-lm-mikrobio-untersuchungsarten.QuantitativeTests",
      "short" : "Quantitative Tests",
      "definition" : "Quantitative Messungen erregerspezifischer Analyte.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "mii-lm-mikrobio-untersuchungsarten.QuantitativeTests.AntigenAntikoerperQuantitativ",
      "path" : "mii-lm-mikrobio-untersuchungsarten.QuantitativeTests.AntigenAntikoerperQuantitativ",
      "short" : "Antigen Antikoerper Tests",
      "definition" : "Quantitative Messung erregerspezifischer Antigene oder Antikörper mittels immunologischer Verfahren.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "mii-lm-mikrobio-untersuchungsarten.QuantitativeTests.AntigenAntikoerperQuantitativ.Untersuchungscode",
      "path" : "mii-lm-mikrobio-untersuchungsarten.QuantitativeTests.AntigenAntikoerperQuantitativ.Untersuchungscode",
      "short" : "Untersuchungscode",
      "definition" : "Kodierung des gemessenen Antigens bzw. Antikörpers (LOINC).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "mii-lm-mikrobio-untersuchungsarten.QuantitativeTests.AntigenAntikoerperQuantitativ.Ergebnis",
      "path" : "mii-lm-mikrobio-untersuchungsarten.QuantitativeTests.AntigenAntikoerperQuantitativ.Ergebnis",
      "short" : "Ergebnis",
      "definition" : "Gemessene Konzentration bzw. Aktivität mit Einheit (UCUM).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "mii-lm-mikrobio-untersuchungsarten.QuantitativeTests.AntigenAntikoerperQuantitativ.Untersuchungsmethode",
      "path" : "mii-lm-mikrobio-untersuchungsarten.QuantitativeTests.AntigenAntikoerperQuantitativ.Untersuchungsmethode",
      "short" : "Untersuchungsmethode",
      "definition" : "Eingesetztes immunologisches Verfahren (SNOMED CT).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "mii-lm-mikrobio-untersuchungsarten.QuantitativeTests.Titer",
      "path" : "mii-lm-mikrobio-untersuchungsarten.QuantitativeTests.Titer",
      "short" : "Titer",
      "definition" : "Semiquantitative Messung aus seriellen Verdünnungsreihen, berichtet als Verhältnis, z. B. 1:160.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "mii-lm-mikrobio-untersuchungsarten.QuantitativeTests.Titer.Untersuchungscode",
      "path" : "mii-lm-mikrobio-untersuchungsarten.QuantitativeTests.Titer.Untersuchungscode",
      "short" : "Untersuchungscode",
      "definition" : "Kodierung des Titertests (LOINC).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "mii-lm-mikrobio-untersuchungsarten.QuantitativeTests.Titer.Ergebnis",
      "path" : "mii-lm-mikrobio-untersuchungsarten.QuantitativeTests.Titer.Ergebnis",
      "short" : "Ergebnis",
      "definition" : "Titer als Verhältnis; der Zähler ist stets 1, der Nenner gibt die höchste noch reaktive Verdünnungsstufe an.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Ratio"
      }]
    },
    {
      "id" : "mii-lm-mikrobio-untersuchungsarten.QuantitativeTests.Titer.Untersuchungsmethode",
      "path" : "mii-lm-mikrobio-untersuchungsarten.QuantitativeTests.Titer.Untersuchungsmethode",
      "short" : "Untersuchungsmethode",
      "definition" : "Eingesetztes Verfahren der Verdünnungsreihe (SNOMED CT).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "mii-lm-mikrobio-untersuchungsarten.QuantitativeTests.MolekularePathogenlast",
      "path" : "mii-lm-mikrobio-untersuchungsarten.QuantitativeTests.MolekularePathogenlast",
      "short" : "Molekulare Pathogenlast",
      "definition" : "Quantitative Messung der Nukleinsäurekonzentration eines Erregers, typischerweise als Konzentration pro Volumen.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "mii-lm-mikrobio-untersuchungsarten.QuantitativeTests.MolekularePathogenlast.Untersuchungscode",
      "path" : "mii-lm-mikrobio-untersuchungsarten.QuantitativeTests.MolekularePathogenlast.Untersuchungscode",
      "short" : "Untersuchungscode",
      "definition" : "Kodierung der gemessenen Pathogenlast einschließlich Ziel (LOINC). Es werden bevorzugt Codes ohne präkoordinierte Probenart verwendet.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "mii-lm-mikrobio-untersuchungsarten.QuantitativeTests.MolekularePathogenlast.Ergebnis",
      "path" : "mii-lm-mikrobio-untersuchungsarten.QuantitativeTests.MolekularePathogenlast.Ergebnis",
      "short" : "Ergebnis",
      "definition" : "Gemessene Pathogenlast mit Einheit, z. B. Kopien/mL (UCUM).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "mii-lm-mikrobio-untersuchungsarten.QuantitativeTests.MolekularePathogenlast.Untersuchungsmethode",
      "path" : "mii-lm-mikrobio-untersuchungsarten.QuantitativeTests.MolekularePathogenlast.Untersuchungsmethode",
      "short" : "Untersuchungsmethode",
      "definition" : "Eingesetztes molekulares Verfahren (SNOMED CT).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    }]
  }
}

```
