# LOINC Ontology - Request Resistant organisms and resistance mechanisms - MII Implementation Guide Microbiology v2027.0.0-ballot2

* [**Table of Contents**](toc.md)
* [**Value Sets**](value-sets.md)
* [**LOINC Ontology ValueSets (Proposal)**](loinc-ontology-valuesets.md)
* [**LOINC Ontology - ValueSets per request**](loinc-ontology-requests.md)
* **LOINC Ontology - Request Resistant organisms and resistance mechanisms**

## LOINC Ontology - Request Resistant organisms and resistance mechanisms

This page is the review material for the request family **Resistant organisms and resistance mechanisms** of the [LOINC Ontology proposal](loinc-ontology-valuesets.md): every rule of the family as the LOINC Ontology 2026-10-21 resolves it, decomposed into its attributes, with the codes it selects and what the release 2026-03-21 → 2026-10-21 changed. The method is explained under [How the ValueSets are built](loinc-ontology-method.md); all families are listed under [ValueSets per request](loinc-ontology-requests.md).

Microbiology request: resistance mechanisms and determinants, MRGN, resistant organisms (MII KDS Mikrobiologie 2027, profiles MII_PR_Mikrobio_Resistenzmechanismen_Determinanten and MII_PR_Mikrobio_MRGN_Klasse, ValueSet MII_VS_Mikrobio_Resistenzmechanismen_Determinanten_LOINC = LOINC PROPERTY PrThr in CLASS ABXBACT plus six enumerated codes). FINDING: none of the six enumerated module codes (86930-5, 101673-2 … 101677-3) is in the LOINC Ontology 2026-10-21, and resistance GENES are modelled as plain nucleic-acid substances (702701010000106 'Messenger ribonucleic acid Bacteria mecA' is a child of 117174000 like any organism DNA) without a resistance grouper, so 'resistance determinant' is NOT expressible as an ECL. What is expressible: detection of an organism that SNOMED classifies as antimicrobial resistant (« 409793007: MRSA, VRE, carbapenem-resistant, MRGN-like groupers).

### Resistant-organism detection — presence/identity of an antimicrobial resistant organism

| | | |
| :--- | :--- | :--- |
| Threshold presence or identity where the organism (Component or Inheres in) is « 409793007 | Antimicrobial resistant bacteria | : MRSA, VRE, ESBL producers, carbapenem-resistant bacteria. Nucleic-acid codes such as 35492-8 (MRSA DNA) are NOT included because their Component is the DNA substance, which is not under the resistant-bacteria grouper. |

ValueSet [mii-vs-mikrobio-loinc-ontology-resistant-organism-detection](ValueSet-mii-vs-mikrobio-loinc-ontology-resistant-organism-detection.md). Bound by the derived profile [mii-pr-mikrobio-loinc-ontology-resistenzmechanismen](StructureDefinition-mii-pr-mikrobio-loinc-ontology-resistenzmechanismen.md).

```
<< 363787002 |Observable entity (observable entity)| : 370130000 |Property (attribute)| = (118589004 |Threshold (property) (qualifier value)| OR 705057003 |Presence (property) (qualifier value)| OR 118584009 |Presence or identity (property) (qualifier value)|), (246093002 |Component (attribute)| = << 409793007 |Antimicrobial resistant bacteria (organism)| OR 704319004 |Inheres in (attribute)| = << 409793007 |Antimicrobial resistant bacteria (organism)|)

```

| | |
| :--- | :--- |
| Property | Threshold OR Presence OR Presence or identity |
| Component OR Inheres in | `<< Antimicrobial resistant bacteria` |

The rule selects **16** concepts (16 with a LOINC code, 0 without). Unchanged between 2026-03-21 and 2026-10-21.

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

### Resistant organism — any observable about a resistant organism (upper bound)

Every observable whose Component or Inheres in is an antimicrobial resistant organism, any property (identity, threshold, counts, type).

ValueSet [mii-vs-mikrobio-loinc-ontology-resistant-organism-any-property](ValueSet-mii-vs-mikrobio-loinc-ontology-resistant-organism-any-property.md).

```
<< 363787002 |Observable entity (observable entity)| : (246093002 |Component (attribute)| = << 409793007 |Antimicrobial resistant bacteria (organism)| OR 704319004 |Inheres in (attribute)| = << 409793007 |Antimicrobial resistant bacteria (organism)|)

```

| | |
| :--- | :--- |
| Component OR Inheres in | `<< Antimicrobial resistant bacteria` |

The rule selects **16** concepts (16 with a LOINC code, 0 without). Unchanged between 2026-03-21 and 2026-10-21.

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

