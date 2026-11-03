# LOINC Ontology – Anforderung Resistente Erreger und Resistenzmechanismen - MII Implementation Guide Microbiology v2027.0.0-ballot2

* [**Inhaltsverzeichnis**](toc.md)
* [**ValueSets**](value-sets.md)
* [**LOINC-Ontology-ValueSets (Vorschlag)**](loinc-ontology-valuesets.md)
* [**LOINC Ontology – ValueSets je Anforderung**](loinc-ontology-requests.md)
* **LOINC Ontology – Anforderung Resistente Erreger und Resistenzmechanismen**

## LOINC Ontology – Anforderung Resistente Erreger und Resistenzmechanismen

Diese Seite ist das Review-Material für die Anforderungsfamilie **Resistente Erreger und Resistenzmechanismen** des [LOINC-Ontology-Vorschlags](loinc-ontology-valuesets.md): jede Regel der Familie, wie die LOINC Ontology 2026-10-21 sie auflöst, zerlegt in ihre Attribute, mit den Codes, die sie auswählt, und dem, was das Release 2026-03-21 → 2026-10-21 geändert hat. Die Methode ist unter [Wie die ValueSets gebaut werden](loinc-ontology-method.md) erklärt; alle Familien stehen unter [ValueSets je Anforderung](loinc-ontology-requests.md).

Mikrobiologische Anforderung: Resistenzmechanismen und Determinanten, MRGN, resistente Erreger (MII KDS Mikrobiologie 2027, Profile MII_PR_Mikrobio_Resistenzmechanismen_Determinanten und MII_PR_Mikrobio_MRGN_Klasse, ValueSet MII_VS_Mikrobio_Resistenzmechanismen_Determinanten_LOINC = LOINC PROPERTY PrThr in CLASS ABXBACT plus sechs aufgezählte Codes). BEFUND: Keiner der sechs aufgezählten Modulcodes (86930-5, 101673-2 … 101677-3) ist in der LOINC Ontology 2026-10-21, und Resistenz-GENE sind als gewöhnliche Nukleinsäure-Substanzen modelliert (702701010000106 „Messenger ribonucleic acid Bacteria mecA“ ist ein Kind von 117174000 wie jede Erreger-DNA) ohne Resistenz-Grouper; „Resistenzdeterminante“ ist als ECL daher NICHT ausdrückbar. Ausdrückbar ist: der Nachweis eines Erregers, den SNOMED als antimikrobiell resistent klassifiziert (« 409793007: MRSA, VRE, Carbapenem-resistent, MRGN-artige Grouper).

### Nachweis resistenter Erreger — Presence/Identität eines antimikrobiell resistenten Erregers

| | | |
| :--- | :--- | :--- |
| Threshold-Presence oder Identität, bei der der Erreger (Component oder Inheres in) « 409793007 | Antimicrobial resistant bacteria | ist: MRSA, VRE, ESBL-Bildner, Carbapenem-resistente Bakterien. Nukleinsäurecodes wie 35492-8 (MRSA-DNA) sind NICHT enthalten, weil ihre Component die DNA-Substanz ist, die nicht unter dem Grouper der resistenten Bakterien liegt. |

ValueSet [mii-vs-mikrobio-loinc-ontology-resistant-organism-detection](ValueSet-mii-vs-mikrobio-loinc-ontology-resistant-organism-detection.md). Gebunden durch das abgeleitete Profil [mii-pr-mikrobio-loinc-ontology-resistenzmechanismen](StructureDefinition-mii-pr-mikrobio-loinc-ontology-resistenzmechanismen.md).

```
<< 363787002 |Observable entity (observable entity)| : 370130000 |Property (attribute)| = (118589004 |Threshold (property) (qualifier value)| OR 705057003 |Presence (property) (qualifier value)| OR 118584009 |Presence or identity (property) (qualifier value)|), (246093002 |Component (attribute)| = << 409793007 |Antimicrobial resistant bacteria (organism)| OR 704319004 |Inheres in (attribute)| = << 409793007 |Antimicrobial resistant bacteria (organism)|)

```

| | |
| :--- | :--- |
| Property | Threshold OR Presence OR Presence or identity |
| Component OR Inheres in | `<< Antimicrobial resistant bacteria` |

Die Regel wählt **16** Konzepte aus (16 mit LOINC-Code, 0 ohne). Unverändert zwischen 2026-03-21 und 2026-10-21.

#### Codes (16)

| | | | | | | | |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| 100907-5 | Vancomycin resistant enterococcus [Identifier] in Specimen by Organism specific culture | – | Vancomycin resistant Enterococcus | Specimen | Presence or identity | Nominal value | Organism specific culture |
| 105904-7 | Vancomycin resistant enterococcus [Presence] in Specimen | Vancomycin resistant Enterococcus | – | Specimen | Threshold | Ordinal value | – |
| 106044-1 | Methicillin resistant Staphylococcus aureus [Presence] in Skin by Organism specific culture | Methicillin resistant Staphylococcus aureus | – | Specimen from skin | Threshold | Ordinal value | Organism specific culture |
| 106046-6 | Methicillin resistant Staphylococcus aureus [Presence] in Axilla by Organism specific culture | Methicillin resistant Staphylococcus aureus | – | – | Threshold | Ordinal value | Organism specific culture |
| 13316-5 | Vancomycin resistant enterococcus [Presence] in Specimen by Organism specific culture | Vancomycin resistant Enterococcus | – | Specimen | Threshold | Ordinal value | Organism specific culture |
| 13317-3 | Methicillin resistant Staphylococcus aureus [Presence] in Specimen by Organism specific culture | Methicillin resistant Staphylococcus aureus | – | Specimen | Threshold | Ordinal value | Organism specific culture |
| 52969-3 | Methicillin resistant Staphylococcus aureus [Presence] in Nose by Organism specific culture | Methicillin resistant Staphylococcus aureus | – | Specimen from nose | Threshold | Ordinal value | Organism specific culture |
| 53572-4 | Methicillin resistant Staphylococcus aureus [Presence] in Genital specimen by Organism specific culture | Methicillin resistant Staphylococcus aureus | – | Specimen from genital system | Threshold | Ordinal value | Organism specific culture |
| 59150-3 | Vancomycin resistant enterococcus [Presence] in Anal by Organism specific culture | Vancomycin resistant Enterococcus | – | Specimen from anus | Threshold | Ordinal value | Organism specific culture |
| 59151-1 | Vancomycin resistant enterococcus [Presence] in Urine by Organism specific culture | Vancomycin resistant Enterococcus | – | Urine specimen | Threshold | Ordinal value | Organism specific culture |
| 63480-8 | Pseudomonas aeruginosa.multidrug resistant isolate [Presence] in Specimen by Organism specific culture | Multidrug-resistant Pseudomonas aeruginosa | – | Specimen | Threshold | Ordinal value | Organism specific culture |
| 73834-4 | Bacteria.carbapenem resistant identified in Anal by Organism specific culture | – | Carbapenem-resistant bacteria | Specimen from anus | Presence or identity | Nominal value | Organism specific culture |
| 73836-9 | Bacteria.fluoroquinolone resistant identified in Anal by Organism specific culture | – | Fluoroquinolone resistant bacteria | Specimen from anus | Presence or identity | Nominal value | Organism specific culture |
| 76081-9 | Methicillin resistant Staphylococcus aureus [Presence] in Pharynx by Organism specific culture | Methicillin resistant Staphylococcus aureus | – | – | Threshold | Ordinal value | Organism specific culture |
| 77924-9 | Enterobacteriaceae.carbapenem resistant [Presence] in Anorectal or stool specimen by Organism specific culture | Carbapenem resistant Enterobacteriaceae | – | – | Threshold | Ordinal value | Organism specific culture |
| 94151-8 | Bacteria.carbapenem resistant identified in Specimen by Organism specific culture | – | Carbapenem-resistant bacteria | Specimen | Presence or identity | Nominal value | Organism specific culture |

### Resistenter Erreger — jedes Observable über einen resistenten Erreger (Obergrenze)

Jedes Observable, dessen Component oder Inheres in ein antimikrobiell resistenter Erreger ist, beliebige Property (Identität, Threshold, Zählungen, Typ).

ValueSet [mii-vs-mikrobio-loinc-ontology-resistant-organism-any-property](ValueSet-mii-vs-mikrobio-loinc-ontology-resistant-organism-any-property.md).

```
<< 363787002 |Observable entity (observable entity)| : (246093002 |Component (attribute)| = << 409793007 |Antimicrobial resistant bacteria (organism)| OR 704319004 |Inheres in (attribute)| = << 409793007 |Antimicrobial resistant bacteria (organism)|)

```

| | |
| :--- | :--- |
| Component OR Inheres in | `<< Antimicrobial resistant bacteria` |

Die Regel wählt **16** Konzepte aus (16 mit LOINC-Code, 0 ohne). Unverändert zwischen 2026-03-21 und 2026-10-21.

#### Codes (16)

| | | | | | | | |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| 100907-5 | Vancomycin resistant enterococcus [Identifier] in Specimen by Organism specific culture | – | Vancomycin resistant Enterococcus | Specimen | Presence or identity | Nominal value | Organism specific culture |
| 105904-7 | Vancomycin resistant enterococcus [Presence] in Specimen | Vancomycin resistant Enterococcus | – | Specimen | Threshold | Ordinal value | – |
| 106044-1 | Methicillin resistant Staphylococcus aureus [Presence] in Skin by Organism specific culture | Methicillin resistant Staphylococcus aureus | – | Specimen from skin | Threshold | Ordinal value | Organism specific culture |
| 106046-6 | Methicillin resistant Staphylococcus aureus [Presence] in Axilla by Organism specific culture | Methicillin resistant Staphylococcus aureus | – | – | Threshold | Ordinal value | Organism specific culture |
| 13316-5 | Vancomycin resistant enterococcus [Presence] in Specimen by Organism specific culture | Vancomycin resistant Enterococcus | – | Specimen | Threshold | Ordinal value | Organism specific culture |
| 13317-3 | Methicillin resistant Staphylococcus aureus [Presence] in Specimen by Organism specific culture | Methicillin resistant Staphylococcus aureus | – | Specimen | Threshold | Ordinal value | Organism specific culture |
| 52969-3 | Methicillin resistant Staphylococcus aureus [Presence] in Nose by Organism specific culture | Methicillin resistant Staphylococcus aureus | – | Specimen from nose | Threshold | Ordinal value | Organism specific culture |
| 53572-4 | Methicillin resistant Staphylococcus aureus [Presence] in Genital specimen by Organism specific culture | Methicillin resistant Staphylococcus aureus | – | Specimen from genital system | Threshold | Ordinal value | Organism specific culture |
| 59150-3 | Vancomycin resistant enterococcus [Presence] in Anal by Organism specific culture | Vancomycin resistant Enterococcus | – | Specimen from anus | Threshold | Ordinal value | Organism specific culture |
| 59151-1 | Vancomycin resistant enterococcus [Presence] in Urine by Organism specific culture | Vancomycin resistant Enterococcus | – | Urine specimen | Threshold | Ordinal value | Organism specific culture |
| 63480-8 | Pseudomonas aeruginosa.multidrug resistant isolate [Presence] in Specimen by Organism specific culture | Multidrug-resistant Pseudomonas aeruginosa | – | Specimen | Threshold | Ordinal value | Organism specific culture |
| 73834-4 | Bacteria.carbapenem resistant identified in Anal by Organism specific culture | – | Carbapenem-resistant bacteria | Specimen from anus | Presence or identity | Nominal value | Organism specific culture |
| 73836-9 | Bacteria.fluoroquinolone resistant identified in Anal by Organism specific culture | – | Fluoroquinolone resistant bacteria | Specimen from anus | Presence or identity | Nominal value | Organism specific culture |
| 76081-9 | Methicillin resistant Staphylococcus aureus [Presence] in Pharynx by Organism specific culture | Methicillin resistant Staphylococcus aureus | – | – | Threshold | Ordinal value | Organism specific culture |
| 77924-9 | Enterobacteriaceae.carbapenem resistant [Presence] in Anorectal or stool specimen by Organism specific culture | Carbapenem resistant Enterobacteriaceae | – | – | Threshold | Ordinal value | Organism specific culture |
| 94151-8 | Bacteria.carbapenem resistant identified in Specimen by Organism specific culture | – | Carbapenem-resistant bacteria | Specimen | Presence or identity | Nominal value | Organism specific culture |

