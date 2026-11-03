Diese Seite ist das Review-Material für die Anforderungsfamilie **Keimzahl** des [LOINC-Ontology-Vorschlags](loinc-ontology-valuesets.html): jede Regel der Familie, wie die LOINC Ontology 2026-10-21 sie auflöst, zerlegt in ihre Attribute, mit den Codes, die sie auswählt, und dem, was das Release 2026-03-21 → 2026-10-21 geändert hat. Die Methode ist unter [Wie die ValueSets gebaut werden](loinc-ontology-method.html) erklärt; alle Familien stehen unter [ValueSets je Anforderung](loinc-ontology-requests.html).

Mikrobiologische Anforderung: Keimzahl (MII KDS Mikrobiologie 2027, Profil MII_PR_Mikrobio_Keimzahl, ValueSet MII_VS_Mikrobio_Keimzahl_LOINC). Keiner der vier aufgezählten Modulcodes (49223-1, 564-5, 38436-2, 699-9) ist in der LOINC Ontology 2026-10-21; die ECL kann daher nur die Nachbarschaft zeigen: Anzahlkonzentrationen von Erregern (z. B. 485861010000102 „Number concentration of bacteria in urine“). Bei Zählungen ist der Erreger die Component.

### Keimzahl — Anzahlkonzentration eines Erregers

Anzahlkonzentration oder logarithmische Anzahlkonzentration, bei der das Gezählte ein Erreger ist (Component oder Inheres in).

ValueSet [mii-vs-mikrobio-loinc-ontology-colony-count-organism](ValueSet-mii-vs-mikrobio-loinc-ontology-colony-count-organism.html). Gebunden durch das abgeleitete Profil [mii-pr-mikrobio-loinc-ontology-keimzahl](StructureDefinition-mii-pr-mikrobio-loinc-ontology-keimzahl.html).

```
<< 363787002 |Observable entity (observable entity)| : 370130000 |Property (attribute)| = (118550005 |Number concentration (property) (qualifier value)| OR 705056007 |Logarithmic number concentration (property) (qualifier value)|), (246093002 |Component (attribute)| = << 410607006 |Organism (organism)| OR 704319004 |Inheres in (attribute)| = << 410607006 |Organism (organism)|)
```

| Attribut | Wert |
|---|---|
| Property | Number concentration OR Logarithmic number concentration |
| Component OR Inheres in | `<< Organism` |

Die Regel wählt **16** Konzepte aus (16 mit LOINC-Code, 0 ohne). Unverändert zwischen 2026-03-21 und 2026-10-21.

#### Codes (16)

| LOINC | Name | Component | Direct site | Property | Scale type | Technique |
|---|---|---|---|---|---|---|
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

### Keimzahl — mit ausgewiesener Kulturtechnik

Dasselbe, eingeschränkt auf Observables mit Kulturtechnik (Lebendkeimzahlen). Null am 2026-10-21: Zählungen sind ohne Technik modelliert.

ValueSet [mii-vs-mikrobio-loinc-ontology-colony-count-by-culture](ValueSet-mii-vs-mikrobio-loinc-ontology-colony-count-by-culture.html).

```
<< 363787002 |Observable entity (observable entity)| : 370130000 |Property (attribute)| = (118550005 |Number concentration (property) (qualifier value)| OR 705056007 |Logarithmic number concentration (property) (qualifier value)|), (246093002 |Component (attribute)| = << 410607006 |Organism (organism)| OR 704319004 |Inheres in (attribute)| = << 410607006 |Organism (organism)|), 246501002 |Technique (attribute)| = << 703725008 |Culture technique (qualifier value)|
```

| Attribut | Wert |
|---|---|
| Property | Number concentration OR Logarithmic number concentration |
| Component OR Inheres in | `<< Organism` |
| Technique | `<< Culture technique` |

Die Regel wählt **4** Konzepte aus (4 mit LOINC-Code, 0 ohne). Unverändert zwischen 2026-03-21 und 2026-10-21.

#### Codes (4)

| LOINC | Name | Component | Direct site | Property | Scale type | Technique |
|---|---|---|---|---|---|---|
| 100906-7 | Bacteria [#/volume] in Urine by Culture | Domain Bacteria | Urine specimen | Number concentration | Quantitative value | Microbial culture |
| 105610-0 | Bacteria [#/volume] in Bronchoalveolar lavage by Culture | Domain Bacteria | Bronchoalveolar lavage fluid specimen | Number concentration | Quantitative value | Microbial culture |
| 106018-5 | Bacteria [#/volume] in Semen by Culture | Domain Bacteria | Semen sample | Number concentration | Quantitative value | Microbial culture |
| 20696-1 | Bifidobacterium sp [#/volume] in Milk by Organism specific culture | Bifidobacterium | Milk specimen | Number concentration | Quantitative value | Organism specific culture |
