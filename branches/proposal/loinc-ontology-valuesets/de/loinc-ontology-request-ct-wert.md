# LOINC Ontology – Anforderung Ct-Wert - MII Implementation Guide Microbiology v2027.0.0-ballot2

* [**Inhaltsverzeichnis**](toc.md)
* [**ValueSets**](value-sets.md)
* [**LOINC-Ontology-ValueSets (Vorschlag)**](loinc-ontology-valuesets.md)
* [**LOINC Ontology – ValueSets je Anforderung**](loinc-ontology-requests.md)
* **LOINC Ontology – Anforderung Ct-Wert**

## LOINC Ontology – Anforderung Ct-Wert

Diese Seite ist das Review-Material für die Anforderungsfamilie **Ct-Wert** des [LOINC-Ontology-Vorschlags](loinc-ontology-valuesets.md): jede Regel der Familie, wie die LOINC Ontology 2026-10-21 sie auflöst, zerlegt in ihre Attribute, mit den Codes, die sie auswählt, und dem, was das Release 2026-03-21 → 2026-10-21 geändert hat. Die Methode ist unter [Wie die ValueSets gebaut werden](loinc-ontology-method.md) erklärt; alle Familien stehen unter [ValueSets je Anforderung](loinc-ontology-requests.md).

| | | |
| :--- | :--- | :--- |
| Mikrobiologische Anforderung: Ct-Wert (MII KDS Mikrobiologie 2027, Profil MII_PR_Mikrobio_Ct_Wert, ValueSet MII_VS_Mikrobio_CT_Wert_LOINC = LOINC PROPERTY ThrNum (cycle threshold) in CLASS MICRO). Die Ontology bildet ThrNum auf Property = 1268648001 | Threshold number | ab; die gesuchte Nukleinsäure ist die Component. |

### Ct-Wert — Threshold number einer mikrobiellen Nukleinsäure

Cycle threshold einer Erreger-Nukleinsäure durch eine beliebige Amplifikationstechnik.

ValueSet [mii-vs-mikrobio-loinc-ontology-ct-value-microbial-nucleic-acid](ValueSet-mii-vs-mikrobio-loinc-ontology-ct-value-microbial-nucleic-acid.md). Gebunden durch das abgeleitete Profil [mii-pr-mikrobio-loinc-ontology-ct-wert](StructureDefinition-mii-pr-mikrobio-loinc-ontology-ct-wert.md).

```
<< 363787002 |Observable entity (observable entity)| : 370130000 |Property (attribute)| = 1268648001 |Threshold number (property) (qualifier value)|, 246093002 |Component (attribute)| = << 117174000 |Nucleic acid sequence with relative specificity for microorganism (substance)|

```

| | |
| :--- | :--- |
| Property | Threshold number |
| Component | `<< Nucleic acid sequence with relative specificity for microorganism` |

Die Regel wählt **40** Konzepte aus (40 mit LOINC-Code, 0 ohne). Unverändert zwischen 2026-03-21 und 2026-10-21.

#### Codes (40)

| | | | | | | |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| 101178-2 | Pneumocystis jirovecii DNA [Cycle Threshold #] in Respiratory system specimen by NAA with probe detection | Pneumocystis jirovecii DNA | Specimen from respiratory system | Threshold number | Quantitative value | Probe with target amplification |
| 105765-2 | Escherichia coli DNA [Cycle Threshold #] in Positive blood culture by NAA with probe detection | Escherichia coli DNA | – | Threshold number | Quantitative value | Probe with target amplification |
| 105767-8 | Proteus sp DNA [Cycle Threshold #] in Positive blood culture by NAA with probe detection | Proteus DNA | – | Threshold number | Quantitative value | Probe with target amplification |
| 105770-2 | Pseudomonas aeruginosa DNA [Cycle Threshold #] in Positive blood culture by NAA with probe detection | Pseudomonas aeruginosa DNA | – | Threshold number | Quantitative value | Probe with target amplification |
| 105771-0 | Neisseria meningitidis DNA [Cycle Threshold #] in Positive blood culture by NAA with probe detection | Neisseria meningitidis DNA | – | Threshold number | Quantitative value | Probe with target amplification |
| 105772-8 | Haemophilus influenzae DNA [Cycle Threshold #] in Positive blood culture by NAA with probe detection | Haemophilus influenzae DNA | – | Threshold number | Quantitative value | Probe with target amplification |
| 105774-4 | Bacteroides fragilis DNA [Cycle Threshold #] in Positive blood culture by NAA with probe detection | Bacteroides fragilis DNA | – | Threshold number | Quantitative value | Probe with target amplification |
| 105775-1 | Stenotrophomonas maltophilia DNA [Cycle Threshold #] in Positive blood culture by NAA with probe detection | Stenotrophomonas maltophilia DNA | – | Threshold number | Quantitative value | Probe with target amplification |
| 105776-9 | Enterobacterales DNA [Cycle Threshold #] in Positive blood culture by NAA with probe detection | Enterobacterales DNA | – | Threshold number | Quantitative value | Probe with target amplification |
| 105796-7 | Staphylococcus aureus DNA [Cycle Threshold #] in Positive blood culture by NAA with probe detection | Staphylococcus aureus DNA | – | Threshold number | Quantitative value | Probe with target amplification |
| 105797-5 | Staphylococcus epidermidis DNA [Cycle Threshold #] in Positive blood culture by NAA with probe detection | Staphylococcus epidermidis DNA | – | Threshold number | Quantitative value | Probe with target amplification |
| 105798-3 | Staphylococcus lugdunensis DNA [Cycle Threshold #] in Positive blood culture by NAA with probe detection | Staphylococcus lugdunensis DNA | – | Threshold number | Quantitative value | Probe with target amplification |
| 105800-7 | Streptococcus agalactiae DNA [Cycle Threshold #] in Positive blood culture by NAA with probe detection | Streptococcus agalactiae DNA | – | Threshold number | Quantitative value | Probe with target amplification |
| 105802-3 | Streptococcus pneumoniae DNA [Cycle Threshold #] in Positive blood culture by NAA with probe detection | Streptococcus pneumoniae DNA | – | Threshold number | Quantitative value | Probe with target amplification |
| 105803-1 | Streptococcus pyogenes DNA [Cycle Threshold #] in Positive blood culture by NAA with probe detection | Streptococcus pyogenes DNA | – | Threshold number | Quantitative value | Probe with target amplification |
| 105805-6 | Fusarium sp DNA [Cycle Threshold #] in Positive blood culture by NAA with probe detection | Fusarium DNA | – | Threshold number | Quantitative value | Probe with target amplification |
| 105806-4 | Candida auris DNA [Cycle Threshold #] in Positive blood culture by NAA with probe detection | Candidozyma auris DNA | – | Threshold number | Quantitative value | Probe with target amplification |
| 74038-1 | Influenza virus A H1 RNA [Cycle Threshold #] in Specimen by NAA with probe detection | Influenza A virus H1 RNA | Specimen | Threshold number | Quantitative value | Probe with target amplification |
| 74039-9 | Influenza virus A H3 RNA [Cycle Threshold #] in Specimen by NAA with probe detection | Influenza A virus H3 RNA | Specimen | Threshold number | Quantitative value | Probe with target amplification |
| 74040-7 | Influenza virus A N2 RNA [Cycle Threshold #] in Specimen by NAA with probe detection | Influenza A virus N2 RNA | Specimen | Threshold number | Quantitative value | Probe with target amplification |
| 74423-5 | Enterovirus RNA [Cycle Threshold #] in Specimen by NAA with probe detection | Enterovirus RNA | Specimen | Threshold number | Quantitative value | Probe with target amplification |
| 74424-3 | Enterovirus RNA [Cycle Threshold #] in Stool by NAA with probe detection | Enterovirus RNA | Stool specimen | Threshold number | Quantitative value | Probe with target amplification |
| 81305-5 | Influenza virus A H1 2009 pandemic RNA [Cycle Threshold #] in Respiratory system specimen by NAA with probe detection | Influenza A virus H1N1 RNA | Specimen from respiratory system | Threshold number | Quantitative value | Probe with target amplification |
| 81308-9 | Influenza virus A RNA [Cycle Threshold #] in Respiratory system specimen by NAA with probe detection | Influenza A virus RNA | Specimen from respiratory system | Threshold number | Quantitative value | Probe with target amplification |
| 81309-7 | Influenza virus B RNA [Cycle Threshold #] in Respiratory system specimen by NAA with probe detection | Influenza B virus RNA | Specimen from respiratory system | Threshold number | Quantitative value | Probe with target amplification |
| 81320-4 | Influenza virus A H5 Asian RNA [Cycle Threshold #] in Respiratory system specimen by Nucleic acid amplification using primer-probe set H5a | Influenza A virus H5 Asian lineage RNA | Specimen from respiratory system | Threshold number | Quantitative value | – |
| 81321-2 | Influenza virus A H5 Asian RNA [Cycle Threshold #] in Respiratory system specimen by Nucleic acid amplification using primer-probe set H5b | Influenza A virus H5 Asian lineage RNA | Specimen from respiratory system | Threshold number | Quantitative value | – |
| 81325-3 | Influenza virus B Yamagata lineage RNA [Cycle Threshold #] in Respiratory system specimen by NAA with probe detection | Betainfluenzavirus influenzae Yamagata lineage RNA | Specimen from respiratory system | Threshold number | Quantitative value | Probe with target amplification |
| 81327-9 | Influenza virus B Victoria lineage RNA [Cycle Threshold #] in Respiratory system specimen by NAA with probe detection | Betainfluenzavirus influenzae Victoria lineage RNA | Specimen from respiratory system | Threshold number | Quantitative value | Probe with target amplification |
| 86317-5 | Influenza virus A H1 2009 pandemic RNA [Cycle Threshold #] in Specimen by NAA with probe detection | Influenza A virus H1N1 RNA | Specimen | Threshold number | Quantitative value | Probe with target amplification |
| 86700-2 | Rotavirus C RNA [Cycle Threshold #] in Specimen by NAA with probe detection | Rotavirus tritogastroenteritidis RNA | Specimen | Threshold number | Quantitative value | Probe with target amplification |
| 86701-0 | Rotavirus A RNA [Cycle Threshold #] in Specimen by NAA with probe detection | Rotavirus alphagastroenteritidis RNA | Specimen | Threshold number | Quantitative value | Probe with target amplification |
| 86702-8 | Rotavirus B RNA [Cycle Threshold #] in Specimen by NAA with probe detection | Rotavirus betagastroenteritidis RNA | Specimen | Threshold number | Quantitative value | Probe with target amplification |
| 86731-7 | Leptospira sp DNA [Cycle Threshold #] in Specimen by NAA with probe detection | Leptospira DNA | Specimen | Threshold number | Quantitative value | Probe with target amplification |
| 87394-3 | Salmonella sp DNA [Cycle Threshold #] in Specimen by NAA with probe detection | Salmonella DNA | Specimen | Threshold number | Quantitative value | Probe with target amplification |
| 87395-0 | West Nile virus RNA [Cycle Threshold #] in Specimen by NAA with probe detection | West Nile virus RNA | Specimen | Threshold number | Quantitative value | Probe with target amplification |
| 90321-1 | Aichivirus C RNA [Cycle Threshold #] in Specimen by NAA with probe detection | Kobuvirus cebes RNA | Specimen | Threshold number | Quantitative value | Probe with target amplification |
| 90886-3 | Influenza virus B RNA [Cycle Threshold #] in Specimen by NAA with probe detection | Influenza B virus RNA | Specimen | Threshold number | Quantitative value | Probe with target amplification |
| 94745-7 | SARS-CoV-2 (COVID-19) RNA [Cycle Threshold #] in Respiratory system specimen by NAA with probe detection | Severe acute respiratory syndrome coronavirus 2 RNA | Specimen from respiratory system | Threshold number | Quantitative value | Probe with target amplification |
| 94746-5 | SARS-CoV-2 (COVID-19) RNA [Cycle Threshold #] in Specimen by NAA with probe detection | Severe acute respiratory syndrome coronavirus 2 RNA | Specimen | Threshold number | Quantitative value | Probe with target amplification |

### Ct-Wert — alle Threshold-number-Observables (Obergrenze)

Jedes Threshold-number-Observable, einschließlich humaner Ziele (RNase-P-Kontrolle, TREC, SMN1). Die Differenz zur Regel oben ist der nicht-mikrobiologische Rest.

ValueSet [mii-vs-mikrobio-loinc-ontology-ct-value-any](ValueSet-mii-vs-mikrobio-loinc-ontology-ct-value-any.md).

```
<< 363787002 |Observable entity (observable entity)| : 370130000 |Property (attribute)| = 1268648001 |Threshold number (property) (qualifier value)|

```

| | |
| :--- | :--- |
| Property | Threshold number |

Die Regel wählt **45** Konzepte aus (44 mit LOINC-Code, 1 ohne). Release 2026-03-21 → 2026-10-21: **+1 / −0** (Listen auf der Seite [Release-Delta](loinc-ontology-release-delta.md)).

#### Codes (45)

| | | | | | | |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| 101178-2 | Pneumocystis jirovecii DNA [Cycle Threshold #] in Respiratory system specimen by NAA with probe detection | Pneumocystis jirovecii DNA | Specimen from respiratory system | Threshold number | Quantitative value | Probe with target amplification |
| 105765-2 | Escherichia coli DNA [Cycle Threshold #] in Positive blood culture by NAA with probe detection | Escherichia coli DNA | – | Threshold number | Quantitative value | Probe with target amplification |
| 105767-8 | Proteus sp DNA [Cycle Threshold #] in Positive blood culture by NAA with probe detection | Proteus DNA | – | Threshold number | Quantitative value | Probe with target amplification |
| 105770-2 | Pseudomonas aeruginosa DNA [Cycle Threshold #] in Positive blood culture by NAA with probe detection | Pseudomonas aeruginosa DNA | – | Threshold number | Quantitative value | Probe with target amplification |
| 105771-0 | Neisseria meningitidis DNA [Cycle Threshold #] in Positive blood culture by NAA with probe detection | Neisseria meningitidis DNA | – | Threshold number | Quantitative value | Probe with target amplification |
| 105772-8 | Haemophilus influenzae DNA [Cycle Threshold #] in Positive blood culture by NAA with probe detection | Haemophilus influenzae DNA | – | Threshold number | Quantitative value | Probe with target amplification |
| 105774-4 | Bacteroides fragilis DNA [Cycle Threshold #] in Positive blood culture by NAA with probe detection | Bacteroides fragilis DNA | – | Threshold number | Quantitative value | Probe with target amplification |
| 105775-1 | Stenotrophomonas maltophilia DNA [Cycle Threshold #] in Positive blood culture by NAA with probe detection | Stenotrophomonas maltophilia DNA | – | Threshold number | Quantitative value | Probe with target amplification |
| 105776-9 | Enterobacterales DNA [Cycle Threshold #] in Positive blood culture by NAA with probe detection | Enterobacterales DNA | – | Threshold number | Quantitative value | Probe with target amplification |
| 105796-7 | Staphylococcus aureus DNA [Cycle Threshold #] in Positive blood culture by NAA with probe detection | Staphylococcus aureus DNA | – | Threshold number | Quantitative value | Probe with target amplification |
| 105797-5 | Staphylococcus epidermidis DNA [Cycle Threshold #] in Positive blood culture by NAA with probe detection | Staphylococcus epidermidis DNA | – | Threshold number | Quantitative value | Probe with target amplification |
| 105798-3 | Staphylococcus lugdunensis DNA [Cycle Threshold #] in Positive blood culture by NAA with probe detection | Staphylococcus lugdunensis DNA | – | Threshold number | Quantitative value | Probe with target amplification |
| 105800-7 | Streptococcus agalactiae DNA [Cycle Threshold #] in Positive blood culture by NAA with probe detection | Streptococcus agalactiae DNA | – | Threshold number | Quantitative value | Probe with target amplification |
| 105802-3 | Streptococcus pneumoniae DNA [Cycle Threshold #] in Positive blood culture by NAA with probe detection | Streptococcus pneumoniae DNA | – | Threshold number | Quantitative value | Probe with target amplification |
| 105803-1 | Streptococcus pyogenes DNA [Cycle Threshold #] in Positive blood culture by NAA with probe detection | Streptococcus pyogenes DNA | – | Threshold number | Quantitative value | Probe with target amplification |
| 105805-6 | Fusarium sp DNA [Cycle Threshold #] in Positive blood culture by NAA with probe detection | Fusarium DNA | – | Threshold number | Quantitative value | Probe with target amplification |
| 105806-4 | Candida auris DNA [Cycle Threshold #] in Positive blood culture by NAA with probe detection | Candidozyma auris DNA | – | Threshold number | Quantitative value | Probe with target amplification |
| 74038-1 | Influenza virus A H1 RNA [Cycle Threshold #] in Specimen by NAA with probe detection | Influenza A virus H1 RNA | Specimen | Threshold number | Quantitative value | Probe with target amplification |
| 74039-9 | Influenza virus A H3 RNA [Cycle Threshold #] in Specimen by NAA with probe detection | Influenza A virus H3 RNA | Specimen | Threshold number | Quantitative value | Probe with target amplification |
| 74040-7 | Influenza virus A N2 RNA [Cycle Threshold #] in Specimen by NAA with probe detection | Influenza A virus N2 RNA | Specimen | Threshold number | Quantitative value | Probe with target amplification |
| 74423-5 | Enterovirus RNA [Cycle Threshold #] in Specimen by NAA with probe detection | Enterovirus RNA | Specimen | Threshold number | Quantitative value | Probe with target amplification |
| 74424-3 | Enterovirus RNA [Cycle Threshold #] in Stool by NAA with probe detection | Enterovirus RNA | Stool specimen | Threshold number | Quantitative value | Probe with target amplification |
| 81305-5 | Influenza virus A H1 2009 pandemic RNA [Cycle Threshold #] in Respiratory system specimen by NAA with probe detection | Influenza A virus H1N1 RNA | Specimen from respiratory system | Threshold number | Quantitative value | Probe with target amplification |
| 81308-9 | Influenza virus A RNA [Cycle Threshold #] in Respiratory system specimen by NAA with probe detection | Influenza A virus RNA | Specimen from respiratory system | Threshold number | Quantitative value | Probe with target amplification |
| 81309-7 | Influenza virus B RNA [Cycle Threshold #] in Respiratory system specimen by NAA with probe detection | Influenza B virus RNA | Specimen from respiratory system | Threshold number | Quantitative value | Probe with target amplification |
| 81320-4 | Influenza virus A H5 Asian RNA [Cycle Threshold #] in Respiratory system specimen by Nucleic acid amplification using primer-probe set H5a | Influenza A virus H5 Asian lineage RNA | Specimen from respiratory system | Threshold number | Quantitative value | – |
| 81321-2 | Influenza virus A H5 Asian RNA [Cycle Threshold #] in Respiratory system specimen by Nucleic acid amplification using primer-probe set H5b | Influenza A virus H5 Asian lineage RNA | Specimen from respiratory system | Threshold number | Quantitative value | – |
| 81325-3 | Influenza virus B Yamagata lineage RNA [Cycle Threshold #] in Respiratory system specimen by NAA with probe detection | Betainfluenzavirus influenzae Yamagata lineage RNA | Specimen from respiratory system | Threshold number | Quantitative value | Probe with target amplification |
| 81326-1 | Human RNase P RNA [Cycle Threshold #] in Respiratory system specimen by NAA with probe detection | Human RNase P RNA | Specimen from respiratory system | Threshold number | Quantitative value | Probe with target amplification |
| 81327-9 | Influenza virus B Victoria lineage RNA [Cycle Threshold #] in Respiratory system specimen by NAA with probe detection | Betainfluenzavirus influenzae Victoria lineage RNA | Specimen from respiratory system | Threshold number | Quantitative value | Probe with target amplification |
| 86316-7 | Human RNase P RNA [Cycle Threshold #] in Specimen by NAA with probe detection | Human RNase P RNA | Specimen | Threshold number | Quantitative value | Probe with target amplification |
| 86317-5 | Influenza virus A H1 2009 pandemic RNA [Cycle Threshold #] in Specimen by NAA with probe detection | Influenza A virus H1N1 RNA | Specimen | Threshold number | Quantitative value | Probe with target amplification |
| 86700-2 | Rotavirus C RNA [Cycle Threshold #] in Specimen by NAA with probe detection | Rotavirus tritogastroenteritidis RNA | Specimen | Threshold number | Quantitative value | Probe with target amplification |
| 86701-0 | Rotavirus A RNA [Cycle Threshold #] in Specimen by NAA with probe detection | Rotavirus alphagastroenteritidis RNA | Specimen | Threshold number | Quantitative value | Probe with target amplification |
| 86702-8 | Rotavirus B RNA [Cycle Threshold #] in Specimen by NAA with probe detection | Rotavirus betagastroenteritidis RNA | Specimen | Threshold number | Quantitative value | Probe with target amplification |
| 86731-7 | Leptospira sp DNA [Cycle Threshold #] in Specimen by NAA with probe detection | Leptospira DNA | Specimen | Threshold number | Quantitative value | Probe with target amplification |
| 87394-3 | Salmonella sp DNA [Cycle Threshold #] in Specimen by NAA with probe detection | Salmonella DNA | Specimen | Threshold number | Quantitative value | Probe with target amplification |
| 87395-0 | West Nile virus RNA [Cycle Threshold #] in Specimen by NAA with probe detection | West Nile virus RNA | Specimen | Threshold number | Quantitative value | Probe with target amplification |
| 90321-1 | Aichivirus C RNA [Cycle Threshold #] in Specimen by NAA with probe detection | Kobuvirus cebes RNA | Specimen | Threshold number | Quantitative value | Probe with target amplification |
| 90886-3 | Influenza virus B RNA [Cycle Threshold #] in Specimen by NAA with probe detection | Influenza B virus RNA | Specimen | Threshold number | Quantitative value | Probe with target amplification |
| 92002-5 | SMN1 gene [Cycle Threshold #] in DBS by NAA with probe detection | SMN1 gene | Dried blood spot specimen | Threshold number | Quantitative value | Probe with target amplification |
| 92006-6 | T-cell receptor excision circle [Cycle Threshold #] in DBS | T-cell receptor excision circle | Dried blood spot specimen | Threshold number | Quantitative value | – |
| 94745-7 | SARS-CoV-2 (COVID-19) RNA [Cycle Threshold #] in Respiratory system specimen by NAA with probe detection | Severe acute respiratory syndrome coronavirus 2 RNA | Specimen from respiratory system | Threshold number | Quantitative value | Probe with target amplification |
| 94746-5 | SARS-CoV-2 (COVID-19) RNA [Cycle Threshold #] in Specimen by NAA with probe detection | Severe acute respiratory syndrome coronavirus 2 RNA | Specimen | Threshold number | Quantitative value | Probe with target amplification |
| SCT 1268647006 | Cycle threshold for nucleic acid detection in specimen using real-time polymerase chain reaction | Nucleic acid | Specimen | Threshold number | – | Polymerase chain reaction technique |

