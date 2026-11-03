# LOINC Ontology – Anforderung Spezifische Bestimmung - MII Implementation Guide Microbiology v2027.0.0-ballot2

* [**Inhaltsverzeichnis**](toc.md)
* [**ValueSets**](value-sets.md)
* [**LOINC-Ontology-ValueSets (Vorschlag)**](loinc-ontology-valuesets.md)
* [**LOINC Ontology – ValueSets je Anforderung**](loinc-ontology-requests.md)
* **LOINC Ontology – Anforderung Spezifische Bestimmung**

## LOINC Ontology – Anforderung Spezifische Bestimmung

Diese Seite ist das Review-Material für die Anforderungsfamilie **Spezifische Bestimmung** des [LOINC-Ontology-Vorschlags](loinc-ontology-valuesets.md): jede Regel der Familie, wie die LOINC Ontology 2026-10-21 sie auflöst, zerlegt in ihre Attribute, mit den Codes, die sie auswählt, und dem, was das Release 2026-03-21 → 2026-10-21 geändert hat. Die Methode ist unter [Wie die ValueSets gebaut werden](loinc-ontology-method.md) erklärt; alle Familien stehen unter [ValueSets je Anforderung](loinc-ontology-requests.md).

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| Mikrobiologische Anforderung: spezifische Bestimmung = gezielter Nachweis eines benannten Erregers (MII KDS Mikrobiologie 2027, Profil MII_PR_Mikrobio_Spezifische_Bestimmung, ValueSet MII_VS_Mikrobio_Spezifische_Bestimmung_Tests_LOINC = LOINC CLASS MICRO mit PROPERTY Prid oder PrThr und molekularem METHOD_TYP). Drei Modellierungsmuster in der Ontology: (1) Nukleinsäurenachweis — Component = « 117174000 | Nucleic acid sequence with relative specificity for microorganism | (DNA/RNA des Erregers), Property = Threshold/Presence/Presence or identity, Technique = eine molekulare Technik oder KEINE (die „non-probe.amp.tar“-Codes tragen gar keine Technique; eine Technique-Klausel verliert sie stillschweigend); (2) gezielte Kultur — Technique = Organism specific culture technique mit dem Erreger als Component; (3) Antigennachweis — Component = « 116633006 | Microbial antigen | . Das Release 2026-10-21 ergänzt 585 Nukleinsäurenachweis-Observables (LOINC-2.83-Codes 104341-3, 1126xx-x …), fast alle „Threshold presence of DNA/RNA in specimen by molecular genetics“. |

### Nukleinsäurenachweis — beliebige oder keine Technik

Threshold-Presence / Presence / Identität einer mikrobiellen Nukleinsäure, unabhängig von der Technik. Die Referenzmenge für die Anforderung „spezifische Bestimmung“; enthält 35492-8 (MRSA-DNA by probe with target amplification).

ValueSet [mii-vs-mikrobio-loinc-ontology-naa-detection-any-technique](ValueSet-mii-vs-mikrobio-loinc-ontology-naa-detection-any-technique.md). Teil des Vereinigungs-ValueSets [mii-vs-mikrobio-loinc-ontology-spezifische-bestimmung](ValueSet-mii-vs-mikrobio-loinc-ontology-spezifische-bestimmung.md), gebunden durch das abgeleitete Profil [mii-pr-mikrobio-loinc-ontology-spezifische-bestimmung](StructureDefinition-mii-pr-mikrobio-loinc-ontology-spezifische-bestimmung.md).

```
<< 363787002 |Observable entity (observable entity)| : 370130000 |Property (attribute)| = (118589004 |Threshold (property) (qualifier value)| OR 705057003 |Presence (property) (qualifier value)| OR 118584009 |Presence or identity (property) (qualifier value)|), 246093002 |Component (attribute)| = << 117174000 |Nucleic acid sequence with relative specificity for microorganism (substance)|

```

| | |
| :--- | :--- |
| Property | Threshold OR Presence OR Presence or identity |
| Component | `<< Nucleic acid sequence with relative specificity for microorganism` |

Die Regel wählt **2507** Konzepte aus (2500 mit LOINC-Code, 7 ohne). Release 2026-03-21 → 2026-10-21: **+586 / −1** (Listen auf der Seite [Release-Delta](loinc-ontology-release-delta.md)).

#### Codes (2507)

| | | | | | | | |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| 100343-3 | Influenza virus B RNA [Presence] in Saliva (oral fluid) by NAA with probe detection | Influenza B virus RNA | – | Saliva specimen | Threshold | Ordinal value | Probe with target amplification |
| 100344-1 | Influenza virus A RNA [Presence] in Saliva (oral fluid) by NAA with probe detection | Influenza A virus RNA | – | Saliva specimen | Threshold | Ordinal value | Probe with target amplification |
| 100383-9 | Monkeypox virus DNA [Presence] in Specimen by NAA with probe detection | Orthopoxvirus monkeypox DNA | – | Specimen | Threshold | Ordinal value | Probe with target amplification |
| 100671-7 | Aspergillus sp DNA [Presence] in Blood by NAA with probe detection | Aspergillus DNA | – | Blood specimen | Threshold | Ordinal value | Probe with target amplification |
| 100672-5 | Aspergillus fumigatus DNA [Presence] in Blood by NAA with probe detection | Aspergillus fumigatus DNA | – | Blood specimen | Threshold | Ordinal value | Probe with target amplification |
| 100673-3 | Aspergillus terreus DNA [Presence] in Blood by NAA with probe detection | Aspergillus terreus DNA | – | Blood specimen | Threshold | Ordinal value | Probe with target amplification |
| 100700-4 | Trichomonas vaginalis DNA [Presence] in Urethra by NAA with probe detection | Trichomonas vaginalis DNA | – | Specimen from urethra | Threshold | Ordinal value | Probe with target amplification |
| 100701-2 | Trichomonas vaginalis rRNA [Presence] in Urethra by NAA with probe detection | Trichomonas vaginalis rRNA | – | Specimen from urethra | Threshold | Ordinal value | Probe with target amplification |
| 100702-0 | Mycoplasma genitalium rRNA [Presence] in Urethra by NAA with probe detection | Mycoplasma genitalium rRNA | – | Specimen from urethra | Threshold | Ordinal value | Probe with target amplification |
| 100703-8 | Mycoplasma genitalium rRNA [Presence] in Urine by NAA with probe detection | Mycoplasma genitalium rRNA | – | Urine specimen | Threshold | Ordinal value | Probe with target amplification |
| 100704-6 | Mycoplasma genitalium rRNA [Presence] in Cervix by NAA with probe detection | Mycoplasma genitalium rRNA | – | Specimen from uterine cervix | Threshold | Ordinal value | Probe with target amplification |
| 100705-3 | Mycoplasma genitalium rRNA [Presence] in Anorectal by NAA with probe detection | Mycoplasma genitalium rRNA | – | – | Threshold | Ordinal value | Probe with target amplification |
| 100706-1 | Mycoplasma genitalium rRNA [Presence] in Specimen by NAA with probe detection | Mycoplasma genitalium rRNA | – | Specimen | Threshold | Ordinal value | Probe with target amplification |
| 100885-3 | Parapoxvirus DNA [Presence] in Specimen by NAA with probe detection | Parapoxvirus DNA | – | Specimen | Threshold | Ordinal value | Probe with target amplification |
| 100886-1 | Orf virus DNA [Presence] in Specimen by NAA with probe detection | Parapoxvirus orf DNA | – | Specimen | Threshold | Ordinal value | Probe with target amplification |
| 100887-9 | Pseudocowpox virus DNA [Presence] in Specimen by NAA with probe detection | Pseudocowpox virus DNA | – | Specimen | Threshold | Ordinal value | Probe with target amplification |
| 100973-7 | Influenza virus A RNA [Presence] in Nose by NAA with non-probe detection | Influenza A virus RNA | – | Specimen from nose | Threshold | Ordinal value | – |
| 100974-5 | Influenza virus B RNA [Presence] in Nose by NAA with non-probe detection | Influenza B virus RNA | – | Specimen from nose | Threshold | Ordinal value | – |
| 100979-4 | Atopobium vaginae DNA [Presence] in Urine by NAA with probe detection | Atopobium vaginae DNA | – | Urine specimen | Threshold | Ordinal value | Probe with target amplification |
| 101219-4 | Legionella sp DNA [Presence] in Specimen by NAA with probe detection | Legionella DNA | – | Specimen | Threshold | Ordinal value | Probe with target amplification |
| 101284-8 | Bordetella pertussis DNA [Presence] in Nasopharynx by NAA with non-probe detection | Bordetella pertussis DNA | – | Specimen from nasopharynx | Threshold | Ordinal value | – |
| 101286-3 | Adenovirus DNA [Presence] in Throat by NAA with non-probe detection | Adenovirus DNA | – | Specimen from throat | Threshold | Ordinal value | – |
| 101287-1 | Chlamydophila pneumoniae DNA [Presence] in Throat by NAA with non-probe detection | Chlamydophila pneumoniae DNA | – | Specimen from throat | Threshold | Ordinal value | – |
| 101289-7 | SARS-CoV-2 (COVID-19) RNA [Presence] in Throat by NAA with non-probe detection | Severe acute respiratory syndrome coronavirus 2 RNA | – | Specimen from throat | Threshold | Ordinal value | – |
| 101290-5 | Human metapneumovirus RNA [Presence] in Throat by NAA with non-probe detection | Human metapneumovirus RNA | – | Specimen from throat | Threshold | Ordinal value | – |
| 101292-1 | Influenza virus A RNA [Presence] in Throat by NAA with non-probe detection | Influenza A virus RNA | – | Specimen from throat | Threshold | Ordinal value | – |
| 101293-9 | Influenza virus A H1 2009 pandemic RNA [Presence] in Throat by NAA with non-probe detection | Influenza A virus H1N1 RNA | – | Specimen from throat | Threshold | Ordinal value | – |
| 101294-7 | Influenza virus A H3 RNA [Presence] in Throat by NAA with non-probe detection | Influenza A virus H3 RNA | – | Specimen from throat | Threshold | Ordinal value | – |
| 101295-4 | Influenza virus B RNA [Presence] in Throat by NAA with non-probe detection | Influenza B virus RNA | – | Specimen from throat | Threshold | Ordinal value | – |
| 101296-2 | Mycoplasma pneumoniae DNA [Presence] in Throat by NAA with non-probe detection | Mycoplasma pneumoniae DNA | – | Specimen from throat | Threshold | Ordinal value | – |
| 101298-8 | Respiratory syncytial virus RNA [Presence] in Throat by NAA with non-probe detection | Human Respiratory syncytial virus RNA | – | Specimen from throat | Threshold | Ordinal value | – |
| 101299-6 | Streptococcus dysgalactiae subspecies equisimilis DNA [Presence] in Throat by NAA with non-probe detection | Streptococcus dysgalactiae equisimilis DNA | – | Specimen from throat | Threshold | Ordinal value | – |
| 101300-2 | Streptococcus pyogenes DNA [Presence] in Throat by NAA with non-probe detection | Streptococcus pyogenes DNA | – | Specimen from throat | Threshold | Ordinal value | – |
| 101302-8 | Leptospira sp DNA [Presence] in Blood by NAA with non-probe detection | Leptospira DNA | – | Blood specimen | Threshold | Ordinal value | – |
| 101303-6 | Chikungunya virus RNA [Presence] in Blood by NAA with non-probe detection | Chikungunya virus RNA | – | Blood specimen | Threshold | Ordinal value | – |
| 101305-1 | Plasmodium sp DNA [Presence] in Blood by NAA with non-probe detection | Plasmodium DNA | – | Blood specimen | Threshold | Ordinal value | – |
| 101306-9 | Plasmodium falciparum DNA [Presence] in Blood by NAA with non-probe detection | Plasmodium falciparum DNA | – | Blood specimen | Threshold | Ordinal value | – |
| 101340-8 | Aeromonas sp DNA [Presence] in Stool by NAA with probe detection | Aeromonas DNA | – | Stool specimen | Threshold | Ordinal value | Probe with target amplification |
| 101345-7 | Candida krusei DNA [Presence] in Specimen by NAA with probe detection | Candida krusei DNA | – | Specimen | Threshold | Ordinal value | Probe with target amplification |
| 101362-2 | Bacillus anthracis DNA [Presence] in Blood by NAA with non-probe detection | Bacillus anthracis DNA | – | Blood specimen | Threshold | Ordinal value | – |
| 101363-0 | Yersinia pestis DNA [Presence] in Blood by NAA with non-probe detection | Yersinia pestis DNA | – | Blood specimen | Threshold | Ordinal value | – |
| 101364-8 | Francisella tularensis DNA [Presence] in Blood by NAA with non-probe detection | Francisella tularensis DNA | – | Blood specimen | Threshold | Ordinal value | – |
| 101365-5 | Coxiella burnetii DNA [Presence] in Blood by NAA with non-probe detection | Coxiella burnetii DNA | – | Blood specimen | Threshold | Ordinal value | – |
| 101366-3 | Ebola virus RNA [Presence] in Blood by NAA with non-probe detection | Ebola virus RNA | – | Blood specimen | Threshold | Ordinal value | – |
| 101367-1 | Marburg virus RNA [Presence] in Blood by NAA with non-probe detection | Marburg virus RNA | – | Blood specimen | Threshold | Ordinal value | – |
| 101368-9 | Bacillus anthracis DNA [Presence] by NAA with non-probe detection in Positive blood culture | Bacillus anthracis DNA | – | – | Threshold | Ordinal value | – |
| 101371-3 | Yersinia pestis DNA [Presence] by NAA with non-probe detection in Positive blood culture | Yersinia pestis DNA | – | – | Threshold | Ordinal value | – |
| 101372-1 | Yersinia pestis DNA [Presence] in Sputum by NAA with non-probe detection | Yersinia pestis DNA | – | Sputum specimen | Threshold | Ordinal value | – |
| 101373-9 | Francisella tularensis DNA [Presence] in Sputum by NAA with non-probe detection | Francisella tularensis DNA | – | Sputum specimen | Threshold | Ordinal value | – |
| 101406-7 | Sudan virus RNA [Presence] in Blood by NAA with probe detection | Orthoebolavirus sudanense RNA | – | Blood specimen | Threshold | Ordinal value | Probe with target amplification |
| 101419-0 | Human coronavirus 229E RNA [Presence] in Respiratory system specimen by NAA with probe detection | Human coronavirus 229E RNA | – | Specimen from respiratory system | Threshold | Ordinal value | Probe with target amplification |
| 101420-8 | Human coronavirus HKU1 RNA [Presence] in Respiratory system specimen by NAA with probe detection | Human coronavirus HKU1 RNA | – | Specimen from respiratory system | Threshold | Ordinal value | Probe with target amplification |
| 101421-6 | Human coronavirus NL63 RNA [Presence] in Respiratory system specimen by NAA with probe detection | Human coronavirus NL63 RNA | – | Specimen from respiratory system | Threshold | Ordinal value | Probe with target amplification |
| 101422-4 | Human coronavirus OC43 RNA [Presence] in Respiratory system specimen by NAA with probe detection | Human coronavirus OC43 RNA | – | Specimen from respiratory system | Threshold | Ordinal value | Probe with target amplification |
| 101423-2 | Influenza virus A H1 RNA [Presence] in Respiratory system specimen by NAA with probe detection | Influenza A virus H1 RNA | – | Specimen from respiratory system | Threshold | Ordinal value | Probe with target amplification |
| 101424-0 | Influenza virus A H3 RNA [Presence] in Respiratory system specimen by NAA with probe detection | Influenza A virus H3 RNA | – | Specimen from respiratory system | Threshold | Ordinal value | Probe with target amplification |
| 101425-7 | Respiratory syncytial virus A RNA [Presence] in Respiratory system specimen by NAA with probe detection | Human respiratory syncytial virus A RNA | – | Specimen from respiratory system | Threshold | Ordinal value | Probe with target amplification |
| 101426-5 | Respiratory syncytial virus B RNA [Presence] in Respiratory system specimen by NAA with probe detection | Human respiratory syncytial virus B RNA | – | Specimen from respiratory system | Threshold | Ordinal value | Probe with target amplification |
| 101427-3 | Shigella sp DNA [Presence] in Stool by NAA with probe detection | Shigella DNA | – | Stool specimen | Threshold | Ordinal value | Probe with target amplification |
| 101428-1 | Varicella zoster virus DNA [Presence] in Respiratory system specimen by NAA with probe detection | Varicella virus DNA | – | Specimen from respiratory system | Threshold | Ordinal value | Probe with target amplification |
| 101552-8 | Campylobacter coli DNA [Presence] in Stool by NAA with probe detection | Campylobacter coli DNA | – | Stool specimen | Threshold | Ordinal value | Probe with target amplification |
| 101553-6 | Aeromonas hydrophila DNA [Presence] in Stool by NAA with probe detection | Aeromonas hydrophila DNA | – | Stool specimen | Threshold | Ordinal value | Probe with target amplification |
| 101554-4 | Campylobacter jejuni DNA [Presence] in Stool by NAA with probe detection | Campylobacter jejuni DNA | – | Stool specimen | Threshold | Ordinal value | Probe with target amplification |
| 101555-1 | Campylobacter upsaliensis DNA [Presence] in Stool by NAA with probe detection | Campylobacter upsaliensis DNA | – | Stool specimen | Threshold | Ordinal value | Probe with target amplification |
| 101556-9 | Candida krusei DNA [Presence] in Urine by NAA with probe detection | Candida krusei DNA | – | Urine specimen | Threshold | Ordinal value | Probe with target amplification |
| 101557-7 | Clostridioides difficile DNA [Presence] in Stool by NAA with probe detection | Clostridium difficile DNA | – | Stool specimen | Threshold | Ordinal value | Probe with target amplification |
| 101558-5 | Escherichia coli enteroinvasive DNA [Presence] in Stool by NAA with probe detection | Enteroinvasive Escherichia coli DNA | – | Stool specimen | Threshold | Ordinal value | Probe with target amplification |
| 101559-3 | Listeria monocytogenes DNA [Presence] in Stool by NAA with probe detection | Listeria monocytogenes DNA | – | Stool specimen | Threshold | Ordinal value | Probe with target amplification |
| 101560-1 | Rotavirus B RNA [Presence] in Stool by NAA with probe detection | Rotavirus betagastroenteritidis RNA | – | Stool specimen | Threshold | Ordinal value | Probe with target amplification |
| 101561-9 | Rotavirus C RNA [Presence] in Stool by NAA with probe detection | Rotavirus tritogastroenteritidis RNA | – | Stool specimen | Threshold | Ordinal value | Probe with target amplification |
| 101563-5 | Sapovirus genogroup V RNA [Presence] in Stool by NAA with probe detection | Sapovirus genogroup V RNA | – | Stool specimen | Threshold | Ordinal value | Probe with target amplification |
| 101744-1 | Toxoplasma gondii DNA [Presence] in Plasma by NAA with probe detection | Toxoplasma gondii DNA | – | Plasma specimen | Threshold | Ordinal value | Probe with target amplification |
| 101749-0 | Borrelia miyamotoi DNA [Presence] in Blood by NAA with probe detection | Borrelia miyamotoi DNA | – | Blood specimen | Threshold | Ordinal value | Probe with target amplification |
| 101754-0 | Trichophyton tonsurans DNA [Presence] in Specimen by NAA with probe detection | Trichophyton tonsurans DNA | – | Specimen | Threshold | Ordinal value | Probe with target amplification |
| 101755-7 | Trichophyton equinum DNA [Presence] in Specimen by NAA with probe detection | Trichophyton equinum DNA | – | Specimen | Threshold | Ordinal value | Probe with target amplification |
| 101756-5 | Trichophyton interdigitale DNA [Presence] in Specimen by NAA with probe detection | Trichophyton interdigitale DNA | – | Specimen | Threshold | Ordinal value | Probe with target amplification |
| 101757-3 | Trichophyton mentagrophytes DNA [Presence] in Specimen by NAA with probe detection | Trichophyton mentagrophytes DNA | – | Specimen | Threshold | Ordinal value | Probe with target amplification |
| 101758-1 | Trichophyton quinckeanum DNA [Presence] in Specimen by NAA with probe detection | Trichophyton quinckeanum DNA | – | Specimen | Threshold | Ordinal value | Probe with target amplification |
| 101759-9 | Trichophyton schoenleinii DNA [Presence] in Specimen by NAA with probe detection | Trichophyton schoenleinii DNA | – | Specimen | Threshold | Ordinal value | Probe with target amplification |
| 101760-7 | Trichophyton simii DNA [Presence] in Specimen by NAA with probe detection | Trichophyton simii DNA | – | Specimen | Threshold | Ordinal value | Probe with target amplification |
| 101761-5 | Trichophyton concentricum DNA [Presence] in Specimen by NAA with probe detection | Trichophyton concentricum DNA | – | Specimen | Threshold | Ordinal value | Probe with target amplification |
| 101762-3 | Trichophyton bullosum DNA [Presence] in Specimen by NAA with probe detection | Trichophyton bullosum DNA | – | Specimen | Threshold | Ordinal value | Probe with target amplification |
| 101766-4 | Trichophyton erinacei DNA [Presence] in Specimen by NAA with probe detection | Trichophyton erinacei DNA | – | Specimen | Threshold | Ordinal value | Probe with target amplification |
| 101767-2 | Trichophyton verrucosum DNA [Presence] in Specimen by NAA with probe detection | Trichophyton verrucosum DNA | – | Specimen | Threshold | Ordinal value | Probe with target amplification |
| 101768-0 | Trichophyton eriotrephon DNA [Presence] in Specimen by NAA with probe detection | Trichophyton eriotrephon DNA | – | Specimen | Threshold | Ordinal value | Probe with target amplification |
| 101769-8 | Trichophyton rubrum DNA [Presence] in Specimen by NAA with probe detection | Trichophyton rubrum DNA | – | Specimen | Threshold | Ordinal value | Probe with target amplification |
| 101770-6 | Trichophyton violaceum DNA [Presence] in Specimen by NAA with probe detection | Trichophyton violaceum DNA | – | Specimen | Threshold | Ordinal value | Probe with target amplification |
| 101771-4 | Epidermophyton floccosum DNA [Presence] in Specimen by NAA with probe detection | Epidermophyton floccosum DNA | – | Specimen | Threshold | Ordinal value | Probe with target amplification |
| 101772-2 | Microsporum canis DNA [Presence] in Specimen by NAA with probe detection | Microsporum canis DNA | – | Specimen | Threshold | Ordinal value | Probe with target amplification |
| 101773-0 | Microsporum audouinii DNA [Presence] in Specimen by NAA with probe detection | Microsporum audouinii DNA | – | Specimen | Threshold | Ordinal value | Probe with target amplification |
| 101774-8 | Microsporum ferrugineum DNA [Presence] in Specimen by NAA with probe detection | Microsporum ferrugineum DNA | – | Specimen | Threshold | Ordinal value | Probe with target amplification |
| 101775-5 | Nannizzia fulva DNA [Presence] in Specimen by NAA with probe detection | Nannizzia fulva DNA | – | Specimen | Threshold | Ordinal value | Probe with target amplification |
| 101776-3 | Nannizzia gypsea DNA [Presence] in Specimen by NAA with probe detection | Nannizzia gypsea DNA | – | Specimen | Threshold | Ordinal value | Probe with target amplification |
| 101777-1 | Nannizzia incurvata DNA [Presence] in Specimen by NAA with probe detection | Nannizzia incurvata DNA | – | Specimen | Threshold | Ordinal value | Probe with target amplification |
| 101778-9 | Nannizzia persicolor DNA [Presence] in Specimen by NAA with probe detection | Nannizzia persicolor DNA | – | Specimen | Threshold | Ordinal value | Probe with target amplification |
| 101781-3 | Candida guilliermondii DNA [Presence] in Specimen by NAA with probe detection | Meyerozyma guilliermondii DNA | – | Specimen | Threshold | Ordinal value | Probe with target amplification |
| 101783-9 | Fusarium oxysporum DNA [Presence] in Specimen by NAA with probe detection | Fusarium oxysporum DNA | – | Specimen | Threshold | Ordinal value | Probe with target amplification |
| 101784-7 | Scopulariopsis brevicaulis DNA [Presence] in Specimen by NAA with probe detection | Scopulariopsis brevicaulis DNA | – | Specimen | Threshold | Ordinal value | Probe with target amplification |
| 101786-2 | Toxoplasma gondii DNA [Presence] in Serum by RT-PCR | Toxoplasma gondii DNA | – | Serum specimen | Threshold | Ordinal value | Probe with target amplification |
| 101936-3 | Candida albicans DNA [Presence] in Specimen by NAA with probe detection | Candida albicans DNA | – | Specimen | Threshold | Ordinal value | Probe with target amplification |
| 101938-9 | Candida dubliniensis DNA [Presence] in Specimen by NAA with probe detection | Candida dubliniensis DNA | – | Specimen | Threshold | Ordinal value | Probe with target amplification |
| 101940-5 | Candida glabrata DNA [Presence] in Specimen by NAA with probe detection | Nakaseomyces glabratus DNA | – | Specimen | Threshold | Ordinal value | Probe with target amplification |
| 101941-3 | Candida glabrata DNA [Presence] in Urine by NAA with probe detection | Nakaseomyces glabratus DNA | – | Urine specimen | Threshold | Ordinal value | Probe with target amplification |
| 101942-1 | Candida lusitaniae DNA [Presence] in Specimen by NAA with probe detection | Candida lusitaniae DNA | – | Specimen | Threshold | Ordinal value | Probe with target amplification |
| 101943-9 | Candida parapsilosis DNA [Presence] in Specimen by NAA with probe detection | Candida parapsilosis DNA | – | Specimen | Threshold | Ordinal value | Probe with target amplification |
| 101944-7 | Candida parapsilosis DNA [Presence] in Urine by NAA with probe detection | Candida parapsilosis DNA | – | Urine specimen | Threshold | Ordinal value | Probe with target amplification |
| 101945-4 | Candida tropicalis DNA [Presence] in Specimen by NAA with probe detection | Candida tropicalis DNA | – | Specimen | Threshold | Ordinal value | Probe with target amplification |
| 101946-2 | Candida tropicalis DNA [Presence] in Urine by NAA with probe detection | Candida tropicalis DNA | – | Urine specimen | Threshold | Ordinal value | Probe with target amplification |
| 101947-0 | Cytomegalovirus DNA [Presence] in Respiratory system specimen by NAA with probe detection | Cytomegalovirus DNA | – | Specimen from respiratory system | Threshold | Ordinal value | Probe with target amplification |
| 101948-8 | Cytomegalovirus DNA [Presence] in Stool by NAA with probe detection | Cytomegalovirus DNA | – | Stool specimen | Threshold | Ordinal value | Probe with target amplification |
| 101950-4 | Streptococcus pyogenes DNA [Presence] in Wound by NAA with probe detection | Streptococcus pyogenes DNA | – | Specimen from wound | Threshold | Ordinal value | Probe with target amplification |
| 101984-3 | Candida albicans DNA [Presence] in Body fluid by Probe.amp.tar | Candida albicans DNA | – | Body fluid specimen | Threshold | Ordinal value | Probe with target amplification |
| 101985-0 | Candida parapsilosis DNA [Presence] in Body fluid by Probe.amp.tar | Candida parapsilosis DNA | – | Body fluid specimen | Threshold | Ordinal value | Probe with target amplification |
| 101986-8 | Candida krusei DNA [Presence] in Body fluid by Probe.amp.tar | Candida krusei DNA | – | Body fluid specimen | Threshold | Ordinal value | Probe with target amplification |
| 101987-6 | Candida glabrata DNA [Presence] in Body fluid by Probe.amp.tar | Nakaseomyces glabratus DNA | – | Body fluid specimen | Threshold | Ordinal value | Probe with target amplification |
| 101988-4 | Candida tropicalis DNA [Presence] in Body fluid by Probe.amp.tar | Candida tropicalis DNA | – | Body fluid specimen | Threshold | Ordinal value | Probe with target amplification |
| 101989-2 | Candida dubliniensis DNA [Presence] in Body fluid by Probe.amp.tar | Candida dubliniensis DNA | – | Body fluid specimen | Threshold | Ordinal value | Probe with target amplification |
| 103162-4 | Escherichia coli enteropathogenic DNA [Presence] in Wound by NAA with probe detection | Enteropathogenic Escherichia coli DNA | – | Specimen from wound | Threshold | Ordinal value | Probe with target amplification |
| 103164-0 | Cryptococcus neoformans DNA [Presence] in Specimen by NAA with probe detection | Cryptococcus neoformans DNA | – | Specimen | Threshold | Ordinal value | Probe with target amplification |
| 103167-3 | Blastomyces dermatitidis DNA [Presence] in Specimen by NAA with probe detection | Blastomyces dermatitidis DNA | – | Specimen | Threshold | Ordinal value | Probe with target amplification |
| 103169-9 | Citrobacter freundii DNA [Presence] in Wound by NAA with probe detection | Citrobacter freundii DNA | – | Specimen from wound | Threshold | Ordinal value | Probe with target amplification |
| 103170-7 | Clostridium botulinum DNA [Presence] in Wound by NAA with probe detection | Clostridium botulinum DNA | – | Specimen from wound | Threshold | Ordinal value | Probe with target amplification |
| 103172-3 | Clostridium perfringens DNA [Presence] in Wound by NAA with probe detection | Clostridium perfringens DNA | – | Specimen from wound | Threshold | Ordinal value | Probe with target amplification |
| 103176-4 | Escherichia coli enteroinvasive DNA [Presence] in Wound by NAA with probe detection | Enteroinvasive Escherichia coli DNA | – | Specimen from wound | Threshold | Ordinal value | Probe with target amplification |
| 103177-2 | Escherichia coli enterotoxigenic DNA [Presence] in Wound by NAA with probe detection | Enterotoxigenic Escherichia coli DNA | – | Specimen from wound | Threshold | Ordinal value | Probe with target amplification |
| 103178-0 | Enterovirus D68 RNA [Presence] in Respiratory system specimen by NAA with probe detection | Enterovirus D68 RNA | – | Specimen from respiratory system | Threshold | Ordinal value | Probe with target amplification |
| 103179-8 | Haemophilus ducreyi DNA [Presence] in Urine by NAA with probe detection | Haemophilus ducreyi DNA | – | Urine specimen | Threshold | Ordinal value | Probe with target amplification |
| 103180-6 | Herpes simplex virus 1 DNA [Presence] in Urine by NAA with probe detection | Human alphaherpesvirus 1 DNA | – | Urine specimen | Threshold | Ordinal value | Probe with target amplification |
| 103181-4 | Herpes simplex virus 2 DNA [Presence] in Urine by NAA with probe detection | Human alphaherpesvirus 2 DNA | – | Urine specimen | Threshold | Ordinal value | Probe with target amplification |
| 103182-2 | Human papilloma virus 16 DNA [Presence] in Urine by NAA with probe detection | Human papillomavirus 16 DNA | – | Urine specimen | Threshold | Ordinal value | Probe with target amplification |
| 103183-0 | Human papilloma virus 18 DNA [Presence] in Urine by NAA with probe detection | Human papillomavirus 18 DNA | – | Urine specimen | Threshold | Ordinal value | Probe with target amplification |
| 103185-5 | Human Rhinovirus 2 RNA [Presence] in Respiratory system specimen by NAA with probe detection | Enterovirus alpharhino RNA | – | Specimen from respiratory system | Threshold | Ordinal value | Probe with target amplification |
| 103187-1 | Klebsiella pneumoniae DNA [Presence] in Respiratory system specimen by NAA with probe detection | Klebsiella pneumoniae DNA | – | Specimen from respiratory system | Threshold | Ordinal value | Probe with target amplification |
| 103188-9 | Morganella morganii DNA [Presence] in Wound by NAA with probe detection | Morganella morganii DNA | – | Specimen from wound | Threshold | Ordinal value | Probe with target amplification |
| 103189-7 | Mycobacterium abscessus DNA [Presence] in Wound by NAA with probe detection | Mycobacterium abscessus DNA | – | Specimen from wound | Threshold | Ordinal value | Probe with target amplification |
| 103191-3 | Mycobacterium kansasii DNA [Presence] in Wound by NAA with probe detection | Mycobacterium kansasii DNA | – | Specimen from wound | Threshold | Ordinal value | Probe with target amplification |
| 103192-1 | Mycobacterium marinum DNA [Presence] in Wound by NAA with probe detection | Mycobacterium marinum DNA | – | Specimen from wound | Threshold | Ordinal value | Probe with target amplification |
| 103193-9 | Mycobacterium ulcerans DNA [Presence] in Wound by NAA with probe detection | Mycobacterium ulcerans DNA | – | Specimen from wound | Threshold | Ordinal value | Probe with target amplification |
| 103194-7 | Proteus mirabilis DNA [Presence] in Urine by NAA with probe detection | Proteus mirabilis DNA | – | Urine specimen | Threshold | Ordinal value | Probe with target amplification |
| 103195-4 | Proteus vulgaris DNA [Presence] in Specimen by NAA with probe detection | Proteus vulgaris DNA | – | Specimen | Threshold | Ordinal value | Probe with target amplification |
| 103196-2 | Proteus vulgaris DNA [Presence] in Urine by NAA with probe detection | Proteus vulgaris DNA | – | Urine specimen | Threshold | Ordinal value | Probe with target amplification |
| 103197-0 | Sarcoptes scabiei DNA [Presence] in Specimen by NAA with probe detection | Sarcoptes scabiei DNA | – | Specimen | Threshold | Ordinal value | Probe with target amplification |
| 103198-8 | Staphylococcus aureus DNA [Presence] in Respiratory system specimen by NAA with probe detection | Staphylococcus aureus DNA | – | Specimen from respiratory system | Threshold | Ordinal value | Probe with target amplification |
| 103199-6 | Treponema pallidum DNA [Presence] in Urine by Probe with amplification | Treponema pallidum DNA | – | Urine specimen | Threshold | Ordinal value | – |
| 103201-0 | Yersinia enterocolitica DNA [Presence] in Wound by NAA with probe detection | Yersinia enterocolitica DNA | – | Specimen from wound | Threshold | Ordinal value | Probe with target amplification |
| 103555-9 | Escherichia coli O157:H7 DNA [Presence] in Wound by NAA with probe detection | Escherichia coli O157:H7 DNA | – | Specimen from wound | Threshold | Ordinal value | Probe with target amplification |
| 103559-1 | Rhinovirus RNA [Presence] in Nasopharynx by NAA with non-probe detection | Rhinovirus RNA | – | Specimen from nasopharynx | Threshold | Ordinal value | – |
| 103625-0 | Mycobacterium marinum DNA [Presence] in Specimen by NAA with probe detection | Mycobacterium marinum DNA | – | Specimen | Threshold | Ordinal value | Probe with target amplification |
| 103626-8 | Mycobacterium ulcerans DNA [Presence] in Specimen by NAA with probe detection | Mycobacterium ulcerans DNA | – | Specimen | Threshold | Ordinal value | Probe with target amplification |
| 103627-6 | Streptococcus pyogenes DNA [Presence] in Specimen by NAA with probe detection | Streptococcus pyogenes DNA | – | Specimen | Threshold | Ordinal value | Probe with target amplification |
| 103660-7 | Entamoeba coli DNA [Presence] in Stool by NAA with probe detection | Entamoeba coli DNA | – | Stool specimen | Threshold | Ordinal value | Probe with target amplification |
| 103686-2 | Pneumocystis jirovecii DNA [Presence] in Cerebrospinal Fluid by NAA with probe detection | Pneumocystis jirovecii DNA | – | Cerebrospinal fluid specimen | Threshold | Ordinal value | Probe with target amplification |
| 103687-0 | Coccidioides sp DNA [Presence] in Cerebrospinal Fluid by NAA with probe detection | Coccidioides DNA | – | Cerebrospinal fluid specimen | Threshold | Ordinal value | Probe with target amplification |
| 103688-8 | Blastomyces sp DNA [Presence] in Cerebrospinal Fluid by NAA with probe detection | Blastomyces DNA | – | Cerebrospinal fluid specimen | Threshold | Ordinal value | Probe with target amplification |
| 103712-6 | Entamoeba hartmanni DNA [Presence] in Stool by NAA with probe detection | Entamoeba hartmanni DNA | – | Stool specimen | Threshold | Ordinal value | Probe with target amplification |
| 103717-5 | Crimean-Congo hemorrhagic fever virus RNA [Presence] in Blood by NAA with non-probe detection | Orthonairovirus haemorrhagiae RNA | – | Blood specimen | Threshold | Ordinal value | – |
| 103719-1 | Lassa virus RNA [Presence] in Blood by NAA with non-probe detection | Mammarenavirus lassaense RNA | – | Blood specimen | Threshold | Ordinal value | – |
| 103721-7 | West Nile virus RNA [Presence] in Blood by NAA with non-probe detection | West Nile virus RNA | – | Blood specimen | Threshold | Ordinal value | – |
| 103722-5 | Yellow fever virus RNA [Presence] in Blood by NAA with non-probe detection | Yellow fever virus RNA | – | Blood specimen | Threshold | Ordinal value | – |
| 103723-3 | Leishmania spp DNA [Presence] in Blood by NAA with non-probe detection | Leishmania DNA | – | Blood specimen | Threshold | Ordinal value | – |
| 103787-8 | Influenza A H3N2V RNA [Presence] in Specimen by NAA with probe detection | Alphainfluenzavirus influenzae H3N2 variant RNA | – | Specimen | Threshold | Ordinal value | Probe with target amplification |
| 104110-2 | Human bocavirus DNA [Presence] in Upper respiratory specimen by NAA with non-probe detection | Human bocavirus DNA | – | Upper respiratory specimen | Threshold | Ordinal value | – |
| 104111-0 | Legionella pneumophila DNA [Presence] in Upper respiratory specimen by NAA with non-probe detection | Legionella pneumophila DNA | – | Upper respiratory specimen | Threshold | Ordinal value | – |
| 104183-9 | Adenovirus DNA [Presence] in Conjunctival specimen by NAA with probe detection | Adenovirus DNA | – | – | Threshold | Ordinal value | Probe with target amplification |
| 104337-1 | Borna disease virus RNA [Presence] in Brain tissue by NAA with probe detection | Orthobornavirus bornaense RNA | – | Brain tissue specimen | Threshold | Ordinal value | Probe with target amplification |
| 104338-9 | Borna disease virus RNA [Presence] in Brain tissue by Probe | Orthobornavirus bornaense RNA | – | Brain tissue specimen | Threshold | Ordinal value | Nucleic acid hybridization probe |
| 104339-7 | Borna disease virus RNA [Presence] in Brain tissue by Sequencing | Orthobornavirus bornaense RNA | – | Brain tissue specimen | Threshold | Ordinal value | Nucleic acid sequencing technique |
| 104340-5 | Borna disease virus RNA [Presence] in Cerebrospinal Fluid by NAA with probe detection | Orthobornavirus bornaense RNA | – | Cerebrospinal fluid specimen | Threshold | Ordinal value | Probe with target amplification |
| 104341-3 | Borna disease virus RNA [Presence] in Specimen by Molgen | Orthobornavirus bornaense RNA | – | Specimen | Threshold | Ordinal value | Molecular genetics |
| 104342-1 | Borna disease virus RNA [Presence] in Specimen by NAA with probe detection | Orthobornavirus bornaense RNA | – | Specimen | Threshold | Ordinal value | Probe with target amplification |
| 104344-7 | Borna disease virus RNA [Presence] in Specimen by Sequencing | Orthobornavirus bornaense RNA | – | Specimen | Threshold | Ordinal value | Nucleic acid sequencing technique |
| 104352-0 | Borrelia recurrentis DNA [Presence] in Blood by NAA with probe detection | Borrelia recurrentis DNA | – | Blood specimen | Threshold | Ordinal value | Probe with target amplification |
| 104353-8 | Borrelia recurrentis DNA [Presence] in Blood by Sequencing | Borrelia recurrentis DNA | – | Blood specimen | Threshold | Ordinal value | Nucleic acid sequencing technique |
| 104354-6 | Borrelia recurrentis DNA [Presence] in Cerebrospinal Fluid by NAA with probe detection | Borrelia recurrentis DNA | – | Cerebrospinal fluid specimen | Threshold | Ordinal value | Probe with target amplification |
| 104355-3 | Borrelia recurrentis DNA [Presence] in Cerebrospinal Fluid by Sequencing | Borrelia recurrentis DNA | – | Cerebrospinal fluid specimen | Threshold | Ordinal value | Nucleic acid sequencing technique |
| 104356-1 | Borrelia recurrentis DNA [Presence] in Specimen by NAA with probe detection | Borrelia recurrentis DNA | – | Specimen | Threshold | Ordinal value | Probe with target amplification |
| 104357-9 | Borrelia recurrentis DNA [Presence] in Specimen by Sequencing | Borrelia recurrentis DNA | – | Specimen | Threshold | Ordinal value | Nucleic acid sequencing technique |
| 104359-5 | Brucella melitensis DNA [Presence] in Specimen by NAA with non-probe detection | Brucella melitensis DNA | – | Specimen | Threshold | Ordinal value | – |
| 104375-1 | Corynebacterium ulcerans DNA [Presence] in Specimen by NAA with probe detection | Corynebacterium ulcerans DNA | – | Specimen | Threshold | Ordinal value | Probe with target amplification |
| 104433-8 | Mycobacterium leprae DNA [Presence] in Specimen by NAA with probe detection | Mycobacterium leprae DNA | – | Specimen | Threshold | Ordinal value | Probe with target amplification |
| 104450-2 | Salmonella typhi DNA [Presence] in Isolate by NAA with probe detection | Salmonella enterica enterica serovar Typhi DNA | – | Microbial isolate | Threshold | Ordinal value | Probe with target amplification |
| 104451-0 | SARS-CoV-2 (COVID-19) RNA [Presence] in Respiratory system specimen | Severe acute respiratory syndrome coronavirus 2 RNA | – | Specimen from respiratory system | Threshold | Ordinal value | – |
| 104706-7 | Mycoplasma pneumoniae DNA [Presence] in Specimen by Molgen | Mycoplasma pneumoniae DNA | – | Specimen | Threshold | Ordinal value | Molecular genetics |
| 104709-1 | Parainfluenza virus 1 RNA [Presence] in Specimen by Molgen | Parainfluenza virus 1 RNA | – | Specimen | Threshold | Ordinal value | Molecular genetics |
| 104711-7 | Parainfluenza virus 3 RNA [Presence] in Specimen by Molgen | Parainfluenza virus 3 RNA | – | Specimen | Threshold | Ordinal value | Molecular genetics |
| 104712-5 | Human coronavirus NL63 RNA [Presence] in Specimen by Molgen | Human coronavirus NL63 RNA | – | Specimen | Threshold | Ordinal value | Molecular genetics |
| 104715-8 | Hepatitis C virus RNA [Presence] in Serum or Plasma by Molecular genetics method | Hepatitis C virus RNA | – | Serum or plasma specimen | Threshold | Ordinal value | Molecular genetics |
| 104716-6 | Parainfluenza virus 4 RNA [Presence] in Specimen by Molgen | Parainfluenza virus 4 RNA | – | Specimen | Threshold | Ordinal value | Molecular genetics |
| 104722-4 | Chlamydia trachomatis rRNA [Presence] in Specimen by Molgen | Chlamydia trachomatis rRNA | – | Specimen | Threshold | Ordinal value | Molecular genetics |
| 104724-0 | Streptococcus agalactiae DNA [Presence] in Specimen by Molgen | Streptococcus agalactiae DNA | – | Specimen | Threshold | Ordinal value | Molecular genetics |
| 104727-3 | Influenza virus A H1 2009 pandemic RNA [Presence] in Specimen by Molgen | Influenza A virus H1N1 RNA | – | Specimen | Threshold | Ordinal value | Molecular genetics |
| 104730-7 | Influenza virus A H3 RNA [Presence] in Specimen by Molgen | Influenza A virus H3 RNA | – | Specimen | Threshold | Ordinal value | Molecular genetics |
| 104735-6 | Influenza virus B RNA [Presence] in Specimen by Molgen | Influenza B virus RNA | – | Specimen | Threshold | Ordinal value | Molecular genetics |
| 104737-2 | Human metapneumovirus RNA [Presence] in Specimen by Molgen | Human metapneumovirus RNA | – | Specimen | Threshold | Ordinal value | Molecular genetics |
| 104744-8 | Respiratory syncytial virus RNA [Presence] in Specimen by Molgen | Human Respiratory syncytial virus RNA | – | Specimen | Threshold | Ordinal value | Molecular genetics |
| 104757-0 | Staphylococcus aureus DNA [Presence] in Specimen by Molgen | Staphylococcus aureus DNA | – | Specimen | Threshold | Ordinal value | Molecular genetics |
| 104758-8 | Gardnerella vaginalis DNA [Presence] in Vaginal fluid by Molecular genetics method | Gardnerella vaginalis DNA | – | Specimen from vagina | Threshold | Ordinal value | Molecular genetics |
| 104760-4 | Cytomegalovirus DNA [Presence] in Specimen by Molgen | Cytomegalovirus DNA | – | Specimen | Threshold | Ordinal value | Molecular genetics |
| 104765-3 | Neisseria gonorrhoeae DNA [Presence] in Specimen by Molgen | Neisseria gonorrhoeae DNA | – | Specimen | Threshold | Ordinal value | Molecular genetics |
| 104776-0 | Parainfluenza virus 2 RNA [Presence] in Specimen by Molgen | Parainfluenza virus 2 RNA | – | Specimen | Threshold | Ordinal value | Molecular genetics |
| 104780-2 | Neisseria gonorrhoeae rRNA [Presence] in Specimen by Molgen | Neisseria gonorrhoeae rRNA | – | Specimen | Threshold | Ordinal value | Molecular genetics |
| 104788-5 | Gardnerella vaginalis rRNA [Presence] in Genital specimen by Molecular genetics method | Gardnerella vaginalis rRNA | – | Specimen from genital system | Threshold | Ordinal value | Molecular genetics |
| 104794-3 | Human coronavirus HKU1 RNA [Presence] in Specimen by Molgen | Human coronavirus HKU1 RNA | – | Specimen | Threshold | Ordinal value | Molecular genetics |
| 104806-5 | Trichomonas vaginalis DNA [Presence] in Specimen by Molgen | Trichomonas vaginalis DNA | – | Specimen | Threshold | Ordinal value | Molecular genetics |
| 104815-6 | Chlamydia trachomatis DNA [Presence] in Specimen by Molgen | Chlamydia trachomatis DNA | – | Specimen | Threshold | Ordinal value | Molecular genetics |
| 105056-6 | Rotavirus A RNA [Presence] in Specimen by Molgen | Rotavirus alphagastroenteritidis RNA | – | Specimen | Threshold | Ordinal value | Molecular genetics |
| 105057-4 | Plesiomonas shigelloides DNA [Presence] in Specimen by Molgen | Plesiomonas shigelloides DNA | – | Specimen | Threshold | Ordinal value | Molecular genetics |
| 105062-4 | Streptococcus pyogenes DNA [Presence] in Specimen by Molgen | Streptococcus pyogenes DNA | – | Specimen | Threshold | Ordinal value | Molecular genetics |
| 105067-3 | Giardia lamblia DNA [Presence] in Stool | Giardia lamblia DNA | – | Stool specimen | Threshold | Ordinal value | – |
| 105073-1 | Megasphaera sp type 1 DNA [Presence] in Specimen by Molgen | Megasphaera type 1 DNA | – | Specimen | Threshold | Ordinal value | Molecular genetics |
| 105075-6 | Influenza virus A RNA [Presence] in Specimen by Molgen | Influenza A virus RNA | – | Specimen | Threshold | Ordinal value | Molecular genetics |
| 105076-4 | Influenza virus A H1 RNA [Presence] in Specimen by Molgen | Influenza A virus H1 RNA | – | Specimen | Threshold | Ordinal value | Molecular genetics |
| 105077-2 | Human papilloma virus DNA [Presence] in Specimen by Molgen | Human papillomavirus DNA | – | Specimen | Threshold | Ordinal value | Molecular genetics |
| 105078-0 | Human coronavirus OC43 RNA [Presence] in Specimen by Molgen | Human coronavirus OC43 RNA | – | Specimen | Threshold | Ordinal value | Molecular genetics |
| 105079-8 | Human coronavirus 229E RNA [Presence] in Specimen by Molgen | Human coronavirus 229E RNA | – | Specimen | Threshold | Ordinal value | Molecular genetics |
| 105084-8 | Trichomonas vaginalis rRNA [Presence] in Specimen by Molgen | Trichomonas vaginalis rRNA | – | Specimen | Threshold | Ordinal value | Molecular genetics |
| 105094-7 | Candida sp rRNA [Presence] in Vaginal fluid | Candida rRNA | – | Specimen from vagina | Threshold | Ordinal value | – |
| 105210-9 | Enterovirus RNA [Presence] in Sputum by NAA with probe detection | Enterovirus RNA | – | Sputum specimen | Threshold | Ordinal value | Probe with target amplification |
| 105211-7 | Respiratory syncytial virus RNA [Presence] in Bronchial specimen by NAA with probe detection | Human Respiratory syncytial virus RNA | – | Specimen from bronchus | Threshold | Ordinal value | Probe with target amplification |
| 105212-5 | Respiratory syncytial virus A RNA [Presence] in Bronchial specimen by NAA with probe detection | Human respiratory syncytial virus A RNA | – | Specimen from bronchus | Threshold | Ordinal value | Probe with target amplification |
| 105213-3 | Respiratory syncytial virus B RNA [Presence] in Bronchial specimen by NAA with probe detection | Human respiratory syncytial virus B RNA | – | Specimen from bronchus | Threshold | Ordinal value | Probe with target amplification |
| 105215-8 | Influenza virus A RNA [Presence] in Bronchial specimen by NAA with probe detection | Influenza A virus RNA | – | Specimen from bronchus | Threshold | Ordinal value | Probe with target amplification |
| 105216-6 | Influenza virus B RNA [Presence] in Bronchial specimen by NAA with probe detection | Influenza B virus RNA | – | Specimen from bronchus | Threshold | Ordinal value | Probe with target amplification |
| 105217-4 | Parainfluenza virus RNA [Presence] in Bronchial specimen by NAA with probe detection | Parainfluenza virus RNA | – | Specimen from bronchus | Threshold | Ordinal value | Probe with target amplification |
| 105218-2 | Parainfluenza virus 1 RNA [Presence] in Bronchial specimen by NAA with probe detection | Parainfluenza virus 1 RNA | – | Specimen from bronchus | Threshold | Ordinal value | Probe with target amplification |
| 105219-0 | Parainfluenza virus 2 RNA [Presence] in Bronchial specimen by NAA with probe detection | Parainfluenza virus 2 RNA | – | Specimen from bronchus | Threshold | Ordinal value | Probe with target amplification |
| 105220-8 | Parainfluenza virus 3 RNA [Presence] in Bronchial specimen by NAA with probe detection | Parainfluenza virus 3 RNA | – | Specimen from bronchus | Threshold | Ordinal value | Probe with target amplification |
| 105221-6 | Parainfluenza virus 4 RNA [Presence] in Bronchial specimen by NAA with probe detection | Parainfluenza virus 4 RNA | – | Specimen from bronchus | Threshold | Ordinal value | Probe with target amplification |
| 105222-4 | Human metapneumovirus RNA [Presence] in Bronchial specimen by NAA with probe detection | Human metapneumovirus RNA | – | Specimen from bronchus | Threshold | Ordinal value | Probe with target amplification |
| 105223-2 | Rhinovirus RNA [Presence] in Bronchial specimen by NAA with probe detection | Rhinovirus RNA | – | Specimen from bronchus | Threshold | Ordinal value | Probe with target amplification |
| 105226-5 | Tropheryma whipplei DNA [Presence] in Saliva (oral fluid) by NAA with probe detection | Tropheryma whipplei DNA | – | Saliva specimen | Threshold | Ordinal value | Probe with target amplification |
| 105227-3 | Tropheryma whipplei DNA [Presence] in Urine by NAA with probe detection | Tropheryma whipplei DNA | – | Urine specimen | Threshold | Ordinal value | Probe with target amplification |
| 105228-1 | Enterovirus RNA [Presence] in Serum or Plasma by NAA with probe detection | Enterovirus RNA | – | Serum or plasma specimen | Threshold | Ordinal value | Probe with target amplification |
| 105230-7 | Chikungunya virus RNA [Presence] in Blood by NAA with probe detection | Chikungunya virus RNA | – | Blood specimen | Threshold | Ordinal value | Probe with target amplification |
| 105231-5 | Respiratory syncytial virus RNA [Presence] in Sputum by NAA with probe detection | Human Respiratory syncytial virus RNA | – | Sputum specimen | Threshold | Ordinal value | Probe with target amplification |
| 105233-1 | Influenza virus A RNA [Presence] in Sputum by NAA with probe detection | Influenza A virus RNA | – | Sputum specimen | Threshold | Ordinal value | Probe with target amplification |
| 105234-9 | Influenza virus B RNA [Presence] in Sputum by NAA with probe detection | Influenza B virus RNA | – | Sputum specimen | Threshold | Ordinal value | Probe with target amplification |
| 105235-6 | Parainfluenza virus RNA [Presence] in Sputum by NAA with probe detection | Parainfluenza virus RNA | – | Sputum specimen | Threshold | Ordinal value | Probe with target amplification |
| 105236-4 | Human metapneumovirus RNA [Presence] in Sputum by NAA with probe detection | Human metapneumovirus RNA | – | Sputum specimen | Threshold | Ordinal value | Probe with target amplification |
| 105237-2 | Rhinovirus RNA [Presence] in Sputum by NAA with probe detection | Rhinovirus RNA | – | Sputum specimen | Threshold | Ordinal value | Probe with target amplification |
| 105238-0 | Adenovirus DNA [Presence] in Sputum by NAA with probe detection | Adenovirus DNA | – | Sputum specimen | Threshold | Ordinal value | Probe with target amplification |
| 105339-6 | Chlamydia trachomatis L1 DNA [Presence] in Specimen by NAA with probe detection | Chlamydia trachomatis serovar L1 DNA | – | Specimen | Threshold | Ordinal value | Probe with target amplification |
| 105340-4 | Chlamydia trachomatis L3 DNA [Presence] in Specimen by NAA with probe detection | Chlamydia trachomatis serovar L3 DNA | – | Specimen | Threshold | Ordinal value | Probe with target amplification |
| 105430-3 | Human coronavirus OC43 RNA [Presence] in Nasopharynx by NAA with probe detection | Human coronavirus OC43 RNA | – | Specimen from nasopharynx | Threshold | Ordinal value | Probe with target amplification |
| 105431-1 | Human coronavirus NL63 RNA [Presence] in Nasopharynx by NAA with probe detection | Human coronavirus NL63 RNA | – | Specimen from nasopharynx | Threshold | Ordinal value | Probe with target amplification |
| 105432-9 | Human coronavirus HKU1 RNA [Presence] in Nasopharynx by NAA with probe detection | Human coronavirus HKU1 RNA | – | Specimen from nasopharynx | Threshold | Ordinal value | Probe with target amplification |
| 105433-7 | Human bocavirus DNA [Presence] in Nasopharynx by NAA with probe detection | Human bocavirus DNA | – | Specimen from nasopharynx | Threshold | Ordinal value | Probe with target amplification |
| 105434-5 | Parechovirus RNA [Presence] in Nasopharynx by NAA with probe detection | Parechovirus RNA | – | Specimen from nasopharynx | Threshold | Ordinal value | Probe with target amplification |
| 105435-2 | Legionella pneumophila DNA [Presence] in Nasopharynx by NAA with probe detection | Legionella pneumophila DNA | – | Specimen from nasopharynx | Threshold | Ordinal value | Probe with target amplification |
| 105436-0 | Haemophilus influenzae DNA [Presence] in Nasopharynx by NAA with probe detection | Haemophilus influenzae DNA | – | Specimen from nasopharynx | Threshold | Ordinal value | Probe with target amplification |
| 105437-8 | Streptococcus pneumoniae DNA [Presence] in Nasopharynx by NAA with probe detection | Streptococcus pneumoniae DNA | – | Specimen from nasopharynx | Threshold | Ordinal value | Probe with target amplification |
| 105609-2 | Bordetella parapertussis DNA [Presence] in Lower respiratory specimen by NAA with probe detection | Bordetella parapertussis DNA | – | Lower respiratory tract specimen | Threshold | Ordinal value | Probe with target amplification |
| 105611-8 | Chlamydophila pneumoniae DNA [Presence] in Bronchoalveolar lavage by NAA with probe detection | Chlamydophila pneumoniae DNA | – | Bronchoalveolar lavage fluid specimen | Threshold | Ordinal value | Probe with target amplification |
| 105612-6 | Mycoplasma pneumoniae DNA [Presence] in Bronchoalveolar lavage by NAA with probe detection | Mycoplasma pneumoniae DNA | – | Bronchoalveolar lavage fluid specimen | Threshold | Ordinal value | Probe with target amplification |
| 105613-4 | Pneumocystis jirovecii DNA [Presence] in Bronchoalveolar lavage by NAA with probe detection | Pneumocystis jirovecii DNA | – | Bronchoalveolar lavage fluid specimen | Threshold | Ordinal value | Probe with target amplification |
| 105615-9 | Bordetella pertussis DNA [Presence] in Bronchoalveolar lavage by NAA with probe detection | Bordetella pertussis DNA | – | Bronchoalveolar lavage fluid specimen | Threshold | Ordinal value | Probe with target amplification |
| 105616-7 | Bordetella parapertussis DNA [Presence] in Bronchoalveolar lavage by NAA with probe detection | Bordetella parapertussis DNA | – | Bronchoalveolar lavage fluid specimen | Threshold | Ordinal value | Probe with target amplification |
| 105623-3 | Mycoplasma hominis DNA [Presence] in Urine by NAA with probe detection | Mycoplasma hominis DNA | – | Urine specimen | Threshold | Ordinal value | Probe with target amplification |
| 105624-1 | Ureaplasma urealyticum DNA [Presence] in Urine by NAA with probe detection | Ureaplasma urealyticum DNA | – | Urine specimen | Threshold | Ordinal value | Probe with target amplification |
| 105625-8 | Ureaplasma parvum DNA [Presence] in Urine by NAA with probe detection | Ureaplasma parvum DNA | – | Urine specimen | Threshold | Ordinal value | Probe with target amplification |
| 105627-4 | Abiotrophia defectiva DNA [Presence] in Specimen by NAA with probe detection | Abiotrophia defectiva DNA | – | Specimen | Threshold | Ordinal value | Probe with target amplification |
| 105629-0 | Actinobacillus pleuropneumoniae DNA [Presence] in Specimen by NAA with probe detection | Actinobacillus pleuropneumoniae DNA | – | Specimen | Threshold | Ordinal value | Probe with target amplification |
| 105630-8 | Aerococcus urinae DNA [Presence] in Specimen by NAA with probe detection | Aerococcus urinae DNA | – | Specimen | Threshold | Ordinal value | Probe with target amplification |
| 105631-6 | Aerococcus viridans DNA [Presence] in Specimen by NAA with probe detection | Aerococcus viridans DNA | – | Specimen | Threshold | Ordinal value | Probe with target amplification |
| 105632-4 | Aggregatibacter actinomycetemcomitans DNA [Presence] in Specimen by NAA with probe detection | Aggregatibacter actinomycetemcomitans DNA | – | Specimen | Threshold | Ordinal value | Probe with target amplification |
| 105633-2 | Aggregatibacter aphrophilus DNA [Presence] in Specimen by NAA with probe detection | Aggregatibacter aphrophilus DNA | – | Specimen | Threshold | Ordinal value | Probe with target amplification |
| 105634-0 | Alcaligenes faecalis DNA [Presence] in Specimen by NAA with probe detection | Alcaligenes faecalis DNA | – | Specimen | Threshold | Ordinal value | Probe with target amplification |
| 105635-7 | Anaerococcus spp DNA [Presence] in Specimen by NAA with probe detection | Anaerococcus DNA | – | Specimen | Threshold | Ordinal value | Probe with target amplification |
| 105636-5 | Bacteroides fragilis DNA [Presence] in Specimen by NAA with probe detection | Bacteroides fragilis DNA | – | Specimen | Threshold | Ordinal value | Probe with target amplification |
| 105637-3 | Bartonella bacilliformis DNA [Presence] in Specimen by NAA with probe detection | Bartonella bacilliformis DNA | – | Specimen | Threshold | Ordinal value | Probe with target amplification |
| 105640-7 | Campylobacter sp DNA [Presence] in Specimen by NAA with probe detection | Campylobacter DNA | – | Specimen | Threshold | Ordinal value | Probe with target amplification |
| 105641-5 | Cardiobacterium hominis DNA [Presence] in Specimen by NAA with probe detection | Cardiobacterium hominis DNA | – | Specimen | Threshold | Ordinal value | Probe with target amplification |
| 105643-1 | Citrobacter koseri DNA [Presence] in Specimen by NAA with probe detection | Citrobacter koseri DNA | – | Specimen | Threshold | Ordinal value | Probe with target amplification |
| 105644-9 | Clostridium perfringens DNA [Presence] in Specimen by NAA with probe detection | Clostridium perfringens DNA | – | Specimen | Threshold | Ordinal value | Probe with target amplification |
| 105646-4 | Corynebacterium jeikeium DNA [Presence] in Specimen by NAA with probe detection | Corynebacterium jeikeium DNA | – | Specimen | Threshold | Ordinal value | Probe with target amplification |
| 105647-2 | Coxiella sp DNA [Presence] in Specimen by NAA with probe detection | Coxiella DNA | – | Specimen | Threshold | Ordinal value | Probe with target amplification |
| 105648-0 | Cutibacterium acnes DNA [Presence] in Specimen by NAA with probe detection | Cutibacterium acnes DNA | – | Specimen | Threshold | Ordinal value | Probe with target amplification |
| 105649-8 | Eikenella corrodens DNA [Presence] in Specimen by NAA with probe detection | Eikenella corrodens DNA | – | Specimen | Threshold | Ordinal value | Probe with target amplification |
| 105650-6 | Enterobacter cloacae DNA [Presence] in Specimen by NAA with probe detection | Enterobacter cloacae DNA | – | Specimen | Threshold | Ordinal value | Probe with target amplification |
| 105651-4 | Enterobacter cloacae complex DNA [Presence] in Specimen by NAA with probe detection | Enterobacter cloacae complex DNA | – | Specimen | Threshold | Ordinal value | Probe with target amplification |
| 105652-2 | Enterobacter hormaechei DNA [Presence] in Specimen by NAA with probe detection | Enterobacter hormaechei DNA | – | Specimen | Threshold | Ordinal value | Probe with target amplification |
| 105653-0 | Enterobacter roggenkampii DNA [Presence] in Specimen by NAA with probe detection | Enterobacter roggenkampii DNA | – | Specimen | Threshold | Ordinal value | Probe with target amplification |
| 105654-8 | Finegoldia magna DNA [Presence] in Specimen by NAA with probe detection | Finegoldia magna DNA | – | Specimen | Threshold | Ordinal value | Probe with target amplification |
| 105655-5 | Fusobacterium sp DNA [Presence] in Specimen by NAA with probe detection | Fusobacterium DNA | – | Specimen | Threshold | Ordinal value | Probe with target amplification |
| 105656-3 | Fusobacterium necrophorum DNA [Presence] in Specimen by NAA with probe detection | Fusobacterium necrophorum DNA | – | Specimen | Threshold | Ordinal value | Probe with target amplification |
| 105657-1 | Fusobacterium nucleatum DNA [Presence] in Specimen by NAA with probe detection | Fusobacterium nucleatum DNA | – | Specimen | Threshold | Ordinal value | Probe with target amplification |
| 105658-9 | Granulicatella adiacens DNA [Presence] in Specimen by NAA with probe detection | Granulicatella adiacens DNA | – | Specimen | Threshold | Ordinal value | Probe with target amplification |
| 105659-7 | Haemophilus haemolyticus DNA [Presence] in Specimen by NAA with probe detection | Haemophilus haemolyticus DNA | – | Specimen | Threshold | Ordinal value | Probe with target amplification |
| 105660-5 | Haemophilus parainfluenzae DNA [Presence] in Specimen by NAA with probe detection | Haemophilus parainfluenzae DNA | – | Specimen | Threshold | Ordinal value | Probe with target amplification |
| 105662-1 | Klebsiella oxytoca DNA [Presence] in Specimen by NAA with probe detection | Klebsiella oxytoca DNA | – | Specimen | Threshold | Ordinal value | Probe with target amplification |
| 105663-9 | Klebsiella variicola subspecies. tropica DNA [Presence] in Specimen by NAA with probe detection | Klebsiella variicola subspecies tropica DNA | – | Specimen | Threshold | Ordinal value | Probe with target amplification |
| 105665-4 | Micrococcus luteus DNA [Presence] in Specimen by NAA with probe detection | Micrococcus luteus DNA | – | Specimen | Threshold | Ordinal value | Probe with target amplification |
| 105666-2 | Moraxella catarrhalis DNA [Presence] in Specimen by NAA with probe detection | Moraxella catarrhalis DNA | – | Specimen | Threshold | Ordinal value | Probe with target amplification |
| 105667-0 | Morganella morganii DNA [Presence] in Specimen by NAA with probe detection | Morganella morganii DNA | – | Specimen | Threshold | Ordinal value | Probe with target amplification |
| 105668-8 | Nocardia sp DNA [Presence] in Specimen by NAA with probe detection | Nocardia DNA | – | Specimen | Threshold | Ordinal value | Probe with target amplification |
| 105669-6 | Pantoea sp DNA [Presence] in Specimen by NAA with probe detection | Pantoea DNA | – | Specimen | Threshold | Ordinal value | Probe with target amplification |
| 105670-4 | Pasteurella multocida DNA [Presence] in Specimen by NAA with probe detection | Pasteurella multocida DNA | – | Specimen | Threshold | Ordinal value | Probe with target amplification |
| 105671-2 | Prevotella buccae DNA [Presence] in Specimen by NAA with probe detection | Prevotella buccae DNA | – | Specimen | Threshold | Ordinal value | Probe with target amplification |
| 105672-0 | Prevotella intermedia DNA [Presence] in Specimen by NAA with probe detection | Prevotella intermedia DNA | – | Specimen | Threshold | Ordinal value | Probe with target amplification |
| 105673-8 | Propionibacteriaceae DNA [Presence] in Specimen by NAA with probe detection | Propionibacteriaceae DNA | – | Specimen | Threshold | Ordinal value | Probe with target amplification |
| 105674-6 | Proteus sp DNA [Presence] in Specimen by NAA with probe detection | Proteus DNA | – | Specimen | Threshold | Ordinal value | Probe with target amplification |
| 105675-3 | Providencia stuartii DNA [Presence] in Specimen by NAA with probe detection | Providencia stuartii DNA | – | Specimen | Threshold | Ordinal value | Probe with target amplification |
| 105677-9 | Streptococcus sp DNA [Presence] in Specimen by NAA with probe detection | Streptococcus DNA | – | Specimen | Threshold | Ordinal value | Probe with target amplification |
| 105678-7 | Streptococcus dysgalactiae DNA [Presence] in Specimen by NAA with probe detection | Streptococcus dysgalactiae DNA | – | Specimen | Threshold | Ordinal value | Probe with target amplification |
| 105679-5 | Streptococcus equinus DNA [Presence] in Specimen by NAA with probe detection | Streptococcus equinus DNA | – | Specimen | Threshold | Ordinal value | Probe with target amplification |
| 105680-3 | Streptococcus gordonii DNA [Presence] in Specimen by NAA with probe detection | Streptococcus gordonii DNA | – | Specimen | Threshold | Ordinal value | Probe with target amplification |
| 105681-1 | Streptococcus mitis DNA [Presence] in Specimen by NAA with probe detection | Streptococcus mitis DNA | – | Specimen | Threshold | Ordinal value | Probe with target amplification |
| 105682-9 | Streptococcus salivarius DNA [Presence] in Specimen by NAA with probe detection | Streptococcus salivarius DNA | – | Specimen | Threshold | Ordinal value | Probe with target amplification |
| 105683-7 | Yersinia enterocolitica DNA [Presence] in Specimen by NAA with probe detection | Yersinia enterocolitica DNA | – | Specimen | Threshold | Ordinal value | Probe with target amplification |
| 105684-5 | Yersinia pseudotuberculosis complex DNA [Presence] in Specimen by NAA with probe detection | Yersinia pseudotuberculosis DNA | – | Specimen | Threshold | Ordinal value | Probe with target amplification |
| 105686-0 | Aspergillus clavatus DNA [Presence] in Specimen by NAA with probe detection | Aspergillus clavatus DNA | – | Specimen | Threshold | Ordinal value | Probe with target amplification |
| 105687-8 | Aspergillus flavus DNA [Presence] in Specimen by NAA with probe detection | Aspergillus flavus DNA | – | Specimen | Threshold | Ordinal value | Probe with target amplification |
| 105688-6 | Aspergillus niger DNA [Presence] in Specimen by NAA with probe detection | Aspergillus niger DNA | – | Specimen | Threshold | Ordinal value | Probe with target amplification |
| 105689-4 | Candida duobushaemulonii DNA [Presence] in Specimen by NAA with probe detection | Candidozyma duobushaemuli DNA | – | Specimen | Threshold | Ordinal value | Probe with target amplification |
| 105691-0 | Cladosporium sp DNA [Presence] in Specimen by NAA with probe detection | Cladosporium DNA | – | Specimen | Threshold | Ordinal value | Probe with target amplification |
| 105692-8 | Cryptococcus gattii DNA [Presence] in Specimen by NAA with probe detection | Cryptococcus gattii DNA | – | Specimen | Threshold | Ordinal value | Probe with target amplification |
| 105693-6 | Nakaseomyces bracarensis DNA [Presence] in Specimen by NAA with probe detection | Nakaseomyces bracarensis DNA | – | Specimen | Threshold | Ordinal value | Probe with target amplification |
| 105694-4 | Nakaseomyces nivariensis DNA [Presence] in Specimen by NAA with probe detection | Nakaseomyces nivariensis DNA | – | Specimen | Threshold | Ordinal value | Probe with target amplification |
| 105695-1 | Pichia sp DNA [Presence] in Specimen by NAA with probe detection | Pichia DNA | – | Specimen | Threshold | Ordinal value | Probe with target amplification |
| 105696-9 | Pichia kudriavzevii DNA [Presence] in Specimen by NAA with probe detection | Pichia kudriavzevii DNA | – | Specimen | Threshold | Ordinal value | Probe with target amplification |
| 105697-7 | Pneumocystis murina DNA [Presence] in Specimen by NAA with probe detection | Pneumocystis murina DNA | – | Specimen | Threshold | Ordinal value | Probe with target amplification |
| 105698-5 | Saccharomyces sp DNA [Presence] in Specimen by NAA with probe detection | Saccharomyces DNA | – | Specimen | Threshold | Ordinal value | Probe with target amplification |
| 105699-3 | Baker's yeast DNA [Presence] in Specimen by NAA with probe detection | Saccharomyces cerevisiae DNA | – | Specimen | Threshold | Ordinal value | Probe with target amplification |
| 105700-9 | Scedosporium sp DNA [Presence] in Specimen by NAA with probe detection | Scedosporium DNA | – | Specimen | Threshold | Ordinal value | Probe with target amplification |
| 105726-4 | Parainfluenza virus RNA [Presence] in Bronchoalveolar lavage by NAA with probe detection | Parainfluenza virus RNA | – | Bronchoalveolar lavage fluid specimen | Threshold | Ordinal value | Probe with target amplification |
| 105727-2 | Parainfluenza virus 1 RNA [Presence] in Bronchoalveolar lavage by NAA with probe detection | Parainfluenza virus 1 RNA | – | Bronchoalveolar lavage fluid specimen | Threshold | Ordinal value | Probe with target amplification |
| 105728-0 | Parainfluenza virus 2 RNA [Presence] in Bronchoalveolar lavage by NAA with probe detection | Parainfluenza virus 2 RNA | – | Bronchoalveolar lavage fluid specimen | Threshold | Ordinal value | Probe with target amplification |
| 105729-8 | Parainfluenza virus 3 RNA [Presence] in Bronchoalveolar lavage by NAA with probe detection | Parainfluenza virus 3 RNA | – | Bronchoalveolar lavage fluid specimen | Threshold | Ordinal value | Probe with target amplification |
| 105730-6 | Parainfluenza virus 4 RNA [Presence] in Bronchoalveolar lavage by NAA with probe detection | Parainfluenza virus 4 RNA | – | Bronchoalveolar lavage fluid specimen | Threshold | Ordinal value | Probe with target amplification |
| 105731-4 | Human metapneumovirus RNA [Presence] in Bronchoalveolar lavage by NAA with probe detection | Human metapneumovirus RNA | – | Bronchoalveolar lavage fluid specimen | Threshold | Ordinal value | Probe with target amplification |
| 105732-2 | Rhinovirus RNA [Presence] in Bronchoalveolar lavage by NAA with probe detection | Rhinovirus RNA | – | Bronchoalveolar lavage fluid specimen | Threshold | Ordinal value | Probe with target amplification |
| 105733-0 | Human coronavirus RNA [Presence] in Bronchoalveolar lavage by NAA with probe detection | Human coronavirus RNA | – | Bronchoalveolar lavage fluid specimen | Threshold | Ordinal value | Probe with target amplification |
| 105735-5 | Human coronavirus NL63 RNA [Presence] in Bronchoalveolar lavage by NAA with probe detection | Human coronavirus NL63 RNA | – | Bronchoalveolar lavage fluid specimen | Threshold | Ordinal value | Probe with target amplification |
| 105736-3 | Human coronavirus OC43 RNA [Presence] in Bronchoalveolar lavage by NAA with probe detection | Human coronavirus OC43 RNA | – | Bronchoalveolar lavage fluid specimen | Threshold | Ordinal value | Probe with target amplification |
| 105738-9 | Enterovirus RNA [Presence] in Bronchoalveolar lavage by NAA with probe detection | Enterovirus RNA | – | Bronchoalveolar lavage fluid specimen | Threshold | Ordinal value | Probe with target amplification |
| 105739-7 | Cytomegalovirus DNA [Presence] in Pericardial fluid by NAA with probe detection | Cytomegalovirus DNA | – | Pericardial fluid specimen | Threshold | Ordinal value | Probe with target amplification |
| 105740-5 | Adenovirus DNA [Presence] in Pericardial fluid by NAA with probe detection | Adenovirus DNA | – | Pericardial fluid specimen | Threshold | Ordinal value | Probe with target amplification |
| 105741-3 | Epstein Barr virus DNA [Presence] in Pericardial fluid by NAA with probe detection | Epstein-Barr virus DNA | – | Pericardial fluid specimen | Threshold | Ordinal value | Probe with target amplification |
| 105743-9 | Herpes virus 6 DNA [Presence] in Pericardial fluid by NAA with probe detection | Human herpesvirus 6 DNA | – | Pericardial fluid specimen | Threshold | Ordinal value | Probe with target amplification |
| 105744-7 | Parvovirus B19 DNA [Presence] in Pericardial fluid by NAA with probe detection | Human parvovirus B19 DNA | – | Pericardial fluid specimen | Threshold | Ordinal value | Probe with target amplification |
| 105745-4 | Enterovirus RNA [Presence] in Skin by NAA with probe detection | Enterovirus RNA | – | Specimen from skin | Threshold | Ordinal value | Probe with target amplification |
| 105746-2 | Herpes virus 6 DNA [Presence] in Skin by NAA with probe detection | Human herpesvirus 6 DNA | – | Specimen from skin | Threshold | Ordinal value | Probe with target amplification |
| 105747-0 | Adenovirus DNA [Presence] in Urethra by NAA with probe detection | Adenovirus DNA | – | Specimen from urethra | Threshold | Ordinal value | Probe with target amplification |
| 105748-8 | SARS-CoV-2 (COVID-19) RNA [Presence] in Tracheal aspirate by NAA with probe detection | Severe acute respiratory syndrome coronavirus 2 RNA | – | – | Threshold | Ordinal value | Probe with target amplification |
| 105749-6 | SARS-CoV-2 (COVID-19) RNA [Presence] in Bronchoalveolar lavage by NAA with probe detection | Severe acute respiratory syndrome coronavirus 2 RNA | – | Bronchoalveolar lavage fluid specimen | Threshold | Ordinal value | Probe with target amplification |
| 105875-9 | Bordetella pertussis DNA [Presence] in Specimen by Molgen | Bordetella pertussis DNA | – | Specimen | Threshold | Ordinal value | Molecular genetics |
| 105876-7 | Bordetella parapertussis DNA [Presence] in Specimen by Molgen | Bordetella parapertussis DNA | – | Specimen | Threshold | Ordinal value | Molecular genetics |
| 105881-7 | Cyclospora cayetanensis DNA [Presence] in Stool | Cyclospora cayetanensis DNA | – | Stool specimen | Threshold | Ordinal value | – |
| 105882-5 | Cryptosporidium sp DNA [Presence] in Stool | Cryptosporidium DNA | – | Stool specimen | Threshold | Ordinal value | – |
| 105884-1 | Chlamydophila pneumoniae DNA [Presence] in Specimen by Molgen | Chlamydophila pneumoniae DNA | – | Specimen | Threshold | Ordinal value | Molecular genetics |
| 105885-8 | Candida glabrata DNA [Presence] in Vaginal fluid | Nakaseomyces glabratus DNA | – | Specimen from vagina | Threshold | Ordinal value | – |
| 105886-6 | Candida albicans DNA [Presence] in Vaginal fluid | Candida albicans DNA | – | Specimen from vagina | Threshold | Ordinal value | – |
| 105887-4 | Adenovirus DNA [Presence] in Specimen by Molgen | Adenovirus DNA | – | Specimen | Threshold | Ordinal value | Molecular genetics |
| 105890-8 | Yersinia enterocolitica DNA [Presence] in Specimen by Molgen | Yersinia enterocolitica DNA | – | Specimen | Threshold | Ordinal value | Molecular genetics |
| 105892-4 | Vibrio cholerae DNA [Presence] in Specimen by Molgen | Vibrio cholerae DNA | – | Specimen | Threshold | Ordinal value | Molecular genetics |
| 105898-1 | BK virus DNA [Presence] in Specimen by Molgen | Human polyomavirus 1 DNA | – | Specimen | Threshold | Ordinal value | Molecular genetics |
| 105899-9 | Bacterial vaginosis associated bacterium 2 DNA [Presence] in Vaginal fluid | Bacterial vaginosis-associated bacterium 2 DNA | – | Specimen from vagina | Threshold | Ordinal value | – |
| 105901-3 | Atopobium vaginae DNA [Presence] in Vaginal fluid | Atopobium vaginae DNA | – | Specimen from vagina | Threshold | Ordinal value | – |
| 105905-4 | Entamoeba histolytica DNA [Presence] in Stool | Entamoeba histolytica DNA | – | Stool specimen | Threshold | Ordinal value | – |
| 105909-6 | SARS-CoV-2 (COVID-19) RNA [Presence] in Specimen by Molgen | Severe acute respiratory syndrome coronavirus 2 RNA | – | Specimen | Threshold | Ordinal value | Molecular genetics |
| 105918-7 | Streptococcus pneumoniae DNA [Presence] in Bronchoalveolar lavage by NAA with probe detection | Streptococcus pneumoniae DNA | – | Bronchoalveolar lavage fluid specimen | Threshold | Ordinal value | Probe with target amplification |
| 105919-5 | Haemophilus influenzae DNA [Presence] in Bronchoalveolar lavage by NAA with probe detection | Haemophilus influenzae DNA | – | Bronchoalveolar lavage fluid specimen | Threshold | Ordinal value | Probe with target amplification |
| 105922-9 | Neisseria gonorrhoeae DNA [Presence] in Semen by NAA with probe detection | Neisseria gonorrhoeae DNA | – | Semen sample | Threshold | Ordinal value | Probe with target amplification |
| 105927-8 | Mycobacterium tuberculosis DNA [Presence] in Stool by NAA with probe detection | Mycobacterium tuberculosis DNA | – | Stool specimen | Threshold | Ordinal value | Probe with target amplification |
| 106013-6 | Mycoplasma hominis DNA [Presence] in Urethra by NAA with probe detection | Mycoplasma hominis DNA | – | Specimen from urethra | Threshold | Ordinal value | Probe with target amplification |
| 106014-4 | Ureaplasma urealyticum DNA [Presence] in Urethra by NAA with probe detection | Ureaplasma urealyticum DNA | – | Specimen from urethra | Threshold | Ordinal value | Probe with target amplification |
| 106015-1 | Ureaplasma parvum DNA [Presence] in Urethra by NAA with probe detection | Ureaplasma parvum DNA | – | Specimen from urethra | Threshold | Ordinal value | Probe with target amplification |
| 106019-3 | Mycoplasma genitalium DNA [Presence] in Semen by NAA with probe detection | Mycoplasma genitalium DNA | – | Semen sample | Threshold | Ordinal value | Probe with target amplification |
| 106020-1 | Mycoplasma hominis DNA [Presence] in Semen by NAA with probe detection | Mycoplasma hominis DNA | – | Semen sample | Threshold | Ordinal value | Probe with target amplification |
| 106021-9 | Ureaplasma urealyticum DNA [Presence] in Semen by NAA with probe detection | Ureaplasma urealyticum DNA | – | Semen sample | Threshold | Ordinal value | Probe with target amplification |
| 106022-7 | Ureaplasma parvum DNA [Presence] in Semen by NAA with probe detection | Ureaplasma parvum DNA | – | Semen sample | Threshold | Ordinal value | Probe with target amplification |
| 106023-5 | Trichomonas vaginalis DNA [Presence] in Semen by NAA with probe detection | Trichomonas vaginalis DNA | – | Semen sample | Threshold | Ordinal value | Probe with target amplification |
| 106025-0 | Mycoplasma hominis DNA [Presence] in Vaginal fluid by NAA with probe detection | Mycoplasma hominis DNA | – | Specimen from vagina | Threshold | Ordinal value | Probe with target amplification |
| 106026-8 | Ureaplasma urealyticum DNA [Presence] in Vaginal fluid by NAA with probe detection | Ureaplasma urealyticum DNA | – | Specimen from vagina | Threshold | Ordinal value | Probe with target amplification |
| 106027-6 | Ureaplasma parvum DNA [Presence] in Vaginal fluid by NAA with probe detection | Ureaplasma parvum DNA | – | Specimen from vagina | Threshold | Ordinal value | Probe with target amplification |
| 106028-4 | Cytomegalovirus DNA [Presence] in Genital specimen by NAA with probe detection | Cytomegalovirus DNA | – | Specimen from genital system | Threshold | Ordinal value | Probe with target amplification |
| 106029-2 | Varicella zoster virus DNA [Presence] in Genital specimen by NAA with probe detection | Varicella virus DNA | – | Specimen from genital system | Threshold | Ordinal value | Probe with target amplification |
| 106206-6 | Adenovirus DNA [Presence] in Bronchial specimen by NAA with probe detection | Adenovirus DNA | – | Specimen from bronchus | Threshold | Ordinal value | Probe with target amplification |
| 106207-4 | Human coronavirus RNA [Presence] in Bronchial specimen by NAA with probe detection | Human coronavirus RNA | – | Specimen from bronchus | Threshold | Ordinal value | Probe with target amplification |
| 106209-0 | Human coronavirus NL63 RNA [Presence] in Bronchial specimen by NAA with probe detection | Human coronavirus NL63 RNA | – | Specimen from bronchus | Threshold | Ordinal value | Probe with target amplification |
| 106210-8 | Human coronavirus OC43 RNA [Presence] in Bronchial specimen by NAA with probe detection | Human coronavirus OC43 RNA | – | Specimen from bronchus | Threshold | Ordinal value | Probe with target amplification |
| 106212-4 | Enterovirus RNA [Presence] in Bronchial specimen by NAA with probe detection | Enterovirus RNA | – | Specimen from bronchus | Threshold | Ordinal value | Probe with target amplification |
| 106213-2 | Respiratory syncytial virus A RNA [Presence] in Bronchoalveolar lavage by NAA with probe detection | Human respiratory syncytial virus A RNA | – | Bronchoalveolar lavage fluid specimen | Threshold | Ordinal value | Probe with target amplification |
| 106214-0 | Respiratory syncytial virus B RNA [Presence] in Bronchoalveolar lavage by NAA with probe detection | Human respiratory syncytial virus B RNA | – | Bronchoalveolar lavage fluid specimen | Threshold | Ordinal value | Probe with target amplification |
| 10650-0 | Candida sp DNA [Presence] in Blood by Probe with amplification | Candida DNA | – | Blood specimen | Threshold | Ordinal value | – |
| 106508-5 | Human papilloma virus 16 mRNA [Presence] in Vaginal fluid by NAA with probe detection | Alphapapillomavirus 9 mRNA | – | Specimen from vagina | Threshold | Ordinal value | Probe with target amplification |
| 10652-6 | Chlamydophila pneumoniae DNA [Presence] in Sputum or Bronchial by Probe with amplification | Chlamydophila pneumoniae DNA | – | – | Threshold | Ordinal value | – |
| 106552-3 | Campylobacter sp DNA [Presence] in Stool by NAA with probe detection | Campylobacter DNA | – | Stool specimen | Threshold | Ordinal value | Probe with target amplification |
| 106555-6 | Herpes simplex virus 1 DNA [Presence] in Throat by NAA with probe detection | Human alphaherpesvirus 1 DNA | – | Specimen from throat | Threshold | Ordinal value | Probe with target amplification |
| 106557-2 | Herpes simplex virus 2 DNA [Presence] in Throat by NAA with probe detection | Human alphaherpesvirus 2 DNA | – | Specimen from throat | Threshold | Ordinal value | Probe with target amplification |
| 106559-8 | Treponema pallidum DNA [Presence] in Throat by NAA with probe detection | Treponema pallidum DNA | – | Specimen from throat | Threshold | Ordinal value | Probe with target amplification |
| 106560-6 | Treponema pallidum DNA [Presence] in Vaginal fluid by NAA with probe detection | Treponema pallidum DNA | – | Specimen from vagina | Threshold | Ordinal value | Probe with target amplification |
| 106561-4 | Treponema pallidum DNA [Presence] in Urine by NAA with probe detection | Treponema pallidum DNA | – | Urine specimen | Threshold | Ordinal value | Probe with target amplification |
| 106562-2 | Trichomonas vaginalis DNA [Presence] in Throat by NAA with probe detection | Trichomonas vaginalis DNA | – | Specimen from throat | Threshold | Ordinal value | Probe with target amplification |
| 106566-3 | Mycoplasma hominis DNA [Presence] in Throat by NAA with probe detection | Mycoplasma hominis DNA | – | Specimen from throat | Threshold | Ordinal value | Probe with target amplification |
| 106567-1 | Gardnerella vaginalis DNA [Presence] in Throat by NAA with probe detection | Gardnerella vaginalis DNA | – | Specimen from throat | Threshold | Ordinal value | Probe with target amplification |
| 106568-9 | Gardnerella vaginalis DNA [Presence] in Vaginal fluid by NAA with probe detection | Gardnerella vaginalis DNA | – | Specimen from vagina | Threshold | Ordinal value | Probe with target amplification |
| 106569-7 | Gardnerella vaginalis DNA [Presence] in Urine by NAA with probe detection | Gardnerella vaginalis DNA | – | Urine specimen | Threshold | Ordinal value | Probe with target amplification |
| 106570-5 | Mycoplasma genitalium DNA [Presence] in Anal by NAA with probe detection | Mycoplasma genitalium DNA | – | Specimen from anus | Threshold | Ordinal value | Probe with target amplification |
| 106571-3 | Herpes simplex virus 2 DNA [Presence] in Anal by NAA with probe detection | Human alphaherpesvirus 2 DNA | – | Specimen from anus | Threshold | Ordinal value | Probe with target amplification |

… 2107 weitere; die vollständige Aufzählung steht im ValueSet.

### Nukleinsäurenachweis — Amplifikationstechnik ausgewiesen

Dasselbe, eingeschränkt auf Technique = « Molecular nucleic acid amplification technique (Sonde mit Zielamplifikation, PCR …). Zeigt, wie viel eine Technique-Klausel verliert: die generischen „by molecular genetics“- und die technikfreien Codes fallen heraus.

ValueSet [mii-vs-mikrobio-loinc-ontology-naa-detection-amplification](ValueSet-mii-vs-mikrobio-loinc-ontology-naa-detection-amplification.md).

```
<< 363787002 |Observable entity (observable entity)| : 370130000 |Property (attribute)| = (118589004 |Threshold (property) (qualifier value)| OR 705057003 |Presence (property) (qualifier value)| OR 118584009 |Presence or identity (property) (qualifier value)|), 246093002 |Component (attribute)| = << 117174000 |Nucleic acid sequence with relative specificity for microorganism (substance)|, 246501002 |Technique (attribute)| = << 1156878000 |Molecular nucleic acid amplification technique (qualifier value)|

```

| | |
| :--- | :--- |
| Property | Threshold OR Presence OR Presence or identity |
| Component | `<< Nucleic acid sequence with relative specificity for microorganism` |
| Technique | `<< Molecular nucleic acid amplification technique` |

Die Regel wählt **1524** Konzepte aus (1524 mit LOINC-Code, 0 ohne). Release 2026-03-21 → 2026-10-21: **+38 / −0** (Listen auf der Seite [Release-Delta](loinc-ontology-release-delta.md)).

#### Codes (1524)

| | | | | | | |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| 100343-3 | Influenza virus B RNA [Presence] in Saliva (oral fluid) by NAA with probe detection | Influenza B virus RNA | Saliva specimen | Threshold | Ordinal value | Probe with target amplification |
| 100344-1 | Influenza virus A RNA [Presence] in Saliva (oral fluid) by NAA with probe detection | Influenza A virus RNA | Saliva specimen | Threshold | Ordinal value | Probe with target amplification |
| 100383-9 | Monkeypox virus DNA [Presence] in Specimen by NAA with probe detection | Orthopoxvirus monkeypox DNA | Specimen | Threshold | Ordinal value | Probe with target amplification |
| 100671-7 | Aspergillus sp DNA [Presence] in Blood by NAA with probe detection | Aspergillus DNA | Blood specimen | Threshold | Ordinal value | Probe with target amplification |
| 100672-5 | Aspergillus fumigatus DNA [Presence] in Blood by NAA with probe detection | Aspergillus fumigatus DNA | Blood specimen | Threshold | Ordinal value | Probe with target amplification |
| 100673-3 | Aspergillus terreus DNA [Presence] in Blood by NAA with probe detection | Aspergillus terreus DNA | Blood specimen | Threshold | Ordinal value | Probe with target amplification |
| 100700-4 | Trichomonas vaginalis DNA [Presence] in Urethra by NAA with probe detection | Trichomonas vaginalis DNA | Specimen from urethra | Threshold | Ordinal value | Probe with target amplification |
| 100701-2 | Trichomonas vaginalis rRNA [Presence] in Urethra by NAA with probe detection | Trichomonas vaginalis rRNA | Specimen from urethra | Threshold | Ordinal value | Probe with target amplification |
| 100702-0 | Mycoplasma genitalium rRNA [Presence] in Urethra by NAA with probe detection | Mycoplasma genitalium rRNA | Specimen from urethra | Threshold | Ordinal value | Probe with target amplification |
| 100703-8 | Mycoplasma genitalium rRNA [Presence] in Urine by NAA with probe detection | Mycoplasma genitalium rRNA | Urine specimen | Threshold | Ordinal value | Probe with target amplification |
| 100704-6 | Mycoplasma genitalium rRNA [Presence] in Cervix by NAA with probe detection | Mycoplasma genitalium rRNA | Specimen from uterine cervix | Threshold | Ordinal value | Probe with target amplification |
| 100705-3 | Mycoplasma genitalium rRNA [Presence] in Anorectal by NAA with probe detection | Mycoplasma genitalium rRNA | – | Threshold | Ordinal value | Probe with target amplification |
| 100706-1 | Mycoplasma genitalium rRNA [Presence] in Specimen by NAA with probe detection | Mycoplasma genitalium rRNA | Specimen | Threshold | Ordinal value | Probe with target amplification |
| 100885-3 | Parapoxvirus DNA [Presence] in Specimen by NAA with probe detection | Parapoxvirus DNA | Specimen | Threshold | Ordinal value | Probe with target amplification |
| 100886-1 | Orf virus DNA [Presence] in Specimen by NAA with probe detection | Parapoxvirus orf DNA | Specimen | Threshold | Ordinal value | Probe with target amplification |
| 100887-9 | Pseudocowpox virus DNA [Presence] in Specimen by NAA with probe detection | Pseudocowpox virus DNA | Specimen | Threshold | Ordinal value | Probe with target amplification |
| 100979-4 | Atopobium vaginae DNA [Presence] in Urine by NAA with probe detection | Atopobium vaginae DNA | Urine specimen | Threshold | Ordinal value | Probe with target amplification |
| 101219-4 | Legionella sp DNA [Presence] in Specimen by NAA with probe detection | Legionella DNA | Specimen | Threshold | Ordinal value | Probe with target amplification |
| 101340-8 | Aeromonas sp DNA [Presence] in Stool by NAA with probe detection | Aeromonas DNA | Stool specimen | Threshold | Ordinal value | Probe with target amplification |
| 101345-7 | Candida krusei DNA [Presence] in Specimen by NAA with probe detection | Candida krusei DNA | Specimen | Threshold | Ordinal value | Probe with target amplification |
| 101406-7 | Sudan virus RNA [Presence] in Blood by NAA with probe detection | Orthoebolavirus sudanense RNA | Blood specimen | Threshold | Ordinal value | Probe with target amplification |
| 101419-0 | Human coronavirus 229E RNA [Presence] in Respiratory system specimen by NAA with probe detection | Human coronavirus 229E RNA | Specimen from respiratory system | Threshold | Ordinal value | Probe with target amplification |
| 101420-8 | Human coronavirus HKU1 RNA [Presence] in Respiratory system specimen by NAA with probe detection | Human coronavirus HKU1 RNA | Specimen from respiratory system | Threshold | Ordinal value | Probe with target amplification |
| 101421-6 | Human coronavirus NL63 RNA [Presence] in Respiratory system specimen by NAA with probe detection | Human coronavirus NL63 RNA | Specimen from respiratory system | Threshold | Ordinal value | Probe with target amplification |
| 101422-4 | Human coronavirus OC43 RNA [Presence] in Respiratory system specimen by NAA with probe detection | Human coronavirus OC43 RNA | Specimen from respiratory system | Threshold | Ordinal value | Probe with target amplification |
| 101423-2 | Influenza virus A H1 RNA [Presence] in Respiratory system specimen by NAA with probe detection | Influenza A virus H1 RNA | Specimen from respiratory system | Threshold | Ordinal value | Probe with target amplification |
| 101424-0 | Influenza virus A H3 RNA [Presence] in Respiratory system specimen by NAA with probe detection | Influenza A virus H3 RNA | Specimen from respiratory system | Threshold | Ordinal value | Probe with target amplification |
| 101425-7 | Respiratory syncytial virus A RNA [Presence] in Respiratory system specimen by NAA with probe detection | Human respiratory syncytial virus A RNA | Specimen from respiratory system | Threshold | Ordinal value | Probe with target amplification |
| 101426-5 | Respiratory syncytial virus B RNA [Presence] in Respiratory system specimen by NAA with probe detection | Human respiratory syncytial virus B RNA | Specimen from respiratory system | Threshold | Ordinal value | Probe with target amplification |
| 101427-3 | Shigella sp DNA [Presence] in Stool by NAA with probe detection | Shigella DNA | Stool specimen | Threshold | Ordinal value | Probe with target amplification |
| 101428-1 | Varicella zoster virus DNA [Presence] in Respiratory system specimen by NAA with probe detection | Varicella virus DNA | Specimen from respiratory system | Threshold | Ordinal value | Probe with target amplification |
| 101552-8 | Campylobacter coli DNA [Presence] in Stool by NAA with probe detection | Campylobacter coli DNA | Stool specimen | Threshold | Ordinal value | Probe with target amplification |
| 101553-6 | Aeromonas hydrophila DNA [Presence] in Stool by NAA with probe detection | Aeromonas hydrophila DNA | Stool specimen | Threshold | Ordinal value | Probe with target amplification |
| 101554-4 | Campylobacter jejuni DNA [Presence] in Stool by NAA with probe detection | Campylobacter jejuni DNA | Stool specimen | Threshold | Ordinal value | Probe with target amplification |
| 101555-1 | Campylobacter upsaliensis DNA [Presence] in Stool by NAA with probe detection | Campylobacter upsaliensis DNA | Stool specimen | Threshold | Ordinal value | Probe with target amplification |
| 101556-9 | Candida krusei DNA [Presence] in Urine by NAA with probe detection | Candida krusei DNA | Urine specimen | Threshold | Ordinal value | Probe with target amplification |
| 101557-7 | Clostridioides difficile DNA [Presence] in Stool by NAA with probe detection | Clostridium difficile DNA | Stool specimen | Threshold | Ordinal value | Probe with target amplification |
| 101558-5 | Escherichia coli enteroinvasive DNA [Presence] in Stool by NAA with probe detection | Enteroinvasive Escherichia coli DNA | Stool specimen | Threshold | Ordinal value | Probe with target amplification |
| 101559-3 | Listeria monocytogenes DNA [Presence] in Stool by NAA with probe detection | Listeria monocytogenes DNA | Stool specimen | Threshold | Ordinal value | Probe with target amplification |
| 101560-1 | Rotavirus B RNA [Presence] in Stool by NAA with probe detection | Rotavirus betagastroenteritidis RNA | Stool specimen | Threshold | Ordinal value | Probe with target amplification |
| 101561-9 | Rotavirus C RNA [Presence] in Stool by NAA with probe detection | Rotavirus tritogastroenteritidis RNA | Stool specimen | Threshold | Ordinal value | Probe with target amplification |
| 101563-5 | Sapovirus genogroup V RNA [Presence] in Stool by NAA with probe detection | Sapovirus genogroup V RNA | Stool specimen | Threshold | Ordinal value | Probe with target amplification |
| 101744-1 | Toxoplasma gondii DNA [Presence] in Plasma by NAA with probe detection | Toxoplasma gondii DNA | Plasma specimen | Threshold | Ordinal value | Probe with target amplification |
| 101749-0 | Borrelia miyamotoi DNA [Presence] in Blood by NAA with probe detection | Borrelia miyamotoi DNA | Blood specimen | Threshold | Ordinal value | Probe with target amplification |
| 101754-0 | Trichophyton tonsurans DNA [Presence] in Specimen by NAA with probe detection | Trichophyton tonsurans DNA | Specimen | Threshold | Ordinal value | Probe with target amplification |
| 101755-7 | Trichophyton equinum DNA [Presence] in Specimen by NAA with probe detection | Trichophyton equinum DNA | Specimen | Threshold | Ordinal value | Probe with target amplification |
| 101756-5 | Trichophyton interdigitale DNA [Presence] in Specimen by NAA with probe detection | Trichophyton interdigitale DNA | Specimen | Threshold | Ordinal value | Probe with target amplification |
| 101757-3 | Trichophyton mentagrophytes DNA [Presence] in Specimen by NAA with probe detection | Trichophyton mentagrophytes DNA | Specimen | Threshold | Ordinal value | Probe with target amplification |
| 101758-1 | Trichophyton quinckeanum DNA [Presence] in Specimen by NAA with probe detection | Trichophyton quinckeanum DNA | Specimen | Threshold | Ordinal value | Probe with target amplification |
| 101759-9 | Trichophyton schoenleinii DNA [Presence] in Specimen by NAA with probe detection | Trichophyton schoenleinii DNA | Specimen | Threshold | Ordinal value | Probe with target amplification |
| 101760-7 | Trichophyton simii DNA [Presence] in Specimen by NAA with probe detection | Trichophyton simii DNA | Specimen | Threshold | Ordinal value | Probe with target amplification |
| 101761-5 | Trichophyton concentricum DNA [Presence] in Specimen by NAA with probe detection | Trichophyton concentricum DNA | Specimen | Threshold | Ordinal value | Probe with target amplification |
| 101762-3 | Trichophyton bullosum DNA [Presence] in Specimen by NAA with probe detection | Trichophyton bullosum DNA | Specimen | Threshold | Ordinal value | Probe with target amplification |
| 101766-4 | Trichophyton erinacei DNA [Presence] in Specimen by NAA with probe detection | Trichophyton erinacei DNA | Specimen | Threshold | Ordinal value | Probe with target amplification |
| 101767-2 | Trichophyton verrucosum DNA [Presence] in Specimen by NAA with probe detection | Trichophyton verrucosum DNA | Specimen | Threshold | Ordinal value | Probe with target amplification |
| 101768-0 | Trichophyton eriotrephon DNA [Presence] in Specimen by NAA with probe detection | Trichophyton eriotrephon DNA | Specimen | Threshold | Ordinal value | Probe with target amplification |
| 101769-8 | Trichophyton rubrum DNA [Presence] in Specimen by NAA with probe detection | Trichophyton rubrum DNA | Specimen | Threshold | Ordinal value | Probe with target amplification |
| 101770-6 | Trichophyton violaceum DNA [Presence] in Specimen by NAA with probe detection | Trichophyton violaceum DNA | Specimen | Threshold | Ordinal value | Probe with target amplification |
| 101771-4 | Epidermophyton floccosum DNA [Presence] in Specimen by NAA with probe detection | Epidermophyton floccosum DNA | Specimen | Threshold | Ordinal value | Probe with target amplification |
| 101772-2 | Microsporum canis DNA [Presence] in Specimen by NAA with probe detection | Microsporum canis DNA | Specimen | Threshold | Ordinal value | Probe with target amplification |
| 101773-0 | Microsporum audouinii DNA [Presence] in Specimen by NAA with probe detection | Microsporum audouinii DNA | Specimen | Threshold | Ordinal value | Probe with target amplification |
| 101774-8 | Microsporum ferrugineum DNA [Presence] in Specimen by NAA with probe detection | Microsporum ferrugineum DNA | Specimen | Threshold | Ordinal value | Probe with target amplification |
| 101775-5 | Nannizzia fulva DNA [Presence] in Specimen by NAA with probe detection | Nannizzia fulva DNA | Specimen | Threshold | Ordinal value | Probe with target amplification |
| 101776-3 | Nannizzia gypsea DNA [Presence] in Specimen by NAA with probe detection | Nannizzia gypsea DNA | Specimen | Threshold | Ordinal value | Probe with target amplification |
| 101777-1 | Nannizzia incurvata DNA [Presence] in Specimen by NAA with probe detection | Nannizzia incurvata DNA | Specimen | Threshold | Ordinal value | Probe with target amplification |
| 101778-9 | Nannizzia persicolor DNA [Presence] in Specimen by NAA with probe detection | Nannizzia persicolor DNA | Specimen | Threshold | Ordinal value | Probe with target amplification |
| 101781-3 | Candida guilliermondii DNA [Presence] in Specimen by NAA with probe detection | Meyerozyma guilliermondii DNA | Specimen | Threshold | Ordinal value | Probe with target amplification |
| 101783-9 | Fusarium oxysporum DNA [Presence] in Specimen by NAA with probe detection | Fusarium oxysporum DNA | Specimen | Threshold | Ordinal value | Probe with target amplification |
| 101784-7 | Scopulariopsis brevicaulis DNA [Presence] in Specimen by NAA with probe detection | Scopulariopsis brevicaulis DNA | Specimen | Threshold | Ordinal value | Probe with target amplification |
| 101786-2 | Toxoplasma gondii DNA [Presence] in Serum by RT-PCR | Toxoplasma gondii DNA | Serum specimen | Threshold | Ordinal value | Probe with target amplification |
| 101936-3 | Candida albicans DNA [Presence] in Specimen by NAA with probe detection | Candida albicans DNA | Specimen | Threshold | Ordinal value | Probe with target amplification |
| 101938-9 | Candida dubliniensis DNA [Presence] in Specimen by NAA with probe detection | Candida dubliniensis DNA | Specimen | Threshold | Ordinal value | Probe with target amplification |
| 101940-5 | Candida glabrata DNA [Presence] in Specimen by NAA with probe detection | Nakaseomyces glabratus DNA | Specimen | Threshold | Ordinal value | Probe with target amplification |
| 101941-3 | Candida glabrata DNA [Presence] in Urine by NAA with probe detection | Nakaseomyces glabratus DNA | Urine specimen | Threshold | Ordinal value | Probe with target amplification |
| 101942-1 | Candida lusitaniae DNA [Presence] in Specimen by NAA with probe detection | Candida lusitaniae DNA | Specimen | Threshold | Ordinal value | Probe with target amplification |
| 101943-9 | Candida parapsilosis DNA [Presence] in Specimen by NAA with probe detection | Candida parapsilosis DNA | Specimen | Threshold | Ordinal value | Probe with target amplification |
| 101944-7 | Candida parapsilosis DNA [Presence] in Urine by NAA with probe detection | Candida parapsilosis DNA | Urine specimen | Threshold | Ordinal value | Probe with target amplification |
| 101945-4 | Candida tropicalis DNA [Presence] in Specimen by NAA with probe detection | Candida tropicalis DNA | Specimen | Threshold | Ordinal value | Probe with target amplification |
| 101946-2 | Candida tropicalis DNA [Presence] in Urine by NAA with probe detection | Candida tropicalis DNA | Urine specimen | Threshold | Ordinal value | Probe with target amplification |
| 101947-0 | Cytomegalovirus DNA [Presence] in Respiratory system specimen by NAA with probe detection | Cytomegalovirus DNA | Specimen from respiratory system | Threshold | Ordinal value | Probe with target amplification |
| 101948-8 | Cytomegalovirus DNA [Presence] in Stool by NAA with probe detection | Cytomegalovirus DNA | Stool specimen | Threshold | Ordinal value | Probe with target amplification |
| 101950-4 | Streptococcus pyogenes DNA [Presence] in Wound by NAA with probe detection | Streptococcus pyogenes DNA | Specimen from wound | Threshold | Ordinal value | Probe with target amplification |
| 101984-3 | Candida albicans DNA [Presence] in Body fluid by Probe.amp.tar | Candida albicans DNA | Body fluid specimen | Threshold | Ordinal value | Probe with target amplification |
| 101985-0 | Candida parapsilosis DNA [Presence] in Body fluid by Probe.amp.tar | Candida parapsilosis DNA | Body fluid specimen | Threshold | Ordinal value | Probe with target amplification |
| 101986-8 | Candida krusei DNA [Presence] in Body fluid by Probe.amp.tar | Candida krusei DNA | Body fluid specimen | Threshold | Ordinal value | Probe with target amplification |
| 101987-6 | Candida glabrata DNA [Presence] in Body fluid by Probe.amp.tar | Nakaseomyces glabratus DNA | Body fluid specimen | Threshold | Ordinal value | Probe with target amplification |
| 101988-4 | Candida tropicalis DNA [Presence] in Body fluid by Probe.amp.tar | Candida tropicalis DNA | Body fluid specimen | Threshold | Ordinal value | Probe with target amplification |
| 101989-2 | Candida dubliniensis DNA [Presence] in Body fluid by Probe.amp.tar | Candida dubliniensis DNA | Body fluid specimen | Threshold | Ordinal value | Probe with target amplification |
| 103162-4 | Escherichia coli enteropathogenic DNA [Presence] in Wound by NAA with probe detection | Enteropathogenic Escherichia coli DNA | Specimen from wound | Threshold | Ordinal value | Probe with target amplification |
| 103164-0 | Cryptococcus neoformans DNA [Presence] in Specimen by NAA with probe detection | Cryptococcus neoformans DNA | Specimen | Threshold | Ordinal value | Probe with target amplification |
| 103167-3 | Blastomyces dermatitidis DNA [Presence] in Specimen by NAA with probe detection | Blastomyces dermatitidis DNA | Specimen | Threshold | Ordinal value | Probe with target amplification |
| 103169-9 | Citrobacter freundii DNA [Presence] in Wound by NAA with probe detection | Citrobacter freundii DNA | Specimen from wound | Threshold | Ordinal value | Probe with target amplification |
| 103170-7 | Clostridium botulinum DNA [Presence] in Wound by NAA with probe detection | Clostridium botulinum DNA | Specimen from wound | Threshold | Ordinal value | Probe with target amplification |
| 103172-3 | Clostridium perfringens DNA [Presence] in Wound by NAA with probe detection | Clostridium perfringens DNA | Specimen from wound | Threshold | Ordinal value | Probe with target amplification |
| 103176-4 | Escherichia coli enteroinvasive DNA [Presence] in Wound by NAA with probe detection | Enteroinvasive Escherichia coli DNA | Specimen from wound | Threshold | Ordinal value | Probe with target amplification |
| 103177-2 | Escherichia coli enterotoxigenic DNA [Presence] in Wound by NAA with probe detection | Enterotoxigenic Escherichia coli DNA | Specimen from wound | Threshold | Ordinal value | Probe with target amplification |
| 103178-0 | Enterovirus D68 RNA [Presence] in Respiratory system specimen by NAA with probe detection | Enterovirus D68 RNA | Specimen from respiratory system | Threshold | Ordinal value | Probe with target amplification |
| 103179-8 | Haemophilus ducreyi DNA [Presence] in Urine by NAA with probe detection | Haemophilus ducreyi DNA | Urine specimen | Threshold | Ordinal value | Probe with target amplification |
| 103180-6 | Herpes simplex virus 1 DNA [Presence] in Urine by NAA with probe detection | Human alphaherpesvirus 1 DNA | Urine specimen | Threshold | Ordinal value | Probe with target amplification |
| 103181-4 | Herpes simplex virus 2 DNA [Presence] in Urine by NAA with probe detection | Human alphaherpesvirus 2 DNA | Urine specimen | Threshold | Ordinal value | Probe with target amplification |
| 103182-2 | Human papilloma virus 16 DNA [Presence] in Urine by NAA with probe detection | Human papillomavirus 16 DNA | Urine specimen | Threshold | Ordinal value | Probe with target amplification |
| 103183-0 | Human papilloma virus 18 DNA [Presence] in Urine by NAA with probe detection | Human papillomavirus 18 DNA | Urine specimen | Threshold | Ordinal value | Probe with target amplification |
| 103185-5 | Human Rhinovirus 2 RNA [Presence] in Respiratory system specimen by NAA with probe detection | Enterovirus alpharhino RNA | Specimen from respiratory system | Threshold | Ordinal value | Probe with target amplification |
| 103187-1 | Klebsiella pneumoniae DNA [Presence] in Respiratory system specimen by NAA with probe detection | Klebsiella pneumoniae DNA | Specimen from respiratory system | Threshold | Ordinal value | Probe with target amplification |
| 103188-9 | Morganella morganii DNA [Presence] in Wound by NAA with probe detection | Morganella morganii DNA | Specimen from wound | Threshold | Ordinal value | Probe with target amplification |
| 103189-7 | Mycobacterium abscessus DNA [Presence] in Wound by NAA with probe detection | Mycobacterium abscessus DNA | Specimen from wound | Threshold | Ordinal value | Probe with target amplification |
| 103191-3 | Mycobacterium kansasii DNA [Presence] in Wound by NAA with probe detection | Mycobacterium kansasii DNA | Specimen from wound | Threshold | Ordinal value | Probe with target amplification |
| 103192-1 | Mycobacterium marinum DNA [Presence] in Wound by NAA with probe detection | Mycobacterium marinum DNA | Specimen from wound | Threshold | Ordinal value | Probe with target amplification |
| 103193-9 | Mycobacterium ulcerans DNA [Presence] in Wound by NAA with probe detection | Mycobacterium ulcerans DNA | Specimen from wound | Threshold | Ordinal value | Probe with target amplification |
| 103194-7 | Proteus mirabilis DNA [Presence] in Urine by NAA with probe detection | Proteus mirabilis DNA | Urine specimen | Threshold | Ordinal value | Probe with target amplification |
| 103195-4 | Proteus vulgaris DNA [Presence] in Specimen by NAA with probe detection | Proteus vulgaris DNA | Specimen | Threshold | Ordinal value | Probe with target amplification |
| 103196-2 | Proteus vulgaris DNA [Presence] in Urine by NAA with probe detection | Proteus vulgaris DNA | Urine specimen | Threshold | Ordinal value | Probe with target amplification |
| 103197-0 | Sarcoptes scabiei DNA [Presence] in Specimen by NAA with probe detection | Sarcoptes scabiei DNA | Specimen | Threshold | Ordinal value | Probe with target amplification |
| 103198-8 | Staphylococcus aureus DNA [Presence] in Respiratory system specimen by NAA with probe detection | Staphylococcus aureus DNA | Specimen from respiratory system | Threshold | Ordinal value | Probe with target amplification |
| 103201-0 | Yersinia enterocolitica DNA [Presence] in Wound by NAA with probe detection | Yersinia enterocolitica DNA | Specimen from wound | Threshold | Ordinal value | Probe with target amplification |
| 103555-9 | Escherichia coli O157:H7 DNA [Presence] in Wound by NAA with probe detection | Escherichia coli O157:H7 DNA | Specimen from wound | Threshold | Ordinal value | Probe with target amplification |
| 103625-0 | Mycobacterium marinum DNA [Presence] in Specimen by NAA with probe detection | Mycobacterium marinum DNA | Specimen | Threshold | Ordinal value | Probe with target amplification |
| 103626-8 | Mycobacterium ulcerans DNA [Presence] in Specimen by NAA with probe detection | Mycobacterium ulcerans DNA | Specimen | Threshold | Ordinal value | Probe with target amplification |
| 103627-6 | Streptococcus pyogenes DNA [Presence] in Specimen by NAA with probe detection | Streptococcus pyogenes DNA | Specimen | Threshold | Ordinal value | Probe with target amplification |
| 103660-7 | Entamoeba coli DNA [Presence] in Stool by NAA with probe detection | Entamoeba coli DNA | Stool specimen | Threshold | Ordinal value | Probe with target amplification |
| 103686-2 | Pneumocystis jirovecii DNA [Presence] in Cerebrospinal Fluid by NAA with probe detection | Pneumocystis jirovecii DNA | Cerebrospinal fluid specimen | Threshold | Ordinal value | Probe with target amplification |
| 103687-0 | Coccidioides sp DNA [Presence] in Cerebrospinal Fluid by NAA with probe detection | Coccidioides DNA | Cerebrospinal fluid specimen | Threshold | Ordinal value | Probe with target amplification |
| 103688-8 | Blastomyces sp DNA [Presence] in Cerebrospinal Fluid by NAA with probe detection | Blastomyces DNA | Cerebrospinal fluid specimen | Threshold | Ordinal value | Probe with target amplification |
| 103712-6 | Entamoeba hartmanni DNA [Presence] in Stool by NAA with probe detection | Entamoeba hartmanni DNA | Stool specimen | Threshold | Ordinal value | Probe with target amplification |
| 103787-8 | Influenza A H3N2V RNA [Presence] in Specimen by NAA with probe detection | Alphainfluenzavirus influenzae H3N2 variant RNA | Specimen | Threshold | Ordinal value | Probe with target amplification |
| 104183-9 | Adenovirus DNA [Presence] in Conjunctival specimen by NAA with probe detection | Adenovirus DNA | – | Threshold | Ordinal value | Probe with target amplification |
| 104337-1 | Borna disease virus RNA [Presence] in Brain tissue by NAA with probe detection | Orthobornavirus bornaense RNA | Brain tissue specimen | Threshold | Ordinal value | Probe with target amplification |
| 104340-5 | Borna disease virus RNA [Presence] in Cerebrospinal Fluid by NAA with probe detection | Orthobornavirus bornaense RNA | Cerebrospinal fluid specimen | Threshold | Ordinal value | Probe with target amplification |
| 104342-1 | Borna disease virus RNA [Presence] in Specimen by NAA with probe detection | Orthobornavirus bornaense RNA | Specimen | Threshold | Ordinal value | Probe with target amplification |
| 104352-0 | Borrelia recurrentis DNA [Presence] in Blood by NAA with probe detection | Borrelia recurrentis DNA | Blood specimen | Threshold | Ordinal value | Probe with target amplification |
| 104354-6 | Borrelia recurrentis DNA [Presence] in Cerebrospinal Fluid by NAA with probe detection | Borrelia recurrentis DNA | Cerebrospinal fluid specimen | Threshold | Ordinal value | Probe with target amplification |
| 104356-1 | Borrelia recurrentis DNA [Presence] in Specimen by NAA with probe detection | Borrelia recurrentis DNA | Specimen | Threshold | Ordinal value | Probe with target amplification |
| 104375-1 | Corynebacterium ulcerans DNA [Presence] in Specimen by NAA with probe detection | Corynebacterium ulcerans DNA | Specimen | Threshold | Ordinal value | Probe with target amplification |
| 104433-8 | Mycobacterium leprae DNA [Presence] in Specimen by NAA with probe detection | Mycobacterium leprae DNA | Specimen | Threshold | Ordinal value | Probe with target amplification |
| 104450-2 | Salmonella typhi DNA [Presence] in Isolate by NAA with probe detection | Salmonella enterica enterica serovar Typhi DNA | Microbial isolate | Threshold | Ordinal value | Probe with target amplification |
| 105210-9 | Enterovirus RNA [Presence] in Sputum by NAA with probe detection | Enterovirus RNA | Sputum specimen | Threshold | Ordinal value | Probe with target amplification |
| 105211-7 | Respiratory syncytial virus RNA [Presence] in Bronchial specimen by NAA with probe detection | Human Respiratory syncytial virus RNA | Specimen from bronchus | Threshold | Ordinal value | Probe with target amplification |
| 105212-5 | Respiratory syncytial virus A RNA [Presence] in Bronchial specimen by NAA with probe detection | Human respiratory syncytial virus A RNA | Specimen from bronchus | Threshold | Ordinal value | Probe with target amplification |
| 105213-3 | Respiratory syncytial virus B RNA [Presence] in Bronchial specimen by NAA with probe detection | Human respiratory syncytial virus B RNA | Specimen from bronchus | Threshold | Ordinal value | Probe with target amplification |
| 105215-8 | Influenza virus A RNA [Presence] in Bronchial specimen by NAA with probe detection | Influenza A virus RNA | Specimen from bronchus | Threshold | Ordinal value | Probe with target amplification |
| 105216-6 | Influenza virus B RNA [Presence] in Bronchial specimen by NAA with probe detection | Influenza B virus RNA | Specimen from bronchus | Threshold | Ordinal value | Probe with target amplification |
| 105217-4 | Parainfluenza virus RNA [Presence] in Bronchial specimen by NAA with probe detection | Parainfluenza virus RNA | Specimen from bronchus | Threshold | Ordinal value | Probe with target amplification |
| 105218-2 | Parainfluenza virus 1 RNA [Presence] in Bronchial specimen by NAA with probe detection | Parainfluenza virus 1 RNA | Specimen from bronchus | Threshold | Ordinal value | Probe with target amplification |
| 105219-0 | Parainfluenza virus 2 RNA [Presence] in Bronchial specimen by NAA with probe detection | Parainfluenza virus 2 RNA | Specimen from bronchus | Threshold | Ordinal value | Probe with target amplification |
| 105220-8 | Parainfluenza virus 3 RNA [Presence] in Bronchial specimen by NAA with probe detection | Parainfluenza virus 3 RNA | Specimen from bronchus | Threshold | Ordinal value | Probe with target amplification |
| 105221-6 | Parainfluenza virus 4 RNA [Presence] in Bronchial specimen by NAA with probe detection | Parainfluenza virus 4 RNA | Specimen from bronchus | Threshold | Ordinal value | Probe with target amplification |
| 105222-4 | Human metapneumovirus RNA [Presence] in Bronchial specimen by NAA with probe detection | Human metapneumovirus RNA | Specimen from bronchus | Threshold | Ordinal value | Probe with target amplification |
| 105223-2 | Rhinovirus RNA [Presence] in Bronchial specimen by NAA with probe detection | Rhinovirus RNA | Specimen from bronchus | Threshold | Ordinal value | Probe with target amplification |
| 105226-5 | Tropheryma whipplei DNA [Presence] in Saliva (oral fluid) by NAA with probe detection | Tropheryma whipplei DNA | Saliva specimen | Threshold | Ordinal value | Probe with target amplification |
| 105227-3 | Tropheryma whipplei DNA [Presence] in Urine by NAA with probe detection | Tropheryma whipplei DNA | Urine specimen | Threshold | Ordinal value | Probe with target amplification |
| 105228-1 | Enterovirus RNA [Presence] in Serum or Plasma by NAA with probe detection | Enterovirus RNA | Serum or plasma specimen | Threshold | Ordinal value | Probe with target amplification |
| 105230-7 | Chikungunya virus RNA [Presence] in Blood by NAA with probe detection | Chikungunya virus RNA | Blood specimen | Threshold | Ordinal value | Probe with target amplification |
| 105231-5 | Respiratory syncytial virus RNA [Presence] in Sputum by NAA with probe detection | Human Respiratory syncytial virus RNA | Sputum specimen | Threshold | Ordinal value | Probe with target amplification |
| 105233-1 | Influenza virus A RNA [Presence] in Sputum by NAA with probe detection | Influenza A virus RNA | Sputum specimen | Threshold | Ordinal value | Probe with target amplification |
| 105234-9 | Influenza virus B RNA [Presence] in Sputum by NAA with probe detection | Influenza B virus RNA | Sputum specimen | Threshold | Ordinal value | Probe with target amplification |
| 105235-6 | Parainfluenza virus RNA [Presence] in Sputum by NAA with probe detection | Parainfluenza virus RNA | Sputum specimen | Threshold | Ordinal value | Probe with target amplification |
| 105236-4 | Human metapneumovirus RNA [Presence] in Sputum by NAA with probe detection | Human metapneumovirus RNA | Sputum specimen | Threshold | Ordinal value | Probe with target amplification |
| 105237-2 | Rhinovirus RNA [Presence] in Sputum by NAA with probe detection | Rhinovirus RNA | Sputum specimen | Threshold | Ordinal value | Probe with target amplification |
| 105238-0 | Adenovirus DNA [Presence] in Sputum by NAA with probe detection | Adenovirus DNA | Sputum specimen | Threshold | Ordinal value | Probe with target amplification |
| 105339-6 | Chlamydia trachomatis L1 DNA [Presence] in Specimen by NAA with probe detection | Chlamydia trachomatis serovar L1 DNA | Specimen | Threshold | Ordinal value | Probe with target amplification |
| 105340-4 | Chlamydia trachomatis L3 DNA [Presence] in Specimen by NAA with probe detection | Chlamydia trachomatis serovar L3 DNA | Specimen | Threshold | Ordinal value | Probe with target amplification |
| 105430-3 | Human coronavirus OC43 RNA [Presence] in Nasopharynx by NAA with probe detection | Human coronavirus OC43 RNA | Specimen from nasopharynx | Threshold | Ordinal value | Probe with target amplification |
| 105431-1 | Human coronavirus NL63 RNA [Presence] in Nasopharynx by NAA with probe detection | Human coronavirus NL63 RNA | Specimen from nasopharynx | Threshold | Ordinal value | Probe with target amplification |
| 105432-9 | Human coronavirus HKU1 RNA [Presence] in Nasopharynx by NAA with probe detection | Human coronavirus HKU1 RNA | Specimen from nasopharynx | Threshold | Ordinal value | Probe with target amplification |
| 105433-7 | Human bocavirus DNA [Presence] in Nasopharynx by NAA with probe detection | Human bocavirus DNA | Specimen from nasopharynx | Threshold | Ordinal value | Probe with target amplification |
| 105434-5 | Parechovirus RNA [Presence] in Nasopharynx by NAA with probe detection | Parechovirus RNA | Specimen from nasopharynx | Threshold | Ordinal value | Probe with target amplification |
| 105435-2 | Legionella pneumophila DNA [Presence] in Nasopharynx by NAA with probe detection | Legionella pneumophila DNA | Specimen from nasopharynx | Threshold | Ordinal value | Probe with target amplification |
| 105436-0 | Haemophilus influenzae DNA [Presence] in Nasopharynx by NAA with probe detection | Haemophilus influenzae DNA | Specimen from nasopharynx | Threshold | Ordinal value | Probe with target amplification |
| 105437-8 | Streptococcus pneumoniae DNA [Presence] in Nasopharynx by NAA with probe detection | Streptococcus pneumoniae DNA | Specimen from nasopharynx | Threshold | Ordinal value | Probe with target amplification |
| 105609-2 | Bordetella parapertussis DNA [Presence] in Lower respiratory specimen by NAA with probe detection | Bordetella parapertussis DNA | Lower respiratory tract specimen | Threshold | Ordinal value | Probe with target amplification |
| 105611-8 | Chlamydophila pneumoniae DNA [Presence] in Bronchoalveolar lavage by NAA with probe detection | Chlamydophila pneumoniae DNA | Bronchoalveolar lavage fluid specimen | Threshold | Ordinal value | Probe with target amplification |
| 105612-6 | Mycoplasma pneumoniae DNA [Presence] in Bronchoalveolar lavage by NAA with probe detection | Mycoplasma pneumoniae DNA | Bronchoalveolar lavage fluid specimen | Threshold | Ordinal value | Probe with target amplification |
| 105613-4 | Pneumocystis jirovecii DNA [Presence] in Bronchoalveolar lavage by NAA with probe detection | Pneumocystis jirovecii DNA | Bronchoalveolar lavage fluid specimen | Threshold | Ordinal value | Probe with target amplification |
| 105615-9 | Bordetella pertussis DNA [Presence] in Bronchoalveolar lavage by NAA with probe detection | Bordetella pertussis DNA | Bronchoalveolar lavage fluid specimen | Threshold | Ordinal value | Probe with target amplification |
| 105616-7 | Bordetella parapertussis DNA [Presence] in Bronchoalveolar lavage by NAA with probe detection | Bordetella parapertussis DNA | Bronchoalveolar lavage fluid specimen | Threshold | Ordinal value | Probe with target amplification |
| 105623-3 | Mycoplasma hominis DNA [Presence] in Urine by NAA with probe detection | Mycoplasma hominis DNA | Urine specimen | Threshold | Ordinal value | Probe with target amplification |
| 105624-1 | Ureaplasma urealyticum DNA [Presence] in Urine by NAA with probe detection | Ureaplasma urealyticum DNA | Urine specimen | Threshold | Ordinal value | Probe with target amplification |
| 105625-8 | Ureaplasma parvum DNA [Presence] in Urine by NAA with probe detection | Ureaplasma parvum DNA | Urine specimen | Threshold | Ordinal value | Probe with target amplification |
| 105627-4 | Abiotrophia defectiva DNA [Presence] in Specimen by NAA with probe detection | Abiotrophia defectiva DNA | Specimen | Threshold | Ordinal value | Probe with target amplification |
| 105629-0 | Actinobacillus pleuropneumoniae DNA [Presence] in Specimen by NAA with probe detection | Actinobacillus pleuropneumoniae DNA | Specimen | Threshold | Ordinal value | Probe with target amplification |
| 105630-8 | Aerococcus urinae DNA [Presence] in Specimen by NAA with probe detection | Aerococcus urinae DNA | Specimen | Threshold | Ordinal value | Probe with target amplification |
| 105631-6 | Aerococcus viridans DNA [Presence] in Specimen by NAA with probe detection | Aerococcus viridans DNA | Specimen | Threshold | Ordinal value | Probe with target amplification |
| 105632-4 | Aggregatibacter actinomycetemcomitans DNA [Presence] in Specimen by NAA with probe detection | Aggregatibacter actinomycetemcomitans DNA | Specimen | Threshold | Ordinal value | Probe with target amplification |
| 105633-2 | Aggregatibacter aphrophilus DNA [Presence] in Specimen by NAA with probe detection | Aggregatibacter aphrophilus DNA | Specimen | Threshold | Ordinal value | Probe with target amplification |
| 105634-0 | Alcaligenes faecalis DNA [Presence] in Specimen by NAA with probe detection | Alcaligenes faecalis DNA | Specimen | Threshold | Ordinal value | Probe with target amplification |
| 105635-7 | Anaerococcus spp DNA [Presence] in Specimen by NAA with probe detection | Anaerococcus DNA | Specimen | Threshold | Ordinal value | Probe with target amplification |
| 105636-5 | Bacteroides fragilis DNA [Presence] in Specimen by NAA with probe detection | Bacteroides fragilis DNA | Specimen | Threshold | Ordinal value | Probe with target amplification |
| 105637-3 | Bartonella bacilliformis DNA [Presence] in Specimen by NAA with probe detection | Bartonella bacilliformis DNA | Specimen | Threshold | Ordinal value | Probe with target amplification |
| 105640-7 | Campylobacter sp DNA [Presence] in Specimen by NAA with probe detection | Campylobacter DNA | Specimen | Threshold | Ordinal value | Probe with target amplification |
| 105641-5 | Cardiobacterium hominis DNA [Presence] in Specimen by NAA with probe detection | Cardiobacterium hominis DNA | Specimen | Threshold | Ordinal value | Probe with target amplification |
| 105643-1 | Citrobacter koseri DNA [Presence] in Specimen by NAA with probe detection | Citrobacter koseri DNA | Specimen | Threshold | Ordinal value | Probe with target amplification |
| 105644-9 | Clostridium perfringens DNA [Presence] in Specimen by NAA with probe detection | Clostridium perfringens DNA | Specimen | Threshold | Ordinal value | Probe with target amplification |
| 105646-4 | Corynebacterium jeikeium DNA [Presence] in Specimen by NAA with probe detection | Corynebacterium jeikeium DNA | Specimen | Threshold | Ordinal value | Probe with target amplification |
| 105647-2 | Coxiella sp DNA [Presence] in Specimen by NAA with probe detection | Coxiella DNA | Specimen | Threshold | Ordinal value | Probe with target amplification |
| 105648-0 | Cutibacterium acnes DNA [Presence] in Specimen by NAA with probe detection | Cutibacterium acnes DNA | Specimen | Threshold | Ordinal value | Probe with target amplification |
| 105649-8 | Eikenella corrodens DNA [Presence] in Specimen by NAA with probe detection | Eikenella corrodens DNA | Specimen | Threshold | Ordinal value | Probe with target amplification |
| 105650-6 | Enterobacter cloacae DNA [Presence] in Specimen by NAA with probe detection | Enterobacter cloacae DNA | Specimen | Threshold | Ordinal value | Probe with target amplification |
| 105651-4 | Enterobacter cloacae complex DNA [Presence] in Specimen by NAA with probe detection | Enterobacter cloacae complex DNA | Specimen | Threshold | Ordinal value | Probe with target amplification |
| 105652-2 | Enterobacter hormaechei DNA [Presence] in Specimen by NAA with probe detection | Enterobacter hormaechei DNA | Specimen | Threshold | Ordinal value | Probe with target amplification |
| 105653-0 | Enterobacter roggenkampii DNA [Presence] in Specimen by NAA with probe detection | Enterobacter roggenkampii DNA | Specimen | Threshold | Ordinal value | Probe with target amplification |
| 105654-8 | Finegoldia magna DNA [Presence] in Specimen by NAA with probe detection | Finegoldia magna DNA | Specimen | Threshold | Ordinal value | Probe with target amplification |
| 105655-5 | Fusobacterium sp DNA [Presence] in Specimen by NAA with probe detection | Fusobacterium DNA | Specimen | Threshold | Ordinal value | Probe with target amplification |
| 105656-3 | Fusobacterium necrophorum DNA [Presence] in Specimen by NAA with probe detection | Fusobacterium necrophorum DNA | Specimen | Threshold | Ordinal value | Probe with target amplification |
| 105657-1 | Fusobacterium nucleatum DNA [Presence] in Specimen by NAA with probe detection | Fusobacterium nucleatum DNA | Specimen | Threshold | Ordinal value | Probe with target amplification |
| 105658-9 | Granulicatella adiacens DNA [Presence] in Specimen by NAA with probe detection | Granulicatella adiacens DNA | Specimen | Threshold | Ordinal value | Probe with target amplification |
| 105659-7 | Haemophilus haemolyticus DNA [Presence] in Specimen by NAA with probe detection | Haemophilus haemolyticus DNA | Specimen | Threshold | Ordinal value | Probe with target amplification |
| 105660-5 | Haemophilus parainfluenzae DNA [Presence] in Specimen by NAA with probe detection | Haemophilus parainfluenzae DNA | Specimen | Threshold | Ordinal value | Probe with target amplification |
| 105662-1 | Klebsiella oxytoca DNA [Presence] in Specimen by NAA with probe detection | Klebsiella oxytoca DNA | Specimen | Threshold | Ordinal value | Probe with target amplification |
| 105663-9 | Klebsiella variicola subspecies. tropica DNA [Presence] in Specimen by NAA with probe detection | Klebsiella variicola subspecies tropica DNA | Specimen | Threshold | Ordinal value | Probe with target amplification |
| 105665-4 | Micrococcus luteus DNA [Presence] in Specimen by NAA with probe detection | Micrococcus luteus DNA | Specimen | Threshold | Ordinal value | Probe with target amplification |
| 105666-2 | Moraxella catarrhalis DNA [Presence] in Specimen by NAA with probe detection | Moraxella catarrhalis DNA | Specimen | Threshold | Ordinal value | Probe with target amplification |
| 105667-0 | Morganella morganii DNA [Presence] in Specimen by NAA with probe detection | Morganella morganii DNA | Specimen | Threshold | Ordinal value | Probe with target amplification |
| 105668-8 | Nocardia sp DNA [Presence] in Specimen by NAA with probe detection | Nocardia DNA | Specimen | Threshold | Ordinal value | Probe with target amplification |
| 105669-6 | Pantoea sp DNA [Presence] in Specimen by NAA with probe detection | Pantoea DNA | Specimen | Threshold | Ordinal value | Probe with target amplification |
| 105670-4 | Pasteurella multocida DNA [Presence] in Specimen by NAA with probe detection | Pasteurella multocida DNA | Specimen | Threshold | Ordinal value | Probe with target amplification |
| 105671-2 | Prevotella buccae DNA [Presence] in Specimen by NAA with probe detection | Prevotella buccae DNA | Specimen | Threshold | Ordinal value | Probe with target amplification |
| 105672-0 | Prevotella intermedia DNA [Presence] in Specimen by NAA with probe detection | Prevotella intermedia DNA | Specimen | Threshold | Ordinal value | Probe with target amplification |
| 105673-8 | Propionibacteriaceae DNA [Presence] in Specimen by NAA with probe detection | Propionibacteriaceae DNA | Specimen | Threshold | Ordinal value | Probe with target amplification |
| 105674-6 | Proteus sp DNA [Presence] in Specimen by NAA with probe detection | Proteus DNA | Specimen | Threshold | Ordinal value | Probe with target amplification |
| 105675-3 | Providencia stuartii DNA [Presence] in Specimen by NAA with probe detection | Providencia stuartii DNA | Specimen | Threshold | Ordinal value | Probe with target amplification |
| 105677-9 | Streptococcus sp DNA [Presence] in Specimen by NAA with probe detection | Streptococcus DNA | Specimen | Threshold | Ordinal value | Probe with target amplification |
| 105678-7 | Streptococcus dysgalactiae DNA [Presence] in Specimen by NAA with probe detection | Streptococcus dysgalactiae DNA | Specimen | Threshold | Ordinal value | Probe with target amplification |
| 105679-5 | Streptococcus equinus DNA [Presence] in Specimen by NAA with probe detection | Streptococcus equinus DNA | Specimen | Threshold | Ordinal value | Probe with target amplification |
| 105680-3 | Streptococcus gordonii DNA [Presence] in Specimen by NAA with probe detection | Streptococcus gordonii DNA | Specimen | Threshold | Ordinal value | Probe with target amplification |
| 105681-1 | Streptococcus mitis DNA [Presence] in Specimen by NAA with probe detection | Streptococcus mitis DNA | Specimen | Threshold | Ordinal value | Probe with target amplification |
| 105682-9 | Streptococcus salivarius DNA [Presence] in Specimen by NAA with probe detection | Streptococcus salivarius DNA | Specimen | Threshold | Ordinal value | Probe with target amplification |
| 105683-7 | Yersinia enterocolitica DNA [Presence] in Specimen by NAA with probe detection | Yersinia enterocolitica DNA | Specimen | Threshold | Ordinal value | Probe with target amplification |
| 105684-5 | Yersinia pseudotuberculosis complex DNA [Presence] in Specimen by NAA with probe detection | Yersinia pseudotuberculosis DNA | Specimen | Threshold | Ordinal value | Probe with target amplification |
| 105686-0 | Aspergillus clavatus DNA [Presence] in Specimen by NAA with probe detection | Aspergillus clavatus DNA | Specimen | Threshold | Ordinal value | Probe with target amplification |
| 105687-8 | Aspergillus flavus DNA [Presence] in Specimen by NAA with probe detection | Aspergillus flavus DNA | Specimen | Threshold | Ordinal value | Probe with target amplification |
| 105688-6 | Aspergillus niger DNA [Presence] in Specimen by NAA with probe detection | Aspergillus niger DNA | Specimen | Threshold | Ordinal value | Probe with target amplification |
| 105689-4 | Candida duobushaemulonii DNA [Presence] in Specimen by NAA with probe detection | Candidozyma duobushaemuli DNA | Specimen | Threshold | Ordinal value | Probe with target amplification |
| 105691-0 | Cladosporium sp DNA [Presence] in Specimen by NAA with probe detection | Cladosporium DNA | Specimen | Threshold | Ordinal value | Probe with target amplification |
| 105692-8 | Cryptococcus gattii DNA [Presence] in Specimen by NAA with probe detection | Cryptococcus gattii DNA | Specimen | Threshold | Ordinal value | Probe with target amplification |
| 105693-6 | Nakaseomyces bracarensis DNA [Presence] in Specimen by NAA with probe detection | Nakaseomyces bracarensis DNA | Specimen | Threshold | Ordinal value | Probe with target amplification |
| 105694-4 | Nakaseomyces nivariensis DNA [Presence] in Specimen by NAA with probe detection | Nakaseomyces nivariensis DNA | Specimen | Threshold | Ordinal value | Probe with target amplification |
| 105695-1 | Pichia sp DNA [Presence] in Specimen by NAA with probe detection | Pichia DNA | Specimen | Threshold | Ordinal value | Probe with target amplification |
| 105696-9 | Pichia kudriavzevii DNA [Presence] in Specimen by NAA with probe detection | Pichia kudriavzevii DNA | Specimen | Threshold | Ordinal value | Probe with target amplification |
| 105697-7 | Pneumocystis murina DNA [Presence] in Specimen by NAA with probe detection | Pneumocystis murina DNA | Specimen | Threshold | Ordinal value | Probe with target amplification |
| 105698-5 | Saccharomyces sp DNA [Presence] in Specimen by NAA with probe detection | Saccharomyces DNA | Specimen | Threshold | Ordinal value | Probe with target amplification |
| 105699-3 | Baker's yeast DNA [Presence] in Specimen by NAA with probe detection | Saccharomyces cerevisiae DNA | Specimen | Threshold | Ordinal value | Probe with target amplification |
| 105700-9 | Scedosporium sp DNA [Presence] in Specimen by NAA with probe detection | Scedosporium DNA | Specimen | Threshold | Ordinal value | Probe with target amplification |
| 105726-4 | Parainfluenza virus RNA [Presence] in Bronchoalveolar lavage by NAA with probe detection | Parainfluenza virus RNA | Bronchoalveolar lavage fluid specimen | Threshold | Ordinal value | Probe with target amplification |
| 105727-2 | Parainfluenza virus 1 RNA [Presence] in Bronchoalveolar lavage by NAA with probe detection | Parainfluenza virus 1 RNA | Bronchoalveolar lavage fluid specimen | Threshold | Ordinal value | Probe with target amplification |
| 105728-0 | Parainfluenza virus 2 RNA [Presence] in Bronchoalveolar lavage by NAA with probe detection | Parainfluenza virus 2 RNA | Bronchoalveolar lavage fluid specimen | Threshold | Ordinal value | Probe with target amplification |
| 105729-8 | Parainfluenza virus 3 RNA [Presence] in Bronchoalveolar lavage by NAA with probe detection | Parainfluenza virus 3 RNA | Bronchoalveolar lavage fluid specimen | Threshold | Ordinal value | Probe with target amplification |
| 105730-6 | Parainfluenza virus 4 RNA [Presence] in Bronchoalveolar lavage by NAA with probe detection | Parainfluenza virus 4 RNA | Bronchoalveolar lavage fluid specimen | Threshold | Ordinal value | Probe with target amplification |
| 105731-4 | Human metapneumovirus RNA [Presence] in Bronchoalveolar lavage by NAA with probe detection | Human metapneumovirus RNA | Bronchoalveolar lavage fluid specimen | Threshold | Ordinal value | Probe with target amplification |
| 105732-2 | Rhinovirus RNA [Presence] in Bronchoalveolar lavage by NAA with probe detection | Rhinovirus RNA | Bronchoalveolar lavage fluid specimen | Threshold | Ordinal value | Probe with target amplification |
| 105733-0 | Human coronavirus RNA [Presence] in Bronchoalveolar lavage by NAA with probe detection | Human coronavirus RNA | Bronchoalveolar lavage fluid specimen | Threshold | Ordinal value | Probe with target amplification |
| 105735-5 | Human coronavirus NL63 RNA [Presence] in Bronchoalveolar lavage by NAA with probe detection | Human coronavirus NL63 RNA | Bronchoalveolar lavage fluid specimen | Threshold | Ordinal value | Probe with target amplification |
| 105736-3 | Human coronavirus OC43 RNA [Presence] in Bronchoalveolar lavage by NAA with probe detection | Human coronavirus OC43 RNA | Bronchoalveolar lavage fluid specimen | Threshold | Ordinal value | Probe with target amplification |
| 105738-9 | Enterovirus RNA [Presence] in Bronchoalveolar lavage by NAA with probe detection | Enterovirus RNA | Bronchoalveolar lavage fluid specimen | Threshold | Ordinal value | Probe with target amplification |
| 105739-7 | Cytomegalovirus DNA [Presence] in Pericardial fluid by NAA with probe detection | Cytomegalovirus DNA | Pericardial fluid specimen | Threshold | Ordinal value | Probe with target amplification |
| 105740-5 | Adenovirus DNA [Presence] in Pericardial fluid by NAA with probe detection | Adenovirus DNA | Pericardial fluid specimen | Threshold | Ordinal value | Probe with target amplification |
| 105741-3 | Epstein Barr virus DNA [Presence] in Pericardial fluid by NAA with probe detection | Epstein-Barr virus DNA | Pericardial fluid specimen | Threshold | Ordinal value | Probe with target amplification |
| 105743-9 | Herpes virus 6 DNA [Presence] in Pericardial fluid by NAA with probe detection | Human herpesvirus 6 DNA | Pericardial fluid specimen | Threshold | Ordinal value | Probe with target amplification |
| 105744-7 | Parvovirus B19 DNA [Presence] in Pericardial fluid by NAA with probe detection | Human parvovirus B19 DNA | Pericardial fluid specimen | Threshold | Ordinal value | Probe with target amplification |
| 105745-4 | Enterovirus RNA [Presence] in Skin by NAA with probe detection | Enterovirus RNA | Specimen from skin | Threshold | Ordinal value | Probe with target amplification |
| 105746-2 | Herpes virus 6 DNA [Presence] in Skin by NAA with probe detection | Human herpesvirus 6 DNA | Specimen from skin | Threshold | Ordinal value | Probe with target amplification |
| 105747-0 | Adenovirus DNA [Presence] in Urethra by NAA with probe detection | Adenovirus DNA | Specimen from urethra | Threshold | Ordinal value | Probe with target amplification |
| 105748-8 | SARS-CoV-2 (COVID-19) RNA [Presence] in Tracheal aspirate by NAA with probe detection | Severe acute respiratory syndrome coronavirus 2 RNA | – | Threshold | Ordinal value | Probe with target amplification |
| 105749-6 | SARS-CoV-2 (COVID-19) RNA [Presence] in Bronchoalveolar lavage by NAA with probe detection | Severe acute respiratory syndrome coronavirus 2 RNA | Bronchoalveolar lavage fluid specimen | Threshold | Ordinal value | Probe with target amplification |
| 105918-7 | Streptococcus pneumoniae DNA [Presence] in Bronchoalveolar lavage by NAA with probe detection | Streptococcus pneumoniae DNA | Bronchoalveolar lavage fluid specimen | Threshold | Ordinal value | Probe with target amplification |
| 105919-5 | Haemophilus influenzae DNA [Presence] in Bronchoalveolar lavage by NAA with probe detection | Haemophilus influenzae DNA | Bronchoalveolar lavage fluid specimen | Threshold | Ordinal value | Probe with target amplification |
| 105922-9 | Neisseria gonorrhoeae DNA [Presence] in Semen by NAA with probe detection | Neisseria gonorrhoeae DNA | Semen sample | Threshold | Ordinal value | Probe with target amplification |
| 105927-8 | Mycobacterium tuberculosis DNA [Presence] in Stool by NAA with probe detection | Mycobacterium tuberculosis DNA | Stool specimen | Threshold | Ordinal value | Probe with target amplification |
| 106013-6 | Mycoplasma hominis DNA [Presence] in Urethra by NAA with probe detection | Mycoplasma hominis DNA | Specimen from urethra | Threshold | Ordinal value | Probe with target amplification |
| 106014-4 | Ureaplasma urealyticum DNA [Presence] in Urethra by NAA with probe detection | Ureaplasma urealyticum DNA | Specimen from urethra | Threshold | Ordinal value | Probe with target amplification |
| 106015-1 | Ureaplasma parvum DNA [Presence] in Urethra by NAA with probe detection | Ureaplasma parvum DNA | Specimen from urethra | Threshold | Ordinal value | Probe with target amplification |
| 106019-3 | Mycoplasma genitalium DNA [Presence] in Semen by NAA with probe detection | Mycoplasma genitalium DNA | Semen sample | Threshold | Ordinal value | Probe with target amplification |
| 106020-1 | Mycoplasma hominis DNA [Presence] in Semen by NAA with probe detection | Mycoplasma hominis DNA | Semen sample | Threshold | Ordinal value | Probe with target amplification |
| 106021-9 | Ureaplasma urealyticum DNA [Presence] in Semen by NAA with probe detection | Ureaplasma urealyticum DNA | Semen sample | Threshold | Ordinal value | Probe with target amplification |
| 106022-7 | Ureaplasma parvum DNA [Presence] in Semen by NAA with probe detection | Ureaplasma parvum DNA | Semen sample | Threshold | Ordinal value | Probe with target amplification |
| 106023-5 | Trichomonas vaginalis DNA [Presence] in Semen by NAA with probe detection | Trichomonas vaginalis DNA | Semen sample | Threshold | Ordinal value | Probe with target amplification |
| 106025-0 | Mycoplasma hominis DNA [Presence] in Vaginal fluid by NAA with probe detection | Mycoplasma hominis DNA | Specimen from vagina | Threshold | Ordinal value | Probe with target amplification |
| 106026-8 | Ureaplasma urealyticum DNA [Presence] in Vaginal fluid by NAA with probe detection | Ureaplasma urealyticum DNA | Specimen from vagina | Threshold | Ordinal value | Probe with target amplification |
| 106027-6 | Ureaplasma parvum DNA [Presence] in Vaginal fluid by NAA with probe detection | Ureaplasma parvum DNA | Specimen from vagina | Threshold | Ordinal value | Probe with target amplification |
| 106028-4 | Cytomegalovirus DNA [Presence] in Genital specimen by NAA with probe detection | Cytomegalovirus DNA | Specimen from genital system | Threshold | Ordinal value | Probe with target amplification |
| 106029-2 | Varicella zoster virus DNA [Presence] in Genital specimen by NAA with probe detection | Varicella virus DNA | Specimen from genital system | Threshold | Ordinal value | Probe with target amplification |
| 106206-6 | Adenovirus DNA [Presence] in Bronchial specimen by NAA with probe detection | Adenovirus DNA | Specimen from bronchus | Threshold | Ordinal value | Probe with target amplification |
| 106207-4 | Human coronavirus RNA [Presence] in Bronchial specimen by NAA with probe detection | Human coronavirus RNA | Specimen from bronchus | Threshold | Ordinal value | Probe with target amplification |
| 106209-0 | Human coronavirus NL63 RNA [Presence] in Bronchial specimen by NAA with probe detection | Human coronavirus NL63 RNA | Specimen from bronchus | Threshold | Ordinal value | Probe with target amplification |
| 106210-8 | Human coronavirus OC43 RNA [Presence] in Bronchial specimen by NAA with probe detection | Human coronavirus OC43 RNA | Specimen from bronchus | Threshold | Ordinal value | Probe with target amplification |
| 106212-4 | Enterovirus RNA [Presence] in Bronchial specimen by NAA with probe detection | Enterovirus RNA | Specimen from bronchus | Threshold | Ordinal value | Probe with target amplification |
| 106213-2 | Respiratory syncytial virus A RNA [Presence] in Bronchoalveolar lavage by NAA with probe detection | Human respiratory syncytial virus A RNA | Bronchoalveolar lavage fluid specimen | Threshold | Ordinal value | Probe with target amplification |
| 106214-0 | Respiratory syncytial virus B RNA [Presence] in Bronchoalveolar lavage by NAA with probe detection | Human respiratory syncytial virus B RNA | Bronchoalveolar lavage fluid specimen | Threshold | Ordinal value | Probe with target amplification |
| 106508-5 | Human papilloma virus 16 mRNA [Presence] in Vaginal fluid by NAA with probe detection | Alphapapillomavirus 9 mRNA | Specimen from vagina | Threshold | Ordinal value | Probe with target amplification |
| 106552-3 | Campylobacter sp DNA [Presence] in Stool by NAA with probe detection | Campylobacter DNA | Stool specimen | Threshold | Ordinal value | Probe with target amplification |
| 106555-6 | Herpes simplex virus 1 DNA [Presence] in Throat by NAA with probe detection | Human alphaherpesvirus 1 DNA | Specimen from throat | Threshold | Ordinal value | Probe with target amplification |
| 106557-2 | Herpes simplex virus 2 DNA [Presence] in Throat by NAA with probe detection | Human alphaherpesvirus 2 DNA | Specimen from throat | Threshold | Ordinal value | Probe with target amplification |
| 106559-8 | Treponema pallidum DNA [Presence] in Throat by NAA with probe detection | Treponema pallidum DNA | Specimen from throat | Threshold | Ordinal value | Probe with target amplification |
| 106560-6 | Treponema pallidum DNA [Presence] in Vaginal fluid by NAA with probe detection | Treponema pallidum DNA | Specimen from vagina | Threshold | Ordinal value | Probe with target amplification |
| 106561-4 | Treponema pallidum DNA [Presence] in Urine by NAA with probe detection | Treponema pallidum DNA | Urine specimen | Threshold | Ordinal value | Probe with target amplification |
| 106562-2 | Trichomonas vaginalis DNA [Presence] in Throat by NAA with probe detection | Trichomonas vaginalis DNA | Specimen from throat | Threshold | Ordinal value | Probe with target amplification |
| 106566-3 | Mycoplasma hominis DNA [Presence] in Throat by NAA with probe detection | Mycoplasma hominis DNA | Specimen from throat | Threshold | Ordinal value | Probe with target amplification |
| 106567-1 | Gardnerella vaginalis DNA [Presence] in Throat by NAA with probe detection | Gardnerella vaginalis DNA | Specimen from throat | Threshold | Ordinal value | Probe with target amplification |
| 106568-9 | Gardnerella vaginalis DNA [Presence] in Vaginal fluid by NAA with probe detection | Gardnerella vaginalis DNA | Specimen from vagina | Threshold | Ordinal value | Probe with target amplification |
| 106569-7 | Gardnerella vaginalis DNA [Presence] in Urine by NAA with probe detection | Gardnerella vaginalis DNA | Urine specimen | Threshold | Ordinal value | Probe with target amplification |
| 106570-5 | Mycoplasma genitalium DNA [Presence] in Anal by NAA with probe detection | Mycoplasma genitalium DNA | Specimen from anus | Threshold | Ordinal value | Probe with target amplification |
| 106571-3 | Herpes simplex virus 2 DNA [Presence] in Anal by NAA with probe detection | Human alphaherpesvirus 2 DNA | Specimen from anus | Threshold | Ordinal value | Probe with target amplification |
| 106572-1 | Neisseria gonorrhoeae DNA [Presence] in Anal by NAA with probe detection | Neisseria gonorrhoeae DNA | Specimen from anus | Threshold | Ordinal value | Probe with target amplification |
| 106573-9 | Trichomonas vaginalis DNA [Presence] in Anal by NAA with probe detection | Trichomonas vaginalis DNA | Specimen from anus | Threshold | Ordinal value | Probe with target amplification |
| 106574-7 | Mycoplasma hominis DNA [Presence] in Anal by NAA with probe detection | Mycoplasma hominis DNA | Specimen from anus | Threshold | Ordinal value | Probe with target amplification |
| 106575-4 | Gardnerella vaginalis DNA [Presence] in Anal by NAA with probe detection | Gardnerella vaginalis DNA | Specimen from anus | Threshold | Ordinal value | Probe with target amplification |
| 106576-2 | Treponema pallidum DNA [Presence] in Anal by NAA with probe detection | Treponema pallidum DNA | Specimen from anus | Threshold | Ordinal value | Probe with target amplification |
| 107168-7 | Mycobacterium tuberculosis DNA [Presence] in Tissue by NAA with probe detection | Mycobacterium tuberculosis DNA | Tissue specimen | Threshold | Ordinal value | Probe with target amplification |
| 107342-8 | Cytomegalovirus DNA [Presence] in Bronchoalveolar lavage by NAA with probe detection | Cytomegalovirus DNA | Bronchoalveolar lavage fluid specimen | Threshold | Ordinal value | Probe with target amplification |
| 107343-6 | Human bocavirus DNA [Presence] in Sputum by NAA with probe detection | Human bocavirus DNA | Sputum specimen | Threshold | Ordinal value | Probe with target amplification |
| 107345-1 | Herpes virus 7 DNA [Presence] in Cerebrospinal Fluid by NAA with probe detection | Human herpesvirus 7 DNA | Cerebrospinal fluid specimen | Threshold | Ordinal value | Probe with target amplification |
| 107346-9 | Herpes virus 6 DNA [Presence] in Serum or Plasma by NAA with probe detection | Human herpesvirus 6 DNA | Serum or plasma specimen | Threshold | Ordinal value | Probe with target amplification |
| 107355-0 | Bordetella parapertussis DNA [Presence] in Bronchial specimen by NAA with probe detection | Bordetella parapertussis DNA | Specimen from bronchus | Threshold | Ordinal value | Probe with target amplification |
| 107356-8 | Bordetella pertussis DNA [Presence] in Bronchial specimen by NAA with probe detection | Bordetella pertussis DNA | Specimen from bronchus | Threshold | Ordinal value | Probe with target amplification |
| 107357-6 | Streptococcus pneumoniae DNA [Presence] in Bronchial specimen by NAA with probe detection | Streptococcus pneumoniae DNA | Specimen from bronchus | Threshold | Ordinal value | Probe with target amplification |
| 107358-4 | Haemophilus influenzae DNA [Presence] in Bronchial specimen by NAA with probe detection | Haemophilus influenzae DNA | Specimen from bronchus | Threshold | Ordinal value | Probe with target amplification |
| 107359-2 | Legionella pneumophila DNA [Presence] in Bronchial specimen by NAA with probe detection | Legionella pneumophila DNA | Specimen from bronchus | Threshold | Ordinal value | Probe with target amplification |
| 107360-0 | Mycoplasma pneumoniae DNA [Presence] in Bronchial specimen by NAA with probe detection | Mycoplasma pneumoniae DNA | Specimen from bronchus | Threshold | Ordinal value | Probe with target amplification |
| 107925-0 | Epstein Barr virus DNA [Presence] in Serum or Plasma by NAA with probe detection | Epstein-Barr virus DNA | Serum or plasma specimen | Threshold | Ordinal value | Probe with target amplification |
| 108081-1 | Rubella virus RNA [Presence] in Amniotic fluid by NAA with probe detection | Rubella virus RNA | Amniotic fluid specimen | Threshold | Ordinal value | Probe with target amplification |
| 108082-9 | Rubella virus RNA [Presence] in Throat by NAA with probe detection | Rubella virus RNA | Specimen from throat | Threshold | Ordinal value | Probe with target amplification |
| 108083-7 | Rubella virus RNA [Presence] in Blood by NAA with probe detection | Rubella virus RNA | Blood specimen | Threshold | Ordinal value | Probe with target amplification |
| 108084-5 | Toxoplasma gondii DNA [Presence] in Urine by NAA with probe detection | Toxoplasma gondii DNA | Urine specimen | Threshold | Ordinal value | Probe with target amplification |
| 108089-4 | Tick-borne encephalitis virus RNA [Presence] in Urine by NAA with probe detection | Orthoflavivirus encephalitidis RNA | Urine specimen | Threshold | Ordinal value | Probe with target amplification |
| 108092-8 | Rickettsia sp DNA [Presence] in Cerebrospinal Fluid by NAA with probe detection | Rickettsia DNA | Cerebrospinal fluid specimen | Threshold | Ordinal value | Probe with target amplification |
| 108097-7 | Monkeypox virus DNA [Presence] in Skin by NAA with probe detection | Orthopoxvirus monkeypox DNA | Specimen from skin | Threshold | Ordinal value | Probe with target amplification |
| 108098-5 | Epstein Barr virus DNA [Presence] in Respiratory system specimen by NAA with probe detection | Epstein-Barr virus DNA | Specimen from respiratory system | Threshold | Ordinal value | Probe with target amplification |
| 108103-3 | Hepatitis A virus RNA [Presence] in Blood by NAA with probe detection | Hepatitis A virus RNA | Blood specimen | Threshold | Ordinal value | Probe with target amplification |
| 108104-1 | Mumps virus RNA [Presence] in Saliva (oral fluid) by NAA with probe detection | Orthorubulavirus parotitidis RNA | Saliva specimen | Threshold | Ordinal value | Probe with target amplification |
| 108105-8 | Mumps virus RNA [Presence] in Blood by NAA with probe detection | Orthorubulavirus parotitidis RNA | Blood specimen | Threshold | Ordinal value | Probe with target amplification |
| 108106-6 | Measles virus RNA [Presence] in Throat by NAA with probe detection | Measles virus RNA | Specimen from throat | Threshold | Ordinal value | Probe with target amplification |
| 108107-4 | Measles virus RNA [Presence] in Blood by NAA with probe detection | Measles virus RNA | Blood specimen | Threshold | Ordinal value | Probe with target amplification |
| 108108-2 | BK virus DNA [Presence] in Blood by NAA with probe detection | Human polyomavirus 1 DNA | Blood specimen | Threshold | Ordinal value | Probe with target amplification |
| 108109-0 | Pneumocystis jirovecii DNA [Presence] in Respiratory system specimen by NAA with probe detection | Pneumocystis jirovecii DNA | Specimen from respiratory system | Threshold | Ordinal value | Probe with target amplification |
| 108111-6 | Hantavirus RNA [Presence] in Specimen by NAA with probe detection | Hantavirus RNA | Specimen | Threshold | Ordinal value | Probe with target amplification |
| 108112-4 | Tick-borne encephalitis virus RNA [Presence] in Blood by NAA with probe detection | Orthoflavivirus encephalitidis RNA | Blood specimen | Threshold | Ordinal value | Probe with target amplification |
| 108188-4 | Zika virus RNA [Presence] in Semen by NAA with probe detection | Orthoflavivirus zikaense RNA | Semen sample | Threshold | Ordinal value | Probe with target amplification |
| 108191-8 | Rubella virus RNA [Presence] in Saliva (oral fluid) by NAA with probe detection | Rubella virus RNA | Saliva specimen | Threshold | Ordinal value | Probe with target amplification |
| 108194-2 | Measles virus RNA [Presence] in Saliva (oral fluid) by NAA with probe detection | Measles virus RNA | Saliva specimen | Threshold | Ordinal value | Probe with target amplification |
| 108211-4 | Epstein Barr virus DNA [Presence] in Urine by NAA with probe detection | Epstein-Barr virus DNA | Urine specimen | Threshold | Ordinal value | Probe with target amplification |
| 111509-6 | Borrelia sp DNA [Presence] in Specimen by NAA with probe detection | Borrelia DNA | Specimen | Threshold | Ordinal value | Probe with target amplification |
| 112390-0 | Mycoplasma sp DNA [Presence] in Urine by NAA with probe detection | Mycoplasma DNA | Urine specimen | Threshold | Ordinal value | Probe with target amplification |
| 112395-9 | Treponema pallidum DNA [Presence] in Skin by NAA with probe detection | Treponema pallidum DNA | Specimen from skin | Threshold | Ordinal value | Probe with target amplification |
| 112396-7 | Haemophilus ducreyi DNA [Presence] in Skin by NAA with probe detection | Haemophilus ducreyi DNA | Specimen from skin | Threshold | Ordinal value | Probe with target amplification |
| 112397-5 | Cytomegalovirus DNA [Presence] in Skin by NAA with probe detection | Cytomegalovirus DNA | Specimen from skin | Threshold | Ordinal value | Probe with target amplification |
| 112399-1 | Ureaplasma urealyticum DNA [Presence] in Mouth by NAA with probe detection | Ureaplasma urealyticum DNA | – | Threshold | Ordinal value | Probe with target amplification |
| 112400-7 | Ureaplasma parvum DNA [Presence] in Mouth by NAA with probe detection | Ureaplasma parvum DNA | – | Threshold | Ordinal value | Probe with target amplification |
| 112401-5 | Trichomonas vaginalis DNA [Presence] in Mouth by NAA with probe detection | Trichomonas vaginalis DNA | – | Threshold | Ordinal value | Probe with target amplification |
| 112402-3 | Neisseria gonorrhoeae DNA [Presence] in Mouth by NAA with probe detection | Neisseria gonorrhoeae DNA | – | Threshold | Ordinal value | Probe with target amplification |
| 112403-1 | Mycoplasma hominis DNA [Presence] in Mouth by NAA with probe detection | Mycoplasma hominis DNA | – | Threshold | Ordinal value | Probe with target amplification |
| 112405-6 | Chlamydia trachomatis DNA [Presence] in Mouth by NAA with probe detection | Chlamydia trachomatis DNA | – | Threshold | Ordinal value | Probe with target amplification |
| 112408-0 | Rotavirus RNA [Presence] in Stool by NAA with probe detection | Rotavirus RNA | Stool specimen | Threshold | Ordinal value | Probe with target amplification |
| 11259-9 | Hepatitis C virus RNA [Presence] in Serum or Plasma by NAA with probe detection | Hepatitis C virus RNA | Serum or plasma specimen | Threshold | Ordinal value | Probe with target amplification |
| 112707-5 | Streptococcus pneumoniae DNA [Presence] in Wound by NAA with probe detection | Streptococcus pneumoniae DNA | Specimen from wound | Threshold | Ordinal value | Probe with target amplification |
| 112708-3 | Neisseria meningitidis DNA [Presence] in Wound by NAA with probe detection | Neisseria meningitidis DNA | Specimen from wound | Threshold | Ordinal value | Probe with target amplification |
| 112709-1 | Escherichia coli DNA [Presence] in Wound by NAA with probe detection | Escherichia coli DNA | Specimen from wound | Threshold | Ordinal value | Probe with target amplification |
| 112710-9 | Enterococcus faecium DNA [Presence] in Wound by NAA with probe detection | Enterococcus faecium DNA | Specimen from wound | Threshold | Ordinal value | Probe with target amplification |
| 112711-7 | Streptococcus sp DNA [Presence] in Wound by NAA with probe detection | Streptococcus DNA | Specimen from wound | Threshold | Ordinal value | Probe with target amplification |
| 112712-5 | Enterobacteriaceae DNA [Presence] in Wound by NAA with probe detection | Enterobacteriaceae DNA | Specimen from wound | Threshold | Ordinal value | Probe with target amplification |
| 112713-3 | Stenotrophomonas maltophilia DNA [Presence] in Wound by NAA with probe detection | Stenotrophomonas maltophilia DNA | Specimen from wound | Threshold | Ordinal value | Probe with target amplification |
| 112714-1 | Candida tropicalis DNA [Presence] in Wound by NAA with probe detection | Candida tropicalis DNA | Specimen from wound | Threshold | Ordinal value | Probe with target amplification |
| 112716-6 | Enterococcus faecalis DNA [Presence] in Wound by NAA with probe detection | Enterococcus faecalis DNA | Specimen from wound | Threshold | Ordinal value | Probe with target amplification |
| 112717-4 | Listeria monocytogenes DNA [Presence] in Wound by NAA with probe detection | Listeria monocytogenes DNA | Specimen from wound | Threshold | Ordinal value | Probe with target amplification |
| 112723-2 | Candida parapsilosis DNA [Presence] in Wound by NAA with probe detection | Candida parapsilosis DNA | Specimen from wound | Threshold | Ordinal value | Probe with target amplification |
| 112724-0 | Klebsiella oxytoca DNA [Presence] in Wound by NAA with probe detection | Klebsiella oxytoca DNA | Specimen from wound | Threshold | Ordinal value | Probe with target amplification |
| 112725-7 | Haemophilus influenzae DNA [Presence] in Wound by NAA with probe detection | Haemophilus influenzae DNA | Specimen from wound | Threshold | Ordinal value | Probe with target amplification |
| 112726-5 | Acinetobacter baumannii DNA [Presence] in Wound by NAA with probe detection | Acinetobacter baumannii DNA | Specimen from wound | Threshold | Ordinal value | Probe with target amplification |
| 112727-3 | Klebsiella pneumoniae DNA [Presence] in Wound by NAA with probe detection | Klebsiella pneumoniae DNA | Specimen from wound | Threshold | Ordinal value | Probe with target amplification |
| 112728-1 | Candida albicans DNA [Presence] in Wound by NAA with probe detection | Candida albicans DNA | Specimen from wound | Threshold | Ordinal value | Probe with target amplification |
| 112729-9 | Pseudomonas aeruginosa DNA [Presence] in Wound by NAA with probe detection | Pseudomonas aeruginosa DNA | Specimen from wound | Threshold | Ordinal value | Probe with target amplification |
| 112732-3 | Candida glabrata DNA [Presence] in Wound by NAA with probe detection | Nakaseomyces glabratus DNA | Specimen from wound | Threshold | Ordinal value | Probe with target amplification |
| 112733-1 | Candida krusei DNA [Presence] in Wound by NAA with probe detection | Candida krusei DNA | Specimen from wound | Threshold | Ordinal value | Probe with target amplification |
| 112735-6 | Pseudomonas sp DNA [Presence] in Wound by NAA with probe detection | Pseudomonas DNA | Specimen from wound | Threshold | Ordinal value | Probe with target amplification |
| 112736-4 | Staphylococcus aureus DNA [Presence] in Wound by NAA with probe detection | Staphylococcus aureus DNA | Specimen from wound | Threshold | Ordinal value | Probe with target amplification |
| 112749-7 | Human coronavirus 229E RNA [Presence] in Bronchoalveolar aspirate by NAA with probe detection | Human coronavirus 229E RNA | – | Threshold | Ordinal value | Probe with target amplification |
| 112750-5 | SARS-CoV-2 (COVID-19) RNA [Presence] in Sputum by NAA with probe detection | Severe acute respiratory syndrome coronavirus 2 RNA | Sputum specimen | Threshold | Ordinal value | Probe with target amplification |
| 112755-4 | Human coronavirus RNA [Presence] in Sputum by NAA with probe detection | Human coronavirus RNA | Sputum specimen | Threshold | Ordinal value | Probe with target amplification |
| 112757-0 | Legionella pneumophila DNA [Presence] in Throat by NAA with probe detection | Legionella pneumophila DNA | Specimen from throat | Threshold | Ordinal value | Probe with target amplification |
| 112776-0 | Herpes virus 8 DNA [Presence] in Cerebrospinal Fluid by NAA with probe detection | Human herpesvirus 8 DNA | Cerebrospinal fluid specimen | Threshold | Ordinal value | Probe with target amplification |
| 112777-8 | Herpes virus 8 DNA [Presence] in Specimen by NAA with probe detection | Human herpesvirus 8 DNA | Specimen | Threshold | Ordinal value | Probe with target amplification |
| 112778-6 | Herpes simplex virus DNA [Presence] in Skin by NAA with probe detection | Human herpes simplex virus DNA | Specimen from skin | Threshold | Ordinal value | Probe with target amplification |
| 112779-4 | Herpes simplex virus DNA [Presence] in Bronchoalveolar lavage by NAA with probe detection | Human herpes simplex virus DNA | Bronchoalveolar lavage fluid specimen | Threshold | Ordinal value | Probe with target amplification |
| 112780-2 | Herpes simplex virus 2 DNA [Presence] in Bronchoalveolar lavage by NAA with probe detection | Human alphaherpesvirus 2 DNA | Bronchoalveolar lavage fluid specimen | Threshold | Ordinal value | Probe with target amplification |
| 112781-0 | Herpes simplex virus 1 DNA [Presence] in Bronchoalveolar lavage by NAA with probe detection | Human alphaherpesvirus 1 DNA | Bronchoalveolar lavage fluid specimen | Threshold | Ordinal value | Probe with target amplification |
| 112782-8 | Epstein Barr virus DNA [Presence] in Bronchoalveolar lavage by NAA with probe detection | Epstein-Barr virus DNA | Bronchoalveolar lavage fluid specimen | Threshold | Ordinal value | Probe with target amplification |
| 112783-6 | Epstein Barr virus DNA [Presence] in Throat by NAA with probe detection | Epstein-Barr virus DNA | Specimen from throat | Threshold | Ordinal value | Probe with target amplification |
| 112894-1 | Haemophilus influenzae DNA [Presence] in Throat by NAA with probe detection | Haemophilus influenzae DNA | Specimen from throat | Threshold | Ordinal value | Probe with target amplification |
| 112895-8 | Streptococcus pneumoniae DNA [Presence] in Throat by NAA with probe detection | Streptococcus pneumoniae DNA | Specimen from throat | Threshold | Ordinal value | Probe with target amplification |
| 11482-7 | Rickettsia rickettsii RNA [Presence] in Tissue by NAA with probe detection | Rickettsia rickettsii RNA | Tissue specimen | Threshold | Ordinal value | Probe with target amplification |
| 11483-5 | Varicella zoster virus DNA [Presence] in Specimen by NAA with probe detection | Varicella virus DNA | Specimen | Threshold | Ordinal value | Probe with target amplification |
| 115795-7 | Human papilloma virus 45 DNA [Presence] in Vaginal fluid by NAA with probe detection | Human papillomavirus 45 DNA | Specimen from vagina | Threshold | Ordinal value | Probe with target amplification |
| 115796-5 | Human papilloma virus 18 DNA [Presence] in Vaginal fluid by NAA with probe detection | Human papillomavirus 18 DNA | Specimen from vagina | Threshold | Ordinal value | Probe with target amplification |
| 115798-1 | Human papilloma virus 16 DNA [Presence] in Vaginal fluid by NAA with probe detection | Human papillomavirus 16 DNA | Specimen from vagina | Threshold | Ordinal value | Probe with target amplification |
| 13956-8 | Mycobacterium tuberculosis DNA [Presence] in Specimen by NAA with probe detection | Mycobacterium tuberculosis DNA | Specimen | Threshold | Ordinal value | Probe with target amplification |
| 14556-5 | Mycobacterium tuberculosis DNA [Presence] in Sputum by NAA with probe detection | Mycobacterium tuberculosis DNA | Sputum specimen | Threshold | Ordinal value | Probe with target amplification |
| 14557-3 | Mycobacterium tuberculosis DNA [Presence] in Bronchial specimen by NAA with probe detection | Mycobacterium tuberculosis DNA | Specimen from bronchus | Threshold | Ordinal value | Probe with target amplification |
| 14558-1 | Mycobacterium tuberculosis DNA [Presence] in Gastric fluid by NAA with probe detection | Mycobacterium tuberculosis DNA | Gastric fluid specimen | Threshold | Ordinal value | Probe with target amplification |
| 14559-9 | Mycobacterium tuberculosis DNA [Presence] in Pleural fluid by NAA with probe detection | Mycobacterium tuberculosis DNA | Pleural fluid specimen | Threshold | Ordinal value | Probe with target amplification |
| 14560-7 | Mycobacterium tuberculosis DNA [Presence] in Urine by NAA with probe detection | Mycobacterium tuberculosis DNA | Urine specimen | Threshold | Ordinal value | Probe with target amplification |
| 14561-5 | Mycobacterium tuberculosis DNA [Presence] in Cerebrospinal Fluid by NAA with probe detection | Mycobacterium tuberculosis DNA | Cerebrospinal fluid specimen | Threshold | Ordinal value | Probe with target amplification |
| 14562-3 | Mycobacterium tuberculosis DNA [Presence] in Semen by NAA with probe detection | Mycobacterium tuberculosis DNA | Semen sample | Threshold | Ordinal value | Probe with target amplification |

… 1124 weitere; die vollständige Aufzählung steht im ValueSet.

### Nukleinsäurenachweis — keine Technik modelliert

Die technikfreie Teilmenge (LOINC METHOD_TYP „non-probe.amp.tar“ und methodenlose Codes). Nur über die ECL-Kardinalität [0..0] auf Technique erreichbar.

ValueSet [mii-vs-mikrobio-loinc-ontology-naa-detection-no-technique](ValueSet-mii-vs-mikrobio-loinc-ontology-naa-detection-no-technique.md).

```
<< 363787002 |Observable entity (observable entity)| : 370130000 |Property (attribute)| = (118589004 |Threshold (property) (qualifier value)| OR 705057003 |Presence (property) (qualifier value)| OR 118584009 |Presence or identity (property) (qualifier value)|), 246093002 |Component (attribute)| = << 117174000 |Nucleic acid sequence with relative specificity for microorganism (substance)|, [0..0] 246501002 |Technique (attribute)| = *

```

| | |
| :--- | :--- |
| Property | Threshold OR Presence OR Presence or identity |
| Component | `<< Nucleic acid sequence with relative specificity for microorganism` |
| Technique | keines,`[0..0]`: beliebig (`*`) |

Die Regel wählt **288** Konzepte aus (283 mit LOINC-Code, 5 ohne). Release 2026-03-21 → 2026-10-21: **+19 / −19** (Listen auf der Seite [Release-Delta](loinc-ontology-release-delta.md)).

#### Codes (288)

| | | | | | | |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| 100973-7 | Influenza virus A RNA [Presence] in Nose by NAA with non-probe detection | Influenza A virus RNA | – | Specimen from nose | Threshold | Ordinal value |
| 100974-5 | Influenza virus B RNA [Presence] in Nose by NAA with non-probe detection | Influenza B virus RNA | – | Specimen from nose | Threshold | Ordinal value |
| 101284-8 | Bordetella pertussis DNA [Presence] in Nasopharynx by NAA with non-probe detection | Bordetella pertussis DNA | – | Specimen from nasopharynx | Threshold | Ordinal value |
| 101286-3 | Adenovirus DNA [Presence] in Throat by NAA with non-probe detection | Adenovirus DNA | – | Specimen from throat | Threshold | Ordinal value |
| 101287-1 | Chlamydophila pneumoniae DNA [Presence] in Throat by NAA with non-probe detection | Chlamydophila pneumoniae DNA | – | Specimen from throat | Threshold | Ordinal value |
| 101289-7 | SARS-CoV-2 (COVID-19) RNA [Presence] in Throat by NAA with non-probe detection | Severe acute respiratory syndrome coronavirus 2 RNA | – | Specimen from throat | Threshold | Ordinal value |
| 101290-5 | Human metapneumovirus RNA [Presence] in Throat by NAA with non-probe detection | Human metapneumovirus RNA | – | Specimen from throat | Threshold | Ordinal value |
| 101292-1 | Influenza virus A RNA [Presence] in Throat by NAA with non-probe detection | Influenza A virus RNA | – | Specimen from throat | Threshold | Ordinal value |
| 101293-9 | Influenza virus A H1 2009 pandemic RNA [Presence] in Throat by NAA with non-probe detection | Influenza A virus H1N1 RNA | – | Specimen from throat | Threshold | Ordinal value |
| 101294-7 | Influenza virus A H3 RNA [Presence] in Throat by NAA with non-probe detection | Influenza A virus H3 RNA | – | Specimen from throat | Threshold | Ordinal value |
| 101295-4 | Influenza virus B RNA [Presence] in Throat by NAA with non-probe detection | Influenza B virus RNA | – | Specimen from throat | Threshold | Ordinal value |
| 101296-2 | Mycoplasma pneumoniae DNA [Presence] in Throat by NAA with non-probe detection | Mycoplasma pneumoniae DNA | – | Specimen from throat | Threshold | Ordinal value |
| 101298-8 | Respiratory syncytial virus RNA [Presence] in Throat by NAA with non-probe detection | Human Respiratory syncytial virus RNA | – | Specimen from throat | Threshold | Ordinal value |
| 101299-6 | Streptococcus dysgalactiae subspecies equisimilis DNA [Presence] in Throat by NAA with non-probe detection | Streptococcus dysgalactiae equisimilis DNA | – | Specimen from throat | Threshold | Ordinal value |
| 101300-2 | Streptococcus pyogenes DNA [Presence] in Throat by NAA with non-probe detection | Streptococcus pyogenes DNA | – | Specimen from throat | Threshold | Ordinal value |
| 101302-8 | Leptospira sp DNA [Presence] in Blood by NAA with non-probe detection | Leptospira DNA | – | Blood specimen | Threshold | Ordinal value |
| 101303-6 | Chikungunya virus RNA [Presence] in Blood by NAA with non-probe detection | Chikungunya virus RNA | – | Blood specimen | Threshold | Ordinal value |
| 101305-1 | Plasmodium sp DNA [Presence] in Blood by NAA with non-probe detection | Plasmodium DNA | – | Blood specimen | Threshold | Ordinal value |
| 101306-9 | Plasmodium falciparum DNA [Presence] in Blood by NAA with non-probe detection | Plasmodium falciparum DNA | – | Blood specimen | Threshold | Ordinal value |
| 101362-2 | Bacillus anthracis DNA [Presence] in Blood by NAA with non-probe detection | Bacillus anthracis DNA | – | Blood specimen | Threshold | Ordinal value |
| 101363-0 | Yersinia pestis DNA [Presence] in Blood by NAA with non-probe detection | Yersinia pestis DNA | – | Blood specimen | Threshold | Ordinal value |
| 101364-8 | Francisella tularensis DNA [Presence] in Blood by NAA with non-probe detection | Francisella tularensis DNA | – | Blood specimen | Threshold | Ordinal value |
| 101365-5 | Coxiella burnetii DNA [Presence] in Blood by NAA with non-probe detection | Coxiella burnetii DNA | – | Blood specimen | Threshold | Ordinal value |
| 101366-3 | Ebola virus RNA [Presence] in Blood by NAA with non-probe detection | Ebola virus RNA | – | Blood specimen | Threshold | Ordinal value |
| 101367-1 | Marburg virus RNA [Presence] in Blood by NAA with non-probe detection | Marburg virus RNA | – | Blood specimen | Threshold | Ordinal value |
| 101368-9 | Bacillus anthracis DNA [Presence] by NAA with non-probe detection in Positive blood culture | Bacillus anthracis DNA | – | – | Threshold | Ordinal value |
| 101371-3 | Yersinia pestis DNA [Presence] by NAA with non-probe detection in Positive blood culture | Yersinia pestis DNA | – | – | Threshold | Ordinal value |
| 101372-1 | Yersinia pestis DNA [Presence] in Sputum by NAA with non-probe detection | Yersinia pestis DNA | – | Sputum specimen | Threshold | Ordinal value |
| 101373-9 | Francisella tularensis DNA [Presence] in Sputum by NAA with non-probe detection | Francisella tularensis DNA | – | Sputum specimen | Threshold | Ordinal value |
| 103199-6 | Treponema pallidum DNA [Presence] in Urine by Probe with amplification | Treponema pallidum DNA | – | Urine specimen | Threshold | Ordinal value |
| 103559-1 | Rhinovirus RNA [Presence] in Nasopharynx by NAA with non-probe detection | Rhinovirus RNA | – | Specimen from nasopharynx | Threshold | Ordinal value |
| 103717-5 | Crimean-Congo hemorrhagic fever virus RNA [Presence] in Blood by NAA with non-probe detection | Orthonairovirus haemorrhagiae RNA | – | Blood specimen | Threshold | Ordinal value |
| 103719-1 | Lassa virus RNA [Presence] in Blood by NAA with non-probe detection | Mammarenavirus lassaense RNA | – | Blood specimen | Threshold | Ordinal value |
| 103721-7 | West Nile virus RNA [Presence] in Blood by NAA with non-probe detection | West Nile virus RNA | – | Blood specimen | Threshold | Ordinal value |
| 103722-5 | Yellow fever virus RNA [Presence] in Blood by NAA with non-probe detection | Yellow fever virus RNA | – | Blood specimen | Threshold | Ordinal value |
| 103723-3 | Leishmania spp DNA [Presence] in Blood by NAA with non-probe detection | Leishmania DNA | – | Blood specimen | Threshold | Ordinal value |
| 104110-2 | Human bocavirus DNA [Presence] in Upper respiratory specimen by NAA with non-probe detection | Human bocavirus DNA | – | Upper respiratory specimen | Threshold | Ordinal value |
| 104111-0 | Legionella pneumophila DNA [Presence] in Upper respiratory specimen by NAA with non-probe detection | Legionella pneumophila DNA | – | Upper respiratory specimen | Threshold | Ordinal value |
| 104359-5 | Brucella melitensis DNA [Presence] in Specimen by NAA with non-probe detection | Brucella melitensis DNA | – | Specimen | Threshold | Ordinal value |
| 104451-0 | SARS-CoV-2 (COVID-19) RNA [Presence] in Respiratory system specimen | Severe acute respiratory syndrome coronavirus 2 RNA | – | Specimen from respiratory system | Threshold | Ordinal value |
| 105067-3 | Giardia lamblia DNA [Presence] in Stool | Giardia lamblia DNA | – | Stool specimen | Threshold | Ordinal value |
| 105094-7 | Candida sp rRNA [Presence] in Vaginal fluid | Candida rRNA | – | Specimen from vagina | Threshold | Ordinal value |
| 105881-7 | Cyclospora cayetanensis DNA [Presence] in Stool | Cyclospora cayetanensis DNA | – | Stool specimen | Threshold | Ordinal value |
| 105882-5 | Cryptosporidium sp DNA [Presence] in Stool | Cryptosporidium DNA | – | Stool specimen | Threshold | Ordinal value |
| 105885-8 | Candida glabrata DNA [Presence] in Vaginal fluid | Nakaseomyces glabratus DNA | – | Specimen from vagina | Threshold | Ordinal value |
| 105886-6 | Candida albicans DNA [Presence] in Vaginal fluid | Candida albicans DNA | – | Specimen from vagina | Threshold | Ordinal value |
| 105899-9 | Bacterial vaginosis associated bacterium 2 DNA [Presence] in Vaginal fluid | Bacterial vaginosis-associated bacterium 2 DNA | – | Specimen from vagina | Threshold | Ordinal value |
| 105901-3 | Atopobium vaginae DNA [Presence] in Vaginal fluid | Atopobium vaginae DNA | – | Specimen from vagina | Threshold | Ordinal value |
| 105905-4 | Entamoeba histolytica DNA [Presence] in Stool | Entamoeba histolytica DNA | – | Stool specimen | Threshold | Ordinal value |
| 10650-0 | Candida sp DNA [Presence] in Blood by Probe with amplification | Candida DNA | – | Blood specimen | Threshold | Ordinal value |
| 10652-6 | Chlamydophila pneumoniae DNA [Presence] in Sputum or Bronchial by Probe with amplification | Chlamydophila pneumoniae DNA | – | – | Threshold | Ordinal value |
| 106581-2 | Bacteroides fragilis DNA [Presence] in Body fluid by NAA with non-probe detection | Bacteroides fragilis DNA | – | Body fluid specimen | Threshold | Ordinal value |
| 106582-0 | Candida albicans DNA [Presence] in Body fluid by NAA with non-probe detection | Candida albicans DNA | – | Body fluid specimen | Threshold | Ordinal value |
| 106583-8 | Candida auris DNA [Presence] in Body fluid by NAA with non-probe detection | Candidozyma auris DNA | – | Body fluid specimen | Threshold | Ordinal value |
| 106584-6 | Candida glabrata DNA [Presence] in Body fluid by NAA with non-probe detection | Nakaseomyces glabratus DNA | – | Body fluid specimen | Threshold | Ordinal value |
| 106585-3 | Candida krusei DNA [Presence] in Body fluid by NAA with non-probe detection | Candida krusei DNA | – | Body fluid specimen | Threshold | Ordinal value |
| 106586-1 | Candida parapsilosis DNA [Presence] in Body fluid by NAA with non-probe detection | Candida parapsilosis DNA | – | Body fluid specimen | Threshold | Ordinal value |
| 106587-9 | Candida tropicalis DNA [Presence] in Body fluid by NAA with non-probe detection | Candida tropicalis DNA | – | Body fluid specimen | Threshold | Ordinal value |
| 106588-7 | Escherichia coli DNA [Presence] in Body fluid by NAA with non-probe detection | Escherichia coli DNA | – | Body fluid specimen | Threshold | Ordinal value |
| 106589-5 | Klebsiella aerogenes DNA [Presence] in Body fluid by NAA with non-probe detection | Klebsiella aerogenes DNA | – | Body fluid specimen | Threshold | Ordinal value |
| 106591-1 | Enterobacter cloacae complex DNA [Presence] in Body fluid by NAA with non-probe detection | Enterobacter cloacae complex DNA | – | Body fluid specimen | Threshold | Ordinal value |
| 106592-9 | Enterococcus faecium DNA [Presence] in Body fluid by NAA with non-probe detection | Enterococcus faecium DNA | – | Body fluid specimen | Threshold | Ordinal value |
| 106593-7 | Enterococcus faecalis DNA [Presence] in Body fluid by NAA with non-probe detection | Enterococcus faecalis DNA | – | Body fluid specimen | Threshold | Ordinal value |
| 106594-5 | Streptococcus agalactiae DNA [Presence] in Body fluid by NAA with non-probe detection | Streptococcus agalactiae DNA | – | Body fluid specimen | Threshold | Ordinal value |
| 106595-2 | Haemophilus influenzae DNA [Presence] in Body fluid by NAA with non-probe detection | Haemophilus influenzae DNA | – | Body fluid specimen | Threshold | Ordinal value |
| 106596-0 | Klebsiella oxytoca DNA [Presence] in Body fluid by NAA with non-probe detection | Klebsiella oxytoca DNA | – | Body fluid specimen | Threshold | Ordinal value |
| 106597-8 | Klebsiella pneumoniae DNA [Presence] in Body fluid by NAA with non-probe detection | Klebsiella pneumoniae DNA | – | Body fluid specimen | Threshold | Ordinal value |
| 106598-6 | Listeria monocytogenes DNA [Presence] in Body fluid by NAA with non-probe detection | Listeria monocytogenes DNA | – | Body fluid specimen | Threshold | Ordinal value |
| 106599-4 | Neisseria meningitidis DNA [Presence] in Body fluid by NAA with non-probe detection | Neisseria meningitidis DNA | – | Body fluid specimen | Threshold | Ordinal value |
| 106600-0 | Proteus sp DNA [Presence] in Body fluid by NAA with non-probe detection | Proteus DNA | – | Body fluid specimen | Threshold | Ordinal value |
| 106601-8 | Pseudomonas aeruginosa DNA [Presence] in Body fluid by NAA with non-probe detection | Pseudomonas aeruginosa DNA | – | Body fluid specimen | Threshold | Ordinal value |
| 106602-6 | Staphylococcus epidermidis DNA [Presence] in Body fluid by NAA with non-probe detection | Staphylococcus epidermidis DNA | – | Body fluid specimen | Threshold | Ordinal value |
| 106603-4 | Serratia marcescens DNA [Presence] in Body fluid by NAA with non-probe detection | Serratia marcescens DNA | – | Body fluid specimen | Threshold | Ordinal value |
| 106604-2 | Staphylococcus aureus DNA [Presence] in Body fluid by NAA with non-probe detection | Staphylococcus aureus DNA | – | Body fluid specimen | Threshold | Ordinal value |
| 106605-9 | Staphylococcus lugdunensis DNA [Presence] in Body fluid by NAA with non-probe detection | Staphylococcus lugdunensis DNA | – | Body fluid specimen | Threshold | Ordinal value |
| 106606-7 | Stenotrophomonas maltophilia DNA [Presence] in Body fluid by NAA with non-probe detection | Stenotrophomonas maltophilia DNA | – | Body fluid specimen | Threshold | Ordinal value |
| 106607-5 | Streptococcus pneumoniae DNA [Presence] in Body fluid by NAA with non-probe detection | Streptococcus pneumoniae DNA | – | Body fluid specimen | Threshold | Ordinal value |
| 106608-3 | Streptococcus pyogenes DNA [Presence] in Body fluid by NAA with non-probe detection | Streptococcus pyogenes DNA | – | Body fluid specimen | Threshold | Ordinal value |
| 106609-1 | Streptococcus sp DNA [Presence] in Body fluid by NAA with non-probe detection | Streptococcus DNA | – | Body fluid specimen | Threshold | Ordinal value |
| 106611-7 | Salmonella sp DNA [Presence] in Body fluid by NAA with non-probe detection | Salmonella DNA | – | Body fluid specimen | Threshold | Ordinal value |
| 106612-5 | Enterobacterales DNA [Presence] in Body fluid by NAA with non-probe detection | Enterobacterales DNA | – | Body fluid specimen | Threshold | Ordinal value |
| 107018-4 | Respiratory syncytial virus RNA [Presence] in Bronchoalveolar lavage by NAA with non-probe detection | Human Respiratory syncytial virus RNA | – | Bronchoalveolar lavage fluid specimen | Threshold | Ordinal value |
| 107361-8 | Adenovirus DNA [Presence] in Bronchoalveolar lavage by NAA with non-probe detection | Adenovirus DNA | – | Bronchoalveolar lavage fluid specimen | Threshold | Ordinal value |
| 107362-6 | Adenovirus DNA [Presence] in Sputum by NAA with non-probe detection | Adenovirus DNA | – | Sputum specimen | Threshold | Ordinal value |
| 107363-4 | Chlamydophila pneumoniae DNA [Presence] in Sputum by NAA with non-probe detection | Chlamydophila pneumoniae DNA | – | Sputum specimen | Threshold | Ordinal value |
| 107364-2 | Influenza virus B RNA [Presence] in Sputum by NAA with non-probe detection | Influenza B virus RNA | – | Sputum specimen | Threshold | Ordinal value |
| 107365-9 | Influenza virus A RNA [Presence] in Sputum by NAA with non-probe detection | Influenza A virus RNA | – | Sputum specimen | Threshold | Ordinal value |
| 107366-7 | Human metapneumovirus RNA [Presence] in Sputum by NAA with non-probe detection | Human metapneumovirus RNA | – | Sputum specimen | Threshold | Ordinal value |
| 107367-5 | Human metapneumovirus RNA [Presence] in Bronchoalveolar lavage by NAA with non-probe detection | Human metapneumovirus RNA | – | Bronchoalveolar lavage fluid specimen | Threshold | Ordinal value |
| 107368-3 | Legionella pneumophila DNA [Presence] in Bronchoalveolar lavage by NAA with non-probe detection | Legionella pneumophila DNA | – | Bronchoalveolar lavage fluid specimen | Threshold | Ordinal value |
| 108164-5 | Mycoplasma pneumoniae DNA [Presence] in Specimen by NAA with non-probe detection | Mycoplasma pneumoniae DNA | – | Specimen | Threshold | Ordinal value |
| 108165-2 | Chlamydophila pneumoniae DNA [Presence] in Specimen by NAA with non-probe detection | Chlamydophila pneumoniae DNA | – | Specimen | Threshold | Ordinal value |
| 108168-6 | Respiratory syncytial virus RNA [Presence] in Specimen by NAA with non-probe detection | Human Respiratory syncytial virus RNA | – | Specimen | Threshold | Ordinal value |
| 108169-4 | Parainfluenza virus 4 RNA [Presence] in Specimen by NAA with non-probe detection | Parainfluenza virus 4 RNA | – | Specimen | Threshold | Ordinal value |
| 108170-2 | Parainfluenza virus 3 RNA [Presence] in Specimen by NAA with non-probe detection | Parainfluenza virus 3 RNA | – | Specimen | Threshold | Ordinal value |
| 108171-0 | Parainfluenza virus 2 RNA [Presence] in Specimen by NAA with non-probe detection | Parainfluenza virus 2 RNA | – | Specimen | Threshold | Ordinal value |
| 108172-8 | Parainfluenza virus 1 RNA [Presence] in Specimen by NAA with non-probe detection | Parainfluenza virus 1 RNA | – | Specimen | Threshold | Ordinal value |
| 108173-6 | Influenza virus B RNA [Presence] in Specimen by NAA with non-probe detection | Influenza B virus RNA | – | Specimen | Threshold | Ordinal value |
| 108174-4 | Influenza virus A H3 RNA [Presence] in Specimen by NAA with non-probe detection | Influenza A virus H3 RNA | – | Specimen | Threshold | Ordinal value |
| 108175-1 | Influenza virus A H1 2009 pandemic RNA [Presence] in Specimen by NAA with non-probe detection | Influenza A virus H1N1 RNA | – | Specimen | Threshold | Ordinal value |
| 108176-9 | Influenza virus A H1 RNA [Presence] in Specimen by NAA with non-probe detection | Influenza A virus H1 RNA | – | Specimen | Threshold | Ordinal value |
| 108177-7 | Influenza virus A RNA [Presence] in Specimen by NAA with non-probe detection | Influenza A virus RNA | – | Specimen | Threshold | Ordinal value |
| 108179-3 | Human metapneumovirus RNA [Presence] in Specimen by NAA with non-probe detection | Human metapneumovirus RNA | – | Specimen | Threshold | Ordinal value |
| 108180-1 | SARS-CoV-2 (COVID-19) RNA [Presence] in Specimen by NAA with non-probe detection | Severe acute respiratory syndrome coronavirus 2 RNA | – | Specimen | Threshold | Ordinal value |
| 108181-9 | Middle East respiratory syndrome coronavirus (MERS-CoV) RNA [Presence] in Specimen by NAA with non-probe detection | Betacoronavirus cameli RNA | – | Specimen | Threshold | Ordinal value |
| 108182-7 | Human coronavirus OC43 RNA [Presence] in Specimen by NAA with non-probe detection | Human coronavirus OC43 RNA | – | Specimen | Threshold | Ordinal value |
| 108183-5 | Human coronavirus NL63 RNA [Presence] in Specimen by NAA with non-probe detection | Human coronavirus NL63 RNA | – | Specimen | Threshold | Ordinal value |
| 108184-3 | Human coronavirus HKU1 RNA [Presence] in Specimen by NAA with non-probe detection | Human coronavirus HKU1 RNA | – | Specimen | Threshold | Ordinal value |
| 108185-0 | Human coronavirus 229E RNA [Presence] in Specimen by NAA with non-probe detection | Human coronavirus 229E RNA | – | Specimen | Threshold | Ordinal value |
| 108186-8 | Adenovirus DNA [Presence] in Specimen by NAA with non-probe detection | Adenovirus DNA | – | Specimen | Threshold | Ordinal value |
| 10846-4 | Borrelia burgdorferi DNA [Presence] in Blood by Probe with amplification | Borrelia burgdorferi DNA | – | Blood specimen | Threshold | Ordinal value |
| 10847-2 | Borrelia burgdorferi DNA [Presence] in Body fluid by Probe with amplification | Borrelia burgdorferi DNA | – | Body fluid specimen | Threshold | Ordinal value |
| 111556-7 | Respiratory syncytial virus RNA [Presence] in Bronchoalveolar aspirate by NAA with non-probe detection | Human Respiratory syncytial virus RNA | – | – | Threshold | Ordinal value |
| 111557-5 | Parainfluenza virus RNA [Presence] in Bronchoalveolar aspirate by NAA with non-probe detection | Parainfluenza virus RNA | – | – | Threshold | Ordinal value |
| 111558-3 | Middle East respiratory syndrome coronavirus (MERS-CoV) RNA [Presence] in Bronchoalveolar aspirate by NAA with non-probe detection | Betacoronavirus cameli RNA | – | – | Threshold | Ordinal value |
| 111559-1 | Influenza virus B RNA [Presence] in Bronchoalveolar aspirate by NAA with non-probe detection | Influenza B virus RNA | – | – | Threshold | Ordinal value |
| 111560-9 | Influenza virus A RNA [Presence] in Bronchoalveolar aspirate by NAA with non-probe detection | Influenza A virus RNA | – | – | Threshold | Ordinal value |
| 111562-5 | Human metapneumovirus RNA [Presence] in Bronchoalveolar aspirate by NAA with non-probe detection | Human metapneumovirus RNA | – | – | Threshold | Ordinal value |
| 111563-3 | Adenovirus DNA [Presence] in Bronchoalveolar aspirate by NAA with non-probe detection | Adenovirus DNA | – | – | Threshold | Ordinal value |
| 111564-1 | Mycoplasma pneumoniae DNA [Presence] in Bronchoalveolar aspirate by NAA with non-probe detection | Mycoplasma pneumoniae DNA | – | – | Threshold | Ordinal value |
| 111565-8 | Legionella pneumophila DNA [Presence] in Bronchoalveolar aspirate by NAA with non-probe detection | Legionella pneumophila DNA | – | – | Threshold | Ordinal value |
| 111566-6 | Chlamydophila pneumoniae DNA [Presence] in Bronchoalveolar aspirate by NAA with non-probe detection | Chlamydophila pneumoniae DNA | – | – | Threshold | Ordinal value |
| 112628-3 | Human coronavirus RNA [Presence] in Bronchoalveolar lavage by NAA with non-probe detection | Human coronavirus RNA | – | Bronchoalveolar lavage fluid specimen | Threshold | Ordinal value |
| 112629-1 | Human coronavirus RNA [Presence] in Sputum by NAA with non-probe detection | Human coronavirus RNA | – | Sputum specimen | Threshold | Ordinal value |
| 112630-9 | Mycoplasma pneumoniae DNA [Presence] in Sputum by NAA with non-probe detection | Mycoplasma pneumoniae DNA | – | Sputum specimen | Threshold | Ordinal value |
| 112631-7 | Mycoplasma pneumoniae DNA [Presence] in Bronchoalveolar lavage by NAA with non-probe detection | Mycoplasma pneumoniae DNA | – | Bronchoalveolar lavage fluid specimen | Threshold | Ordinal value |
| 112873-5 | Legionella pneumophila DNA [Presence] in Sputum by NAA with non-probe detection | Legionella pneumophila DNA | – | Sputum specimen | Threshold | Ordinal value |
| 112874-3 | Parainfluenza virus 4 RNA [Presence] in Throat by NAA with non-probe detection | Parainfluenza virus 4 RNA | – | Specimen from throat | Threshold | Ordinal value |
| 112875-0 | Parainfluenza virus 3 RNA [Presence] in Throat by NAA with non-probe detection | Parainfluenza virus 3 RNA | – | Specimen from throat | Threshold | Ordinal value |
| 112876-8 | Parainfluenza virus 2 RNA [Presence] in Throat by NAA with non-probe detection | Parainfluenza virus 2 RNA | – | Specimen from throat | Threshold | Ordinal value |
| 112877-6 | Parainfluenza virus 1 RNA [Presence] in Throat by NAA with non-probe detection | Parainfluenza virus 1 RNA | – | Specimen from throat | Threshold | Ordinal value |
| 112878-4 | Middle East respiratory syndrome coronavirus (MERS-CoV) RNA [Presence] in Throat by NAA with non-probe detection | Betacoronavirus cameli RNA | – | Specimen from throat | Threshold | Ordinal value |
| 112879-2 | Influenza virus A H1 RNA [Presence] in Throat by NAA with non-probe detection | Influenza A virus H1 RNA | – | Specimen from throat | Threshold | Ordinal value |
| 112880-0 | Human coronavirus OC43 RNA [Presence] in Throat by NAA with non-probe detection | Human coronavirus OC43 RNA | – | Specimen from throat | Threshold | Ordinal value |
| 112881-8 | Klebsiella pneumoniae DNA [Presence] in Synovial fluid by NAA with non-probe detection | Klebsiella pneumoniae DNA | – | Synovial fluid specimen | Threshold | Ordinal value |
| 112882-6 | Human coronavirus 229E RNA [Presence] in Throat by NAA with non-probe detection | Human coronavirus 229E RNA | – | Specimen from throat | Threshold | Ordinal value |
| 112883-4 | Human coronavirus NL63 RNA [Presence] in Throat by NAA with non-probe detection | Human coronavirus NL63 RNA | – | Specimen from throat | Threshold | Ordinal value |
| 112884-2 | Parainfluenza virus RNA [Presence] in Sputum by NAA with non-probe detection | Parainfluenza virus RNA | – | Sputum specimen | Threshold | Ordinal value |
| 112885-9 | Middle East respiratory syndrome coronavirus (MERS-CoV) RNA [Presence] in Sputum by NAA with non-probe detection | Betacoronavirus cameli RNA | – | Sputum specimen | Threshold | Ordinal value |
| 112892-5 | Respiratory syncytial virus RNA [Presence] in Sputum by NAA with non-probe detection | Human Respiratory syncytial virus RNA | – | Sputum specimen | Threshold | Ordinal value |
| 112893-3 | Human coronavirus HKU1 RNA [Presence] in Throat by NAA with non-probe detection | Human coronavirus HKU1 RNA | – | Specimen from throat | Threshold | Ordinal value |
| 11551-9 | Borrelia burgdorferi DNA [Presence] in Cerebrospinal Fluid by Probe with amplification | Borrelia burgdorferi DNA | – | Cerebrospinal fluid specimen | Threshold | Ordinal value |
| 16280-0 | Human papilloma virus DNA [Presence] in Specimen by Probe with amplification | Human papillomavirus DNA | – | Specimen | Threshold | Ordinal value |
| 19052-0 | Borrelia burgdorferi DNA [Presence] in Urine by Probe with amplification | Borrelia burgdorferi DNA | – | Urine specimen | Threshold | Ordinal value |
| 27922-4 | Echovirus 4 RNA [Presence] in Cerebrospinal Fluid | Echovirus 4 RNA | – | Cerebrospinal fluid specimen | Threshold | Ordinal value |
| 47359-5 | HIV 1 RNA [Presence] in Serum or Plasma from Donor by Probe with amplification | Human immunodeficiency virus 1 RNA | – | – | Threshold | Ordinal value |
| 63475-8 | BK virus DNA [Presence] in Blood | Human polyomavirus 1 DNA | – | Blood specimen | Threshold | Ordinal value |
| 82160-3 | Adenovirus DNA [Presence] in Nasopharynx by NAA with non-probe detection | Adenovirus DNA | – | Specimen from nasopharynx | Threshold | Ordinal value |
| 82161-1 | Human coronavirus HKU1 RNA [Presence] in Nasopharynx by NAA with non-probe detection | Human coronavirus HKU1 RNA | – | Specimen from nasopharynx | Threshold | Ordinal value |
| 82162-9 | Human coronavirus NL63 RNA [Presence] in Nasopharynx by NAA with non-probe detection | Human coronavirus NL63 RNA | – | Specimen from nasopharynx | Threshold | Ordinal value |
| 82163-7 | Human coronavirus 229E RNA [Presence] in Nasopharynx by NAA with non-probe detection | Human coronavirus 229E RNA | – | Specimen from nasopharynx | Threshold | Ordinal value |
| 82164-5 | Human coronavirus OC43 RNA [Presence] in Nasopharynx by NAA with non-probe detection | Human coronavirus OC43 RNA | – | Specimen from nasopharynx | Threshold | Ordinal value |
| 82165-2 | Human metapneumovirus RNA [Presence] in Nasopharynx by NAA with non-probe detection | Human metapneumovirus RNA | – | Specimen from nasopharynx | Threshold | Ordinal value |
| 82166-0 | Influenza virus A RNA [Presence] in Nasopharynx by NAA with non-probe detection | Influenza A virus RNA | – | Specimen from nasopharynx | Threshold | Ordinal value |
| 82167-8 | Influenza virus A H1 RNA [Presence] in Nasopharynx by NAA with non-probe detection | Influenza A virus H1 RNA | – | Specimen from nasopharynx | Threshold | Ordinal value |
| 82168-6 | Influenza virus A H1 2009 pandemic RNA [Presence] in Nasopharynx by NAA with non-probe detection | Influenza A virus H1N1 RNA | – | Specimen from nasopharynx | Threshold | Ordinal value |
| 82169-4 | Influenza virus A H3 RNA [Presence] in Nasopharynx by NAA with non-probe detection | Influenza A virus H3 RNA | – | Specimen from nasopharynx | Threshold | Ordinal value |
| 82170-2 | Influenza virus B RNA [Presence] in Nasopharynx by NAA with non-probe detection | Influenza B virus RNA | – | Specimen from nasopharynx | Threshold | Ordinal value |
| 82171-0 | Parainfluenza virus 1 RNA [Presence] in Nasopharynx by NAA with non-probe detection | Parainfluenza virus 1 RNA | – | Specimen from nasopharynx | Threshold | Ordinal value |
| 82172-8 | Parainfluenza virus 2 RNA [Presence] in Nasopharynx by NAA with non-probe detection | Parainfluenza virus 2 RNA | – | Specimen from nasopharynx | Threshold | Ordinal value |
| 82173-6 | Parainfluenza virus 3 RNA [Presence] in Nasopharynx by NAA with non-probe detection | Parainfluenza virus 3 RNA | – | Specimen from nasopharynx | Threshold | Ordinal value |
| 82174-4 | Parainfluenza virus 4 RNA [Presence] in Nasopharynx by NAA with non-probe detection | Parainfluenza virus 4 RNA | – | Specimen from nasopharynx | Threshold | Ordinal value |
| 82176-9 | Respiratory syncytial virus RNA [Presence] in Nasopharynx by NAA with non-probe detection | Human Respiratory syncytial virus RNA | – | Specimen from nasopharynx | Threshold | Ordinal value |
| 82177-7 | Mycoplasma pneumoniae DNA [Presence] in Nasopharynx by NAA with non-probe detection | Mycoplasma pneumoniae DNA | – | Specimen from nasopharynx | Threshold | Ordinal value |
| 82178-5 | Chlamydophila pneumoniae DNA [Presence] in Nasopharynx by NAA with non-probe detection | Chlamydophila pneumoniae DNA | – | Specimen from nasopharynx | Threshold | Ordinal value |
| 82182-7 | Escherichia coli K1 DNA [Presence] in Cerebrospinal Fluid by NAA with non-probe detection | Escherichia coli K1 DNA | – | Cerebrospinal fluid specimen | Threshold | Ordinal value |
| 82183-5 | Haemophilus influenzae DNA [Presence] in Cerebrospinal Fluid by NAA with non-probe detection | Haemophilus influenzae DNA | – | Cerebrospinal fluid specimen | Threshold | Ordinal value |
| 82184-3 | Listeria monocytogenes DNA [Presence] in Cerebrospinal Fluid by NAA with non-probe detection | Listeria monocytogenes DNA | – | Cerebrospinal fluid specimen | Threshold | Ordinal value |
| 82185-0 | Neisseria meningitidis DNA [Presence] in Cerebrospinal Fluid by NAA with non-probe detection | Neisseria meningitidis DNA | – | Cerebrospinal fluid specimen | Threshold | Ordinal value |
| 82186-8 | Streptococcus agalactiae DNA [Presence] in Cerebrospinal Fluid by NAA with non-probe detection | Streptococcus agalactiae DNA | – | Cerebrospinal fluid specimen | Threshold | Ordinal value |
| 82187-6 | Streptococcus pneumoniae DNA [Presence] in Cerebrospinal Fluid by NAA with non-probe detection | Streptococcus pneumoniae DNA | – | Cerebrospinal fluid specimen | Threshold | Ordinal value |
| 82188-4 | Varicella zoster virus DNA [Presence] in Cerebrospinal Fluid by NAA with non-probe detection | Varicella virus DNA | – | Cerebrospinal fluid specimen | Threshold | Ordinal value |
| 82189-2 | Cytomegalovirus DNA [Presence] in Cerebrospinal Fluid by NAA with non-probe detection | Cytomegalovirus DNA | – | Cerebrospinal fluid specimen | Threshold | Ordinal value |
| 82190-0 | Herpes simplex virus 1 DNA [Presence] in Cerebrospinal Fluid by NAA with non-probe detection | Human alphaherpesvirus 1 DNA | – | Cerebrospinal fluid specimen | Threshold | Ordinal value |
| 82191-8 | Herpes simplex virus 2 DNA [Presence] in Cerebrospinal Fluid by NAA with non-probe detection | Human alphaherpesvirus 2 DNA | – | Cerebrospinal fluid specimen | Threshold | Ordinal value |
| 82192-6 | Herpes virus 6 DNA [Presence] in Cerebrospinal Fluid by NAA with non-probe detection | Human herpesvirus 6 DNA | – | Cerebrospinal fluid specimen | Threshold | Ordinal value |
| 82193-4 | Parechovirus A RNA [Presence] in Cerebrospinal Fluid by NAA with non-probe detection | Human parechovirus RNA | – | Cerebrospinal fluid specimen | Threshold | Ordinal value |
| 82194-2 | Enterovirus RNA [Presence] in Cerebrospinal Fluid by NAA with non-probe detection | Enterovirus RNA | – | Cerebrospinal fluid specimen | Threshold | Ordinal value |
| 82198-3 | Plesiomonas shigelloides DNA [Presence] in Stool by NAA with non-probe detection | Plesiomonas shigelloides DNA | – | Stool specimen | Threshold | Ordinal value |
| 82201-5 | Vibrio cholerae DNA [Presence] in Stool by NAA with non-probe detection | Vibrio cholerae DNA | – | Stool specimen | Threshold | Ordinal value |
| 82202-3 | Yersinia enterocolitica DNA [Presence] in Stool by NAA with non-probe detection | Yersinia enterocolitica DNA | – | Stool specimen | Threshold | Ordinal value |
| 82204-9 | Escherichia coli O157 DNA [Presence] in Stool by NAA with non-probe detection | Escherichia coli O157 DNA | – | Stool specimen | Threshold | Ordinal value |
| 82205-6 | Cryptosporidium sp DNA [Presence] in Stool by NAA with non-probe detection | Cryptosporidium DNA | – | Stool specimen | Threshold | Ordinal value |
| 82206-4 | Cyclospora cayetanensis DNA [Presence] in Stool by NAA with non-probe detection | Cyclospora cayetanensis DNA | – | Stool specimen | Threshold | Ordinal value |
| 82207-2 | Entamoeba histolytica DNA [Presence] in Stool by NAA with non-probe detection | Entamoeba histolytica DNA | – | Stool specimen | Threshold | Ordinal value |
| 82208-0 | Giardia lamblia DNA [Presence] in Stool by NAA with non-probe detection | Giardia lamblia DNA | – | Stool specimen | Threshold | Ordinal value |
| 82212-2 | Rotavirus A RNA [Presence] in Stool by NAA with non-probe detection | Rotavirus alphagastroenteritidis RNA | – | Stool specimen | Threshold | Ordinal value |
| 85761-5 | Klebsiella pneumoniae DNA [Presence] by NAA with non-probe detection in Positive blood culture | Klebsiella pneumoniae DNA | – | – | Threshold | Ordinal value |
| 85763-1 | Listeria monocytogenes DNA [Presence] by NAA with non-probe detection in Positive blood culture | Listeria monocytogenes DNA | – | – | Threshold | Ordinal value |
| 85765-6 | Staphylococcus aureus DNA [Presence] by NAA with non-probe detection in Positive blood culture | Staphylococcus aureus DNA | – | – | Threshold | Ordinal value |
| 85766-4 | Streptococcus sp DNA [Presence] by NAA with non-probe detection in Positive blood culture | Streptococcus DNA | – | – | Threshold | Ordinal value |
| 85767-2 | Streptococcus agalactiae DNA [Presence] by NAA with non-probe detection in Positive blood culture | Streptococcus agalactiae DNA | – | – | Threshold | Ordinal value |
| 85768-0 | Streptococcus pneumoniae DNA [Presence] by NAA with non-probe detection in Positive blood culture | Streptococcus pneumoniae DNA | – | – | Threshold | Ordinal value |
| 85769-8 | Streptococcus pyogenes DNA [Presence] by NAA with non-probe detection in Positive blood culture | Streptococcus pyogenes DNA | – | – | Threshold | Ordinal value |
| 85770-6 | Acinetobacter baumannii DNA [Presence] by NAA with non-probe detection in Positive blood culture | Acinetobacter baumannii DNA | – | – | Threshold | Ordinal value |
| 85771-4 | Enterobacteriaceae DNA [Presence] by NAA with non-probe detection in Positive blood culture | Enterobacteriaceae DNA | – | – | Threshold | Ordinal value |
| 85772-2 | Enterobacter cloacae complex DNA [Presence] by NAA with non-probe detection in Positive blood culture | Enterobacter cloacae complex DNA | – | – | Threshold | Ordinal value |
| 85773-0 | Escherichia coli DNA [Presence] by NAA with non-probe detection in Positive blood culture | Escherichia coli DNA | – | – | Threshold | Ordinal value |
| 85774-8 | Klebsiella oxytoca DNA [Presence] by NAA with non-probe detection in Positive blood culture | Klebsiella oxytoca DNA | – | – | Threshold | Ordinal value |
| 85775-5 | Enterococcus sp DNA [Presence] by NAA with non-probe detection in Positive blood culture | Enterococcus DNA | – | – | Threshold | Ordinal value |
| 85776-3 | Proteus sp DNA [Presence] by NAA with non-probe detection in Positive blood culture | Proteus DNA | – | – | Threshold | Ordinal value |
| 85777-1 | Serratia marcescens DNA [Presence] by NAA with non-probe detection in Positive blood culture | Serratia marcescens DNA | – | – | Threshold | Ordinal value |
| 85778-9 | Haemophilus influenzae DNA [Presence] by NAA with non-probe detection in Positive blood culture | Haemophilus influenzae DNA | – | – | Threshold | Ordinal value |
| 85779-7 | Neisseria meningitidis DNA [Presence] by NAA with non-probe detection in Positive blood culture | Neisseria meningitidis DNA | – | – | Threshold | Ordinal value |
| 85780-5 | Pseudomonas aeruginosa DNA [Presence] by NAA with non-probe detection in Positive blood culture | Pseudomonas aeruginosa DNA | – | – | Threshold | Ordinal value |
| 85781-3 | Candida albicans DNA [Presence] by NAA with non-probe detection in Positive blood culture | Candida albicans DNA | – | – | Threshold | Ordinal value |
| 85782-1 | Candida glabrata DNA [Presence] by NAA with non-probe detection in Positive blood culture | Nakaseomyces glabratus DNA | – | – | Threshold | Ordinal value |
| 85783-9 | Candida krusei DNA [Presence] by NAA with non-probe detection in Positive blood culture | Candida krusei DNA | – | – | Threshold | Ordinal value |
| 85784-7 | Candida parapsilosis DNA [Presence] by NAA with non-probe detection in Positive blood culture | Candida parapsilosis DNA | – | – | Threshold | Ordinal value |
| 85785-4 | Candida tropicalis DNA [Presence] by NAA with non-probe detection in Positive blood culture | Candida tropicalis DNA | – | – | Threshold | Ordinal value |
| 88889-1 | Middle East respiratory syndrome coronavirus (MERS-CoV) RNA [Presence] in Nasopharynx by NAA with non-probe detection | Betacoronavirus cameli RNA | – | Specimen from nasopharynx | Threshold | Ordinal value |
| 89996-3 | Pneumocystis jirovecii DNA [Presence] in Lower respiratory specimen by NAA with non-probe detection | Pneumocystis jirovecii DNA | – | Lower respiratory tract specimen | Threshold | Ordinal value |
| 92957-0 | Respiratory syncytial virus RNA [Presence] in Lower respiratory specimen by NAA with non-probe detection | Human Respiratory syncytial virus RNA | – | Lower respiratory tract specimen | Threshold | Ordinal value |
| 92963-8 | Parainfluenza virus RNA [Presence] in Lower respiratory specimen by NAA with non-probe detection | Parainfluenza virus RNA | – | Lower respiratory tract specimen | Threshold | Ordinal value |
| 92964-6 | Mycoplasma pneumoniae DNA [Presence] in Lower respiratory specimen by NAA with non-probe detection | Mycoplasma pneumoniae DNA | – | Lower respiratory tract specimen | Threshold | Ordinal value |
| 92967-9 | Middle East respiratory syndrome coronavirus (MERS-CoV) RNA [Presence] in Lower respiratory specimen by NAA with non-probe detection | Betacoronavirus cameli RNA | – | Lower respiratory tract specimen | Threshold | Ordinal value |
| 92969-5 | Legionella pneumophila DNA [Presence] in Lower respiratory specimen by NAA with non-probe detection | Legionella pneumophila DNA | – | Lower respiratory tract specimen | Threshold | Ordinal value |
| 92976-0 | Influenza virus B RNA [Presence] in Lower respiratory specimen by NAA with non-probe detection | Influenza B virus RNA | – | Lower respiratory tract specimen | Threshold | Ordinal value |
| 92977-8 | Influenza virus A RNA [Presence] in Lower respiratory specimen by NAA with non-probe detection | Influenza A virus RNA | – | Lower respiratory tract specimen | Threshold | Ordinal value |
| 92978-6 | Human metapneumovirus RNA [Presence] in Lower respiratory specimen by NAA with non-probe detection | Human metapneumovirus RNA | – | Lower respiratory tract specimen | Threshold | Ordinal value |
| 92979-4 | Human coronavirus RNA [Presence] in Lower respiratory specimen by NAA with non-probe detection | Human coronavirus RNA | – | Lower respiratory tract specimen | Threshold | Ordinal value |
| 92986-9 | Chlamydophila pneumoniae DNA [Presence] in Lower respiratory specimen by NAA with non-probe detection | Chlamydophila pneumoniae DNA | – | Lower respiratory tract specimen | Threshold | Ordinal value |
| 92987-7 | Adenovirus DNA [Presence] in Lower respiratory specimen by NAA with non-probe detection | Adenovirus DNA | – | Lower respiratory tract specimen | Threshold | Ordinal value |
| 93438-0 | Herpes simplex virus 2 DNA [Presence] in Blood by NAA with non-probe detection | Human alphaherpesvirus 2 DNA | – | Blood specimen | Threshold | Ordinal value |
| 93439-8 | Herpes simplex virus 1 DNA [Presence] in Blood by NAA with non-probe detection | Human alphaherpesvirus 1 DNA | – | Blood specimen | Threshold | Ordinal value |
| 93856-3 | Enterovirus RNA [Presence] in Specimen by NAA with non-probe detection | Enterovirus RNA | – | Specimen | Threshold | Ordinal value |
| 94479-3 | Human coronavirus 229E RNA [Presence] in Lower respiratory specimen by NAA with non-probe detection | Human coronavirus 229E RNA | – | Lower respiratory tract specimen | Threshold | Ordinal value |
| 94480-1 | Human coronavirus HKU1 RNA [Presence] in Lower respiratory specimen by NAA with non-probe detection | Human coronavirus HKU1 RNA | – | Lower respiratory tract specimen | Threshold | Ordinal value |
| 94481-9 | Human coronavirus NL63 RNA [Presence] in Lower respiratory specimen by NAA with non-probe detection | Human coronavirus NL63 RNA | – | Lower respiratory tract specimen | Threshold | Ordinal value |
| 94482-7 | Human coronavirus OC43 RNA [Presence] in Lower respiratory specimen by NAA with non-probe detection | Human coronavirus OC43 RNA | – | Lower respiratory tract specimen | Threshold | Ordinal value |
| 94483-5 | Parainfluenza virus 1 RNA [Presence] in Lower respiratory specimen by NAA with non-probe detection | Parainfluenza virus 1 RNA | – | Lower respiratory tract specimen | Threshold | Ordinal value |
| 94484-3 | Parainfluenza virus 2 RNA [Presence] in Lower respiratory specimen by NAA with non-probe detection | Parainfluenza virus 2 RNA | – | Lower respiratory tract specimen | Threshold | Ordinal value |
| 94485-0 | Parainfluenza virus 3 RNA [Presence] in Lower respiratory specimen by NAA with non-probe detection | Parainfluenza virus 3 RNA | – | Lower respiratory tract specimen | Threshold | Ordinal value |
| 94486-8 | Parainfluenza virus 4 RNA [Presence] in Lower respiratory specimen by NAA with non-probe detection | Parainfluenza virus 4 RNA | – | Lower respiratory tract specimen | Threshold | Ordinal value |
| 94565-9 | SARS-CoV-2 (COVID-19) RNA [Presence] in Nasopharynx by NAA with non-probe detection | Severe acute respiratory syndrome coronavirus 2 RNA | – | Specimen from nasopharynx | Threshold | Ordinal value |
| 94581-6 | Herpes simplex virus 1 DNA [Presence] in Specimen by NAA with non-probe detection | Human alphaherpesvirus 1 DNA | – | Specimen | Threshold | Ordinal value |
| 94582-4 | Herpes simplex virus 2 DNA [Presence] in Specimen by NAA with non-probe detection | Human alphaherpesvirus 2 DNA | – | Specimen | Threshold | Ordinal value |
| 94584-0 | Varicella zoster virus DNA [Presence] in Specimen by NAA with non-probe detection | Varicella virus DNA | – | Specimen | Threshold | Ordinal value |
| 95608-6 | SARS-CoV-2 (COVID-19) RNA [Presence] in Respiratory system specimen by NAA with non-probe detection | Severe acute respiratory syndrome coronavirus 2 RNA | – | Specimen from respiratory system | Threshold | Ordinal value |
| 95764-7 | Candida auris DNA [Presence] in Urine by NAA with non-probe detection | Candidozyma auris DNA | – | Urine specimen | Threshold | Ordinal value |
| 95765-4 | Candida auris DNA [Presence] in Specimen by NAA with non-probe detection | Candidozyma auris DNA | – | Specimen | Threshold | Ordinal value |
| 95766-2 | Candida auris DNA [Presence] in Blood by NAA with non-probe detection | Candidozyma auris DNA | – | Blood specimen | Threshold | Ordinal value |
| 96301-7 | Bacteroides fragilis DNA [Presence] by NAA with non-probe detection in Positive blood culture | Bacteroides fragilis DNA | – | – | Threshold | Ordinal value |
| 96302-5 | Candida auris DNA [Presence] by NAA with non-probe detection in Positive blood culture | Candidozyma auris DNA | – | – | Threshold | Ordinal value |
| 96304-1 | Enterococcus faecalis DNA [Presence] by NAA with non-probe detection in Positive blood culture | Enterococcus faecalis DNA | – | – | Threshold | Ordinal value |
| 96305-8 | Enterococcus faecium DNA [Presence] by NAA with non-probe detection in Positive blood culture | Enterococcus faecium DNA | – | – | Threshold | Ordinal value |
| 96306-6 | Enterobacterales DNA [Presence] by NAA with non-probe detection in Positive blood culture | Enterobacterales DNA | – | – | Threshold | Ordinal value |
| 96308-2 | Klebsiella aerogenes DNA [Presence] by NAA with non-probe detection in Positive blood culture | Klebsiella aerogenes DNA | – | – | Threshold | Ordinal value |
| 96310-8 | Staphylococcus epidermidis DNA [Presence] by NAA with non-probe detection in Positive blood culture | Staphylococcus epidermidis DNA | – | – | Threshold | Ordinal value |
| 96311-6 | Staphylococcus lugdunensis DNA [Presence] by NAA with non-probe detection in Positive blood culture | Staphylococcus lugdunensis DNA | – | – | Threshold | Ordinal value |
| 96312-4 | Stenotrophomonas maltophilia DNA [Presence] by NAA with non-probe detection in Positive blood culture | Stenotrophomonas maltophilia DNA | – | – | Threshold | Ordinal value |
| 96313-2 | Salmonella sp DNA [Presence] by NAA with non-probe detection in Positive blood culture | Salmonella DNA | – | – | Threshold | Ordinal value |
| 97151-5 | Enterovirus RNA [Presence] in Serum or Plasma by NAA with non-probe detection | Enterovirus RNA | – | Serum or plasma specimen | Threshold | Ordinal value |
| 97205-9 | Tropheryma whipplei DNA [Presence] in Blood by NAA with non-probe detection | Tropheryma whipplei DNA | – | Blood specimen | Threshold | Ordinal value |
| 97206-7 | Tropheryma whipplei DNA [Presence] in Specimen by NAA with non-probe detection | Tropheryma whipplei DNA | – | Specimen | Threshold | Ordinal value |
| 97610-0 | Bacteroides fragilis DNA [Presence] in Synovial fluid by NAA with non-probe detection | Bacteroides fragilis DNA | – | Synovial fluid specimen | Threshold | Ordinal value |
| 97611-8 | Candida albicans DNA [Presence] in Synovial fluid by NAA with non-probe detection | Candida albicans DNA | – | Synovial fluid specimen | Threshold | Ordinal value |
| 97612-6 | Candida sp DNA [Presence] in Synovial fluid by NAA with non-probe detection | Candida DNA | – | Synovial fluid specimen | Threshold | Ordinal value |
| 97613-4 | Citrobacter sp DNA [Presence] in Synovial fluid by NAA with non-probe detection | Citrobacter DNA | – | Synovial fluid specimen | Threshold | Ordinal value |
| 97616-7 | Enterobacter cloacae complex DNA [Presence] in Synovial fluid by NAA with non-probe detection | Enterobacter cloacae complex DNA | – | Synovial fluid specimen | Threshold | Ordinal value |
| 97617-5 | Enterococcus faecalis DNA [Presence] in Synovial fluid by NAA with non-probe detection | Enterococcus faecalis DNA | – | Synovial fluid specimen | Threshold | Ordinal value |
| 97618-3 | Enterococcus faecium DNA [Presence] in Synovial fluid by NAA with non-probe detection | Enterococcus faecium DNA | – | Synovial fluid specimen | Threshold | Ordinal value |
| 97619-1 | Escherichia coli DNA [Presence] in Synovial fluid by NAA with non-probe detection | Escherichia coli DNA | – | Synovial fluid specimen | Threshold | Ordinal value |
| 97620-9 | Finegoldia magna DNA [Presence] in Synovial fluid by NAA with non-probe detection | Finegoldia magna DNA | – | Synovial fluid specimen | Threshold | Ordinal value |
| 97621-7 | Haemophilus influenzae DNA [Presence] in Synovial fluid by NAA with non-probe detection | Haemophilus influenzae DNA | – | Synovial fluid specimen | Threshold | Ordinal value |
| 97622-5 | Kingella kingae DNA [Presence] in Synovial fluid by NAA with non-probe detection | Kingella kingae DNA | – | Synovial fluid specimen | Threshold | Ordinal value |
| 97623-3 | Klebsiella aerogenes DNA [Presence] in Synovial fluid by NAA with non-probe detection | Klebsiella aerogenes DNA | – | Synovial fluid specimen | Threshold | Ordinal value |
| 97625-8 | Morganella morganii DNA [Presence] in Synovial fluid by NAA with non-probe detection | Morganella morganii DNA | – | Synovial fluid specimen | Threshold | Ordinal value |
| 97626-6 | Neisseria gonorrhoeae DNA [Presence] in Synovial fluid by NAA with non-probe detection | Neisseria gonorrhoeae DNA | – | Synovial fluid specimen | Threshold | Ordinal value |
| 97627-4 | Parvimonas micra DNA [Presence] in Synovial fluid by NAA with non-probe detection | Parvimonas micra DNA | – | Synovial fluid specimen | Threshold | Ordinal value |
| 97628-2 | Peptoniphilus sp DNA [Presence] in Synovial fluid by NAA with non-probe detection | Peptoniphilus DNA | – | Synovial fluid specimen | Threshold | Ordinal value |
| 97629-0 | Peptostreptococcus anaerobius DNA [Presence] in Synovial fluid by NAA with non-probe detection | Peptostreptococcus anaerobius DNA | – | Synovial fluid specimen | Threshold | Ordinal value |
| 97630-8 | Proteus sp DNA [Presence] in Synovial fluid by NAA with non-probe detection | Proteus DNA | – | Synovial fluid specimen | Threshold | Ordinal value |
| 97631-6 | Pseudomonas aeruginosa DNA [Presence] in Synovial fluid by NAA with non-probe detection | Pseudomonas aeruginosa DNA | – | Synovial fluid specimen | Threshold | Ordinal value |
| 97632-4 | Salmonella sp DNA [Presence] in Synovial fluid by NAA with non-probe detection | Salmonella DNA | – | Synovial fluid specimen | Threshold | Ordinal value |
| 97633-2 | Serratia marcescens DNA [Presence] in Synovial fluid by NAA with non-probe detection | Serratia marcescens DNA | – | Synovial fluid specimen | Threshold | Ordinal value |
| 97634-0 | Staphylococcus aureus DNA [Presence] in Synovial fluid by NAA with non-probe detection | Staphylococcus aureus DNA | – | Synovial fluid specimen | Threshold | Ordinal value |
| 97635-7 | Staphylococcus lugdunensis DNA [Presence] in Synovial fluid by NAA with non-probe detection | Staphylococcus lugdunensis DNA | – | Synovial fluid specimen | Threshold | Ordinal value |
| 97636-5 | Streptococcus agalactiae DNA [Presence] in Synovial fluid by NAA with non-probe detection | Streptococcus agalactiae DNA | – | Synovial fluid specimen | Threshold | Ordinal value |
| 97637-3 | Streptococcus pneumoniae DNA [Presence] in Synovial fluid by NAA with non-probe detection | Streptococcus pneumoniae DNA | – | Synovial fluid specimen | Threshold | Ordinal value |
| 97638-1 | Streptococcus pyogenes DNA [Presence] in Synovial fluid by NAA with non-probe detection | Streptococcus pyogenes DNA | – | Synovial fluid specimen | Threshold | Ordinal value |
| 97639-9 | Streptococcus sp DNA [Presence] in Synovial fluid by NAA with non-probe detection | Streptococcus DNA | – | Synovial fluid specimen | Threshold | Ordinal value |
| 9837-6 | HIV 1 proviral DNA [Presence] in Blood by Probe with amplification | Human immunodeficiency virus 1 proviral DNA | – | Blood specimen | Threshold | Ordinal value |
| SCT 871555000 | Detection of ribonucleic acid of SARS-CoV-2 | Severe acute respiratory syndrome coronavirus 2 RNA | – | – | Presence | – |
| SCT 871559006 | Detection of ribonucleic acid of SARS-CoV-2 in bronchoalveolar lavage fluid | Severe acute respiratory syndrome coronavirus 2 RNA | Lower respiratory tract structure | Bronchoalveolar lavage fluid specimen | Presence | – |
| SCT 871556004 | Detection of ribonucleic acid of SARS-CoV-2 in nasopharyngeal swab | Severe acute respiratory syndrome coronavirus 2 RNA | Nasopharyngeal structure | Nasopharyngeal swab | Presence | – |
| SCT 871557008 | Detection of ribonucleic acid of SARS-CoV-2 in oropharyngeal swab | Severe acute respiratory syndrome coronavirus 2 RNA | Oropharyngeal structure | Oropharyngeal swab | Presence | – |
| SCT 871558003 | Detection of ribonucleic acid of SARS-CoV-2 in sputum | Severe acute respiratory syndrome coronavirus 2 RNA | Structure of respiratory system | Sputum specimen | Presence | – |

### Gezielter Kulturnachweis — erregerspezifische Kulturtechnik

Threshold-Presence eines benannten Erregers durch erregerspezifische Kultur (MRSA-/VRE-/Salmonellen-Screeningkulturen). Enthält 13316-5.

ValueSet [mii-vs-mikrobio-loinc-ontology-specific-culture-detection](ValueSet-mii-vs-mikrobio-loinc-ontology-specific-culture-detection.md). Teil des Vereinigungs-ValueSets [mii-vs-mikrobio-loinc-ontology-spezifische-bestimmung](ValueSet-mii-vs-mikrobio-loinc-ontology-spezifische-bestimmung.md), gebunden durch das abgeleitete Profil [mii-pr-mikrobio-loinc-ontology-spezifische-bestimmung](StructureDefinition-mii-pr-mikrobio-loinc-ontology-spezifische-bestimmung.md).

```
<< 363787002 |Observable entity (observable entity)| : 370130000 |Property (attribute)| = (118589004 |Threshold (property) (qualifier value)| OR 705057003 |Presence (property) (qualifier value)|), 246501002 |Technique (attribute)| = << 703752003 |Organism specific culture technique (qualifier value)|

```

| | |
| :--- | :--- |
| Property | Threshold OR Presence |
| Technique | `<< Organism specific culture technique` |

Die Regel wählt **192** Konzepte aus (191 mit LOINC-Code, 1 ohne). Release 2026-03-21 → 2026-10-21: **+1 / −0** (Listen auf der Seite [Release-Delta](loinc-ontology-release-delta.md)).

#### Codes (192)

| | | | | | | |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| 100897-8 | Staphylococcus aureus [Presence] in Specimen by Organism specific culture | Staphylococcus aureus | Specimen | Threshold | Ordinal value | Organism specific culture |
| 100908-3 | Pseudomonas aeruginosa [Presence] in Lower respiratory specimen by Organism specific culture | Pseudomonas aeruginosa | Lower respiratory tract specimen | Threshold | Ordinal value | Organism specific culture |
| 100909-1 | Cronobacter sakazakii [Presence] by Organism specific culture | Cronobacter sakazakii | Specimen from environment | Threshold | Ordinal value | Organism specific culture |
| 100911-7 | Campylobacter sp [Presence] in Stool by Organism specific culture | Campylobacter | Stool specimen | Threshold | Ordinal value | Organism specific culture |
| 104343-9 | Borna disease virus [Presence] in Specimen by Organism specific culture | Orthobornavirus bornaense | Specimen | Threshold | Ordinal value | Organism specific culture |
| 104347-0 | Borrelia recurrentis [Presence] in Cerebrospinal Fluid by Organism specific culture | Borrelia recurrentis | Cerebrospinal fluid specimen | Threshold | Ordinal value | Organism specific culture |
| 104349-6 | Borrelia recurrentis [Presence] in Blood by Organism specific culture | Borrelia recurrentis | Blood specimen | Threshold | Ordinal value | Organism specific culture |
| 104351-2 | Borrelia recurrentis [Presence] in Specimen by Organism specific culture | Borrelia recurrentis | Specimen | Threshold | Ordinal value | Organism specific culture |
| 104371-0 | Corynebacterium pseudotuberculosis [Presence] in Specimen by Organism specific culture | Corynebacterium pseudotuberculosis | Specimen | Threshold | Ordinal value | Organism specific culture |
| 104372-8 | Corynebacterium pseudotuberculosis [Presence] in Upper respiratory specimen by Organism specific culture | Corynebacterium pseudotuberculosis | Upper respiratory specimen | Threshold | Ordinal value | Organism specific culture |
| 104373-6 | Corynebacterium ulcerans [Presence] in Specimen by Organism specific culture | Corynebacterium ulcerans | Specimen | Threshold | Ordinal value | Organism specific culture |
| 104374-4 | Corynebacterium ulcerans [Presence] in Upper respiratory specimen by Organism specific culture | Corynebacterium ulcerans | Upper respiratory specimen | Threshold | Ordinal value | Organism specific culture |
| 105622-5 | Aeromonas sp [Presence] in Stool by Organism specific culture | Aeromonas | Stool specimen | Threshold | Ordinal value | Organism specific culture |
| 106044-1 | Methicillin resistant Staphylococcus aureus [Presence] in Skin by Organism specific culture | Methicillin resistant Staphylococcus aureus | Specimen from skin | Threshold | Ordinal value | Organism specific culture |
| 106046-6 | Methicillin resistant Staphylococcus aureus [Presence] in Axilla by Organism specific culture | Methicillin resistant Staphylococcus aureus | – | Threshold | Ordinal value | Organism specific culture |
| 10670-8 | Giardia lamblia [Presence] in Stool by Organism specific culture | Giardia duodenalis | Stool specimen | Threshold | Ordinal value | Organism specific culture |
| 10851-4 | Escherichia coli O157:H7 [Presence] in Stool by Organism specific culture | Escherichia coli serotype O157:H7 | Stool specimen | Threshold | Ordinal value | Organism specific culture |
| 10860-5 | Varicella zoster virus [Presence] in Specimen by Organism specific culture | Varicellovirus humanalpha3 | Specimen | Threshold | Ordinal value | Organism specific culture |
| 11255-7 | Haemophilus ducreyi [Presence] in Specimen by Organism specific culture | Haemophilus ducreyi | Specimen | Threshold | Ordinal value | Organism specific culture |
| 11267-2 | Streptococcus.beta-hemolytic [Presence] in Genital specimen by Organism specific culture | Beta-hemolytic Streptococcus | Specimen from genital system | Threshold | Ordinal value | Organism specific culture |
| 11268-0 | Streptococcus pyogenes [Presence] in Throat by Organism specific culture | Streptococcus pyogenes | Specimen from throat | Threshold | Ordinal value | Organism specific culture |
| 112888-3 | Neisseria gonorrhoeae [Presence] in Penis by Organism specific culture | Neisseria gonorrhoeae | Specimen from penis | Threshold | Ordinal value | Organism specific culture |
| 11469-4 | Bacillus anthracis [Presence] in Specimen by Organism specific culture | Bacillus anthracis | Specimen | Threshold | Ordinal value | Organism specific culture |
| 11550-1 | Borrelia burgdorferi [Presence] in Specimen by Organism specific culture | Borreliella burgdorferi | Specimen | Threshold | Ordinal value | Organism specific culture |
| 13316-5 | Vancomycin resistant enterococcus [Presence] in Specimen by Organism specific culture | Vancomycin resistant Enterococcus | Specimen | Threshold | Ordinal value | Organism specific culture |
| 13317-3 | Methicillin resistant Staphylococcus aureus [Presence] in Specimen by Organism specific culture | Methicillin resistant Staphylococcus aureus | Specimen | Threshold | Ordinal value | Organism specific culture |
| 13921-2 | Mumps virus [Presence] in Specimen by Organism specific culture | Orthorubulavirus parotitidis | Specimen | Threshold | Ordinal value | Organism specific culture |
| 14127-5 | Neisseria gonorrhoeae [Presence] in Anal by Organism specific culture | Neisseria gonorrhoeae | Specimen from anus | Threshold | Ordinal value | Organism specific culture |
| 14129-1 | Respiratory syncytial virus [Presence] in Nose by Organism specific culture | Human respiratory syncytial virus | Specimen from nose | Threshold | Ordinal value | Organism specific culture |
| 14461-8 | Chlamydia trachomatis [Presence] in Blood by Organism specific culture | Chlamydia trachomatis | Blood specimen | Threshold | Ordinal value | Organism specific culture |
| 14462-6 | Chlamydia trachomatis [Presence] in Cerebrospinal Fluid by Organism specific culture | Chlamydia trachomatis | Cerebrospinal fluid specimen | Threshold | Ordinal value | Organism specific culture |
| 14463-4 | Chlamydia trachomatis [Presence] in Cervix by Organism specific culture | Chlamydia trachomatis | Specimen from uterine cervix | Threshold | Ordinal value | Organism specific culture |
| 14464-2 | Chlamydia trachomatis [Presence] in Vaginal fluid by Organism specific culture | Chlamydia trachomatis | Specimen from vagina | Threshold | Ordinal value | Organism specific culture |
| 14465-9 | Chlamydia trachomatis [Presence] in Urethra by Organism specific culture | Chlamydia trachomatis | Specimen from urethra | Threshold | Ordinal value | Organism specific culture |
| 14467-5 | Chlamydia trachomatis [Presence] in Urine sediment by Organism specific culture | Chlamydia trachomatis | Urine sediment specimen | Threshold | Ordinal value | Organism specific culture |
| 14838-7 | Toxoplasma gondii [Presence] in Tissue by Organism specific culture | Toxoplasma gondii | Tissue specimen | Threshold | Ordinal value | Organism specific culture |
| 15388-2 | Mycoplasma hominis [Presence] in Specimen by Organism specific culture | Metamycoplasma hominis | Specimen | Threshold | Ordinal value | Organism specific culture |
| 16134-9 | Neisseria meningitidis [Presence] in Specimen by Organism specific culture | Neisseria meningitidis | Specimen | Threshold | Ordinal value | Organism specific culture |
| 16291-7 | Herpes simplex virus 1 [Presence] in Specimen by Organism specific culture | Human alphaherpesvirus 1 | Specimen | Threshold | Ordinal value | Organism specific culture |
| 16483-0 | Borrelia hermsii [Presence] in Specimen by Organism specific culture | Borrelia hermsii | Specimen | Threshold | Ordinal value | Organism specific culture |
| 16676-9 | Corynebacterium diphtheriae [Presence] in Specimen by Organism specific culture | Corynebacterium diphtheriae | Specimen | Threshold | Ordinal value | Organism specific culture |
| 17656-0 | Streptococcus pyogenes [Presence] in Specimen by Organism specific culture | Streptococcus pyogenes | Specimen | Threshold | Ordinal value | Organism specific culture |
| 17852-5 | Ureaplasma urealyticum [Presence] in Specimen by Organism specific culture | Ureaplasma urealyticum | Specimen | Threshold | Ordinal value | Organism specific culture |
| 18482-0 | Yeast [Presence] in Specimen by Organism specific culture | Yeast | Specimen | Threshold | Ordinal value | Organism specific culture |
| 18483-8 | Yeast [Presence] in Genital specimen by Organism specific culture | Yeast | Specimen from genital system | Threshold | Ordinal value | Organism specific culture |
| 19054-6 | Mycoplasma pneumoniae [Presence] in Specimen by Organism specific culture | Mycoplasmoides pneumoniae | Specimen | Threshold | Ordinal value | Organism specific culture |
| 20752-2 | Chlamydophila psittaci [Presence] in Specimen by Organism specific culture | Chlamydia psittaci | Specimen | Threshold | Ordinal value | Organism specific culture |
| 20869-4 | Leptospira sp [Presence] in Tissue by Organism specific culture | Leptospira | Tissue specimen | Threshold | Ordinal value | Organism specific culture |
| 20870-2 | Listeria sp [Presence] in Milk by Organism specific culture | Listeria | Milk specimen | Threshold | Ordinal value | Organism specific culture |
| 20871-0 | Listeria sp [Presence] in Cheese by Organism specific culture | Listeria | – | Threshold | Ordinal value | Organism specific culture |
| 20898-3 | Mycoplasma sp [Presence] in Milk by Organism specific culture | Genus Mycoplasma | Milk specimen | Threshold | Ordinal value | Organism specific culture |
| 20899-1 | Mycoplasma sp [Presence] in Exudate by Organism specific culture | Genus Mycoplasma | Exudate specimen | Threshold | Ordinal value | Organism specific culture |
| 21184-7 | Chlamydophila pneumoniae [Presence] in Specimen by Organism specific culture | Chlamydia pneumoniae | Specimen | Threshold | Ordinal value | Organism specific culture |
| 21284-5 | Gardnerella vaginalis [Presence] in Genital specimen by Organism specific culture | Gardnerella vaginalis | Specimen from genital system | Threshold | Ordinal value | Organism specific culture |
| 23602-6 | Salmonella enteritidis [Presence] in Stool by Organism specific culture | Salmonella Enteritidis | Stool specimen | Threshold | Ordinal value | Organism specific culture |
| 30099-6 | Neisseria gonorrhoeae [Presence] in Conjunctival specimen by Organism specific culture | Neisseria gonorrhoeae | – | Threshold | Ordinal value | Organism specific culture |
| 30122-6 | Aeromonas sp [Presence] in Specimen by Organism specific culture | Aeromonas | Specimen | Threshold | Ordinal value | Organism specific culture |
| 32675-1 | Cytomegalovirus [Presence] in Bronchial specimen by Organism specific culture | Cytomegalovirus | Specimen from bronchus | Threshold | Ordinal value | Organism specific culture |
| 33676-8 | Francisella tularensis [Presence] in Specimen by Organism specific culture | Francisella tularensis | Specimen | Threshold | Ordinal value | Organism specific culture |
| 33677-6 | Francisella tularensis [Presence] in Isolate by Organism specific culture | Francisella tularensis | Microbial isolate | Threshold | Ordinal value | Organism specific culture |
| 33685-9 | Yersinia pestis [Presence] in Specimen by Organism specific culture | Yersinia pestis | Specimen | Threshold | Ordinal value | Organism specific culture |
| 33686-7 | Yersinia pestis [Presence] in Isolate by Organism specific culture | Yersinia pestis | Microbial isolate | Threshold | Ordinal value | Organism specific culture |
| 33694-1 | Clostridium botulinum [Presence] in Specimen by Organism specific culture | Clostridium botulinum | Specimen | Threshold | Ordinal value | Organism specific culture |
| 33695-8 | Clostridium botulinum [Presence] in Isolate by Organism specific culture | Clostridium botulinum | Microbial isolate | Threshold | Ordinal value | Organism specific culture |
| 34201-4 | Cytomegalovirus [Presence] in Amniotic fluid by Organism specific culture | Cytomegalovirus | Amniotic fluid specimen | Threshold | Ordinal value | Organism specific culture |
| 34891-2 | Salmonella enteritidis [Presence] in Specimen by Organism specific culture | Salmonella Enteritidis | Specimen | Threshold | Ordinal value | Organism specific culture |
| 38377-8 | Cryptococcus neoformans [Presence] in Specimen by Organism specific culture | Cryptococcus neoformans | Specimen | Threshold | Ordinal value | Organism specific culture |
| 38382-8 | Influenza virus B [Presence] in Specimen by Organism specific culture | Influenza B virus | Specimen | Threshold | Ordinal value | Organism specific culture |
| 43879-6 | Bordetella parapertussis [Presence] in Nasopharynx by Organism specific culture | Bordetella parapertussis | Specimen from nasopharynx | Threshold | Ordinal value | Organism specific culture |
| 43890-3 | Bordetella pertussis [Presence] in Sputum by Organism specific culture | Bordetella pertussis | Sputum specimen | Threshold | Ordinal value | Organism specific culture |
| 43896-0 | Bordetella pertussis [Presence] in Pleural fluid by Organism specific culture | Bordetella pertussis | Pleural fluid specimen | Threshold | Ordinal value | Organism specific culture |
| 43925-7 | Bordetella parapertussis [Presence] in Specimen by Organism specific culture | Bordetella parapertussis | Specimen | Threshold | Ordinal value | Organism specific culture |
| 44015-6 | Helicobacter pylori [Presence] in Gastric fluid by Organism specific culture | Helicobacter pylori | Gastric fluid specimen | Threshold | Ordinal value | Organism specific culture |
| 44090-9 | Escherichia coli O157:H7 [Presence] in Isolate by Organism specific culture | Escherichia coli serotype O157:H7 | Microbial isolate | Threshold | Ordinal value | Organism specific culture |
| 44463-8 | Herpes simplex virus 1 [Presence] in Vaginal fluid by Organism specific culture | Human alphaherpesvirus 1 | Specimen from vagina | Threshold | Ordinal value | Organism specific culture |
| 44464-6 | Herpes simplex virus 1 [Presence] in Skin by Organism specific culture | Human alphaherpesvirus 1 | Specimen from skin | Threshold | Ordinal value | Organism specific culture |
| 44465-3 | Herpes simplex virus 1 [Presence] in Genital specimen by Organism specific culture | Human alphaherpesvirus 1 | Specimen from genital system | Threshold | Ordinal value | Organism specific culture |
| 44466-1 | Herpes simplex virus 1 [Presence] in Throat by Organism specific culture | Human alphaherpesvirus 1 | Specimen from throat | Threshold | Ordinal value | Organism specific culture |
| 44467-9 | Herpes simplex virus 1 [Presence] in Cervix by Organism specific culture | Human alphaherpesvirus 1 | Specimen from uterine cervix | Threshold | Ordinal value | Organism specific culture |
| 44468-7 | Herpes simplex virus 1 [Presence] in Anal by Organism specific culture | Human alphaherpesvirus 1 | Specimen from anus | Threshold | Ordinal value | Organism specific culture |
| 44484-4 | Herpes simplex virus 2 [Presence] in Specimen by Organism specific culture | Human alphaherpesvirus 2 | Specimen | Threshold | Ordinal value | Organism specific culture |
| 44485-1 | Herpes simplex virus 2 [Presence] in Vaginal fluid by Organism specific culture | Human alphaherpesvirus 2 | Specimen from vagina | Threshold | Ordinal value | Organism specific culture |
| 44486-9 | Herpes simplex virus 2 [Presence] in Skin by Organism specific culture | Human alphaherpesvirus 2 | Specimen from skin | Threshold | Ordinal value | Organism specific culture |
| 44487-7 | Herpes simplex virus 2 [Presence] in Genital specimen by Organism specific culture | Human alphaherpesvirus 2 | Specimen from genital system | Threshold | Ordinal value | Organism specific culture |
| 44488-5 | Herpes simplex virus 2 [Presence] in Throat by Organism specific culture | Human alphaherpesvirus 2 | Specimen from throat | Threshold | Ordinal value | Organism specific culture |
| 44489-3 | Herpes simplex virus 2 [Presence] in Cervix by Organism specific culture | Human alphaherpesvirus 2 | Specimen from uterine cervix | Threshold | Ordinal value | Organism specific culture |
| 44490-1 | Herpes simplex virus 2 [Presence] in Anal by Organism specific culture | Human alphaherpesvirus 2 | Specimen from anus | Threshold | Ordinal value | Organism specific culture |
| 44797-9 | Brucella sp [Presence] in Specimen by Organism specific culture | Brucella | Specimen | Threshold | Ordinal value | Organism specific culture |
| 44799-5 | Coxiella burnetii [Presence] in Specimen by Organism specific culture | Coxiella burnetii | Specimen | Threshold | Ordinal value | Organism specific culture |
| 44800-1 | Burkholderia sp [Presence] in Specimen by Organism specific culture | Burkholderia | Specimen | Threshold | Ordinal value | Organism specific culture |
| 45093-2 | Chlamydia trachomatis [Presence] in Anal by Organism specific culture | Chlamydia trachomatis | Specimen from anus | Threshold | Ordinal value | Organism specific culture |
| 45094-0 | Chlamydia trachomatis [Presence] in Conjunctival specimen by Organism specific culture | Chlamydia trachomatis | – | Threshold | Ordinal value | Organism specific culture |
| 45095-7 | Chlamydia trachomatis [Presence] in Genital specimen by Organism specific culture | Chlamydia trachomatis | Specimen from genital system | Threshold | Ordinal value | Organism specific culture |
| 45096-5 | Chlamydia trachomatis [Presence] in Nasopharynx by Organism specific culture | Chlamydia trachomatis | Specimen from nasopharynx | Threshold | Ordinal value | Organism specific culture |
| 46454-5 | Shigella sp [Presence] in Specimen by Organism specific culture | Shigella | Specimen | Threshold | Ordinal value | Organism specific culture |
| 48310-7 | Influenza virus A [Presence] in Specimen by Organism specific culture | Influenza A virus | Specimen | Threshold | Ordinal value | Organism specific culture |
| 48741-3 | Bordetella pertussis [Presence] in Nasopharynx by Organism specific culture | Bordetella pertussis | Specimen from nasopharynx | Threshold | Ordinal value | Organism specific culture |
| 48872-6 | Anaplasma phagocytophilum [Presence] in Specimen by Organism specific culture | Anaplasma phagocytophilum | Specimen | Threshold | Ordinal value | Organism specific culture |
| 48874-2 | Neorickettsia sp [Presence] in Specimen by Organism specific culture | Neorickettsia | Specimen | Threshold | Ordinal value | Organism specific culture |
| 48875-9 | Orientia tsutsugamushi [Presence] in Specimen by Organism specific culture | Orientia tsutsugamushi | Specimen | Threshold | Ordinal value | Organism specific culture |
| 50941-4 | Mycobacterium sp [Presence] in Specimen by Organism specific culture | Mycobacterium | Specimen | Threshold | Ordinal value | Organism specific culture |
| 51723-5 | Fungus [Presence] in Specimen by Organism specific culture | Fungi | Specimen | Threshold | Ordinal value | Organism specific culture |
| 52968-5 | Streptococcus agalactiae [Presence] in Anal by Organism specific culture | Group B streptococcus | Specimen from anus | Threshold | Ordinal value | Organism specific culture |
| 52969-3 | Methicillin resistant Staphylococcus aureus [Presence] in Nose by Organism specific culture | Methicillin resistant Staphylococcus aureus | Specimen from nose | Threshold | Ordinal value | Organism specific culture |
| 53572-4 | Methicillin resistant Staphylococcus aureus [Presence] in Genital specimen by Organism specific culture | Methicillin resistant Staphylococcus aureus | Specimen from genital system | Threshold | Ordinal value | Organism specific culture |
| 546-2 | Streptococcus.beta-hemolytic [Presence] in Throat by Organism specific culture | Beta-hemolytic Streptococcus | Specimen from throat | Threshold | Ordinal value | Organism specific culture |
| 547-0 | Streptococcus.beta-hemolytic [Presence] in Specimen by Organism specific culture | Beta-hemolytic Streptococcus | Specimen | Threshold | Ordinal value | Organism specific culture |
| 548-8 | Bordetella pertussis [Presence] in Throat by Organism specific culture | Bordetella pertussis | Specimen from throat | Threshold | Ordinal value | Organism specific culture |
| 549-6 | Bordetella pertussis [Presence] in Specimen by Organism specific culture | Bordetella pertussis | Specimen | Threshold | Ordinal value | Organism specific culture |
| 55097-0 | Parainfluenza virus 1 [Presence] in Specimen by Organism specific culture | Human parainfluenza virus 1 | Specimen | Threshold | Ordinal value | Organism specific culture |
| 55098-8 | Parainfluenza virus 2 [Presence] in Specimen by Organism specific culture | Human parainfluenza virus 2 | Specimen | Threshold | Ordinal value | Organism specific culture |
| 55099-6 | Parainfluenza virus 3 [Presence] in Specimen by Organism specific culture | Human parainfluenza virus 3 | Specimen | Threshold | Ordinal value | Organism specific culture |
| 55100-2 | Respiratory syncytial virus [Presence] in Specimen by Organism specific culture | Human respiratory syncytial virus | Specimen | Threshold | Ordinal value | Organism specific culture |
| 562-9 | Clostridioides difficile [Presence] in Stool by Organism specific culture | Clostridioides difficile | Stool specimen | Threshold | Ordinal value | Organism specific culture |
| 563-7 | Clostridioides difficile [Presence] in Specimen by Organism specific culture | Clostridioides difficile | Specimen | Threshold | Ordinal value | Organism specific culture |
| 581-9 | Streptococcus agalactiae [Presence] in Cervix by Organism specific culture | Group B streptococcus | Specimen from uterine cervix | Threshold | Ordinal value | Organism specific culture |
| 582-7 | Streptococcus agalactiae [Presence] in Genital specimen by Organism specific culture | Group B streptococcus | Specimen from genital system | Threshold | Ordinal value | Organism specific culture |
| 583-5 | Streptococcus agalactiae [Presence] in Genital lochia by Organism specific culture | Group B streptococcus | Genital lochia specimen | Threshold | Ordinal value | Organism specific culture |
| 5835-4 | Cytomegalovirus [Presence] in Blood by Organism specific culture | Cytomegalovirus | Blood specimen | Threshold | Ordinal value | Organism specific culture |
| 5836-2 | Cytomegalovirus [Presence] in Tissue by Organism specific culture | Cytomegalovirus | Tissue specimen | Threshold | Ordinal value | Organism specific culture |
| 5837-0 | Cytomegalovirus [Presence] in Urine by Organism specific culture | Cytomegalovirus | Urine specimen | Threshold | Ordinal value | Organism specific culture |
| 5838-8 | Cytomegalovirus [Presence] in Specimen by Organism specific culture | Cytomegalovirus | Specimen | Threshold | Ordinal value | Organism specific culture |
| 584-3 | Streptococcus agalactiae [Presence] in Vaginal fluid by Organism specific culture | Group B streptococcus | Specimen from vagina | Threshold | Ordinal value | Organism specific culture |
| 585-0 | Streptococcus agalactiae [Presence] in Throat by Organism specific culture | Group B streptococcus | Specimen from throat | Threshold | Ordinal value | Organism specific culture |
| 586-8 | Streptococcus agalactiae [Presence] in Specimen by Organism specific culture | Group B streptococcus | Specimen | Threshold | Ordinal value | Organism specific culture |
| 587-6 | Helicobacter pylori [Presence] in Specimen by Organism specific culture | Helicobacter pylori | Specimen | Threshold | Ordinal value | Organism specific culture |
| 59065-3 | Chlamydophila psittaci [Presence] in Bronchial brush by Organism specific culture | Chlamydia psittaci | Bronchial brushings specimen | Threshold | Ordinal value | Organism specific culture |
| 59150-3 | Vancomycin resistant enterococcus [Presence] in Anal by Organism specific culture | Vancomycin resistant Enterococcus | Specimen from anus | Threshold | Ordinal value | Organism specific culture |
| 59151-1 | Vancomycin resistant enterococcus [Presence] in Urine by Organism specific culture | Vancomycin resistant Enterococcus | Urine specimen | Threshold | Ordinal value | Organism specific culture |
| 63480-8 | Pseudomonas aeruginosa.multidrug resistant isolate [Presence] in Specimen by Organism specific culture | Multidrug-resistant Pseudomonas aeruginosa | Specimen | Threshold | Ordinal value | Organism specific culture |
| 6349-5 | Chlamydia trachomatis [Presence] in Specimen by Organism specific culture | Chlamydia trachomatis | Specimen | Threshold | Ordinal value | Organism specific culture |
| 64412-0 | Mycobacterium sp [Presence] in Blood by Organism specific culture | Mycobacterium | Blood specimen | Threshold | Ordinal value | Organism specific culture |
| 6595-3 | Klebsiella granulomatis [Presence] in Isolate by Organism specific culture | Klebsiella granulomatis | Microbial isolate | Threshold | Ordinal value | Organism specific culture |
| 688-2 | Neisseria gonorrhoeae [Presence] in Cervix by Organism specific culture | Neisseria gonorrhoeae | Specimen from uterine cervix | Threshold | Ordinal value | Organism specific culture |
| 690-8 | Neisseria gonorrhoeae [Presence] in Endometrium by Organism specific culture | Neisseria gonorrhoeae | Specimen from endometrium | Threshold | Ordinal value | Organism specific culture |
| 691-6 | Neisseria gonorrhoeae [Presence] in Genital specimen by Organism specific culture | Neisseria gonorrhoeae | Specimen from genital system | Threshold | Ordinal value | Organism specific culture |
| 692-4 | Neisseria gonorrhoeae [Presence] in Genital lochia by Organism specific culture | Neisseria gonorrhoeae | Genital lochia specimen | Threshold | Ordinal value | Organism specific culture |
| 693-2 | Neisseria gonorrhoeae [Presence] in Vaginal fluid by Organism specific culture | Neisseria gonorrhoeae | Specimen from vagina | Threshold | Ordinal value | Organism specific culture |
| 694-0 | Neisseria gonorrhoeae [Presence] in Semen by Organism specific culture | Neisseria gonorrhoeae | Semen sample | Threshold | Ordinal value | Organism specific culture |
| 695-7 | Neisseria gonorrhoeae [Presence] in Synovial fluid by Organism specific culture | Neisseria gonorrhoeae | Synovial fluid specimen | Threshold | Ordinal value | Organism specific culture |
| 696-5 | Neisseria gonorrhoeae [Presence] in Throat by Organism specific culture | Neisseria gonorrhoeae | Specimen from throat | Threshold | Ordinal value | Organism specific culture |
| 697-3 | Neisseria gonorrhoeae [Presence] in Urethra by Organism specific culture | Neisseria gonorrhoeae | Specimen from urethra | Threshold | Ordinal value | Organism specific culture |
| 698-1 | Neisseria gonorrhoeae [Presence] in Specimen by Organism specific culture | Neisseria gonorrhoeae | Specimen | Threshold | Ordinal value | Organism specific culture |
| 70850-3 | Burkholderia mallei [Presence] in Specimen by Organism specific culture | Burkholderia mallei | Specimen | Threshold | Ordinal value | Organism specific culture |
| 70851-1 | Burkholderia pseudomallei [Presence] in Specimen by Organism specific culture | Burkholderia pseudomallei | Specimen | Threshold | Ordinal value | Organism specific culture |
| 72607-5 | Streptococcus agalactiae [Presence] in Vag+Rectum by Organism specific culture | Group B streptococcus | – | Threshold | Ordinal value | Organism specific culture |
| 76081-9 | Methicillin resistant Staphylococcus aureus [Presence] in Pharynx by Organism specific culture | Methicillin resistant Staphylococcus aureus | – | Threshold | Ordinal value | Organism specific culture |
| 76626-1 | Measles virus [Presence] in Specimen by Organism specific culture | Measles morbillivirus | Specimen | Threshold | Ordinal value | Organism specific culture |
| 77495-0 | Bacillus cereus [Presence] in Specimen by Organism specific culture | Bacillus cereus | Specimen | Threshold | Ordinal value | Organism specific culture |
| 77496-8 | Clostridium perfringens [Presence] in Specimen by Organism specific culture | Clostridium perfringens | Specimen | Threshold | Ordinal value | Organism specific culture |
| 77924-9 | Enterobacteriaceae.carbapenem resistant [Presence] in Anorectal or stool specimen by Organism specific culture | Carbapenem resistant Enterobacteriaceae | – | Threshold | Ordinal value | Organism specific culture |
| 80367-6 | Chlamydia trachomatis [Presence] in Anorectal by Organism specific culture | Chlamydia trachomatis | – | Threshold | Ordinal value | Organism specific culture |
| 80368-4 | Neisseria gonorrhoeae [Presence] in Anorectal by Organism specific culture | Neisseria gonorrhoeae | – | Threshold | Ordinal value | Organism specific culture |
| 81316-2 | Trichomonas vaginalis [Presence] in Urine sediment by Organism specific culture | Trichomonas vaginalis | Urine sediment specimen | Threshold | Ordinal value | Organism specific culture |
| 86322-5 | Enterovirus [Presence] in Specimen by Organism specific culture | Genus Enterovirus | Specimen | Threshold | Ordinal value | Organism specific culture |
| 86581-6 | Neisseria meningitidis [Presence] in Cerebrospinal Fluid by Organism specific culture | Neisseria meningitidis | Cerebrospinal fluid specimen | Threshold | Ordinal value | Organism specific culture |
| 87948-6 | Clostridium botulinum [Presence] in Stool by Organism specific culture | Clostridium botulinum | Stool specimen | Threshold | Ordinal value | Organism specific culture |
| 87950-2 | Chlamydia trachomatis [Presence] in Tissue by Organism specific culture | Chlamydia trachomatis | Tissue specimen | Threshold | Ordinal value | Organism specific culture |
| 87952-8 | Helicobacter pylori [Presence] in Stool by Organism specific culture | Helicobacter pylori | Stool specimen | Threshold | Ordinal value | Organism specific culture |
| 87953-6 | Helicobacter pylori [Presence] in Tissue by Organism specific culture | Helicobacter pylori | Tissue specimen | Threshold | Ordinal value | Organism specific culture |
| 87958-5 | Neisseria meningitidis [Presence] in Throat by Organism specific culture | Neisseria meningitidis | Specimen from throat | Threshold | Ordinal value | Organism specific culture |
| 87982-5 | Toxoplasma gondii [Presence] in Bone marrow by Organism specific culture | Toxoplasma gondii | Bone marrow specimen | Threshold | Ordinal value | Organism specific culture |
| 88135-9 | Varicella zoster virus [Presence] in Cornea or Conjunctiva by Organism specific culture | Varicellovirus humanalpha3 | – | Threshold | Ordinal value | Organism specific culture |
| 88136-7 | Varicella zoster virus [Presence] in Ocular fluid by Organism specific culture | Varicellovirus humanalpha3 | Eye fluid specimen | Threshold | Ordinal value | Organism specific culture |
| 88161-5 | Toxoplasma gondii [Presence] in Ocular fluid by Organism specific culture | Toxoplasma gondii | Eye fluid specimen | Threshold | Ordinal value | Organism specific culture |
| 88527-7 | Respiratory syncytial virus [Presence] in Cornea or Conjunctiva by Organism specific culture | Human respiratory syncytial virus | – | Threshold | Ordinal value | Organism specific culture |
| 88564-0 | Cytomegalovirus [Presence] in Bone marrow by Organism specific culture | Cytomegalovirus | Bone marrow specimen | Threshold | Ordinal value | Organism specific culture |
| 88584-8 | Corynebacterium diphtheriae [Presence] in Upper respiratory specimen by Organism specific culture | Corynebacterium diphtheriae | Upper respiratory specimen | Threshold | Ordinal value | Organism specific culture |
| 88623-4 | Cytomegalovirus [Presence] in Cerebrospinal Fluid by Organism specific culture | Cytomegalovirus | Cerebrospinal fluid specimen | Threshold | Ordinal value | Organism specific culture |
| 88625-9 | Cytomegalovirus [Presence] in Ocular fluid by Organism specific culture | Cytomegalovirus | Eye fluid specimen | Threshold | Ordinal value | Organism specific culture |
| 89599-5 | Toxoplasma gondii [Presence] in Cerebrospinal Fluid by Organism specific culture | Toxoplasma gondii | Cerebrospinal fluid specimen | Threshold | Ordinal value | Organism specific culture |
| 89632-4 | Toxoplasma gondii [Presence] in Placenta by Organism specific culture | Toxoplasma gondii | Specimen from placenta | Threshold | Ordinal value | Organism specific culture |
| 89648-0 | Chlamydia trachomatis [Presence] in Throat by Organism specific culture | Chlamydia trachomatis | Specimen from throat | Threshold | Ordinal value | Organism specific culture |
| 90002-7 | Candida auris [Presence] in Specimen by Organism specific culture | Candidozyma auris | Specimen | Threshold | Ordinal value | Organism specific culture |
| 90275-9 | Gardnerella vaginalis [Presence] in Vaginal fluid by Organism specific culture | Gardnerella vaginalis | Specimen from vagina | Threshold | Ordinal value | Organism specific culture |
| 90285-8 | Trichomonas vaginalis [Presence] in Vaginal fluid by Organism specific culture | Trichomonas vaginalis | Specimen from vagina | Threshold | Ordinal value | Organism specific culture |
| 90301-3 | Toxoplasma gondii [Presence] in Amniotic fluid by Organism specific culture | Toxoplasma gondii | Amniotic fluid specimen | Threshold | Ordinal value | Organism specific culture |
| 91780-7 | Measles virus [Presence] in Lower respiratory specimen by Organism specific culture | Measles morbillivirus | Lower respiratory tract specimen | Threshold | Ordinal value | Organism specific culture |
| 91781-5 | Neisseria gonorrhoeae [Presence] in Aspirate by Organism specific culture | Neisseria gonorrhoeae | Specimen obtained by aspiration | Threshold | Ordinal value | Organism specific culture |
| 91782-3 | Respiratory syncytial virus [Presence] in Lower respiratory specimen by Organism specific culture | Human respiratory syncytial virus | Lower respiratory tract specimen | Threshold | Ordinal value | Organism specific culture |
| 91783-1 | Cytomegalovirus [Presence] in Lower respiratory specimen by Organism specific culture | Cytomegalovirus | Lower respiratory tract specimen | Threshold | Ordinal value | Organism specific culture |
| 91784-9 | Varicella zoster virus [Presence] in Lower respiratory specimen by Organism specific culture | Varicellovirus humanalpha3 | Lower respiratory tract specimen | Threshold | Ordinal value | Organism specific culture |
| 91785-6 | Respiratory syncytial virus [Presence] in Upper respiratory specimen by Organism specific culture | Human respiratory syncytial virus | Upper respiratory specimen | Threshold | Ordinal value | Organism specific culture |
| 91786-4 | Measles virus [Presence] in Upper respiratory specimen by Organism specific culture | Measles morbillivirus | Upper respiratory specimen | Threshold | Ordinal value | Organism specific culture |
| 91787-2 | Mumps virus [Presence] in Upper respiratory specimen by Organism specific culture | Orthorubulavirus parotitidis | Upper respiratory specimen | Threshold | Ordinal value | Organism specific culture |
| 91788-0 | Neisseria meningitidis [Presence] in Upper respiratory specimen by Organism specific culture | Neisseria meningitidis | Upper respiratory specimen | Threshold | Ordinal value | Organism specific culture |
| 91789-8 | Haemophilus ducreyi [Presence] in Genital specimen by Organism specific culture | Haemophilus ducreyi | Specimen from genital system | Threshold | Ordinal value | Organism specific culture |
| 91790-6 | Trichomonas vaginalis [Presence] in Genital specimen by Organism specific culture | Trichomonas vaginalis | Specimen from genital system | Threshold | Ordinal value | Organism specific culture |
| 94763-0 | SARS-CoV-2 (COVID-19) [Presence] in Specimen by Organism specific culture | SARS-CoV-2 | Specimen | Threshold | Ordinal value | Organism specific culture |
| 97513-6 | Campylobacter sp [Presence] in Specimen by Organism specific culture | Campylobacter | Specimen | Threshold | Ordinal value | Organism specific culture |
| 97529-2 | Naegleria fowleri [Presence] in Specimen by Organism specific culture | Naegleria fowleri | Specimen | Threshold | Ordinal value | Organism specific culture |
| SCT 364061000119103 | Presence of Streptococcus agalactiae in genital system by organism specific culture | Group B streptococcus | Specimen from genital system | Presence | – | Organism specific culture |

### Antigennachweis — Threshold-Presence eines mikrobiellen Antigens

Antigen-Schnelltests und Antigen-Immunoassays: ordinale Presence eines mikrobiellen Antigens in einem Material.

ValueSet [mii-vs-mikrobio-loinc-ontology-antigen-detection-threshold](ValueSet-mii-vs-mikrobio-loinc-ontology-antigen-detection-threshold.md). Teil des Vereinigungs-ValueSets [mii-vs-mikrobio-loinc-ontology-spezifische-bestimmung](ValueSet-mii-vs-mikrobio-loinc-ontology-spezifische-bestimmung.md), gebunden durch das abgeleitete Profil [mii-pr-mikrobio-loinc-ontology-spezifische-bestimmung](StructureDefinition-mii-pr-mikrobio-loinc-ontology-spezifische-bestimmung.md).

```
<< 363787002 |Observable entity (observable entity)| : 370130000 |Property (attribute)| = (118589004 |Threshold (property) (qualifier value)| OR 705057003 |Presence (property) (qualifier value)|), 246093002 |Component (attribute)| = << 116633006 |Microbial antigen (substance)|

```

| | |
| :--- | :--- |
| Property | Threshold OR Presence |
| Component | `<< Microbial antigen` |

Die Regel wählt **899** Konzepte aus (895 mit LOINC-Code, 4 ohne). Release 2026-03-21 → 2026-10-21: **+1 / −0** (Listen auf der Seite [Release-Delta](loinc-ontology-release-delta.md)).

#### Codes (899)

| | | | | | | |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| 104345-4 | Borna disease virus Ag [Presence] in Brain tissue by Immune stain | Orthobornavirus bornaense antigen | Brain tissue specimen | Threshold | Ordinal value | Immunohistochemistry |
| 104346-2 | Borna disease virus Ag [Presence] in Specimen by Immune stain | Orthobornavirus bornaense antigen | Specimen | Threshold | Ordinal value | Immunohistochemistry |
| 104434-6 | Norovirus Ag [Presence] in Specimen | Norovirus Ag | Specimen | Threshold | Ordinal value | – |
| 105074-9 | Legionella pneumophila 1 Ag [Presence] in Specimen | Legionella pneumophila serogroup 1 antigen | Specimen | Threshold | Ordinal value | – |
| 105923-7 | Cryptococcus sp Ag [Presence] in Blood by Immunoassay | Cryptococcus antigen | Blood specimen | Threshold | Ordinal value | Immunoassay technique |
| 10645-0 | Aspergillus fumigatus Ag [Presence] in Tissue by Immunofluorescence | Aspergillus fumigatus antigen | Tissue specimen | Threshold | Ordinal value | Immunofluorescence technique |
| 10651-8 | Chlamydophila pneumoniae Ag [Presence] in Sputum or Bronchial | Chlamydophila pneumoniae antigen | – | Threshold | Ordinal value | – |
| 10660-9 | Cytomegalovirus Ag [Presence] in Tissue by Immune stain | Cytomegalovirus antigen | Tissue specimen | Threshold | Ordinal value | Immunohistochemistry |
| 10673-2 | Hepatitis B virus core Ag [Presence] in Tissue by Immune stain | Hepatitis B virus core antigen | Tissue specimen | Threshold | Ordinal value | Immunohistochemistry |
| 10674-0 | Hepatitis B virus surface Ag [Presence] in Tissue by Immune stain | Hepatitis B surface antigen | Tissue specimen | Threshold | Ordinal value | Immunohistochemistry |
| 10675-7 | Hepatitis B virus surface Ag [Presence] in Tissue by Orcein stain | Hepatitis B surface antigen | Tissue specimen | Threshold | Ordinal value | Orcein stain technique |
| 10677-3 | Herpes simplex virus 1 Ag [Presence] in Tissue by Immune stain | Human alphaherpesvirus 1 antigen | Tissue specimen | Threshold | Ordinal value | Immunohistochemistry |
| 10679-9 | Herpes simplex virus 2 Ag [Presence] in Tissue by Immune stain | Human alphaherpesvirus 2 antigen | Tissue specimen | Threshold | Ordinal value | Immunohistochemistry |
| 10705-2 | Human papilloma virus Ag [Presence] in Tissue by Immune stain | Human papillomavirus antigen | Tissue specimen | Threshold | Ordinal value | Immunohistochemistry |
| 107211-5 | Treponema pallidum Ag [Presence] in Tissue by Immune stain | Treponema pallidum antigen | Tissue specimen | Threshold | Ordinal value | Immunohistochemistry |
| 108113-2 | Rotavirus Ag [Presence] in Specimen by Immunoassay | Rotavirus antigen | Specimen | Threshold | Ordinal value | Immunoassay technique |
| 11086-6 | Streptococcus pneumoniae Ag [Presence] in Serum | Streptococcus pneumoniae antigen | Serum specimen | Threshold | Ordinal value | – |
| 111819-9 | Escherichia coli O157:H7 Ag [Presence] in Stool by Rapid immunoassay | Escherichia coli O157:H7 antigen | Stool specimen | Threshold | Ordinal value | Rapid immunoassay |
| 112294-4 | Respiratory syncytial virus Ag [Presence] in Nose by Rapid immunoassay | Orthopneumovirus hominis antigen | Specimen from nose | Threshold | Ordinal value | Rapid immunoassay |
| 11266-4 | Streptococcus agalactiae Ag [Presence] in Specimen | Streptococcus agalactiae antigen | Specimen | Threshold | Ordinal value | – |
| 11269-8 | Streptococcus pyogenes Ag [Presence] in Serum by Agglutination | Streptococcus pyogenes antigen | Serum specimen | Threshold | Ordinal value | Agglutination technique |
| 115347-7 | Borna disease virus Ag [Presence] in Specimen by Molgen | Orthobornavirus bornaense antigen | Specimen | Threshold | Ordinal value | Molecular genetics |
| 12222-6 | Human papilloma virus Ag [Presence] in Genital specimen | Human papillomavirus antigen | Specimen from genital system | Threshold | Ordinal value | – |
| 12232-5 | Measles virus Ag [Presence] in Specimen by Immunofluorescence | Measles morbillivirus Ag | Specimen | Threshold | Ordinal value | Immunofluorescence technique |
| 12237-4 | Mumps virus Ag [Presence] in Specimen by Immunofluorescence | Orthorubulavirus parotitidis antigen | Specimen | Threshold | Ordinal value | Immunofluorescence technique |
| 12251-5 | Rubella virus Ag [Presence] in Specimen by Immunofluorescence | Rubella virus antigen | Specimen | Threshold | Ordinal value | Immunofluorescence technique |
| 13327-2 | Parainfluenza virus Ag [Presence] in Specimen by Immunofluorescence | Parainfluenza virus antigen | Specimen | Threshold | Ordinal value | Immunofluorescence technique |
| 13328-0 | Measles virus Ag [Presence] in Serum or Plasma by Immunofluorescence | Measles morbillivirus Ag | Serum or plasma specimen | Threshold | Ordinal value | Immunofluorescence technique |
| 13916-2 | Bordetella parapertussis Ag [Presence] in Specimen by Immunofluorescence | Bordetella parapertussis antigen | Specimen | Threshold | Ordinal value | Immunofluorescence technique |
| 13954-3 | Hepatitis B virus e Ag [Presence] in Serum or Plasma by Immunoassay | Hepatitis B virus e protein antigen | Serum or plasma specimen | Threshold | Ordinal value | Immunoassay technique |
| 14205-9 | Coccidioides immitis Ag [Presence] in Isolate by Immune diffusion (ID) | Coccidioides immitis antigen | Microbial isolate | Threshold | Ordinal value | Immunodiffusion |
| 14210-9 | Giardia lamblia Ag [Presence] in Stool by Immunofluorescence | Giardia lamblia antigen | Stool specimen | Threshold | Ordinal value | Immunofluorescence technique |
| 14321-4 | Haemophilus influenzae B Ag [Presence] in Cerebrospinal Fluid by Latex agglutination | Haemophilus influenzae type b antigen | Cerebrospinal fluid specimen | Threshold | Ordinal value | Latex agglutination test |
| 14322-2 | Streptococcus pneumoniae Ag [Presence] in Cerebrospinal Fluid by Latex agglutination | Streptococcus pneumoniae antigen | Cerebrospinal fluid specimen | Threshold | Ordinal value | Latex agglutination test |
| 14323-0 | Streptococcus agalactiae Ag [Presence] in Cerebrospinal Fluid by Latex agglutination | Streptococcus agalactiae antigen | Cerebrospinal fluid specimen | Threshold | Ordinal value | Latex agglutination test |
| 14324-8 | Escherichia coli K1 Ag [Presence] in Cerebrospinal Fluid by Latex agglutination | Escherichia coli capsular polysaccharide K1 antigen | Cerebrospinal fluid specimen | Threshold | Ordinal value | Latex agglutination test |
| 14468-3 | Chlamydia trachomatis Ag [Presence] in Blood by Immunoassay | Chlamydia trachomatis antigen | Blood specimen | Threshold | Ordinal value | Immunoassay technique |
| 14469-1 | Chlamydia trachomatis Ag [Presence] in Cerebrospinal Fluid by Immunoassay | Chlamydia trachomatis antigen | Cerebrospinal fluid specimen | Threshold | Ordinal value | Immunoassay technique |
| 14470-9 | Chlamydia trachomatis Ag [Presence] in Cervix by Immunoassay | Chlamydia trachomatis antigen | Specimen from uterine cervix | Threshold | Ordinal value | Immunoassay technique |
| 14471-7 | Chlamydia trachomatis Ag [Presence] in Vaginal fluid by Immunoassay | Chlamydia trachomatis antigen | Specimen from vagina | Threshold | Ordinal value | Immunoassay technique |
| 14472-5 | Chlamydia trachomatis Ag [Presence] in Urethra by Immunoassay | Chlamydia trachomatis antigen | Specimen from urethra | Threshold | Ordinal value | Immunoassay technique |
| 14474-1 | Chlamydia trachomatis Ag [Presence] in Urine sediment by Immunoassay | Chlamydia trachomatis antigen | Urine sediment specimen | Threshold | Ordinal value | Immunoassay technique |
| 14499-8 | Human papilloma virus Ag [Presence] in Cervix | Human papillomavirus antigen | Specimen from uterine cervix | Threshold | Ordinal value | – |
| 14500-3 | Human papilloma virus Ag [Presence] in Vaginal fluid | Human papillomavirus antigen | Specimen from vagina | Threshold | Ordinal value | – |
| 14501-1 | Human papilloma virus Ag [Presence] in Penis | Human papillomavirus antigen | Specimen from penis | Threshold | Ordinal value | – |
| 14502-9 | Human papilloma virus Ag [Presence] in Urethra | Human papillomavirus antigen | Specimen from urethra | Threshold | Ordinal value | – |
| 14507-8 | Chlamydia trachomatis Ag [Presence] in Blood by Immunofluorescence | Chlamydia trachomatis antigen | Blood specimen | Threshold | Ordinal value | Immunofluorescence technique |
| 14508-6 | Chlamydia trachomatis Ag [Presence] in Cerebrospinal Fluid by Immunofluorescence | Chlamydia trachomatis antigen | Cerebrospinal fluid specimen | Threshold | Ordinal value | Immunofluorescence technique |
| 14509-4 | Chlamydia trachomatis Ag [Presence] in Cervix by Immunofluorescence | Chlamydia trachomatis antigen | Specimen from uterine cervix | Threshold | Ordinal value | Immunofluorescence technique |
| 14510-2 | Chlamydia trachomatis Ag [Presence] in Vaginal fluid by Immunofluorescence | Chlamydia trachomatis antigen | Specimen from vagina | Threshold | Ordinal value | Immunofluorescence technique |
| 14511-0 | Chlamydia trachomatis Ag [Presence] in Urethra by Immunofluorescence | Chlamydia trachomatis antigen | Specimen from urethra | Threshold | Ordinal value | Immunofluorescence technique |
| 14513-6 | Chlamydia trachomatis Ag [Presence] in Urine sediment by Immunofluorescence | Chlamydia trachomatis antigen | Urine sediment specimen | Threshold | Ordinal value | Immunofluorescence technique |
| 14514-4 | Pneumocystis jirovecii Ag [Presence] in Blood by Immunofluorescence | Pneumocystis jirovecii antigen | Blood specimen | Threshold | Ordinal value | Immunofluorescence technique |
| 14515-1 | Pneumocystis jirovecii Ag [Presence] in Cerebrospinal Fluid by Immunofluorescence | Pneumocystis jirovecii antigen | Cerebrospinal fluid specimen | Threshold | Ordinal value | Immunofluorescence technique |
| 14516-9 | Pneumocystis jirovecii Ag [Presence] in Semen by Immunofluorescence | Pneumocystis jirovecii antigen | Semen sample | Threshold | Ordinal value | Immunofluorescence technique |
| 14517-7 | Pneumocystis jirovecii Ag [Presence] in Stool by Immunofluorescence | Pneumocystis jirovecii antigen | Stool specimen | Threshold | Ordinal value | Immunofluorescence technique |
| 14518-5 | Pneumocystis jirovecii Ag [Presence] in Throat by Immunofluorescence | Pneumocystis jirovecii antigen | Specimen from throat | Threshold | Ordinal value | Immunofluorescence technique |
| 14519-3 | Pneumocystis jirovecii Ag [Presence] in Eye by Immunofluorescence | Pneumocystis jirovecii antigen | Specimen from eye | Threshold | Ordinal value | Immunofluorescence technique |
| 14520-1 | Pneumocystis jirovecii Ag [Presence] in Nose by Immunofluorescence | Pneumocystis jirovecii antigen | Specimen from nose | Threshold | Ordinal value | Immunofluorescence technique |
| 14521-9 | Pneumocystis jirovecii Ag [Presence] in Urine by Immunofluorescence | Pneumocystis jirovecii antigen | Urine specimen | Threshold | Ordinal value | Immunofluorescence technique |
| 14522-7 | Pneumocystis jirovecii Ag [Presence] in Bronchial specimen by Immunofluorescence | Pneumocystis jirovecii antigen | Specimen from bronchus | Threshold | Ordinal value | Immunofluorescence technique |
| 14523-5 | Rubella virus Ag [Presence] in Cerebrospinal Fluid by Immunofluorescence | Rubella virus antigen | Cerebrospinal fluid specimen | Threshold | Ordinal value | Immunofluorescence technique |
| 14524-3 | Rubella virus Ag [Presence] in Throat by Immunofluorescence | Rubella virus antigen | Specimen from throat | Threshold | Ordinal value | Immunofluorescence technique |
| 14525-0 | Rubella virus Ag [Presence] in Skin by Immunofluorescence | Rubella virus antigen | Specimen from skin | Threshold | Ordinal value | Immunofluorescence technique |
| 14526-8 | Rubella virus Ag [Presence] in Eye by Immunofluorescence | Rubella virus antigen | Specimen from eye | Threshold | Ordinal value | Immunofluorescence technique |
| 14527-6 | Rubella virus Ag [Presence] in Nose by Immunofluorescence | Rubella virus antigen | Specimen from nose | Threshold | Ordinal value | Immunofluorescence technique |
| 14528-4 | Rubella virus Ag [Presence] in Sputum by Immunofluorescence | Rubella virus antigen | Sputum specimen | Threshold | Ordinal value | Immunofluorescence technique |
| 14529-2 | Rubella virus Ag [Presence] in Cervix by Immunofluorescence | Rubella virus antigen | Specimen from uterine cervix | Threshold | Ordinal value | Immunofluorescence technique |
| 14530-0 | Rubella virus Ag [Presence] in Vaginal fluid by Immunofluorescence | Rubella virus antigen | Specimen from vagina | Threshold | Ordinal value | Immunofluorescence technique |
| 14531-8 | Rubella virus Ag [Presence] in Urine sediment by Immunofluorescence | Rubella virus antigen | Urine sediment specimen | Threshold | Ordinal value | Immunofluorescence technique |
| 14532-6 | Rubella virus Ag [Presence] in Penis by Immunofluorescence | Rubella virus antigen | Specimen from penis | Threshold | Ordinal value | Immunofluorescence technique |
| 14533-4 | Rubella virus Ag [Presence] in Urethra by Immunofluorescence | Rubella virus antigen | Specimen from urethra | Threshold | Ordinal value | Immunofluorescence technique |
| 14534-2 | Measles virus Ag [Presence] in Cerebrospinal Fluid by Immunofluorescence | Measles morbillivirus Ag | Cerebrospinal fluid specimen | Threshold | Ordinal value | Immunofluorescence technique |
| 14535-9 | Measles virus Ag [Presence] in Throat by Immunofluorescence | Measles morbillivirus Ag | Specimen from throat | Threshold | Ordinal value | Immunofluorescence technique |
| 14536-7 | Measles virus Ag [Presence] in Skin by Immunofluorescence | Measles morbillivirus Ag | Specimen from skin | Threshold | Ordinal value | Immunofluorescence technique |
| 14537-5 | Measles virus Ag [Presence] in Eye by Immunofluorescence | Measles morbillivirus Ag | Specimen from eye | Threshold | Ordinal value | Immunofluorescence technique |
| 14538-3 | Measles virus Ag [Presence] in Nose by Immunofluorescence | Measles morbillivirus Ag | Specimen from nose | Threshold | Ordinal value | Immunofluorescence technique |
| 14539-1 | Measles virus Ag [Presence] in Sputum by Immunofluorescence | Measles morbillivirus Ag | Sputum specimen | Threshold | Ordinal value | Immunofluorescence technique |
| 14540-9 | Measles virus Ag [Presence] in Cervix by Immunofluorescence | Measles morbillivirus Ag | Specimen from uterine cervix | Threshold | Ordinal value | Immunofluorescence technique |
| 14541-7 | Measles virus Ag [Presence] in Vaginal fluid by Immunofluorescence | Measles morbillivirus Ag | Specimen from vagina | Threshold | Ordinal value | Immunofluorescence technique |
| 14542-5 | Measles virus Ag [Presence] in Urine sediment by Immunofluorescence | Measles morbillivirus Ag | Urine sediment specimen | Threshold | Ordinal value | Immunofluorescence technique |
| 14543-3 | Measles virus Ag [Presence] in Penis by Immunofluorescence | Measles morbillivirus Ag | Specimen from penis | Threshold | Ordinal value | Immunofluorescence technique |
| 14544-1 | Measles virus Ag [Presence] in Urethra by Immunofluorescence | Measles morbillivirus Ag | Specimen from urethra | Threshold | Ordinal value | Immunofluorescence technique |
| 14545-8 | Mumps virus Ag [Presence] in Cerebrospinal Fluid by Immunofluorescence | Orthorubulavirus parotitidis antigen | Cerebrospinal fluid specimen | Threshold | Ordinal value | Immunofluorescence technique |
| 14546-6 | Mumps virus Ag [Presence] in Throat by Immunofluorescence | Orthorubulavirus parotitidis antigen | Specimen from throat | Threshold | Ordinal value | Immunofluorescence technique |
| 14547-4 | Mumps virus Ag [Presence] in Skin by Immunofluorescence | Orthorubulavirus parotitidis antigen | Specimen from skin | Threshold | Ordinal value | Immunofluorescence technique |
| 14548-2 | Mumps virus Ag [Presence] in Eye by Immunofluorescence | Orthorubulavirus parotitidis antigen | Specimen from eye | Threshold | Ordinal value | Immunofluorescence technique |
| 14549-0 | Mumps virus Ag [Presence] in Nose by Immunofluorescence | Orthorubulavirus parotitidis antigen | Specimen from nose | Threshold | Ordinal value | Immunofluorescence technique |
| 14550-8 | Mumps virus Ag [Presence] in Sputum by Immunofluorescence | Orthorubulavirus parotitidis antigen | Sputum specimen | Threshold | Ordinal value | Immunofluorescence technique |
| 14551-6 | Mumps virus Ag [Presence] in Cervix by Immunofluorescence | Orthorubulavirus parotitidis antigen | Specimen from uterine cervix | Threshold | Ordinal value | Immunofluorescence technique |
| 14552-4 | Mumps virus Ag [Presence] in Vaginal fluid by Immunofluorescence | Orthorubulavirus parotitidis antigen | Specimen from vagina | Threshold | Ordinal value | Immunofluorescence technique |
| 14553-2 | Mumps virus Ag [Presence] in Urine sediment by Immunofluorescence | Orthorubulavirus parotitidis antigen | Urine sediment specimen | Threshold | Ordinal value | Immunofluorescence technique |
| 14554-0 | Mumps virus Ag [Presence] in Penis by Immunofluorescence | Orthorubulavirus parotitidis antigen | Specimen from penis | Threshold | Ordinal value | Immunofluorescence technique |
| 14555-7 | Mumps virus Ag [Presence] in Urethra by Immunofluorescence | Orthorubulavirus parotitidis antigen | Specimen from urethra | Threshold | Ordinal value | Immunofluorescence technique |
| 15379-1 | Haemophilus influenzae B Ag [Presence] in Urine | Haemophilus influenzae type b antigen | Urine specimen | Threshold | Ordinal value | – |
| 16539-9 | Candida sp Ag [Presence] in Serum | Candida antigen | Serum specimen | Threshold | Ordinal value | – |
| 16593-6 | Chlamydia sp Ag [Presence] in Urine | Chlamydia antigen | Urine specimen | Threshold | Ordinal value | – |
| 16692-6 | Cryptococcus sp Ag [Presence] in Body fluid | Cryptococcus antigen | Body fluid specimen | Threshold | Ordinal value | – |
| 16693-4 | Cryptococcus sp Ag [Presence] in Urine | Cryptococcus antigen | Urine specimen | Threshold | Ordinal value | – |
| 16717-1 | Cytomegalovirus Ag [Presence] in Urine by Immunoassay | Cytomegalovirus antigen | Urine specimen | Threshold | Ordinal value | Immunoassay technique |
| 16718-9 | Cytomegalovirus Ag [Presence] in Blood | Cytomegalovirus antigen | Blood specimen | Threshold | Ordinal value | – |
| 16833-6 | Escherichia coli K1 Ag [Presence] in Specimen by Immunoassay | Escherichia coli capsular polysaccharide K1 antigen | Specimen | Threshold | Ordinal value | Immunoassay technique |
| 16834-4 | Escherichia coli K1 Ag [Presence] in Specimen by Latex agglutination | Escherichia coli capsular polysaccharide K1 antigen | Specimen | Threshold | Ordinal value | Latex agglutination test |
| 16879-9 | Francisella tularensis Ag [Presence] in Serum by Immunofluorescence | Francisella tularensis antigen | Serum specimen | Threshold | Ordinal value | Immunofluorescence technique |
| 16898-9 | Giardia lamblia 65 Ag [Presence] in Stool | Giardia lamblia 65 Ag | Stool specimen | Threshold | Ordinal value | – |
| 16899-7 | Giardia lamblia Ag [Presence] in Specimen | Giardia lamblia antigen | Specimen | Threshold | Ordinal value | – |
| 16925-0 | Haemophilus influenzae A Ag [Presence] in Urine | Haemophilus influenzae type a antigen | Urine specimen | Threshold | Ordinal value | – |
| 16926-8 | Haemophilus influenzae A Ag [Presence] in Cerebrospinal Fluid | Haemophilus influenzae type a antigen | Cerebrospinal fluid specimen | Threshold | Ordinal value | – |
| 16945-8 | Herpes simplex virus Ag [Presence] in Specimen | Human herpes simplex virus antigen | Specimen | Threshold | Ordinal value | – |
| 16977-1 | HIV 1 Ag [Presence] in Cerebrospinal Fluid | Human immunodeficiency virus 1 antigen | Cerebrospinal fluid specimen | Threshold | Ordinal value | – |
| 17057-1 | Legionella pneumophila Ag [Presence] in Specimen | Legionella pneumophila antigen | Specimen | Threshold | Ordinal value | – |
| 17058-9 | Legionella pneumophila Ag [Presence] in Urine by Latex agglutination | Legionella pneumophila antigen | Urine specimen | Threshold | Ordinal value | Latex agglutination test |
| 17059-7 | Legionella pneumophila Ag [Presence] in Urine by Immunofluorescence | Legionella pneumophila antigen | Urine specimen | Threshold | Ordinal value | Immunofluorescence technique |
| 17323-7 | Neisseria meningitidis Ag [Presence] in Urine | Neisseria meningitidis antigen | Urine specimen | Threshold | Ordinal value | – |
| 17326-0 | Neisseria meningitidis serogroup A Ag [Presence] in Cerebrospinal Fluid by Immunofluorescence | Neisseria meningitidis serogroup A antigen | Cerebrospinal fluid specimen | Threshold | Ordinal value | Immunofluorescence technique |
| 17328-6 | Neisseria meningitidis serogroup B Ag [Presence] in Urine by Latex agglutination | Neisseria meningitidis serogroup B antigen | Urine specimen | Threshold | Ordinal value | Latex agglutination test |
| 17329-4 | Neisseria meningitidis serogroup C Ag [Presence] in Cerebrospinal Fluid by Immunofluorescence | Neisseria meningitidis serogroup C antigen | Cerebrospinal fluid specimen | Threshold | Ordinal value | Immunofluorescence technique |
| 17330-2 | Neisseria meningitidis serogroup Y Ag [Presence] in Cerebrospinal Fluid | Neisseria meningitidis serogroup Y antigen | Cerebrospinal fluid specimen | Threshold | Ordinal value | – |
| 17333-6 | Neisseria meningitidis serogroup w135 Ag [Presence] in Serum or Plasma by Latex agglutination | Neisseria meningitidis serogroup W antigen | Serum or plasma specimen | Threshold | Ordinal value | Latex agglutination test |
| 17398-9 | Human papilloma virus 11 Ag [Presence] in Specimen | Human papilloma virus 11 Ag | Specimen | Threshold | Ordinal value | – |
| 17399-7 | Human papilloma virus 16 Ag [Presence] in Specimen | Human papillomavirus 16 antigen | Specimen | Threshold | Ordinal value | – |
| 17401-1 | Human papilloma virus 18 Ag [Presence] in Specimen | Human papillomavirus 18 antigen | Specimen | Threshold | Ordinal value | – |
| 17402-9 | Human papilloma virus 31 Ag [Presence] in Specimen | Human papilloma virus 31 Ag | Specimen | Threshold | Ordinal value | – |
| 17404-5 | Human papilloma virus 33 Ag [Presence] in Specimen | Human papilloma virus 33 Ag | Specimen | Threshold | Ordinal value | – |
| 17405-2 | Human papilloma virus 42 Ag [Presence] in Specimen | Human papilloma virus 42 Ag | Specimen | Threshold | Ordinal value | – |
| 17406-0 | Human papilloma virus 43 Ag [Presence] in Specimen | Human papilloma virus 43 Ag | Specimen | Threshold | Ordinal value | – |
| 17407-8 | Human papilloma virus 44 Ag [Presence] in Specimen | Human papilloma virus 44 Ag | Specimen | Threshold | Ordinal value | – |
| 17408-6 | Human papilloma virus 45 Ag [Presence] in Specimen | Human papilloma virus 45 Ag | Specimen | Threshold | Ordinal value | – |
| 17409-4 | Human papilloma virus 5 Ag [Presence] in Specimen | Human papilloma virus 5 Ag | Specimen | Threshold | Ordinal value | – |
| 17410-2 | Human papilloma virus 51 Ag [Presence] in Specimen | Human papilloma virus 51 Ag | Specimen | Threshold | Ordinal value | – |
| 17411-0 | Human papilloma virus 6 Ag [Presence] in Specimen | Human papilloma virus 6 Ag | Specimen | Threshold | Ordinal value | – |
| 17547-1 | Rotavirus Ag [Presence] in Stool | Rotavirus antigen | Stool specimen | Threshold | Ordinal value | – |
| 17652-9 | Streptococcus pneumoniae Ag [Presence] in Specimen by Latex agglutination | Streptococcus pneumoniae antigen | Specimen | Threshold | Ordinal value | Latex agglutination test |
| 17780-8 | Helicobacter pylori Ag [Presence] in Stool by Immunoassay | Helicobacter pylori Ag | Stool specimen | Threshold | Ordinal value | Immunoassay technique |
| 18396-2 | HIV 1 p24 Ag [Presence] in Serum or Plasma by Immunoassay | Human immunodeficiency virus 1 protein 24 antigen | Serum or plasma specimen | Threshold | Ordinal value | Immunoassay technique |
| 18481-2 | Streptococcus pyogenes Ag [Presence] in Throat | Streptococcus pyogenes antigen | Specimen from throat | Threshold | Ordinal value | – |
| 19108-0 | Histoplasma capsulatum Ag [Presence] in Serum | Histoplasma capsulatum antigen | Serum specimen | Threshold | Ordinal value | – |
| 19109-8 | Histoplasma capsulatum Ag [Presence] in Specimen | Histoplasma capsulatum antigen | Specimen | Threshold | Ordinal value | – |
| 20459-4 | Streptococcus agalactiae Ag [Presence] in Specimen by Latex agglutination | Streptococcus agalactiae antigen | Specimen | Threshold | Ordinal value | Latex agglutination test |
| 20488-3 | Streptococcus agalactiae Ag [Presence] in Cerebrospinal Fluid | Streptococcus agalactiae antigen | Cerebrospinal fluid specimen | Threshold | Ordinal value | – |
| 20489-1 | Streptococcus pneumoniae Ag [Presence] in Cerebrospinal Fluid | Streptococcus pneumoniae antigen | Cerebrospinal fluid specimen | Threshold | Ordinal value | – |
| 20703-5 | Border disease virus Ag [Presence] in Tissue by Immunofluorescence | Pestivirus ovis antigen | Tissue specimen | Threshold | Ordinal value | Immunofluorescence technique |
| 20704-3 | Border disease virus Ag [Presence] in Blood by Immunofluorescence | Pestivirus ovis antigen | Blood specimen | Threshold | Ordinal value | Immunofluorescence technique |
| 20741-5 | Canarypox virus Ag [Presence] in Serum by Immunofluorescence | Canarypox virus Ag | Serum specimen | Threshold | Ordinal value | Immunofluorescence technique |
| 20753-0 | Chlamydophila psittaci Ag [Presence] in Tissue by Immunofluorescence | Chlamydophila psittaci antigen | Tissue specimen | Threshold | Ordinal value | Immunofluorescence technique |
| 20755-5 | Chlamydia sp Ag [Presence] in Body fluid by Immunoassay | Chlamydia antigen | Body fluid specimen | Threshold | Ordinal value | Immunoassay technique |
| 20756-3 | Chlamydia sp Ag [Presence] in Stool by Immunoassay | Chlamydia antigen | Stool specimen | Threshold | Ordinal value | Immunoassay technique |
| 20757-1 | Chlamydia sp Ag [Presence] in Tissue by Immunofluorescence | Chlamydia antigen | Tissue specimen | Threshold | Ordinal value | Immunofluorescence technique |
| 20760-5 | Clostridium chauvoei Ag [Presence] in Tissue by Immunofluorescence | Clostridium chauvoei Ag | Tissue specimen | Threshold | Ordinal value | Immunofluorescence technique |
| 20763-9 | Clostridium novyii Ag [Presence] in Tissue by Immunofluorescence | Clostridium novyi Ag | Tissue specimen | Threshold | Ordinal value | Immunofluorescence technique |
| 20765-4 | Clostridium septicum Ag [Presence] in Tissue by Immunofluorescence | Clostridium septicum antigen | Tissue specimen | Threshold | Ordinal value | Immunofluorescence technique |
| 20766-2 | Clostridium sordellii Ag [Presence] in Tissue by Immunofluorescence | Paeniclostridium sordellii antigen | Tissue specimen | Threshold | Ordinal value | Immunofluorescence technique |
| 20901-5 | Mycoplasma sp Ag [Presence] in Isolate by Immune stain | Mycoplasma Ag | Microbial isolate | Threshold | Ordinal value | Immunohistochemistry |
| 20959-3 | Sarcocystis neurona Ag [Presence] in Tissue by Immune stain | Sarcocystis neurona Ag | Tissue specimen | Threshold | Ordinal value | Immunohistochemistry |
| 21233-2 | Cryptosporidium sp Ag [Presence] in Stool | Cryptosporidium antigen | Stool specimen | Threshold | Ordinal value | – |
| 21302-5 | Giardia lamblia Ag [Presence] in Stool by Immunoassay –2nd specimen | Giardia lamblia antigen | Stool specimen | Threshold | Ordinal value | Immunoassay technique |
| 21303-3 | Giardia lamblia Ag [Presence] in Stool by Immunoassay –3rd specimen | Giardia lamblia antigen | Stool specimen | Threshold | Ordinal value | Immunoassay technique |
| 21320-7 | Haemophilus influenzae B Ag [Presence] in Specimen by Latex agglutination | Haemophilus influenzae type b antigen | Specimen | Threshold | Ordinal value | Latex agglutination test |
| 22820-5 | Avian orthoreovirus Ag [Presence] in Specimen | Avian orthoreovirus Ag | Specimen | Threshold | Ordinal value | – |
| 22825-4 | Influenza virus A Ag [Presence] in Specimen by Immune diffusion (ID) | Influenza A virus antigen | Specimen | Threshold | Ordinal value | Immunodiffusion |
| 22831-2 | Avian paramyxovirus 1 Ag [Presence] in Specimen by Hemagglutination inhibition | Newcastle disease virus Ag | Specimen | Threshold | Ordinal value | Hemagglutination inhibition technique |
| 22866-8 | Bacillus anthracis Ag [Presence] in Tissue by Immunofluorescence | Bacillus anthracis antigen | Tissue specimen | Threshold | Ordinal value | Immunofluorescence technique |
| 22867-6 | Bacillus anthracis Ag [Presence] in Specimen by Immunofluorescence | Bacillus anthracis antigen | Specimen | Threshold | Ordinal value | Immunofluorescence technique |
| 22888-2 | Bordetella bronchiseptica Ag [Presence] in Specimen by Agglutination | Bordetella bronchiseptica Ag | Specimen | Threshold | Ordinal value | Agglutination technique |
| 22943-5 | Brucella sp Ag [Presence] in Placenta by Immunofluorescence | Brucella Ag | Specimen from placenta | Threshold | Ordinal value | Immunofluorescence technique |
| 22944-3 | Brucella sp Ag [Presence] in Vaginal fluid by Immune stain | Brucella Ag | Specimen from vagina | Threshold | Ordinal value | Immunohistochemistry |
| 22945-0 | Brucella sp Ag [Presence] in Tissue by Immune stain | Brucella Ag | Tissue specimen | Threshold | Ordinal value | Immunohistochemistry |
| 22946-8 | Brucella sp Ag [Presence] in Tissue from Fetus by Immunofluorescence | Brucella Ag | – | Threshold | Ordinal value | Immunofluorescence technique |
| 22947-6 | Brucella sp Ag [Presence] in Vaginal fluid by Immunofluorescence | Brucella Ag | Specimen from vagina | Threshold | Ordinal value | Immunofluorescence technique |
| 22948-4 | Brucella sp Ag [Presence] in Tissue from Fetus by Immune stain | Brucella Ag | – | Threshold | Ordinal value | Immunohistochemistry |
| 22949-2 | Brucella sp Ag [Presence] in Placenta by Immune stain | Brucella Ag | Specimen from placenta | Threshold | Ordinal value | Immunohistochemistry |
| 22964-1 | Campylobacter fetus Ag [Presence] in Genital fluid by Immunofluorescence | Campylobacter fetus Ag | Genital fluid specimen | Threshold | Ordinal value | Immunofluorescence technique |
| 22965-8 | Campylobacter fetus Ag [Presence] in Specimen by Immunofluorescence | Campylobacter fetus Ag | Specimen | Threshold | Ordinal value | Immunofluorescence technique |
| 22966-6 | Campylobacter fetus Ag [Presence] in Tissue by Immunofluorescence | Campylobacter fetus Ag | Tissue specimen | Threshold | Ordinal value | Immunofluorescence technique |
| 22997-1 | Chlamydophila psittaci Ag [Presence] in Specimen by Immune stain | Chlamydophila psittaci antigen | Specimen | Threshold | Ordinal value | Immunohistochemistry |
| 22998-9 | Chlamydophila psittaci Ag [Presence] in Tissue by Immune stain | Chlamydophila psittaci antigen | Tissue specimen | Threshold | Ordinal value | Immunohistochemistry |
| 22999-7 | Chlamydophila psittaci Ag [Presence] in Stool by Immune stain | Chlamydophila psittaci antigen | Stool specimen | Threshold | Ordinal value | Immunohistochemistry |
| 23000-3 | Chlamydophila psittaci Ag [Presence] in Exudate by Immune stain | Chlamydophila psittaci antigen | Exudate specimen | Threshold | Ordinal value | Immunohistochemistry |
| 23021-9 | Coxiella burnetii Ag [Presence] in Tissue by Immunoassay | Coxiella burnetii Ag | Tissue specimen | Threshold | Ordinal value | Immunoassay technique |
| 23022-7 | Coxiella burnetii Ag [Presence] in Placenta by Immunofluorescence | Coxiella burnetii Ag | Specimen from placenta | Threshold | Ordinal value | Immunofluorescence technique |
| 23023-5 | Coxiella burnetii Ag [Presence] in Specimen by Immunofluorescence | Coxiella burnetii Ag | Specimen | Threshold | Ordinal value | Immunofluorescence technique |
| 23028-4 | Dermatophilus congolensis Ag [Presence] in Tissue by Immunofluorescence | Dermatophilus congolensis Ag | Tissue specimen | Threshold | Ordinal value | Immunofluorescence technique |
| 23047-4 | Eastern equine encephalitis virus Ag [Presence] in Brain by Complement fixation | Eastern equine encephalitis virus Ag | Specimen from brain | Threshold | Ordinal value | Complement fixation |
| 23048-2 | Eastern equine encephalitis virus Ag [Presence] in Specimen by Immunofluorescence | Eastern equine encephalitis virus Ag | Specimen | Threshold | Ordinal value | Immunofluorescence technique |
| 23049-0 | Eastern equine encephalitis virus Ag [Presence] in Specimen by Complement fixation | Eastern equine encephalitis virus Ag | Specimen | Threshold | Ordinal value | Complement fixation |
| 23050-8 | Eastern equine encephalitis virus Ag [Presence] in Specimen by Neutralization test | Eastern equine encephalitis virus Ag | Specimen | Threshold | Ordinal value | Neutralization method |
| 23126-6 | Francisella tularensis Ag [Presence] in Tissue by Immune stain | Francisella tularensis antigen | Tissue specimen | Threshold | Ordinal value | Immunohistochemistry |
| 23127-4 | Francisella tularensis Ag [Presence] in Tissue by Immunofluorescence | Francisella tularensis antigen | Tissue specimen | Threshold | Ordinal value | Immunofluorescence technique |
| 23148-0 | Japanese encephalitis virus Ag [Presence] in Specimen by Immunofluorescence | Japanese encephalitis virus antigen | Specimen | Threshold | Ordinal value | Immunofluorescence technique |
| 23149-8 | Japanese encephalitis virus Ag [Presence] in Specimen by Hemagglutination inhibition | Japanese encephalitis virus antigen | Specimen | Threshold | Ordinal value | Hemagglutination inhibition technique |
| 23150-6 | Leishmania donovani Ag [Presence] in Tissue by Immune stain | Leishmania donovani Ag | Tissue specimen | Threshold | Ordinal value | Immunohistochemistry |
| 23203-3 | Leptospira sp Ag [Presence] in Tissue by Immunofluorescence | Leptospira Ag | Tissue specimen | Threshold | Ordinal value | Immunofluorescence technique |
| 23204-1 | Leptospira sp Ag [Presence] in Tissue by Immune stain | Leptospira Ag | Tissue specimen | Threshold | Ordinal value | Immunohistochemistry |
| 23241-3 | Mycobacterium bovis Ag [Presence] in Tissue by Immune stain | Mycobacterium bovis Ag | Tissue specimen | Threshold | Ordinal value | Immunohistochemistry |
| 23242-1 | Mycobacterium bovis Ag [Presence] in Blood | Mycobacterium bovis Ag | Blood specimen | Threshold | Ordinal value | – |
| 23298-3 | Mycoplasma sp Ag [Presence] in Specimen by Immunofluorescence | Mycoplasma Ag | Specimen | Threshold | Ordinal value | Immunofluorescence technique |
| 23299-1 | Mycoplasma sp Ag [Presence] in Specimen | Mycoplasma Ag | Specimen | Threshold | Ordinal value | – |
| 23389-0 | Rabies virus Ag [Presence] in Brain by Immunoassay | Rabies lyssavirus antigen | Specimen from brain | Threshold | Ordinal value | Immunoassay technique |
| 23390-8 | Rabies virus Ag [Presence] in Brain by Immune stain | Rabies lyssavirus antigen | Specimen from brain | Threshold | Ordinal value | Immunohistochemistry |
| 23391-6 | Rabies virus Ag [Presence] in Specimen by Immune stain | Rabies lyssavirus antigen | Specimen | Threshold | Ordinal value | Immunohistochemistry |
| 23401-3 | Rift valley fever virus Ag [Presence] in Tissue by Neutralization test | Rift valley fever virus Ag | Tissue specimen | Threshold | Ordinal value | Neutralization method |
| 23402-1 | Rift valley fever virus Ag [Presence] in Blood by Neutralization test | Rift valley fever virus Ag | Blood specimen | Threshold | Ordinal value | Neutralization method |
| 23403-9 | Rift valley fever virus Ag [Presence] in Specimen by Immunofluorescence | Rift valley fever virus Ag | Specimen | Threshold | Ordinal value | Immunofluorescence technique |
| 23404-7 | Rift valley fever virus Ag [Presence] in Tissue by Immunofluorescence | Rift valley fever virus Ag | Tissue specimen | Threshold | Ordinal value | Immunofluorescence technique |
| 23405-4 | Rift valley fever virus Ag [Presence] in Tissue by Immune diffusion (ID) | Rift valley fever virus Ag | Tissue specimen | Threshold | Ordinal value | Immunodiffusion |
| 23406-2 | Rift valley fever virus Ag [Presence] in Serum by Immune diffusion (ID) | Rift valley fever virus Ag | Serum specimen | Threshold | Ordinal value | Immunodiffusion |
| 23449-2 | Taenia hydatigena Ag [Presence] in Stool by Immunoassay | Taenia hydatigena Ag | Stool specimen | Threshold | Ordinal value | Immunoassay technique |
| 23450-0 | Taenia sp Ag [Presence] in Stool by Immunoassay | Taenia Ag | Stool specimen | Threshold | Ordinal value | Immunoassay technique |
| 23535-8 | Trypanosoma sp Ag [Presence] in Blood by Immunoassay | Trypanosoma Ag | Blood specimen | Threshold | Ordinal value | Immunoassay technique |
| 23548-1 | Venezuelan equine encephalitis virus Ag [Presence] in Specimen by Neutralization test | Venezuelan equine encephalitis virus antigen | Specimen | Threshold | Ordinal value | Neutralization method |
| 23550-7 | Venezuelan equine encephalitis virus Ag [Presence] in Specimen by Hemagglutination inhibition | Venezuelan equine encephalitis virus antigen | Specimen | Threshold | Ordinal value | Hemagglutination inhibition technique |
| 23551-5 | Venezuelan equine encephalitis virus Ag [Presence] in Specimen by Complement fixation | Venezuelan equine encephalitis virus antigen | Specimen | Threshold | Ordinal value | Complement fixation |
| 23557-2 | Vesicular stomatitis virus Ag [Presence] in Skin by Immunoassay | Vesicular stomatitis virus Ag | Specimen from skin | Threshold | Ordinal value | Immunoassay technique |
| 23558-0 | Vesicular stomatitis virus Ag [Presence] in Throat by Immunoassay | Vesicular stomatitis virus Ag | Specimen from throat | Threshold | Ordinal value | Immunoassay technique |
| 23559-8 | Vesicular stomatitis virus Ag [Presence] in Skin by Complement fixation | Vesicular stomatitis virus Ag | Specimen from skin | Threshold | Ordinal value | Complement fixation |
| 23560-6 | Vesicular stomatitis virus Ag [Presence] in Throat by Complement fixation | Vesicular stomatitis virus Ag | Specimen from throat | Threshold | Ordinal value | Complement fixation |
| 23589-5 | Western equine encephalitis virus Ag [Presence] in Specimen by Neutralization test | Western equine encephalitis virus antigen | Specimen | Threshold | Ordinal value | Neutralization method |
| 23590-3 | Western equine encephalitis virus Ag [Presence] in Specimen by Immunofluorescence | Western equine encephalitis virus antigen | Specimen | Threshold | Ordinal value | Immunofluorescence technique |
| 23591-1 | Western equine encephalitis virus Ag [Presence] in Specimen by Complement fixation | Western equine encephalitis virus antigen | Specimen | Threshold | Ordinal value | Complement fixation |
| 23598-6 | Dermatophilus congolensis Ag [Presence] in Exudate by Immunofluorescence | Dermatophilus congolensis Ag | Exudate specimen | Threshold | Ordinal value | Immunofluorescence technique |
| 23678-6 | Bovine parainfluenza virus 3 Ag [Presence] in Tissue by Immunofluorescence | Bovine parainfluenza virus 3 Ag | Tissue specimen | Threshold | Ordinal value | Immunofluorescence technique |
| 23679-4 | Bovine respiratory syncytial virus Ag [Presence] in Specimen | Bovine respiratory syncytial virus Ag | Specimen | Threshold | Ordinal value | – |
| 23744-6 | Giardia lamblia Ag [Presence] in Specimen by Immunofluorescence | Giardia lamblia antigen | Specimen | Threshold | Ordinal value | Immunofluorescence technique |
| 23750-3 | Leptospira sp Ag [Presence] in Urine by Immunofluorescence | Leptospira Ag | Urine specimen | Threshold | Ordinal value | Immunofluorescence technique |
| 23759-4 | Neospora caninum Ag [Presence] in Tissue by Immune stain | Neospora caninum Ag | Tissue specimen | Threshold | Ordinal value | Immunohistochemistry |
| 23760-2 | Neospora caninum Ag [Presence] in Fixed tissue by Immune stain | Neospora caninum Ag | – | Threshold | Ordinal value | Immunohistochemistry |
| 23977-2 | Borrelia burgdorferi Ag [Presence] in Specimen by Immunofluorescence | Borrelia burgdorferi antigen | Specimen | Threshold | Ordinal value | Immunofluorescence technique |
| 24010-1 | Haemophilus influenzae B Ag [Presence] in Cerebrospinal Fluid | Haemophilus influenzae type b antigen | Cerebrospinal fluid specimen | Threshold | Ordinal value | – |
| 24012-7 | HIV 1 Ag [Presence] in Serum | Human immunodeficiency virus 1 antigen | Serum specimen | Threshold | Ordinal value | – |
| 24017-6 | Neisseria meningitidis serogroup B Ag [Presence] in Cerebrospinal Fluid | Neisseria meningitidis serogroup B antigen | Cerebrospinal fluid specimen | Threshold | Ordinal value | – |
| 24018-4 | Neisseria meningitidis serogroup B Ag [Presence] in Urine | Neisseria meningitidis serogroup B antigen | Urine specimen | Threshold | Ordinal value | – |
| 24020-0 | Streptococcus agalactiae Ag [Presence] in Urine | Streptococcus agalactiae antigen | Urine specimen | Threshold | Ordinal value | – |
| 24027-5 | Streptococcus pneumoniae Ag [Presence] in Urine | Streptococcus pneumoniae antigen | Urine specimen | Threshold | Ordinal value | – |
| 24036-6 | Borrelia sp Ag [Presence] in Specimen by Immunofluorescence | Borrelia Ag | Specimen | Threshold | Ordinal value | Immunofluorescence technique |
| 26621-3 | Legionella sp Ag [Presence] in Specimen | Legionella Ag | Specimen | Threshold | Ordinal value | – |
| 27265-8 | Giardia sp Ag [Presence] in Stool | Giardia Ag | Stool specimen | Threshold | Ordinal value | – |
| 29311-8 | Neisseria gonorrhoeae Ag [Presence] in Specimen by Immunofluorescence | Neisseria gonorrhoeae antigen | Specimen | Threshold | Ordinal value | Immunofluorescence technique |
| 29533-7 | Cryptococcus sp Ag [Presence] in Specimen | Cryptococcus antigen | Specimen | Threshold | Ordinal value | – |
| 29721-8 | Influenza virus C Ag [Presence] in Specimen by Immunofluorescence | Influenza C virus antigen | Specimen | Threshold | Ordinal value | Immunofluorescence technique |
| 29722-6 | Chlamydophila pneumoniae Ag [Presence] in Specimen by Immunofluorescence | Chlamydophila pneumoniae antigen | Specimen | Threshold | Ordinal value | Immunofluorescence technique |
| 29896-8 | Cryptococcus sp Ag [Presence] in Cerebrospinal Fluid by Immunoassay | Cryptococcus antigen | Cerebrospinal fluid specimen | Threshold | Ordinal value | Immunoassay technique |
| 29903-2 | Cryptococcus sp Ag [Presence] in Serum by Immunoassay | Cryptococcus antigen | Serum specimen | Threshold | Ordinal value | Immunoassay technique |
| 29905-7 | Entamoeba histolytica Ag [Presence] in Stool by Immunoassay | Entamoeba histolytica antigen | Stool specimen | Threshold | Ordinal value | Immunoassay technique |
| 29957-8 | Herpes simplex virus Ag [Presence] in Serum by Immunoblot | Human herpes simplex virus antigen | Serum specimen | Threshold | Ordinal value | Immunoblot assay |
| 30094-7 | Neisseria meningitidis serogroup A Ag [Presence] in Specimen by Latex agglutination | Neisseria meningitidis serogroup A antigen | Specimen | Threshold | Ordinal value | Latex agglutination test |
| 30095-4 | Neisseria meningitidis serogroup B Ag [Presence] in Specimen by Latex agglutination | Neisseria meningitidis serogroup B antigen | Specimen | Threshold | Ordinal value | Latex agglutination test |
| 30096-2 | Neisseria meningitidis serogroup C Ag [Presence] in Specimen by Latex agglutination | Neisseria meningitidis serogroup C antigen | Specimen | Threshold | Ordinal value | Latex agglutination test |
| 30097-0 | Neisseria meningitidis serogroup w135 Ag [Presence] in Specimen by Latex agglutination | Neisseria meningitidis serogroup W antigen | Specimen | Threshold | Ordinal value | Latex agglutination test |
| 30098-8 | Neisseria meningitidis serogroup Y Ag [Presence] in Specimen by Latex agglutination | Neisseria meningitidis serogroup Y antigen | Specimen | Threshold | Ordinal value | Latex agglutination test |
| 30324-8 | Cryptococcus sp Ag [Presence] in Serum by Latex agglutination | Cryptococcus antigen | Serum specimen | Threshold | Ordinal value | Latex agglutination test |
| 31710-7 | Adenovirus Ag [Presence] in Conjunctival specimen | Adenovirus antigen | – | Threshold | Ordinal value | – |
| 31711-5 | Adenovirus Ag [Presence] in Stool | Adenovirus antigen | Stool specimen | Threshold | Ordinal value | – |
| 31712-3 | Adenovirus Ag [Presence] in Throat | Adenovirus antigen | Specimen from throat | Threshold | Ordinal value | – |
| 31713-1 | Adenovirus Ag [Presence] in Urine | Adenovirus antigen | Urine specimen | Threshold | Ordinal value | – |
| 31714-9 | Adenovirus Ag [Presence] in Specimen | Adenovirus antigen | Specimen | Threshold | Ordinal value | – |
| 31718-0 | Astrovirus Ag [Presence] in Stool | Avastrovirus antigen | Stool specimen | Threshold | Ordinal value | – |
| 31725-5 | Avian paramyxovirus 1 Ag [Presence] in Specimen | Newcastle disease virus Ag | Specimen | Threshold | Ordinal value | – |
| 31726-3 | Bacillus anthracis Ag [Presence] in Specimen | Bacillus anthracis antigen | Specimen | Threshold | Ordinal value | – |
| 31727-1 | Bacteroides fragilis Ag [Presence] in Specimen | Bacteroides fragilis antigen | Specimen | Threshold | Ordinal value | – |
| 31728-9 | Bacteroides melaninogenicus Ag [Presence] in Specimen | Prevotella melaninogenica antigen | Specimen | Threshold | Ordinal value | – |
| 31731-3 | Blastomyces dermatitidis Ag [Presence] in Serum | Blastomyces dermatitidis antigen | Serum specimen | Threshold | Ordinal value | – |
| 31735-4 | Bordetella bronchiseptica Ag [Presence] in Specimen | Bordetella bronchiseptica Ag | Specimen | Threshold | Ordinal value | – |
| 31736-2 | Bordetella parapertussis Ag [Presence] in Specimen | Bordetella parapertussis antigen | Specimen | Threshold | Ordinal value | – |
| 31737-0 | Bordetella pertussis Ag [Presence] in Specimen | Bordetella pertussis antigen | Specimen | Threshold | Ordinal value | – |
| 31738-8 | Borrelia burgdorferi Ag [Presence] in Specimen | Borrelia burgdorferi antigen | Specimen | Threshold | Ordinal value | – |
| 31739-6 | Borrelia sp Ag [Presence] in Specimen | Borrelia Ag | Specimen | Threshold | Ordinal value | – |
| 31753-7 | Brucella sp Ag [Presence] in Vaginal fluid | Brucella Ag | Specimen from vagina | Threshold | Ordinal value | – |
| 31754-5 | Brucella sp Ag [Presence] in Placenta | Brucella Ag | Specimen from placenta | Threshold | Ordinal value | – |
| 31755-2 | Campylobacter fetus Ag [Presence] in Genital fluid | Campylobacter fetus Ag | Genital fluid specimen | Threshold | Ordinal value | – |
| 31756-0 | Campylobacter fetus Ag [Presence] in Specimen | Campylobacter fetus Ag | Specimen | Threshold | Ordinal value | – |
| 31757-8 | Canarypox virus Ag [Presence] in Serum | Canarypox virus Ag | Serum specimen | Threshold | Ordinal value | – |
| 31758-6 | Candida albicans Ag [Presence] in Serum | Candida albicans antigen | Serum specimen | Threshold | Ordinal value | – |
| 31763-6 | Chlamydia sp Ag [Presence] in Conjunctival specimen | Chlamydia antigen | – | Threshold | Ordinal value | – |
| 31764-4 | Chlamydia sp Ag [Presence] in Body fluid | Chlamydia antigen | Body fluid specimen | Threshold | Ordinal value | – |
| 31765-1 | Chlamydia sp Ag [Presence] in Genital specimen | Chlamydia antigen | Specimen from genital system | Threshold | Ordinal value | – |
| 31766-9 | Chlamydia sp Ag [Presence] in Stool | Chlamydia antigen | Stool specimen | Threshold | Ordinal value | – |
| 31767-7 | Chlamydia sp Ag [Presence] in Specimen | Chlamydia antigen | Specimen | Threshold | Ordinal value | – |
| 31768-5 | Chlamydia trachomatis Ag [Presence] in Blood | Chlamydia trachomatis antigen | Blood specimen | Threshold | Ordinal value | – |
| 31769-3 | Chlamydia trachomatis Ag [Presence] in Conjunctival specimen | Chlamydia trachomatis antigen | – | Threshold | Ordinal value | – |
| 31770-1 | Chlamydia trachomatis Ag [Presence] in Cerebrospinal Fluid | Chlamydia trachomatis antigen | Cerebrospinal fluid specimen | Threshold | Ordinal value | – |
| 31771-9 | Chlamydia trachomatis Ag [Presence] in Cervix | Chlamydia trachomatis antigen | Specimen from uterine cervix | Threshold | Ordinal value | – |
| 31772-7 | Chlamydia trachomatis Ag [Presence] in Vaginal fluid | Chlamydia trachomatis antigen | Specimen from vagina | Threshold | Ordinal value | – |
| 31774-3 | Chlamydia trachomatis Ag [Presence] in Stool | Chlamydia trachomatis antigen | Stool specimen | Threshold | Ordinal value | – |
| 31775-0 | Chlamydia trachomatis Ag [Presence] in Urine sediment | Chlamydia trachomatis antigen | Urine sediment specimen | Threshold | Ordinal value | – |
| 31776-8 | Chlamydia trachomatis Ag [Presence] in Urethra | Chlamydia trachomatis antigen | Specimen from urethra | Threshold | Ordinal value | – |
| 31777-6 | Chlamydia trachomatis Ag [Presence] in Specimen | Chlamydia trachomatis antigen | Specimen | Threshold | Ordinal value | – |
| 31778-4 | Chlamydophila pneumoniae Ag [Presence] in Specimen | Chlamydophila pneumoniae antigen | Specimen | Threshold | Ordinal value | – |
| 31779-2 | Chlamydophila psittaci Ag [Presence] in Genital specimen | Chlamydophila psittaci antigen | Specimen from genital system | Threshold | Ordinal value | – |
| 31780-0 | Chlamydophila psittaci Ag [Presence] in Specimen | Chlamydophila psittaci antigen | Specimen | Threshold | Ordinal value | – |
| 31782-6 | Coccidioides immitis Ag [Presence] in Isolate | Coccidioides immitis antigen | Microbial isolate | Threshold | Ordinal value | – |
| 31783-4 | Coxiella burnetii Ag [Presence] in Placenta | Coxiella burnetii Ag | Specimen from placenta | Threshold | Ordinal value | – |
| 31784-2 | Coxiella burnetii Ag [Presence] in Specimen | Coxiella burnetii Ag | Specimen | Threshold | Ordinal value | – |
| 31788-3 | Cryptococcus sp Ag [Presence] in Cerebrospinal Fluid | Cryptococcus antigen | Cerebrospinal fluid specimen | Threshold | Ordinal value | – |
| 31790-9 | Cryptococcus sp Ag [Presence] in Serum | Cryptococcus antigen | Serum specimen | Threshold | Ordinal value | – |
| 31794-1 | Cryptosporidium sp Ag [Presence] in Specimen | Cryptosporidium antigen | Specimen | Threshold | Ordinal value | – |
| 31795-8 | Cytomegalovirus Ag [Presence] in Serum or Plasma | Cytomegalovirus antigen | Serum or plasma specimen | Threshold | Ordinal value | – |
| 31796-6 | Cytomegalovirus Ag [Presence] in Urine | Cytomegalovirus antigen | Urine specimen | Threshold | Ordinal value | – |
| 31797-4 | Cytomegalovirus Ag [Presence] in Specimen | Cytomegalovirus antigen | Specimen | Threshold | Ordinal value | – |
| 31798-2 | Dengue virus Ag [Presence] in Serum | Dengue virus antigen | Serum specimen | Threshold | Ordinal value | – |
| 31799-0 | Dengue virus Ag [Presence] in Specimen | Dengue virus antigen | Specimen | Threshold | Ordinal value | – |
| 31800-6 | Dermatophilus congolensis Ag [Presence] in Exudate | Dermatophilus congolensis Ag | Exudate specimen | Threshold | Ordinal value | – |
| 31806-3 | Eastern equine encephalitis virus Ag [Presence] in Brain | Eastern equine encephalitis virus Ag | Specimen from brain | Threshold | Ordinal value | – |
| 31807-1 | Eastern equine encephalitis virus Ag [Presence] in Serum | Eastern equine encephalitis virus Ag | Serum specimen | Threshold | Ordinal value | – |
| 31808-9 | Eastern equine encephalitis virus Ag [Presence] in Specimen | Eastern equine encephalitis virus Ag | Specimen | Threshold | Ordinal value | – |
| 31824-6 | Escherichia coli K1 Ag [Presence] in Cerebrospinal Fluid | Escherichia coli capsular polysaccharide K1 antigen | Cerebrospinal fluid specimen | Threshold | Ordinal value | – |
| 31825-3 | Escherichia coli K1 Ag [Presence] in Specimen | Escherichia coli capsular polysaccharide K1 antigen | Specimen | Threshold | Ordinal value | – |
| 31828-7 | Francisella tularensis Ag [Presence] in Serum | Francisella tularensis antigen | Serum specimen | Threshold | Ordinal value | – |
| 31829-5 | Francisella tularensis Ag [Presence] in Specimen | Francisella tularensis antigen | Specimen | Threshold | Ordinal value | – |
| 31830-3 | Giardia lamblia Ag [Presence] in Stool | Giardia lamblia antigen | Stool specimen | Threshold | Ordinal value | – |
| 31831-1 | Giardia lamblia Ag [Presence] in Stool –2nd specimen | Giardia lamblia antigen | Stool specimen | Threshold | Ordinal value | – |
| 31832-9 | Giardia lamblia Ag [Presence] in Stool –3rd specimen | Giardia lamblia antigen | Stool specimen | Threshold | Ordinal value | – |
| 31833-7 | Haemophilus influenzae A Ag [Presence] in Specimen | Haemophilus influenzae type a antigen | Specimen | Threshold | Ordinal value | – |
| 31834-5 | Haemophilus influenzae B Ag [Presence] in Specimen | Haemophilus influenzae type b antigen | Specimen | Threshold | Ordinal value | – |
| 31835-2 | Haemophilus influenzae C Ag [Presence] in Cerebrospinal Fluid | Haemophilus influenzae type c antigen | Cerebrospinal fluid specimen | Threshold | Ordinal value | – |
| 31836-0 | Haemophilus influenzae C Ag [Presence] in Specimen | Haemophilus influenzae type c antigen | Specimen | Threshold | Ordinal value | – |
| 31837-8 | Haemophilus influenzae D Ag [Presence] in Cerebrospinal Fluid | Haemophilus influenzae type d antigen | Cerebrospinal fluid specimen | Threshold | Ordinal value | – |
| 31838-6 | Haemophilus influenzae D Ag [Presence] in Specimen | Haemophilus influenzae type d antigen | Specimen | Threshold | Ordinal value | – |
| 31839-4 | Haemophilus influenzae E Ag [Presence] in Cerebrospinal Fluid | Haemophilus influenzae type e antigen | Cerebrospinal fluid specimen | Threshold | Ordinal value | – |
| 31840-2 | Haemophilus influenzae E Ag [Presence] in Specimen | Haemophilus influenzae type e antigen | Specimen | Threshold | Ordinal value | – |
| 31841-0 | Haemophilus influenzae F Ag [Presence] in Cerebrospinal Fluid | Haemophilus influenzae type f antigen | Cerebrospinal fluid specimen | Threshold | Ordinal value | – |
| 31842-8 | Haemophilus influenzae F Ag [Presence] in Specimen | Haemophilus influenzae type f antigen | Specimen | Threshold | Ordinal value | – |
| 31843-6 | Helicobacter pylori Ag [Presence] in Stool | Helicobacter pylori Ag | Stool specimen | Threshold | Ordinal value | – |
| 31844-4 | Hepatitis B virus e Ag [Presence] in Serum | Hepatitis B virus e protein antigen | Serum specimen | Threshold | Ordinal value | – |
| 31846-9 | Herpes simplex virus 1 Ag [Presence] in Genital specimen | Human alphaherpesvirus 1 antigen | Specimen from genital system | Threshold | Ordinal value | – |
| 31847-7 | Herpes simplex virus 1 Ag [Presence] in Skin | Human alphaherpesvirus 1 antigen | Specimen from skin | Threshold | Ordinal value | – |
| 31848-5 | Herpes simplex virus 1 Ag [Presence] in Specimen | Human alphaherpesvirus 1 antigen | Specimen | Threshold | Ordinal value | – |
| 31849-3 | Herpes simplex virus 2 Ag [Presence] in Genital specimen | Human alphaherpesvirus 2 antigen | Specimen from genital system | Threshold | Ordinal value | – |
| 31850-1 | Herpes simplex virus 2 Ag [Presence] in Skin | Human alphaherpesvirus 2 antigen | Specimen from skin | Threshold | Ordinal value | – |
| 31851-9 | Herpes simplex virus 2 Ag [Presence] in Specimen | Human alphaherpesvirus 2 antigen | Specimen | Threshold | Ordinal value | – |
| 31852-7 | Herpes simplex virus Ag [Presence] in Genital specimen | Human herpes simplex virus antigen | Specimen from genital system | Threshold | Ordinal value | – |
| 31853-5 | Herpes simplex virus Ag [Presence] in Serum | Human herpes simplex virus antigen | Serum specimen | Threshold | Ordinal value | – |
| 31854-3 | Herpes simplex virus Ag [Presence] in Skin | Human herpes simplex virus antigen | Specimen from skin | Threshold | Ordinal value | – |
| 31858-4 | Influenza virus A Ag [Presence] in Throat | Influenza A virus antigen | Specimen from throat | Threshold | Ordinal value | – |
| 31859-2 | Influenza virus A Ag [Presence] in Specimen | Influenza A virus antigen | Specimen | Threshold | Ordinal value | – |
| 31863-4 | Influenza virus B Ag [Presence] in Throat | Influenza B virus antigen | Specimen from throat | Threshold | Ordinal value | – |
| 31864-2 | Influenza virus B Ag [Presence] in Specimen | Influenza B virus antigen | Specimen | Threshold | Ordinal value | – |
| 31865-9 | Influenza virus C Ag [Presence] in Specimen | Influenza C virus antigen | Specimen | Threshold | Ordinal value | – |
| 31866-7 | Japanese encephalitis virus Ag [Presence] in Specimen | Japanese encephalitis virus antigen | Specimen | Threshold | Ordinal value | – |
| 31867-5 | Lassa virus Ag [Presence] in Serum | Lassa mammarenavirus antigen | Serum specimen | Threshold | Ordinal value | – |
| 31868-3 | Legionella pneumophila 1 Ag [Presence] in Urine | Legionella pneumophila serogroup 1 antigen | Urine specimen | Threshold | Ordinal value | – |
| 31869-1 | Legionella pneumophila Ag [Presence] in Sputum | Legionella pneumophila antigen | Sputum specimen | Threshold | Ordinal value | – |
| 31870-9 | Legionella pneumophila Ag [Presence] in Urine | Legionella pneumophila antigen | Urine specimen | Threshold | Ordinal value | – |
| 31871-7 | Leptospira interrogans Ag [Presence] in Specimen | Leptospira interrogans antigen | Specimen | Threshold | Ordinal value | – |
| 31872-5 | Leptospira sp Ag [Presence] in Urine | Leptospira Ag | Urine specimen | Threshold | Ordinal value | – |
| 31875-8 | Measles virus Ag [Presence] in Cerebrospinal Fluid | Measles morbillivirus Ag | Cerebrospinal fluid specimen | Threshold | Ordinal value | – |
| 31876-6 | Measles virus Ag [Presence] in Cervix | Measles morbillivirus Ag | Specimen from uterine cervix | Threshold | Ordinal value | – |
| 31877-4 | Measles virus Ag [Presence] in Eye | Measles morbillivirus Ag | Specimen from eye | Threshold | Ordinal value | – |
| 31878-2 | Measles virus Ag [Presence] in Vaginal fluid | Measles morbillivirus Ag | Specimen from vagina | Threshold | Ordinal value | – |
| 31879-0 | Measles virus Ag [Presence] in Nose | Measles morbillivirus Ag | Specimen from nose | Threshold | Ordinal value | – |
| 31880-8 | Measles virus Ag [Presence] in Penis | Measles morbillivirus Ag | Specimen from penis | Threshold | Ordinal value | – |
| 31881-6 | Measles virus Ag [Presence] in Serum or Plasma | Measles morbillivirus Ag | Serum or plasma specimen | Threshold | Ordinal value | – |
| 31882-4 | Measles virus Ag [Presence] in Skin | Measles morbillivirus Ag | Specimen from skin | Threshold | Ordinal value | – |
| 31883-2 | Measles virus Ag [Presence] in Sputum | Measles morbillivirus Ag | Sputum specimen | Threshold | Ordinal value | – |
| 31884-0 | Measles virus Ag [Presence] in Throat | Measles morbillivirus Ag | Specimen from throat | Threshold | Ordinal value | – |
| 31885-7 | Measles virus Ag [Presence] in Urine sediment | Measles morbillivirus Ag | Urine sediment specimen | Threshold | Ordinal value | – |
| 31886-5 | Measles virus Ag [Presence] in Urethra | Measles morbillivirus Ag | Specimen from urethra | Threshold | Ordinal value | – |
| 31887-3 | Measles virus Ag [Presence] in Specimen | Measles morbillivirus Ag | Specimen | Threshold | Ordinal value | – |
| 31888-1 | Mumps virus Ag [Presence] in Cerebrospinal Fluid | Orthorubulavirus parotitidis antigen | Cerebrospinal fluid specimen | Threshold | Ordinal value | – |
| 31889-9 | Mumps virus Ag [Presence] in Cervix | Orthorubulavirus parotitidis antigen | Specimen from uterine cervix | Threshold | Ordinal value | – |
| 31890-7 | Mumps virus Ag [Presence] in Eye | Orthorubulavirus parotitidis antigen | Specimen from eye | Threshold | Ordinal value | – |
| 31891-5 | Mumps virus Ag [Presence] in Vaginal fluid | Orthorubulavirus parotitidis antigen | Specimen from vagina | Threshold | Ordinal value | – |
| 31892-3 | Mumps virus Ag [Presence] in Nose | Orthorubulavirus parotitidis antigen | Specimen from nose | Threshold | Ordinal value | – |
| 31893-1 | Mumps virus Ag [Presence] in Penis | Orthorubulavirus parotitidis antigen | Specimen from penis | Threshold | Ordinal value | – |
| 31894-9 | Mumps virus Ag [Presence] in Serum | Orthorubulavirus parotitidis antigen | Serum specimen | Threshold | Ordinal value | – |
| 31895-6 | Mumps virus Ag [Presence] in Skin | Orthorubulavirus parotitidis antigen | Specimen from skin | Threshold | Ordinal value | – |
| 31896-4 | Mumps virus Ag [Presence] in Sputum | Orthorubulavirus parotitidis antigen | Sputum specimen | Threshold | Ordinal value | – |
| 31897-2 | Mumps virus Ag [Presence] in Throat | Orthorubulavirus parotitidis antigen | Specimen from throat | Threshold | Ordinal value | – |
| 31898-0 | Mumps virus Ag [Presence] in Urine sediment | Orthorubulavirus parotitidis antigen | Urine sediment specimen | Threshold | Ordinal value | – |
| 31899-8 | Mumps virus Ag [Presence] in Urethra | Orthorubulavirus parotitidis antigen | Specimen from urethra | Threshold | Ordinal value | – |
| 31900-4 | Mumps virus Ag [Presence] in Specimen | Orthorubulavirus parotitidis antigen | Specimen | Threshold | Ordinal value | – |
| 31905-3 | Neisseria gonorrhoeae Ag [Presence] in Genital specimen | Neisseria gonorrhoeae antigen | Specimen from genital system | Threshold | Ordinal value | – |
| 31906-1 | Neisseria gonorrhoeae Ag [Presence] in Specimen | Neisseria gonorrhoeae antigen | Specimen | Threshold | Ordinal value | – |
| 31907-9 | Neisseria meningitidis serogroup A Ag [Presence] in Cerebrospinal Fluid | Neisseria meningitidis serogroup A antigen | Cerebrospinal fluid specimen | Threshold | Ordinal value | – |
| 31908-7 | Neisseria meningitidis serogroup A Ag [Presence] in Specimen | Neisseria meningitidis serogroup A antigen | Specimen | Threshold | Ordinal value | – |
| 31912-9 | Neisseria meningitidis Ag [Presence] in Specimen | Neisseria meningitidis antigen | Specimen | Threshold | Ordinal value | – |
| 31913-7 | Neisseria meningitidis serogroup B Ag [Presence] in Specimen | Neisseria meningitidis serogroup B antigen | Specimen | Threshold | Ordinal value | – |
| 31916-0 | Neisseria meningitidis serogroup C Ag [Presence] in Cerebrospinal Fluid | Neisseria meningitidis serogroup C antigen | Cerebrospinal fluid specimen | Threshold | Ordinal value | – |
| 31917-8 | Neisseria meningitidis serogroup C Ag [Presence] in Specimen | Neisseria meningitidis serogroup C antigen | Specimen | Threshold | Ordinal value | – |
| 31918-6 | Neisseria meningitidis serogroup w135 Ag [Presence] in Cerebrospinal Fluid | Neisseria meningitidis serogroup W antigen | Cerebrospinal fluid specimen | Threshold | Ordinal value | – |
| 31919-4 | Neisseria meningitidis serogroup w135 Ag [Presence] in Serum or Plasma | Neisseria meningitidis serogroup W antigen | Serum or plasma specimen | Threshold | Ordinal value | – |
| 31920-2 | Neisseria meningitidis serogroup w135 Ag [Presence] in Specimen | Neisseria meningitidis serogroup W antigen | Specimen | Threshold | Ordinal value | – |
| 31921-0 | Neisseria meningitidis serogroup Y Ag [Presence] in Specimen | Neisseria meningitidis serogroup Y antigen | Specimen | Threshold | Ordinal value | – |
| 31923-6 | Parainfluenza virus 1 Ag [Presence] in Throat | Human respirovirus 1 antigen | Specimen from throat | Threshold | Ordinal value | – |
| 31924-4 | Parainfluenza virus 1 Ag [Presence] in Specimen | Human respirovirus 1 antigen | Specimen | Threshold | Ordinal value | – |
| 31925-1 | Parainfluenza virus 2 Ag [Presence] in Throat | Human orthorubulavirus 2 antigen | Specimen from throat | Threshold | Ordinal value | – |
| 31926-9 | Parainfluenza virus 2 Ag [Presence] in Specimen | Human orthorubulavirus 2 antigen | Specimen | Threshold | Ordinal value | – |
| 31927-7 | Parainfluenza virus 3 Ag [Presence] in Throat | Human respirovirus 3 antigen | Specimen from throat | Threshold | Ordinal value | – |
| 31928-5 | Parainfluenza virus 3 Ag [Presence] in Specimen | Human respirovirus 3 antigen | Specimen | Threshold | Ordinal value | – |
| 31929-3 | Parainfluenza virus Ag [Presence] in Specimen | Parainfluenza virus antigen | Specimen | Threshold | Ordinal value | – |
| 31932-7 | Pneumocystis jirovecii Ag [Presence] in Blood | Pneumocystis jirovecii antigen | Blood specimen | Threshold | Ordinal value | – |
| 31933-5 | Pneumocystis jirovecii Ag [Presence] in Bronchial specimen | Pneumocystis jirovecii antigen | Specimen from bronchus | Threshold | Ordinal value | – |
| 31934-3 | Pneumocystis jirovecii Ag [Presence] in Cerebrospinal Fluid | Pneumocystis jirovecii antigen | Cerebrospinal fluid specimen | Threshold | Ordinal value | – |
| 31935-0 | Pneumocystis jirovecii Ag [Presence] in Eye | Pneumocystis jirovecii antigen | Specimen from eye | Threshold | Ordinal value | – |
| 31936-8 | Pneumocystis jirovecii Ag [Presence] in Nose | Pneumocystis jirovecii antigen | Specimen from nose | Threshold | Ordinal value | – |
| 31937-6 | Pneumocystis jirovecii Ag [Presence] in Serum | Pneumocystis jirovecii antigen | Serum specimen | Threshold | Ordinal value | – |
| 31938-4 | Pneumocystis jirovecii Ag [Presence] in Semen | Pneumocystis jirovecii antigen | Semen sample | Threshold | Ordinal value | – |
| 31939-2 | Pneumocystis jirovecii Ag [Presence] in Sputum | Pneumocystis jirovecii antigen | Sputum specimen | Threshold | Ordinal value | – |
| 31940-0 | Pneumocystis jirovecii Ag [Presence] in Stool | Pneumocystis jirovecii antigen | Stool specimen | Threshold | Ordinal value | – |
| 31941-8 | Pneumocystis jirovecii Ag [Presence] in Throat | Pneumocystis jirovecii antigen | Specimen from throat | Threshold | Ordinal value | – |
| 31942-6 | Pneumocystis jirovecii Ag [Presence] in Urine | Pneumocystis jirovecii antigen | Urine specimen | Threshold | Ordinal value | – |

… 499 weitere; die vollständige Aufzählung steht im ValueSet.

