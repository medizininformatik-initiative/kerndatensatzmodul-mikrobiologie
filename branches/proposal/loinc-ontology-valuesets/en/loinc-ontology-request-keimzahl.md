# LOINC Ontology - Request Colony count - MII Implementation Guide Microbiology v2027.0.0-ballot2

* [**Table of Contents**](toc.md)
* [**Value Sets**](value-sets.md)
* [**LOINC Ontology ValueSets (Proposal)**](loinc-ontology-valuesets.md)
* [**LOINC Ontology - ValueSets per request**](loinc-ontology-requests.md)
* **LOINC Ontology - Request Colony count**

## LOINC Ontology - Request Colony count

This page is the review material for the request family **Colony count** of the [LOINC Ontology proposal](loinc-ontology-valuesets.md): every rule of the family as the LOINC Ontology 2026-10-21 resolves it, decomposed into its attributes, with the codes it selects and what the release 2026-03-21 → 2026-10-21 changed. The method is explained under [How the ValueSets are built](loinc-ontology-method.md); all families are listed under [ValueSets per request](loinc-ontology-requests.md).

Microbiology request: colony count (MII KDS Mikrobiologie 2027, profile MII_PR_Mikrobio_Keimzahl, ValueSet MII_VS_Mikrobio_Keimzahl_LOINC). None of the four enumerated module codes (49223-1, 564-5, 38436-2, 699-9) is in the LOINC Ontology 2026-10-21, so the ECL can only show the neighbourhood: number concentrations of organisms (e.g. 485861010000102 'Number concentration of bacteria in urine'). The organism is the Component for counts.

### Colony count — number concentration of an organism

Number concentration or logarithmic number concentration where the counted entity is an organism (Component or Inheres in).

ValueSet [mii-vs-mikrobio-loinc-ontology-colony-count-organism](ValueSet-mii-vs-mikrobio-loinc-ontology-colony-count-organism.md). Bound by the derived profile [mii-pr-mikrobio-loinc-ontology-keimzahl](StructureDefinition-mii-pr-mikrobio-loinc-ontology-keimzahl.md).

```
<< 363787002 |Observable entity (observable entity)| : 370130000 |Property (attribute)| = (118550005 |Number concentration (property) (qualifier value)| OR 705056007 |Logarithmic number concentration (property) (qualifier value)|), (246093002 |Component (attribute)| = << 410607006 |Organism (organism)| OR 704319004 |Inheres in (attribute)| = << 410607006 |Organism (organism)|)

```

| | |
| :--- | :--- |
| Property | Number concentration OR Logarithmic number concentration |
| Component OR Inheres in | `<< Organism` |

The rule selects **16** concepts (16 with a LOINC code, 0 without). Unchanged between 2026-03-21 and 2026-10-21.

#### Codes (16)

| | | | | | | |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| 100906-7 | Bacteria [#/volume] in Urine by Culture | Domain Bacteria | Urine specimen | Number concentration | Quantitative value | Microbial culture |
| 105610-0 | Bacteria [#/volume] in Bronchoalveolar lavage by Culture | Domain Bacteria | Bronchoalveolar lavage fluid specimen | Number concentration | Quantitative value | Microbial culture |
| 105907-0 | Bacteria [#/volume] in Urine | Domain Bacteria | Urine specimen | Number concentration | Quantitative value | – |
| 106018-5 | Bacteria [#/volume] in Semen by Culture | Domain Bacteria | Semen sample | Number concentration | Quantitative value | Microbial culture |
| 20695-3 | Bacteria [#/volume] in Mother's milk | Domain Bacteria | Mother's milk specimen | Number concentration | Quantitative value | – |
| 20696-1 | Bifidobacterium sp [#/volume] in Milk by Organism specific culture | Bifidobacterium | Milk specimen | Number concentration | Quantitative value | Organism specific culture |
| 20769-6 | Coliform bacteria [#/volume] in Water by Viability count | Coliform bacteria | Water specimen | Number concentration | Quantitative value | – |
| 20770-4 | Coliform bacteria [#/volume] by Viability count | Coliform bacteria | Specimen from environment | Number concentration | Quantitative value | – |
| 34890-4 | Coliform bacteria [#/volume] in Specimen by Viability count | Coliform bacteria | Specimen | Number concentration | Quantitative value | – |
| 43161-9 | Microorganism [#/volume] in Specimen by Viability count | Organism | Specimen | Number concentration | Quantitative value | – |
| 51480-2 | Bacteria [#/volume] in Urine by Automated count | Domain Bacteria | Urine specimen | Number concentration | Quantitative value | Automated count |
| 51481-0 | Yeast [#/volume] in Urine by Automated count | Yeast | Urine specimen | Number concentration | Quantitative value | Automated count |
| 53266-3 | Yeast.budding [#/volume] in Urine by Computer assisted method | Budding yeast | Urine specimen | Number concentration | Quantitative value | – |
| 53355-4 | Trichomonas sp [#/volume] in Urine by Computer assisted method | Trichomonas | Urine specimen | Number concentration | Quantitative value | – |
| 87317-4 | Escherichia coli [#/volume] in Water by Viability count | Escherichia coli | Water specimen | Number concentration | Quantitative value | – |
| 99923-5 | Schistosoma haematobium [#/volume] in Urine sediment by Computer assisted method | Schistosoma haematobium | Urine sediment specimen | Number concentration | Quantitative value | – |

### Colony count — with culture technique asserted

Same, restricted to observables that assert a culture technique (viable counts). Zero on 2026-10-21: counts are modelled without technique.

ValueSet [mii-vs-mikrobio-loinc-ontology-colony-count-by-culture](ValueSet-mii-vs-mikrobio-loinc-ontology-colony-count-by-culture.md).

```
<< 363787002 |Observable entity (observable entity)| : 370130000 |Property (attribute)| = (118550005 |Number concentration (property) (qualifier value)| OR 705056007 |Logarithmic number concentration (property) (qualifier value)|), (246093002 |Component (attribute)| = << 410607006 |Organism (organism)| OR 704319004 |Inheres in (attribute)| = << 410607006 |Organism (organism)|), 246501002 |Technique (attribute)| = << 703725008 |Culture technique (qualifier value)|

```

| | |
| :--- | :--- |
| Property | Number concentration OR Logarithmic number concentration |
| Component OR Inheres in | `<< Organism` |
| Technique | `<< Culture technique` |

The rule selects **4** concepts (4 with a LOINC code, 0 without). Unchanged between 2026-03-21 and 2026-10-21.

#### Codes (4)

| | | | | | | |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| 100906-7 | Bacteria [#/volume] in Urine by Culture | Domain Bacteria | Urine specimen | Number concentration | Quantitative value | Microbial culture |
| 105610-0 | Bacteria [#/volume] in Bronchoalveolar lavage by Culture | Domain Bacteria | Bronchoalveolar lavage fluid specimen | Number concentration | Quantitative value | Microbial culture |
| 106018-5 | Bacteria [#/volume] in Semen by Culture | Domain Bacteria | Semen sample | Number concentration | Quantitative value | Microbial culture |
| 20696-1 | Bifidobacterium sp [#/volume] in Milk by Organism specific culture | Bifidobacterium | Milk specimen | Number concentration | Quantitative value | Organism specific culture |

