# LOINC Ontology - Request General culture - MII Implementation Guide Microbiology v2027.0.0-ballot2

* [**Table of Contents**](toc.md)
* [**Value Sets**](value-sets.md)
* [**LOINC Ontology ValueSets (Proposal)**](loinc-ontology-valuesets.md)
* [**LOINC Ontology - ValueSets per request**](loinc-ontology-requests.md)
* **LOINC Ontology - Request General culture**

## LOINC Ontology - Request General culture

This page is the review material for the request family **General culture** of the [LOINC Ontology proposal](loinc-ontology-valuesets.md): every rule of the family as the LOINC Ontology 2026-10-21 resolves it, decomposed into its attributes, with the codes it selects and what the release 2026-03-21 → 2026-10-21 changed. The method is explained under [How the ValueSets are built](loinc-ontology-method.md); all families are listed under [ValueSets per request](loinc-ontology-requests.md).

Microbiology request: general culture (MII KDS Mikrobiologie 2027, profile MII_PR_Mikrobio_Allgemeine_Kultur, ValueSet MII_VS_Mikrobio_Allgemeine_Kultur_Tests_LOINC). The 2027 module post-coordinates: one generic culture code (11475-1 'Microorganism identified in Specimen by Culture') plus organism, specimen and method as separate elements. In the LOINC Ontology the generic code is 490041010000102 (Property = Presence or identity, Technique = Microbial culture technique, Inheres in = Organism). The organism sits in 'Inheres in' for identity observables and in 'Component' for threshold observables of a named organism (e.g. 13316-5 VRE by organism specific culture), so the ECL tests both attributes. 41852-5 ('Microorganism or agent identified') is not in the ontology.

### General culture — organism identity by culture technique

What the generic culture request returns: nominal identification of any organism by any culture technique (microbial, organism specific, anaerobic, fungal …). Contains 11475-1.

ValueSet [mii-vs-mikrobio-loinc-ontology-general-culture-identity](ValueSet-mii-vs-mikrobio-loinc-ontology-general-culture-identity.md). Bound by the derived profile [mii-pr-mikrobio-loinc-ontology-allgemeine-kultur](StructureDefinition-mii-pr-mikrobio-loinc-ontology-allgemeine-kultur.md).

```
<< 363787002 |Observable entity (observable entity)| : 370130000 |Property (attribute)| = 118584009 |Presence or identity (property) (qualifier value)|, 246501002 |Technique (attribute)| = << 703725008 |Culture technique (qualifier value)|, (704319004 |Inheres in (attribute)| = << 410607006 |Organism (organism)| OR 246093002 |Component (attribute)| = << 410607006 |Organism (organism)|)

```

| | |
| :--- | :--- |
| Property | Presence or identity |
| Technique | `<< Culture technique` |
| Inheres in OR Component | `<< Organism` |

The rule selects **578** concepts (577 with a LOINC code, 1 without). Release 2026-03-21 → 2026-10-21: **+15 / −0** (lists on the [release delta](loinc-ontology-release-delta.md) page).

#### Codes (578)

| | | | | | | |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| 100905-9 | Gram positive bacteria identified in Isolate by Organism specific culture | Gram-positive bacteria | Microbial isolate | Presence or identity | Nominal value | Organism specific culture |
| 100907-5 | Vancomycin resistant enterococcus [Identifier] in Specimen by Organism specific culture | Vancomycin resistant Enterococcus | Specimen | Presence or identity | Nominal value | Organism specific culture |
| 10352-3 | Bacteria identified in Genital specimen by Aerobe culture | Domain Bacteria | Specimen from genital system | Presence or identity | Nominal value | Aerobic culture |
| 10353-1 | Bacteria identified in Nose by Aerobe culture | Domain Bacteria | Specimen from nose | Presence or identity | Nominal value | Aerobic culture |
| 10354-9 | Bacteria identified in Urethra by Culture | Domain Bacteria | Specimen from urethra | Presence or identity | Nominal value | Microbial culture |
| 105224-0 | Mycobacterium sp identified in Pericardial fluid by Organism specific culture | Mycobacterium | Pericardial fluid specimen | Presence or identity | Nominal value | Organism specific culture |
| 105225-7 | Mycobacterium sp identified in Pus by Organism specific culture | Mycobacterium | Pus specimen | Presence or identity | Nominal value | Organism specific culture |
| 105289-3 | Fungus identified in Catheter tip by Culture | Fungi | Catheter tip submitted as specimen | Presence or identity | Nominal value | Microbial culture |
| 105604-3 | Aeromonas sp identified in Specimen by Organism specific culture | Aeromonas | Specimen | Presence or identity | Nominal value | Organism specific culture |
| 105605-0 | Bacteria # 2 identified in Catheter tip by Aerobe culture | Domain Bacteria | Catheter tip submitted as specimen | Presence or identity | Nominal value | Aerobic culture |
| 105606-8 | Bacteria # 2 identified in Catheter tip by Anaerobe culture | Domain Bacteria | Catheter tip submitted as specimen | Presence or identity | Nominal value | Anaerobic culture |
| 105607-6 | Bacteria # 3 identified in Catheter tip by Aerobe culture | Domain Bacteria | Catheter tip submitted as specimen | Presence or identity | Nominal value | Aerobic culture |
| 105608-4 | Bacteria # 3 identified in Catheter tip by Anaerobe culture | Domain Bacteria | Catheter tip submitted as specimen | Presence or identity | Nominal value | Anaerobic culture |
| 105618-3 | Fungus identified in Throat by Culture | Fungi | Specimen from throat | Presence or identity | Nominal value | Microbial culture |
| 105917-9 | Bacteria identified in Bronchoalveolar lavage by Culture | Domain Bacteria | Bronchoalveolar lavage fluid specimen | Presence or identity | Nominal value | Microbial culture |
| 105924-5 | Bacteria identified in Surgical wound by Culture | Domain Bacteria | – | Presence or identity | Nominal value | Microbial culture |
| 105925-2 | Bacteria identified in Periumbilical by Aerobe culture | Domain Bacteria | – | Presence or identity | Nominal value | Aerobic culture |
| 105926-0 | Mycobacterium sp identified in Stool by Organism specific culture | Mycobacterium | Stool specimen | Presence or identity | Nominal value | Organism specific culture |
| 105932-8 | Bacteria identified in Bronchial specimen by Culture | Domain Bacteria | Specimen from bronchus | Presence or identity | Nominal value | Microbial culture |
| 105933-6 | Bacteria identified in Surgical wound by Anaerobe culture | Domain Bacteria | – | Presence or identity | Nominal value | Anaerobic culture |
| 106016-9 | Bacteria identified in Penis by Culture | Domain Bacteria | Specimen from penis | Presence or identity | Nominal value | Microbial culture |
| 106017-7 | Fungus identified in Preputial barnacle sulcus by Culture | Fungi | – | Presence or identity | Nominal value | Microbial culture |
| 106024-3 | Fungus identified in Vaginal fluid by Culture | Fungi | Specimen from vagina | Presence or identity | Nominal value | Microbial culture |
| 106032-6 | Bacteria identified in Pus by Culture | Domain Bacteria | Pus specimen | Presence or identity | Nominal value | Microbial culture |
| 106033-4 | Bacteria identified in Pus by Anaerobe culture | Domain Bacteria | Pus specimen | Presence or identity | Nominal value | Anaerobic culture |
| 106034-2 | Fungus identified in Pus by Culture | Fungi | Pus specimen | Presence or identity | Nominal value | Microbial culture |
| 106036-7 | Bacteria identified in Fistula by Culture | Domain Bacteria | – | Presence or identity | Nominal value | Microbial culture |
| 106037-5 | Bacteria identified in Fistula by Anaerobe culture | Domain Bacteria | – | Presence or identity | Nominal value | Anaerobic culture |
| 106038-3 | Fungus identified in Wound shallow by Culture | Fungi | Specimen from superficial wound | Presence or identity | Nominal value | Microbial culture |
| 106039-1 | Fungus identified in Wound deep by Culture | Fungi | Specimen from deep wound | Presence or identity | Nominal value | Microbial culture |
| 106041-7 | Fungus identified in Ear fluid by Culture | Fungi | – | Presence or identity | Nominal value | Microbial culture |
| 106042-5 | Bacteria identified in Mother's milk by Culture | Domain Bacteria | Mother's milk specimen | Presence or identity | Nominal value | Microbial culture |
| 106045-8 | Fungus identified in Bile fluid by Culture | Fungi | Bile specimen | Presence or identity | Nominal value | Microbial culture |
| 10635-1 | Acanthamoeba sp identified in Eye by Organism specific culture | Acanthamoeba | Specimen from eye | Presence or identity | Nominal value | Organism specific culture |
| 10639-3 | Thermophilic Actinomycetes identified in Specimen by Organism specific culture | Thermophilic actinomycetes | Specimen | Presence or identity | Nominal value | Organism specific culture |
| 10643-5 | Amoeba identified in Stool by Organism specific culture | Amoeba | Stool specimen | Presence or identity | Nominal value | Organism specific culture |
| 10687-2 | Leishmania sp identified in Tissue by Organism specific culture | Leishmania | Tissue specimen | Presence or identity | Nominal value | Organism specific culture |
| 10713-6 | Prototheca identified in Specimen by Culture | Prototheca | Specimen | Presence or identity | Nominal value | Microbial culture |
| 107176-0 | Legionella sp identified in Aspirate by Organism specific culture | Legionella | Specimen obtained by aspiration | Presence or identity | Nominal value | Organism specific culture |
| 107177-8 | Mycobacterium sp identified in Skin by Organism specific culture | Mycobacterium | Specimen from skin | Presence or identity | Nominal value | Organism specific culture |
| 107178-6 | Mycobacterium sp identified in Semen by Organism specific culture | Mycobacterium | Semen sample | Presence or identity | Nominal value | Organism specific culture |
| 107179-4 | Mycobacterium sp identified in Drain by Organism specific culture | Mycobacterium | Drain device submitted as specimen | Presence or identity | Nominal value | Organism specific culture |
| 107180-2 | Mycobacterium sp identified in Abscess by Organism specific culture | Mycobacterium | Specimen from abscess | Presence or identity | Nominal value | Organism specific culture |
| 107181-0 | Fungus identified in Urethra by Culture | Fungi | Specimen from urethra | Presence or identity | Nominal value | Microbial culture |
| 107182-8 | Fungus identified in Semen by Culture | Fungi | Semen sample | Presence or identity | Nominal value | Microbial culture |
| 107183-6 | Mycobacterium sp identified in Amniotic fluid by Organism specific culture | Mycobacterium | Amniotic fluid specimen | Presence or identity | Nominal value | Organism specific culture |
| 107186-9 | Fungus # 2 identified in Blood by Culture | Fungi | Blood specimen | Presence or identity | Nominal value | Microbial culture |
| 107187-7 | Fungus # 3 identified in Blood by Culture | Fungi | Blood specimen | Presence or identity | Nominal value | Microbial culture |
| 107188-5 | Bacteria identified in Abscess by Anaerobe culture | Domain Bacteria | Specimen from abscess | Presence or identity | Nominal value | Anaerobic culture |
| 10728-4 | Trichomonas sp identified in Genital specimen by Organism specific culture | Trichomonas | Specimen from genital system | Presence or identity | Nominal value | Organism specific culture |
| 10730-0 | Trypanosoma sp identified in Blood by Organism specific culture | Genus Trypanosoma | Blood specimen | Presence or identity | Nominal value | Organism specific culture |
| 111515-3 | Fungus identified in Prostatic fluid by Culture | Fungi | Prostatic fluid specimen | Presence or identity | Nominal value | Microbial culture |
| 112406-4 | Mycoplasma sp identified in Prostatic fluid by Organism specific culture | Genus Mycoplasma | Prostatic fluid specimen | Presence or identity | Nominal value | Organism specific culture |
| 11261-5 | Bacteria identified in Vaginal fluid by Aerobe culture | Domain Bacteria | Specimen from vagina | Presence or identity | Nominal value | Aerobic culture |
| 112851-1 | Bacteria identified in Surgical wound.shallow by Culture | Domain Bacteria | – | Presence or identity | Nominal value | Microbial culture |
| 112852-9 | Bacteria identified in Surgical wound.deep by Culture | Domain Bacteria | – | Presence or identity | Nominal value | Microbial culture |
| 112889-1 | Fungus identified in Penis by Culture | Fungi | Specimen from penis | Presence or identity | Nominal value | Microbial culture |
| 112891-7 | Bacteria identified in Ear by Culture | Domain Bacteria | – | Presence or identity | Nominal value | Microbial culture |
| 112896-6 | Actinomyces sp identified in Bronchoalveolar lavage by Organism specific culture | Actinomyces | Bronchoalveolar lavage fluid specimen | Presence or identity | Nominal value | Organism specific culture |
| 112897-4 | Nocardia sp identified in Bronchoalveolar lavage by Organism specific culture | Nocardia | Bronchoalveolar lavage fluid specimen | Presence or identity | Nominal value | Organism specific culture |
| 112898-2 | Legionella sp identified in Bronchoalveolar lavage by Organism specific culture | Legionella | Bronchoalveolar lavage fluid specimen | Presence or identity | Nominal value | Organism specific culture |
| 113006-1 | Fungus identified in Drain by Culture | Fungi | Drain device submitted as specimen | Presence or identity | Nominal value | Microbial culture |
| 113007-9 | Bacteria identified in Drain by Culture | Domain Bacteria | Drain device submitted as specimen | Presence or identity | Nominal value | Microbial culture |
| 113009-5 | Bacteria identified in Drain by Anaerobe culture | Domain Bacteria | Drain device submitted as specimen | Presence or identity | Nominal value | Anaerobic culture |
| 11475-1 | Microorganism identified in Specimen by Culture | Organism | Specimen | Presence or identity | Nominal value | Microbial culture |
| 11484-3 | Virus identified in Amniotic fluid by Culture | Virus | Amniotic fluid specimen | Presence or identity | Nominal value | Microbial culture |
| 12281-2 | Bacteria identified in Cervix by Anaerobe culture | Domain Bacteria | Specimen from uterine cervix | Presence or identity | Nominal value | Anaerobic culture |
| 13315-7 | Bacteria identified in 24 hour Urine by Culture | Domain Bacteria | Urine specimen | Presence or identity | Nominal value | Microbial culture |
| 13318-1 | Escherichia coli enteroinvasive identified in Stool by Organism specific culture | Enteroinvasive Escherichia coli | Stool specimen | Presence or identity | Nominal value | Organism specific culture |
| 14093-9 | Bacteria identified in Water by Culture | Domain Bacteria | Water specimen | Presence or identity | Nominal value | Microbial culture |
| 14226-5 | Nocardia sp identified in Isolate by Organism specific culture | Nocardia | Microbial isolate | Presence or identity | Nominal value | Organism specific culture |
| 14451-9 | Virus identified in Eye by Culture | Virus | Specimen from eye | Presence or identity | Nominal value | Microbial culture |
| 14452-7 | Virus identified in Cervix by Culture | Virus | Specimen from uterine cervix | Presence or identity | Nominal value | Microbial culture |
| 14453-5 | Virus identified in Vaginal fluid by Culture | Virus | Specimen from vagina | Presence or identity | Nominal value | Microbial culture |
| 14454-3 | Virus identified in Nose by Culture | Virus | Specimen from nose | Presence or identity | Nominal value | Microbial culture |
| 14455-0 | Virus identified in Pleural fluid by Culture | Virus | Pleural fluid specimen | Presence or identity | Nominal value | Microbial culture |
| 14456-8 | Virus identified in Peritoneal fluid by Culture | Virus | Peritoneal fluid specimen | Presence or identity | Nominal value | Microbial culture |
| 14457-6 | Virus identified in Urine by Culture | Virus | Urine specimen | Presence or identity | Nominal value | Microbial culture |
| 14458-4 | Virus identified in Sputum by Culture | Virus | Sputum specimen | Presence or identity | Nominal value | Microbial culture |
| 14459-2 | Virus identified in Penis by Culture | Virus | Specimen from penis | Presence or identity | Nominal value | Microbial culture |
| 14460-0 | Virus identified in Urethra by Culture | Virus | Specimen from urethra | Presence or identity | Nominal value | Microbial culture |
| 14475-8 | Bacteria identified in Cervix by Aerobe culture | Domain Bacteria | Specimen from uterine cervix | Presence or identity | Nominal value | Aerobic culture |
| 14477-4 | Bacteria identified in Urethra by Aerobe culture | Domain Bacteria | Specimen from urethra | Presence or identity | Nominal value | Aerobic culture |
| 14478-2 | Bacteria identified in Penis by Aerobe culture | Domain Bacteria | Specimen from penis | Presence or identity | Nominal value | Aerobic culture |
| 15378-3 | Fungus identified in Isolate by Culture | Fungi | Microbial isolate | Presence or identity | Nominal value | Microbial culture |
| 16832-8 | Escherichia coli enterotoxic identified in Stool by Organism specific culture | Enterotoxigenic Escherichia coli | Stool specimen | Presence or identity | Nominal value | Organism specific culture |
| 17279-1 | Bacteria identified in Pleural fluid by Aerobe culture | Domain Bacteria | Pleural fluid specimen | Presence or identity | Nominal value | Aerobic culture |
| 17520-8 | Respiratory syncytial virus identified in Specimen by Organism specific culture | Human respiratory syncytial virus | Specimen | Presence or identity | Nominal value | Organism specific culture |
| 17530-7 | Retrovirus identified in Specimen by Organism specific culture | Family Retroviridae | Specimen | Presence or identity | Nominal value | Organism specific culture |
| 17563-8 | Salmonella sp identified in Specimen by Organism specific culture | Salmonella | Specimen | Presence or identity | Nominal value | Organism specific culture |
| 17576-0 | Shigella sp identified in Specimen by Organism specific culture | Shigella | Specimen | Presence or identity | Nominal value | Organism specific culture |
| 17873-1 | Bacteria # 2 identified in Bone by Aerobe culture | Domain Bacteria | Specimen from bone | Presence or identity | Nominal value | Aerobic culture |
| 17874-9 | Bacteria # 3 identified in Bone by Aerobe culture | Domain Bacteria | Specimen from bone | Presence or identity | Nominal value | Aerobic culture |
| 17875-6 | Bacteria # 4 identified in Bone by Aerobe culture | Domain Bacteria | Specimen from bone | Presence or identity | Nominal value | Aerobic culture |
| 17876-4 | Bacteria # 5 identified in Bone by Aerobe culture | Domain Bacteria | Specimen from bone | Presence or identity | Nominal value | Aerobic culture |
| 17877-2 | Bacteria # 6 identified in Bone by Aerobe culture | Domain Bacteria | Specimen from bone | Presence or identity | Nominal value | Aerobic culture |
| 17878-0 | Bacteria # 2 identified in Bronchial specimen by Aerobe culture | Domain Bacteria | Specimen from bronchus | Presence or identity | Nominal value | Aerobic culture |
| 17879-8 | Bacteria # 3 identified in Bronchial specimen by Aerobe culture | Domain Bacteria | Specimen from bronchus | Presence or identity | Nominal value | Aerobic culture |
| 17880-6 | Bacteria # 4 identified in Bronchial specimen by Aerobe culture | Domain Bacteria | Specimen from bronchus | Presence or identity | Nominal value | Aerobic culture |
| 17881-4 | Bacteria # 5 identified in Bronchial specimen by Aerobe culture | Domain Bacteria | Specimen from bronchus | Presence or identity | Nominal value | Aerobic culture |
| 17882-2 | Bacteria # 6 identified in Bronchial specimen by Aerobe culture | Domain Bacteria | Specimen from bronchus | Presence or identity | Nominal value | Aerobic culture |
| 17883-0 | Bacteria # 2 identified in Genital specimen by Aerobe culture | Domain Bacteria | Specimen from genital system | Presence or identity | Nominal value | Aerobic culture |
| 17884-8 | Bacteria # 3 identified in Genital specimen by Aerobe culture | Domain Bacteria | Specimen from genital system | Presence or identity | Nominal value | Aerobic culture |
| 17885-5 | Bacteria # 4 identified in Genital specimen by Aerobe culture | Domain Bacteria | Specimen from genital system | Presence or identity | Nominal value | Aerobic culture |
| 17886-3 | Bacteria # 5 identified in Genital specimen by Aerobe culture | Domain Bacteria | Specimen from genital system | Presence or identity | Nominal value | Aerobic culture |
| 17887-1 | Bacteria # 6 identified in Genital specimen by Aerobe culture | Domain Bacteria | Specimen from genital system | Presence or identity | Nominal value | Aerobic culture |
| 17888-9 | Bacteria # 2 identified in Nose by Aerobe culture | Domain Bacteria | Specimen from nose | Presence or identity | Nominal value | Aerobic culture |
| 17889-7 | Bacteria # 3 identified in Nose by Aerobe culture | Domain Bacteria | Specimen from nose | Presence or identity | Nominal value | Aerobic culture |
| 17890-5 | Bacteria # 4 identified in Nose by Aerobe culture | Domain Bacteria | Specimen from nose | Presence or identity | Nominal value | Aerobic culture |
| 17891-3 | Bacteria # 5 identified in Nose by Aerobe culture | Domain Bacteria | Specimen from nose | Presence or identity | Nominal value | Aerobic culture |
| 17892-1 | Bacteria # 6 identified in Nose by Aerobe culture | Domain Bacteria | Specimen from nose | Presence or identity | Nominal value | Aerobic culture |
| 17893-9 | Bacteria # 2 identified in Sputum by Aerobe culture | Domain Bacteria | Sputum specimen | Presence or identity | Nominal value | Aerobic culture |
| 17894-7 | Bacteria # 3 identified in Sputum by Aerobe culture | Domain Bacteria | Sputum specimen | Presence or identity | Nominal value | Aerobic culture |
| 17895-4 | Bacteria # 4 identified in Sputum by Aerobe culture | Domain Bacteria | Sputum specimen | Presence or identity | Nominal value | Aerobic culture |
| 17896-2 | Bacteria # 5 identified in Sputum by Aerobe culture | Domain Bacteria | Sputum specimen | Presence or identity | Nominal value | Aerobic culture |
| 17897-0 | Bacteria # 6 identified in Sputum by Aerobe culture | Domain Bacteria | Sputum specimen | Presence or identity | Nominal value | Aerobic culture |
| 17898-8 | Bacteria identified in Throat by Aerobe culture | Domain Bacteria | Specimen from throat | Presence or identity | Nominal value | Aerobic culture |
| 17899-6 | Bacteria # 2 identified in Throat by Aerobe culture | Domain Bacteria | Specimen from throat | Presence or identity | Nominal value | Aerobic culture |
| 17900-2 | Bacteria # 3 identified in Throat by Aerobe culture | Domain Bacteria | Specimen from throat | Presence or identity | Nominal value | Aerobic culture |
| 17901-0 | Bacteria # 4 identified in Throat by Aerobe culture | Domain Bacteria | Specimen from throat | Presence or identity | Nominal value | Aerobic culture |
| 17902-8 | Bacteria # 5 identified in Throat by Aerobe culture | Domain Bacteria | Specimen from throat | Presence or identity | Nominal value | Aerobic culture |
| 17903-6 | Bacteria # 6 identified in Throat by Aerobe culture | Domain Bacteria | Specimen from throat | Presence or identity | Nominal value | Aerobic culture |
| 17904-4 | Bacteria # 2 identified in Tissue by Aerobe culture | Domain Bacteria | Tissue specimen | Presence or identity | Nominal value | Aerobic culture |
| 17905-1 | Bacteria # 3 identified in Tissue by Aerobe culture | Domain Bacteria | Tissue specimen | Presence or identity | Nominal value | Aerobic culture |
| 17906-9 | Bacteria # 4 identified in Tissue by Aerobe culture | Domain Bacteria | Tissue specimen | Presence or identity | Nominal value | Aerobic culture |
| 17907-7 | Bacteria # 5 identified in Tissue by Aerobe culture | Domain Bacteria | Tissue specimen | Presence or identity | Nominal value | Aerobic culture |
| 17908-5 | Bacteria # 6 identified in Tissue by Aerobe culture | Domain Bacteria | Tissue specimen | Presence or identity | Nominal value | Aerobic culture |
| 17909-3 | Bacteria identified in Wound deep by Aerobe culture | Domain Bacteria | Specimen from deep wound | Presence or identity | Nominal value | Aerobic culture |
| 17910-1 | Bacteria # 2 identified in Wound deep by Aerobe culture | Domain Bacteria | Specimen from deep wound | Presence or identity | Nominal value | Aerobic culture |
| 17911-9 | Bacteria # 3 identified in Wound deep by Aerobe culture | Domain Bacteria | Specimen from deep wound | Presence or identity | Nominal value | Aerobic culture |
| 17912-7 | Bacteria # 4 identified in Wound deep by Aerobe culture | Domain Bacteria | Specimen from deep wound | Presence or identity | Nominal value | Aerobic culture |
| 17913-5 | Bacteria # 5 identified in Wound deep by Aerobe culture | Domain Bacteria | Specimen from deep wound | Presence or identity | Nominal value | Aerobic culture |
| 17914-3 | Bacteria # 6 identified in Wound deep by Aerobe culture | Domain Bacteria | Specimen from deep wound | Presence or identity | Nominal value | Aerobic culture |
| 17915-0 | Bacteria identified in Wound shallow by Aerobe culture | Domain Bacteria | Specimen from superficial wound | Presence or identity | Nominal value | Aerobic culture |
| 17916-8 | Bacteria # 2 identified in Wound shallow by Aerobe culture | Domain Bacteria | Specimen from superficial wound | Presence or identity | Nominal value | Aerobic culture |
| 17917-6 | Bacteria # 3 identified in Wound shallow by Aerobe culture | Domain Bacteria | Specimen from superficial wound | Presence or identity | Nominal value | Aerobic culture |
| 17918-4 | Bacteria # 4 identified in Wound shallow by Aerobe culture | Domain Bacteria | Specimen from superficial wound | Presence or identity | Nominal value | Aerobic culture |
| 17919-2 | Bacteria # 5 identified in Wound shallow by Aerobe culture | Domain Bacteria | Specimen from superficial wound | Presence or identity | Nominal value | Aerobic culture |
| 17920-0 | Bacteria # 6 identified in Wound shallow by Aerobe culture | Domain Bacteria | Specimen from superficial wound | Presence or identity | Nominal value | Aerobic culture |
| 17921-8 | Bacteria # 2 identified in Nose by Anaerobe culture | Domain Bacteria | Specimen from nose | Presence or identity | Nominal value | Anaerobic culture |
| 17922-6 | Bacteria # 3 identified in Nose by Anaerobe culture | Domain Bacteria | Specimen from nose | Presence or identity | Nominal value | Anaerobic culture |
| 17923-4 | Bacteria # 2 identified in Tissue by Anaerobe culture | Domain Bacteria | Tissue specimen | Presence or identity | Nominal value | Anaerobic culture |
| 17924-2 | Bacteria # 3 identified in Tissue by Anaerobe culture | Domain Bacteria | Tissue specimen | Presence or identity | Nominal value | Anaerobic culture |
| 17925-9 | Bacteria identified in Wound deep by Anaerobe culture | Domain Bacteria | Specimen from deep wound | Presence or identity | Nominal value | Anaerobic culture |
| 17926-7 | Bacteria # 2 identified in Wound deep by Anaerobe culture | Domain Bacteria | Specimen from deep wound | Presence or identity | Nominal value | Anaerobic culture |
| 17927-5 | Bacteria # 3 identified in Wound deep by Anaerobe culture | Domain Bacteria | Specimen from deep wound | Presence or identity | Nominal value | Anaerobic culture |
| 17928-3 | Bacteria identified in Blood by Aerobe culture | Domain Bacteria | Blood specimen | Presence or identity | Nominal value | Aerobic culture |
| 17929-1 | Bacteria # 2 identified in Blood by Aerobe culture | Domain Bacteria | Blood specimen | Presence or identity | Nominal value | Aerobic culture |
| 17930-9 | Bacteria # 3 identified in Blood by Aerobe culture | Domain Bacteria | Blood specimen | Presence or identity | Nominal value | Aerobic culture |
| 17931-7 | Bacteria # 4 identified in Blood by Aerobe culture | Domain Bacteria | Blood specimen | Presence or identity | Nominal value | Aerobic culture |
| 17932-5 | Bacteria # 5 identified in Blood by Aerobe culture | Domain Bacteria | Blood specimen | Presence or identity | Nominal value | Aerobic culture |
| 17933-3 | Bacteria # 6 identified in Blood by Aerobe culture | Domain Bacteria | Blood specimen | Presence or identity | Nominal value | Aerobic culture |
| 17934-1 | Bacteria identified in Blood by Anaerobe culture | Domain Bacteria | Blood specimen | Presence or identity | Nominal value | Anaerobic culture |
| 17935-8 | Bacteria # 2 identified in Blood by Anaerobe culture | Domain Bacteria | Blood specimen | Presence or identity | Nominal value | Anaerobic culture |
| 17936-6 | Bacteria # 3 identified in Blood by Anaerobe culture | Domain Bacteria | Blood specimen | Presence or identity | Nominal value | Anaerobic culture |
| 17937-4 | Bacteria # 2 identified in Burn by Culture | Domain Bacteria | Specimen from burn injury | Presence or identity | Nominal value | Microbial culture |
| 17938-2 | Bacteria # 3 identified in Burn by Culture | Domain Bacteria | Specimen from burn injury | Presence or identity | Nominal value | Microbial culture |
| 17939-0 | Bacteria # 4 identified in Burn by Culture | Domain Bacteria | Specimen from burn injury | Presence or identity | Nominal value | Microbial culture |
| 17940-8 | Bacteria # 5 identified in Burn by Culture | Domain Bacteria | Specimen from burn injury | Presence or identity | Nominal value | Microbial culture |
| 17941-6 | Bacteria # 6 identified in Burn by Culture | Domain Bacteria | Specimen from burn injury | Presence or identity | Nominal value | Microbial culture |
| 17947-3 | Fungus # 2 identified in Specimen by Culture | Fungi | Specimen | Presence or identity | Nominal value | Microbial culture |
| 17948-1 | Fungus # 3 identified in Specimen by Culture | Fungi | Specimen | Presence or identity | Nominal value | Microbial culture |
| 17949-9 | Fungus # 4 identified in Specimen by Culture | Fungi | Specimen | Presence or identity | Nominal value | Microbial culture |
| 17951-5 | Bacteria # 2 identified in Body fluid by Aerobe culture | Domain Bacteria | Body fluid specimen | Presence or identity | Nominal value | Aerobic culture |
| 17952-3 | Bacteria # 3 identified in Body fluid by Aerobe culture | Domain Bacteria | Body fluid specimen | Presence or identity | Nominal value | Aerobic culture |
| 17953-1 | Bacteria # 4 identified in Body fluid by Aerobe culture | Domain Bacteria | Body fluid specimen | Presence or identity | Nominal value | Aerobic culture |
| 17954-9 | Bacteria # 5 identified in Body fluid by Aerobe culture | Domain Bacteria | Body fluid specimen | Presence or identity | Nominal value | Aerobic culture |
| 17955-6 | Bacteria # 6 identified in Body fluid by Aerobe culture | Domain Bacteria | Body fluid specimen | Presence or identity | Nominal value | Aerobic culture |
| 17956-4 | Bacteria identified in Body fluid by Anaerobe culture | Domain Bacteria | Body fluid specimen | Presence or identity | Nominal value | Anaerobic culture |
| 17957-2 | Bacteria # 2 identified in Body fluid by Anaerobe culture | Domain Bacteria | Body fluid specimen | Presence or identity | Nominal value | Anaerobic culture |
| 17958-0 | Bacteria # 3 identified in Body fluid by Anaerobe culture | Domain Bacteria | Body fluid specimen | Presence or identity | Nominal value | Anaerobic culture |
| 17959-8 | Bacteria # 2 identified in Peritoneal fluid by Culture | Domain Bacteria | Peritoneal fluid specimen | Presence or identity | Nominal value | Microbial culture |
| 17960-6 | Bacteria # 3 identified in Peritoneal fluid by Culture | Domain Bacteria | Peritoneal fluid specimen | Presence or identity | Nominal value | Microbial culture |
| 17961-4 | Bacteria # 4 identified in Peritoneal fluid by Culture | Domain Bacteria | Peritoneal fluid specimen | Presence or identity | Nominal value | Microbial culture |
| 17962-2 | Bacteria # 5 identified in Peritoneal fluid by Culture | Domain Bacteria | Peritoneal fluid specimen | Presence or identity | Nominal value | Microbial culture |
| 17963-0 | Bacteria # 6 identified in Peritoneal fluid by Culture | Domain Bacteria | Peritoneal fluid specimen | Presence or identity | Nominal value | Microbial culture |
| 17964-8 | Bacteria # 2 identified in Stool by Culture | Domain Bacteria | Stool specimen | Presence or identity | Nominal value | Microbial culture |
| 17965-5 | Bacteria # 3 identified in Stool by Culture | Domain Bacteria | Stool specimen | Presence or identity | Nominal value | Microbial culture |
| 17966-3 | Bacteria # 4 identified in Stool by Culture | Domain Bacteria | Stool specimen | Presence or identity | Nominal value | Microbial culture |
| 17967-1 | Bacteria # 5 identified in Stool by Culture | Domain Bacteria | Stool specimen | Presence or identity | Nominal value | Microbial culture |
| 17968-9 | Bacteria # 6 identified in Stool by Culture | Domain Bacteria | Stool specimen | Presence or identity | Nominal value | Microbial culture |
| 17970-5 | Bacteria # 2 identified in Urine by Culture | Domain Bacteria | Urine specimen | Presence or identity | Nominal value | Microbial culture |
| 17971-3 | Bacteria # 3 identified in Urine by Culture | Domain Bacteria | Urine specimen | Presence or identity | Nominal value | Microbial culture |
| 17972-1 | Bacteria # 4 identified in Urine by Culture | Domain Bacteria | Urine specimen | Presence or identity | Nominal value | Microbial culture |
| 17973-9 | Bacteria # 5 identified in Urine by Culture | Domain Bacteria | Urine specimen | Presence or identity | Nominal value | Microbial culture |
| 17974-7 | Bacteria # 6 identified in Urine by Culture | Domain Bacteria | Urine specimen | Presence or identity | Nominal value | Microbial culture |
| 17975-4 | Virus # 2 identified in Specimen by Culture | Virus | Specimen | Presence or identity | Nominal value | Microbial culture |
| 17976-2 | Virus # 3 identified in Specimen by Culture | Virus | Specimen | Presence or identity | Nominal value | Microbial culture |
| 19126-2 | Bacteria identified in Bone marrow by Aerobe culture | Domain Bacteria | Bone marrow specimen | Presence or identity | Nominal value | Aerobic culture |
| 19128-8 | Bacteria identified in Catheter tip by Culture | Domain Bacteria | Catheter tip submitted as specimen | Presence or identity | Nominal value | Microbial culture |
| 20688-8 | Aspergillus sp identified in Litter by Organism specific culture | Aspergillus | – | Presence or identity | Nominal value | Organism specific culture |
| 20693-8 | Bacteria identified in Litter by Aerobe culture | Domain Bacteria | – | Presence or identity | Nominal value | Aerobic culture |
| 20694-6 | Bacteria identified in Embryo by Aerobe culture | Domain Bacteria | – | Presence or identity | Nominal value | Aerobic culture |
| 20734-0 | Brucella sp identified in Tissue by Organism specific culture | Brucella | Tissue specimen | Presence or identity | Nominal value | Organism specific culture |
| 20735-7 | Brucella sp identified in Milk by Organism specific culture | Brucella | Milk specimen | Presence or identity | Nominal value | Organism specific culture |
| 20738-1 | Campylobacter sp identified in Isolate by Organism specific culture | Campylobacter | Microbial isolate | Presence or identity | Nominal value | Organism specific culture |
| 20739-9 | Campylobacter sp identified in Body fluid by Organism specific culture | Campylobacter | Body fluid specimen | Presence or identity | Nominal value | Organism specific culture |
| 20740-7 | Campylobacter sp identified in Tissue by Organism specific culture | Campylobacter | Tissue specimen | Presence or identity | Nominal value | Organism specific culture |
| 20878-5 | Bacteria identified in Isolate by Anaerobe culture | Domain Bacteria | Microbial isolate | Presence or identity | Nominal value | Anaerobic culture |
| 20879-3 | Bacteria identified in Milk by Aerobe culture | Domain Bacteria | Milk specimen | Presence or identity | Nominal value | Aerobic culture |
| 20955-1 | Salmonella sp identified in Stool by Organism specific culture | Salmonella | Stool specimen | Presence or identity | Nominal value | Organism specific culture |
| 20964-3 | Shigella sp identified in Feed by Organism specific culture | Shigella | – | Presence or identity | Nominal value | Organism specific culture |
| 20966-8 | Staphylococcus sp identified in Specimen by Organism specific culture | Staphylococcus | Specimen | Presence or identity | Nominal value | Organism specific culture |
| 20967-6 | Staphylococcus sp identified in Milk by Organism specific culture | Staphylococcus | Milk specimen | Presence or identity | Nominal value | Organism specific culture |
| 20968-4 | Staphylococcus sp identified in Cheese by Organism specific culture | Staphylococcus | – | Presence or identity | Nominal value | Organism specific culture |
| 20987-4 | Yersinia sp identified in Dairy product by Organism specific culture | Yersinia | – | Presence or identity | Nominal value | Organism specific culture |
| 21442-9 | Parainfluenza virus identified in Nose by Organism specific culture | Human parainfluenza virus | Specimen from nose | Presence or identity | Nominal value | Organism specific culture |
| 23594-5 | Brucella sp identified in Semen by Organism specific culture | Brucella | Semen sample | Presence or identity | Nominal value | Organism specific culture |
| 23599-4 | Leptospira sp identified in Tissue by Organism specific culture | Leptospira | Tissue specimen | Presence or identity | Nominal value | Organism specific culture |
| 23600-0 | Leptospira sp identified in Milk by Organism specific culture | Leptospira | Milk specimen | Presence or identity | Nominal value | Organism specific culture |
| 24003-6 | Brucella sp identified in Bone marrow by Organism specific culture | Brucella | Bone marrow specimen | Presence or identity | Nominal value | Organism specific culture |
| 24005-1 | Chlamydia sp identified in Bronchial specimen by Organism specific culture | Chlamydia | Specimen from bronchus | Presence or identity | Nominal value | Organism specific culture |
| 24009-3 | Fungus identified in Bronchial specimen by Culture | Fungi | Specimen from bronchus | Presence or identity | Nominal value | Microbial culture |
| 27414-2 | Fungus identified in Stool by Culture | Fungi | Stool specimen | Presence or identity | Nominal value | Microbial culture |
| 27907-5 | Cryptosporidium sp [Identifier] in Stool by Organism specific culture | Cryptosporidium | Stool specimen | Presence or identity | Nominal value | Organism specific culture |
| 28549-4 | Yersinia sp identified in Stool by Organism specific culture | Yersinia | Stool specimen | Presence or identity | Nominal value | Organism specific culture |
| 30045-9 | Mycobacterium sp identified in Dialysis fluid by Organism specific culture | Mycobacterium | Dialysate specimen | Presence or identity | Nominal value | Organism specific culture |
| 32367-5 | Bacteria identified in Isolate by Aerobe culture | Domain Bacteria | Microbial isolate | Presence or identity | Nominal value | Aerobic culture |
| 32368-3 | Ureaplasma sp identified in Specimen by Organism specific culture | Ureaplasma | Specimen | Presence or identity | Nominal value | Organism specific culture |
| 32689-2 | Herpes simplex virus identified in Eye by Organism specific culture | Human herpes simplex virus | Specimen from eye | Presence or identity | Nominal value | Organism specific culture |
| 35417-5 | Herpes simplex virus identified in Anal by Organism specific culture | Human herpes simplex virus | Specimen from anus | Presence or identity | Nominal value | Organism specific culture |
| 35418-3 | Herpes simplex virus identified in Bronchial specimen by Organism specific culture | Human herpes simplex virus | Specimen from bronchus | Presence or identity | Nominal value | Organism specific culture |
| 35419-1 | Herpes simplex virus identified in Cerebrospinal Fluid by Organism specific culture | Human herpes simplex virus | Cerebrospinal fluid specimen | Presence or identity | Nominal value | Organism specific culture |
| 35420-9 | Herpes simplex virus identified in Cervix by Organism specific culture | Human herpes simplex virus | Specimen from uterine cervix | Presence or identity | Nominal value | Organism specific culture |
| 35421-7 | Herpes simplex virus identified in Ear by Organism specific culture | Human herpes simplex virus | – | Presence or identity | Nominal value | Organism specific culture |
| 35422-5 | Herpes simplex virus identified in Body fluid by Organism specific culture | Human herpes simplex virus | Body fluid specimen | Presence or identity | Nominal value | Organism specific culture |
| 35423-3 | Herpes simplex virus identified in Vaginal fluid by Organism specific culture | Human herpes simplex virus | Specimen from vagina | Presence or identity | Nominal value | Organism specific culture |
| 35424-1 | Herpes simplex virus identified in Penis by Organism specific culture | Human herpes simplex virus | Specimen from penis | Presence or identity | Nominal value | Organism specific culture |
| 35425-8 | Herpes simplex virus identified in Placenta by Organism specific culture | Human herpes simplex virus | Specimen from placenta | Presence or identity | Nominal value | Organism specific culture |
| 35426-6 | Herpes simplex virus identified in Pleural fluid by Organism specific culture | Human herpes simplex virus | Pleural fluid specimen | Presence or identity | Nominal value | Organism specific culture |
| 35427-4 | Herpes simplex virus identified in Peritoneal fluid by Organism specific culture | Human herpes simplex virus | Peritoneal fluid specimen | Presence or identity | Nominal value | Organism specific culture |
| 35428-2 | Herpes simplex virus identified in Synovial fluid by Organism specific culture | Human herpes simplex virus | Synovial fluid specimen | Presence or identity | Nominal value | Organism specific culture |
| 35429-0 | Herpes simplex virus identified in Stool by Organism specific culture | Human herpes simplex virus | Stool specimen | Presence or identity | Nominal value | Organism specific culture |
| 35430-8 | Herpes simplex virus identified in Throat by Organism specific culture | Human herpes simplex virus | Specimen from throat | Presence or identity | Nominal value | Organism specific culture |
| 35431-6 | Herpes simplex virus identified in Tissue by Organism specific culture | Human herpes simplex virus | Tissue specimen | Presence or identity | Nominal value | Organism specific culture |
| 35432-4 | Herpes simplex virus identified in Urine by Organism specific culture | Human herpes simplex virus | Urine specimen | Presence or identity | Nominal value | Organism specific culture |
| 35433-2 | Herpes simplex virus identified in Urethra by Organism specific culture | Human herpes simplex virus | Specimen from urethra | Presence or identity | Nominal value | Organism specific culture |
| 35434-0 | Herpes simplex virus identified in Wound by Organism specific culture | Human herpes simplex virus | Specimen from wound | Presence or identity | Nominal value | Organism specific culture |
| 35451-4 | Herpes simplex virus identified in Nasopharynx by Organism specific culture | Human herpes simplex virus | Specimen from nasopharynx | Presence or identity | Nominal value | Organism specific culture |
| 38353-9 | Streptococcus sp identified in Specimen by Organism specific culture | Streptococcus | Specimen | Presence or identity | Nominal value | Organism specific culture |
| 38393-5 | Legionella sp identified in Pleural fluid by Organism specific culture | Legionella | Pleural fluid specimen | Presence or identity | Nominal value | Organism specific culture |
| 38394-3 | Legionella sp identified in Urine by Organism specific culture | Legionella | Urine specimen | Presence or identity | Nominal value | Organism specific culture |
| 40435-0 | Fungus identified in Urine by Culture | Fungi | Urine specimen | Presence or identity | Nominal value | Microbial culture |
| 40436-8 | Parainfluenza virus identified in Specimen by Organism specific culture | Human parainfluenza virus | Specimen | Presence or identity | Nominal value | Organism specific culture |
| 40479-8 | Virus identified in Body fluid by Culture | Virus | Body fluid specimen | Presence or identity | Nominal value | Microbial culture |
| 40480-6 | Virus identified in Genital specimen by Culture | Virus | Specimen from genital system | Presence or identity | Nominal value | Microbial culture |
| 41026-6 | Fungus identified in Genital specimen by Culture | Fungi | Specimen from genital system | Presence or identity | Nominal value | Microbial culture |
| 43214-6 | Bacteria identified in Nasopharynx by Culture | Domain Bacteria | Specimen from nasopharynx | Presence or identity | Nominal value | Microbial culture |
| 43307-8 | Bacteria identified in Sinus by Culture | Domain Bacteria | – | Presence or identity | Nominal value | Microbial culture |
| 43365-6 | Nocardia sp identified in Specimen by Organism specific culture | Nocardia | Specimen | Presence or identity | Nominal value | Organism specific culture |
| 43383-9 | Neisseria sp identified in Throat by Organism specific culture | Neisseria | Specimen from throat | Presence or identity | Nominal value | Organism specific culture |
| 43384-7 | Neisseria sp identified in Urethra by Organism specific culture | Neisseria | Specimen from urethra | Presence or identity | Nominal value | Organism specific culture |
| 43385-4 | Neisseria sp identified in Cervix by Organism specific culture | Neisseria | Specimen from uterine cervix | Presence or identity | Nominal value | Organism specific culture |
| 43386-2 | Neisseria sp identified in Anal by Organism specific culture | Neisseria | Specimen from anus | Presence or identity | Nominal value | Organism specific culture |
| 43387-0 | Neisseria sp identified in Specimen by Organism specific culture | Neisseria | Specimen | Presence or identity | Nominal value | Organism specific culture |
| 43389-6 | Streptococcus sp identified in Isolate by Organism specific culture | Streptococcus | Microbial isolate | Presence or identity | Nominal value | Organism specific culture |
| 43407-6 | Bacteria identified in Wound deep by Culture | Domain Bacteria | Specimen from deep wound | Presence or identity | Nominal value | Microbial culture |
| 43408-4 | Bacteria identified in Tissue by Culture | Domain Bacteria | Tissue specimen | Presence or identity | Nominal value | Microbial culture |
| 43409-2 | Bacteria identified in Isolate by Culture | Domain Bacteria | Microbial isolate | Presence or identity | Nominal value | Microbial culture |
| 43410-0 | Bacteria identified in Cervix by Culture | Domain Bacteria | Specimen from uterine cervix | Presence or identity | Nominal value | Microbial culture |
| 43411-8 | Bacteria identified in Aspirate by Culture | Domain Bacteria | Specimen obtained by aspiration | Presence or identity | Nominal value | Microbial culture |
| 43426-6 | Bacteria identified in Nasopharynx by Aerobe culture | Domain Bacteria | Specimen from nasopharynx | Presence or identity | Nominal value | Aerobic culture |
| 43441-5 | Bacteria identified in Bronchoalveolar lavage by Aerobe culture | Domain Bacteria | Bronchoalveolar lavage fluid specimen | Presence or identity | Nominal value | Aerobic culture |
| 43442-3 | Bacteria identified in Bronchial brush by Aerobe culture | Domain Bacteria | Bronchial brushings specimen | Presence or identity | Nominal value | Aerobic culture |
| 43979-4 | Aspergillus sp identified in Specimen by Organism specific culture | Aspergillus | Specimen | Presence or identity | Nominal value | Organism specific culture |
| 44089-1 | Escherichia coli O157:H7 [Identifier] in Specimen by Organism specific culture | Escherichia coli serotype O157:H7 | Specimen | Presence or identity | Nominal value | Organism specific culture |
| 44093-3 | Neisseria meningitidis [Identifier] in Isolate by Organism specific culture | Neisseria meningitidis | Microbial isolate | Presence or identity | Nominal value | Organism specific culture |
| 44798-7 | Burkholderia sp identified in Specimen by Organism specific culture | Burkholderia | Specimen | Presence or identity | Nominal value | Organism specific culture |
| 44840-7 | Fungus # 5 identified in Specimen by Culture | Fungi | Specimen | Presence or identity | Nominal value | Microbial culture |
| 44841-5 | Bacteria # 2 identified in Specimen by Culture | Domain Bacteria | Specimen | Presence or identity | Nominal value | Microbial culture |
| 44842-3 | Bacteria # 3 identified in Specimen by Culture | Domain Bacteria | Specimen | Presence or identity | Nominal value | Microbial culture |
| 44843-1 | Bacteria # 2 identified in Specimen by Anaerobe culture | Domain Bacteria | Specimen | Presence or identity | Nominal value | Anaerobic culture |
| 44844-9 | Bacteria # 4 identified in Specimen by Culture | Domain Bacteria | Specimen | Presence or identity | Nominal value | Microbial culture |
| 44845-6 | Bacteria # 5 identified in Specimen by Culture | Domain Bacteria | Specimen | Presence or identity | Nominal value | Microbial culture |
| 44846-4 | Bacteria # 6 identified in Specimen by Culture | Domain Bacteria | Specimen | Presence or identity | Nominal value | Microbial culture |
| 44847-2 | Bacteria # 7 identified in Urine by Culture | Domain Bacteria | Urine specimen | Presence or identity | Nominal value | Microbial culture |
| 44848-0 | Bacteria # 7 identified in Specimen by Culture | Domain Bacteria | Specimen | Presence or identity | Nominal value | Microbial culture |
| 44849-8 | Bacteria # 8 identified in Urine by Culture | Domain Bacteria | Urine specimen | Presence or identity | Nominal value | Microbial culture |
| 44850-6 | Bacteria # 8 identified in Specimen by Culture | Domain Bacteria | Specimen | Presence or identity | Nominal value | Microbial culture |
| 44851-4 | Mycobacterium sp # 2 identified in Specimen by Organism specific culture | Mycobacterium | Specimen | Presence or identity | Nominal value | Organism specific culture |
| 44852-2 | Mycobacterium sp # 3 identified in Specimen by Organism specific culture | Mycobacterium | Specimen | Presence or identity | Nominal value | Organism specific culture |
| 44853-0 | Bacteria # 3 identified in Specimen by Anaerobe culture | Domain Bacteria | Specimen | Presence or identity | Nominal value | Anaerobic culture |
| 44854-8 | Mycobacterium sp # 4 identified in Specimen by Organism specific culture | Mycobacterium | Specimen | Presence or identity | Nominal value | Organism specific culture |
| 44855-5 | Mycobacterium sp # 5 identified in Specimen by Organism specific culture | Mycobacterium | Specimen | Presence or identity | Nominal value | Organism specific culture |
| 44856-3 | Bacteria # 4 identified in Specimen by Anaerobe culture | Domain Bacteria | Specimen | Presence or identity | Nominal value | Anaerobic culture |
| 44857-1 | Bacteria # 5 identified in Specimen by Anaerobe culture | Domain Bacteria | Specimen | Presence or identity | Nominal value | Anaerobic culture |
| 44858-9 | Bacteria # 6 identified in Specimen by Anaerobe culture | Domain Bacteria | Specimen | Presence or identity | Nominal value | Anaerobic culture |
| 44859-7 | Bacteria # 7 identified in Specimen by Anaerobe culture | Domain Bacteria | Specimen | Presence or identity | Nominal value | Anaerobic culture |
| 45097-3 | Chlamydia sp identified in Anal by Organism specific culture | Chlamydia | Specimen from anus | Presence or identity | Nominal value | Organism specific culture |
| 45098-1 | Chlamydia sp identified in Cervix by Organism specific culture | Chlamydia | Specimen from uterine cervix | Presence or identity | Nominal value | Organism specific culture |
| 45099-9 | Chlamydia sp identified in Body fluid by Organism specific culture | Chlamydia | Body fluid specimen | Presence or identity | Nominal value | Organism specific culture |
| 45100-5 | Chlamydia sp identified in Vaginal fluid by Organism specific culture | Chlamydia | Specimen from vagina | Presence or identity | Nominal value | Organism specific culture |
| 45101-3 | Chlamydia sp identified in Nasopharynx by Organism specific culture | Chlamydia | Specimen from nasopharynx | Presence or identity | Nominal value | Organism specific culture |
| 47291-0 | Fungus # 6 identified in Specimen by Culture | Fungi | Specimen | Presence or identity | Nominal value | Microbial culture |
| 47292-8 | Fungus # 7 identified in Specimen by Culture | Fungi | Specimen | Presence or identity | Nominal value | Microbial culture |
| 47293-6 | Bacteria # 7 identified in Genital specimen by Aerobe culture | Domain Bacteria | Specimen from genital system | Presence or identity | Nominal value | Aerobic culture |
| 47294-4 | Bacteria # 7 identified in Wound shallow by Aerobe culture | Domain Bacteria | Specimen from superficial wound | Presence or identity | Nominal value | Aerobic culture |
| 47295-1 | Bacteria # 8 identified in Wound shallow by Aerobe culture | Domain Bacteria | Specimen from superficial wound | Presence or identity | Nominal value | Aerobic culture |
| 48567-2 | Bacteria # 3 identified in Specimen by Aerobe culture | Domain Bacteria | Specimen | Presence or identity | Nominal value | Aerobic culture |
| 48568-0 | Bacteria # 7 identified in Specimen by Aerobe culture | Domain Bacteria | Specimen | Presence or identity | Nominal value | Aerobic culture |
| 48569-8 | Bacteria # 8 identified in Specimen by Aerobe culture | Domain Bacteria | Specimen | Presence or identity | Nominal value | Aerobic culture |
| 48724-9 | Bacteria # 3 identified in Blood by Culture | Domain Bacteria | Blood specimen | Presence or identity | Nominal value | Microbial culture |
| 48727-2 | Bacteria # 2 identified in Blood by Culture | Domain Bacteria | Blood specimen | Presence or identity | Nominal value | Microbial culture |
| 48873-4 | Ehrlichia sp identified in Specimen by Organism specific culture | Ehrlichia | Specimen | Presence or identity | Nominal value | Organism specific culture |
| 49110-0 | Mycoplasma sp identified in Urine by Organism specific culture | Genus Mycoplasma | Urine specimen | Presence or identity | Nominal value | Organism specific culture |
| 50766-5 | Fungus # 8 identified in Specimen by Culture | Fungi | Specimen | Presence or identity | Nominal value | Microbial culture |
| 51710-2 | Leishmania sp identified in Specimen by Organism specific culture | Leishmania | Specimen | Presence or identity | Nominal value | Organism specific culture |
| 52966-9 | Bacteria identified in Anal by Culture | Domain Bacteria | Specimen from anus | Presence or identity | Nominal value | Microbial culture |
| 52967-7 | Bacteria identified in Gastric fluid by Culture | Domain Bacteria | Gastric fluid specimen | Presence or identity | Nominal value | Microbial culture |
| 52973-5 | Bacteria identified in Sputum tracheal aspirate by Culture | Domain Bacteria | Sputum specimen obtained by aspiration from trachea | Presence or identity | Nominal value | Microbial culture |
| 532-2 | Mycobacterium sp identified in Aspirate by Organism specific culture | Mycobacterium | Specimen obtained by aspiration | Presence or identity | Nominal value | Organism specific culture |
| 533-0 | Mycobacterium sp identified in Blood by Organism specific culture | Mycobacterium | Blood specimen | Presence or identity | Nominal value | Organism specific culture |
| 534-8 | Mycobacterium sp identified in Cerebrospinal Fluid by Organism specific culture | Mycobacterium | Cerebrospinal fluid specimen | Presence or identity | Nominal value | Organism specific culture |
| 535-5 | Mycobacterium sp identified in Body fluid by Organism specific culture | Mycobacterium | Body fluid specimen | Presence or identity | Nominal value | Organism specific culture |
| 53558-3 | Bacteria identified in Semen by Culture | Domain Bacteria | Semen sample | Presence or identity | Nominal value | Microbial culture |
| 53571-6 | Yeast identified in Genital specimen by Organism specific culture | Yeast | Specimen from genital system | Presence or identity | Nominal value | Organism specific culture |
| 536-3 | Mycobacterium sp identified in Bone marrow by Organism specific culture | Mycobacterium | Bone marrow specimen | Presence or identity | Nominal value | Organism specific culture |
| 53614-4 | Bacteria # 2 identified in Duodenal fluid by Aerobe culture | Domain Bacteria | Duodenal fluid specimen | Presence or identity | Nominal value | Aerobic culture |
| 53615-1 | Bacteria # 3 identified in Duodenal fluid by Aerobe culture | Domain Bacteria | Duodenal fluid specimen | Presence or identity | Nominal value | Aerobic culture |
| 53616-9 | Bacteria # 4 identified in Duodenal fluid by Aerobe culture | Domain Bacteria | Duodenal fluid specimen | Presence or identity | Nominal value | Aerobic culture |
| 53617-7 | Bacteria identified in Duodenal fluid by Aerobe culture | Domain Bacteria | Duodenal fluid specimen | Presence or identity | Nominal value | Aerobic culture |
| 53645-8 | Polio virus identified in Stool by Organism specific culture | Human poliovirus | Stool specimen | Presence or identity | Nominal value | Organism specific culture |
| 537-1 | Mycobacterium sp identified in Peritoneal fluid by Organism specific culture | Mycobacterium | Peritoneal fluid specimen | Presence or identity | Nominal value | Organism specific culture |
| 538-9 | Mycobacterium sp identified in Synovial fluid by Organism specific culture | Mycobacterium | Synovial fluid specimen | Presence or identity | Nominal value | Organism specific culture |
| 539-7 | Mycobacterium sp identified in Sputum by Organism specific culture | Mycobacterium | Sputum specimen | Presence or identity | Nominal value | Organism specific culture |
| 53908-0 | Bacteria identified in Esophageal brushing by Culture | Domain Bacteria | Esophageal brushings specimen | Presence or identity | Nominal value | Microbial culture |
| 53909-8 | Mycobacterium sp identified in Pleural fluid by Organism specific culture | Mycobacterium | Pleural fluid specimen | Presence or identity | Nominal value | Organism specific culture |
| 53911-4 | Bacteria identified in Bile fluid by Culture | Domain Bacteria | Bile specimen | Presence or identity | Nominal value | Microbial culture |
| 53955-1 | Escherichia coli O157 identified in Isolate by Organism specific culture | Escherichia coli serogroup O157 | Microbial isolate | Presence or identity | Nominal value | Organism specific culture |
| 540-5 | Mycobacterium sp identified in Tissue by Organism specific culture | Mycobacterium | Tissue specimen | Presence or identity | Nominal value | Organism specific culture |
| 541-3 | Mycobacterium sp identified in Urine by Organism specific culture | Mycobacterium | Urine specimen | Presence or identity | Nominal value | Organism specific culture |
| 542-1 | Mycobacterium sp identified in Wound by Organism specific culture | Mycobacterium | Specimen from wound | Presence or identity | Nominal value | Organism specific culture |
| 543-9 | Mycobacterium sp identified in Specimen by Organism specific culture | Mycobacterium | Specimen | Presence or identity | Nominal value | Organism specific culture |
| 551-2 | Brucella sp identified in Blood by Organism specific culture | Brucella | Blood specimen | Presence or identity | Nominal value | Organism specific culture |
| 552-0 | Brucella sp identified in Specimen by Organism specific culture | Brucella | Specimen | Presence or identity | Nominal value | Organism specific culture |
| 553-8 | Candida sp identified in Saliva (oral fluid) by Organism specific culture | Candida | Saliva specimen | Presence or identity | Nominal value | Organism specific culture |
| 554-6 | Candida sp identified in Stool by Organism specific culture | Candida | Stool specimen | Presence or identity | Nominal value | Organism specific culture |
| 555-3 | Candida sp identified in Specimen by Organism specific culture | Candida | Specimen | Presence or identity | Nominal value | Organism specific culture |
| 556-1 | Chlamydia sp identified in Conjunctival specimen by Organism specific culture | Chlamydia | – | Presence or identity | Nominal value | Organism specific culture |
| 557-9 | Chlamydia sp identified in Genital specimen by Organism specific culture | Chlamydia | Specimen from genital system | Presence or identity | Nominal value | Organism specific culture |
| 558-7 | Chlamydia sp identified in Throat by Organism specific culture | Chlamydia | Specimen from throat | Presence or identity | Nominal value | Organism specific culture |
| 559-5 | Chlamydia sp identified in Urethra by Organism specific culture | Chlamydia | Specimen from urethra | Presence or identity | Nominal value | Organism specific culture |
| 560-3 | Chlamydia sp identified in Specimen by Organism specific culture | Chlamydia | Specimen | Presence or identity | Nominal value | Organism specific culture |
| 56714-9 | Bacteria identified in Contact lens by Culture | Domain Bacteria | Contact lens submitted as specimen | Presence or identity | Nominal value | Microbial culture |
| 56715-6 | Bacteria identified in Pericardial fluid by Culture | Domain Bacteria | Pericardial fluid specimen | Presence or identity | Nominal value | Microbial culture |
| 568-6 | Fungus identified in Aspirate by Culture | Fungi | Specimen obtained by aspiration | Presence or identity | Nominal value | Microbial culture |
| 569-4 | Fungus identified in Cerebrospinal Fluid by Culture | Fungi | Cerebrospinal fluid specimen | Presence or identity | Nominal value | Microbial culture |
| 570-2 | Fungus identified in Body fluid by Culture | Fungi | Body fluid specimen | Presence or identity | Nominal value | Microbial culture |
| 571-0 | Fungus identified in Hair by Culture | Fungi | Hair specimen | Presence or identity | Nominal value | Microbial culture |
| 572-8 | Fungus identified in Bone marrow by Culture | Fungi | Bone marrow specimen | Presence or identity | Nominal value | Microbial culture |
| 573-6 | Fungus identified in Nail by Culture | Fungi | Nail specimen | Presence or identity | Nominal value | Microbial culture |
| 574-4 | Fungus identified in Peritoneal fluid by Culture | Fungi | Peritoneal fluid specimen | Presence or identity | Nominal value | Microbial culture |
| 575-1 | Fungus identified in Skin by Culture | Fungi | Specimen from skin | Presence or identity | Nominal value | Microbial culture |
| 576-9 | Fungus identified in Synovial fluid by Culture | Fungi | Synovial fluid specimen | Presence or identity | Nominal value | Microbial culture |
| 577-7 | Fungus identified in Sputum by Culture | Fungi | Sputum specimen | Presence or identity | Nominal value | Microbial culture |
| 578-5 | Fungus identified in Tissue by Culture | Fungi | Tissue specimen | Presence or identity | Nominal value | Microbial culture |
| 579-3 | Fungus identified in Wound by Culture | Fungi | Specimen from wound | Presence or identity | Nominal value | Microbial culture |
| 580-1 | Fungus identified in Specimen by Culture | Fungi | Specimen | Presence or identity | Nominal value | Microbial culture |
| 5839-6 | Enterovirus identified in Cerebrospinal Fluid by Organism specific culture | Genus Enterovirus | Cerebrospinal fluid specimen | Presence or identity | Nominal value | Organism specific culture |
| 5842-0 | Enterovirus identified in Stool by Organism specific culture | Genus Enterovirus | Stool specimen | Presence or identity | Nominal value | Organism specific culture |
| 5843-8 | Enterovirus identified in Specimen by Organism specific culture | Genus Enterovirus | Specimen | Presence or identity | Nominal value | Organism specific culture |
| 5856-0 | Herpes simplex virus identified in Genital specimen by Organism specific culture | Human herpes simplex virus | Specimen from genital system | Presence or identity | Nominal value | Organism specific culture |
| 5858-6 | Herpes simplex virus identified in Skin by Organism specific culture | Human herpes simplex virus | Specimen from skin | Presence or identity | Nominal value | Organism specific culture |
| 5859-4 | Herpes simplex virus identified in Specimen by Organism specific culture | Human herpes simplex virus | Specimen | Presence or identity | Nominal value | Organism specific culture |
| 5878-4 | Rickettsia sp identified in Blood by Organism specific culture | Rickettsia | Blood specimen | Presence or identity | Nominal value | Organism specific culture |
| 5883-4 | Virus identified in Blood by Culture | Virus | Blood specimen | Presence or identity | Nominal value | Microbial culture |
| 5884-2 | Virus identified in Cerebrospinal Fluid by Culture | Virus | Cerebrospinal fluid specimen | Presence or identity | Nominal value | Microbial culture |
| 5885-9 | Virus identified in Skin by Culture | Virus | Specimen from skin | Presence or identity | Nominal value | Microbial culture |
| 5886-7 | Virus identified in Stool by Culture | Virus | Stool specimen | Presence or identity | Nominal value | Microbial culture |
| 5887-5 | Virus identified in Throat by Culture | Virus | Specimen from throat | Presence or identity | Nominal value | Microbial culture |
| 5888-3 | Virus identified in Tissue by Culture | Virus | Tissue specimen | Presence or identity | Nominal value | Microbial culture |
| 589-2 | Legionella sp identified in Bronchial specimen by Organism specific culture | Legionella | Specimen from bronchus | Presence or identity | Nominal value | Organism specific culture |
| 58940-8 | Bacteria identified in Total parental nutrition by Culture | Domain Bacteria | – | Presence or identity | Nominal value | Microbial culture |
| 590-0 | Legionella sp identified in Sputum by Organism specific culture | Legionella | Sputum specimen | Presence or identity | Nominal value | Organism specific culture |
| 59051-3 | Bacteria # 4 identified in Tissue by Anaerobe culture | Domain Bacteria | Tissue specimen | Presence or identity | Nominal value | Anaerobic culture |
| 593-4 | Legionella sp identified in Specimen by Organism specific culture | Legionella | Specimen | Presence or identity | Nominal value | Organism specific culture |
| 594-2 | Leptospira sp identified in Specimen by Organism specific culture | Leptospira | Specimen | Presence or identity | Nominal value | Organism specific culture |
| 595-9 | Bacteria identified in Abscess by Aerobe culture | Domain Bacteria | Specimen from abscess | Presence or identity | Nominal value | Aerobic culture |
| 596-7 | Bacteria identified in Amniotic fluid by Culture | Domain Bacteria | Amniotic fluid specimen | Presence or identity | Nominal value | Microbial culture |
| 597-5 | Bacteria identified in Aspirate by Aerobe culture | Domain Bacteria | Specimen obtained by aspiration | Presence or identity | Nominal value | Aerobic culture |
| 598-3 | Bacteria identified in Aspirate by Anaerobe culture | Domain Bacteria | Specimen obtained by aspiration | Presence or identity | Nominal value | Anaerobic culture |
| 599-1 | Bacteria identified in Blood product unit by Aerobe culture | Domain Bacteria | Blood product | Presence or identity | Nominal value | Aerobic culture |
| 600-7 | Bacteria identified in Blood by Culture | Domain Bacteria | Blood specimen | Presence or identity | Nominal value | Microbial culture |
| 60032-0 | Bacteria identified in Peritoneal dialysis fluid by Culture | Domain Bacteria | Peritoneal dialysate specimen | Presence or identity | Nominal value | Microbial culture |
| 601-5 | Fungus identified in Blood by Culture | Fungi | Blood specimen | Presence or identity | Nominal value | Microbial culture |
| 602-3 | Bacteria identified in Bone by Aerobe culture | Domain Bacteria | Specimen from bone | Presence or identity | Nominal value | Aerobic culture |
| 60257-3 | Bacteria identified in Cornea by Culture | Domain Bacteria | Specimen from cornea | Presence or identity | Nominal value | Microbial culture |
| 60258-1 | Bacteria identified in Bone marrow by Culture | Domain Bacteria | Bone marrow specimen | Presence or identity | Nominal value | Microbial culture |
| 603-1 | Bacteria identified in Burn by Culture | Domain Bacteria | Specimen from burn injury | Presence or identity | Nominal value | Microbial culture |
| 604-9 | Bacteria identified in Bronchial specimen by Aerobe culture | Domain Bacteria | Specimen from bronchus | Presence or identity | Nominal value | Aerobic culture |
| 605-6 | Bacteria identified in Cannula specimen by Aerobe culture | Domain Bacteria | Cannula submitted as specimen | Presence or identity | Nominal value | Aerobic culture |
| 606-4 | Bacteria identified in Cerebrospinal Fluid by Culture | Domain Bacteria | Cerebrospinal fluid specimen | Presence or identity | Nominal value | Microbial culture |
| 607-2 | Bacteria identified in Drain by Aerobe culture | Domain Bacteria | Drain device submitted as specimen | Presence or identity | Nominal value | Aerobic culture |
| 608-0 | Bacteria identified in Ear by Aerobe culture | Domain Bacteria | – | Presence or identity | Nominal value | Aerobic culture |
| 609-8 | Bacteria identified in Eye by Aerobe culture | Domain Bacteria | Specimen from eye | Presence or identity | Nominal value | Aerobic culture |
| 610-6 | Bacteria identified in Body fluid by Aerobe culture | Domain Bacteria | Body fluid specimen | Presence or identity | Nominal value | Aerobic culture |
| 611-4 | Bacteria identified in Body fluid by Culture | Domain Bacteria | Body fluid specimen | Presence or identity | Nominal value | Microbial culture |
| 617-1 | Bacteria identified in Placenta by Aerobe culture | Domain Bacteria | Specimen from placenta | Presence or identity | Nominal value | Aerobic culture |
| 618-9 | Bacteria identified in Pleural fluid by Culture | Domain Bacteria | Pleural fluid specimen | Presence or identity | Nominal value | Microbial culture |
| 619-7 | Bacteria identified in Peritoneal fluid by Culture | Domain Bacteria | Peritoneal fluid specimen | Presence or identity | Nominal value | Microbial culture |

… 178 more; the complete enumeration is in the ValueSet.

### Targeted culture — threshold presence of a named organism by culture technique

Culture requests that already name the organism (MRSA screening, VRE, Salmonella …): ordinal presence/threshold of a named organism by culture. In the 2027 module these are 'specific determination' with method = culture rather than 'general culture'. Contains 13316-5.

ValueSet [mii-vs-mikrobio-loinc-ontology-specific-culture-threshold](ValueSet-mii-vs-mikrobio-loinc-ontology-specific-culture-threshold.md).

```
<< 363787002 |Observable entity (observable entity)| : 370130000 |Property (attribute)| = (118589004 |Threshold (property) (qualifier value)| OR 705057003 |Presence (property) (qualifier value)|), 246501002 |Technique (attribute)| = << 703725008 |Culture technique (qualifier value)|, (704319004 |Inheres in (attribute)| = << 410607006 |Organism (organism)| OR 246093002 |Component (attribute)| = << 410607006 |Organism (organism)|)

```

| | |
| :--- | :--- |
| Property | Threshold OR Presence |
| Technique | `<< Culture technique` |
| Inheres in OR Component | `<< Organism` |

The rule selects **204** concepts (203 with a LOINC code, 1 without). Release 2026-03-21 → 2026-10-21: **+1 / −0** (lists on the [release delta](loinc-ontology-release-delta.md) page).

#### Codes (204)

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
| 105619-1 | Corynebacterium diphtheriae [Presence] in Throat by Culture | Corynebacterium diphtheriae | Specimen from throat | Threshold | Ordinal value | Microbial culture |
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
| 20762-1 | Clostridioides difficile [Presence] in Stool by Aerobe culture | Clostridioides difficile | Stool specimen | Threshold | Ordinal value | Aerobic culture |
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
| 82298-1 | Yersinia enterocolitica [Presence] in Specimen by Culture | Yersinia enterocolitica | Specimen | Threshold | Ordinal value | Microbial culture |
| 82300-5 | Shigella sp [Presence] in Stool by Culture | Shigella | Stool specimen | Threshold | Ordinal value | Microbial culture |
| 82301-3 | Salmonella sp [Presence] in Stool by Culture | Salmonella | Stool specimen | Threshold | Ordinal value | Microbial culture |
| 82302-1 | Campylobacter sp [Presence] in Stool by Culture | Campylobacter | Stool specimen | Threshold | Ordinal value | Microbial culture |
| 82303-9 | Escherichia coli O157 [Presence] in Stool by Culture | Escherichia coli serogroup O157 | Stool specimen | Threshold | Ordinal value | Microbial culture |
| 82304-7 | Plesiomonas shigelloides [Presence] in Stool by Culture | Plesiomonas shigelloides | Stool specimen | Threshold | Ordinal value | Microbial culture |
| 86319-1 | Staphylococcus aureus [Presence] in Food by Culture | Staphylococcus aureus | Food specimen | Threshold | Ordinal value | Microbial culture |
| 86322-5 | Enterovirus [Presence] in Specimen by Organism specific culture | Genus Enterovirus | Specimen | Threshold | Ordinal value | Organism specific culture |
| 86581-6 | Neisseria meningitidis [Presence] in Cerebrospinal Fluid by Organism specific culture | Neisseria meningitidis | Cerebrospinal fluid specimen | Threshold | Ordinal value | Organism specific culture |
| 87241-6 | Bacillus atrophaeus [Presence] in Laboratory device by Culture | Bacillus atrophaeus | – | Threshold | Ordinal value | Microbial culture |
| 87242-4 | Geobacillus stearothermophilus [Presence] in Laboratory device by Culture | Geobacillus stearothermophilus | – | Threshold | Ordinal value | Microbial culture |
| 87445-3 | Fungus [Presence] in Food by Culture | Fungi | Food specimen | Threshold | Ordinal value | Microbial culture |
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

### Everything by culture technique (upper bound)

Candidate pool: every observable with a culture technique regardless of property (identity, threshold, colony counts, susceptibility by culture). Upper bound for review.

ValueSet [mii-vs-mikrobio-loinc-ontology-culture-any-property](ValueSet-mii-vs-mikrobio-loinc-ontology-culture-any-property.md).

```
<< 363787002 |Observable entity (observable entity)| : 246501002 |Technique (attribute)| = << 703725008 |Culture technique (qualifier value)|

```

| | |
| :--- | :--- |
| Technique | `<< Culture technique` |

The rule selects **788** concepts (786 with a LOINC code, 2 without). Release 2026-03-21 → 2026-10-21: **+16 / −0** (lists on the [release delta](loinc-ontology-release-delta.md) page).

#### Codes (788)

| | | | | | | | |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| 100897-8 | Staphylococcus aureus [Presence] in Specimen by Organism specific culture | Staphylococcus aureus | – | Specimen | Threshold | Ordinal value | Organism specific culture |
| 100905-9 | Gram positive bacteria identified in Isolate by Organism specific culture | – | Gram-positive bacteria | Microbial isolate | Presence or identity | Nominal value | Organism specific culture |
| 100906-7 | Bacteria [#/volume] in Urine by Culture | Domain Bacteria | – | Urine specimen | Number concentration | Quantitative value | Microbial culture |
| 100907-5 | Vancomycin resistant enterococcus [Identifier] in Specimen by Organism specific culture | – | Vancomycin resistant Enterococcus | Specimen | Presence or identity | Nominal value | Organism specific culture |
| 100908-3 | Pseudomonas aeruginosa [Presence] in Lower respiratory specimen by Organism specific culture | Pseudomonas aeruginosa | – | Lower respiratory tract specimen | Threshold | Ordinal value | Organism specific culture |
| 100909-1 | Cronobacter sakazakii [Presence] by Organism specific culture | Cronobacter sakazakii | – | Specimen from environment | Threshold | Ordinal value | Organism specific culture |
| 100911-7 | Campylobacter sp [Presence] in Stool by Organism specific culture | Campylobacter | – | Stool specimen | Threshold | Ordinal value | Organism specific culture |
| 10352-3 | Bacteria identified in Genital specimen by Aerobe culture | – | Domain Bacteria | Specimen from genital system | Presence or identity | Nominal value | Aerobic culture |
| 10353-1 | Bacteria identified in Nose by Aerobe culture | – | Domain Bacteria | Specimen from nose | Presence or identity | Nominal value | Aerobic culture |
| 10354-9 | Bacteria identified in Urethra by Culture | – | Domain Bacteria | Specimen from urethra | Presence or identity | Nominal value | Microbial culture |
| 104343-9 | Borna disease virus [Presence] in Specimen by Organism specific culture | Orthobornavirus bornaense | – | Specimen | Threshold | Ordinal value | Organism specific culture |
| 104347-0 | Borrelia recurrentis [Presence] in Cerebrospinal Fluid by Organism specific culture | Borrelia recurrentis | – | Cerebrospinal fluid specimen | Threshold | Ordinal value | Organism specific culture |
| 104349-6 | Borrelia recurrentis [Presence] in Blood by Organism specific culture | Borrelia recurrentis | – | Blood specimen | Threshold | Ordinal value | Organism specific culture |
| 104351-2 | Borrelia recurrentis [Presence] in Specimen by Organism specific culture | Borrelia recurrentis | – | Specimen | Threshold | Ordinal value | Organism specific culture |
| 104371-0 | Corynebacterium pseudotuberculosis [Presence] in Specimen by Organism specific culture | Corynebacterium pseudotuberculosis | – | Specimen | Threshold | Ordinal value | Organism specific culture |
| 104372-8 | Corynebacterium pseudotuberculosis [Presence] in Upper respiratory specimen by Organism specific culture | Corynebacterium pseudotuberculosis | – | Upper respiratory specimen | Threshold | Ordinal value | Organism specific culture |
| 104373-6 | Corynebacterium ulcerans [Presence] in Specimen by Organism specific culture | Corynebacterium ulcerans | – | Specimen | Threshold | Ordinal value | Organism specific culture |
| 104374-4 | Corynebacterium ulcerans [Presence] in Upper respiratory specimen by Organism specific culture | Corynebacterium ulcerans | – | Upper respiratory specimen | Threshold | Ordinal value | Organism specific culture |
| 105224-0 | Mycobacterium sp identified in Pericardial fluid by Organism specific culture | – | Mycobacterium | Pericardial fluid specimen | Presence or identity | Nominal value | Organism specific culture |
| 105225-7 | Mycobacterium sp identified in Pus by Organism specific culture | – | Mycobacterium | Pus specimen | Presence or identity | Nominal value | Organism specific culture |
| 105289-3 | Fungus identified in Catheter tip by Culture | – | Fungi | Catheter tip submitted as specimen | Presence or identity | Nominal value | Microbial culture |
| 105604-3 | Aeromonas sp identified in Specimen by Organism specific culture | – | Aeromonas | Specimen | Presence or identity | Nominal value | Organism specific culture |
| 105605-0 | Bacteria # 2 identified in Catheter tip by Aerobe culture | – | Domain Bacteria | Catheter tip submitted as specimen | Presence or identity | Nominal value | Aerobic culture |
| 105606-8 | Bacteria # 2 identified in Catheter tip by Anaerobe culture | – | Domain Bacteria | Catheter tip submitted as specimen | Presence or identity | Nominal value | Anaerobic culture |
| 105607-6 | Bacteria # 3 identified in Catheter tip by Aerobe culture | – | Domain Bacteria | Catheter tip submitted as specimen | Presence or identity | Nominal value | Aerobic culture |
| 105608-4 | Bacteria # 3 identified in Catheter tip by Anaerobe culture | – | Domain Bacteria | Catheter tip submitted as specimen | Presence or identity | Nominal value | Anaerobic culture |
| 105610-0 | Bacteria [#/volume] in Bronchoalveolar lavage by Culture | Domain Bacteria | – | Bronchoalveolar lavage fluid specimen | Number concentration | Quantitative value | Microbial culture |
| 105618-3 | Fungus identified in Throat by Culture | – | Fungi | Specimen from throat | Presence or identity | Nominal value | Microbial culture |
| 105619-1 | Corynebacterium diphtheriae [Presence] in Throat by Culture | Corynebacterium diphtheriae | – | Specimen from throat | Threshold | Ordinal value | Microbial culture |
| 105622-5 | Aeromonas sp [Presence] in Stool by Organism specific culture | Aeromonas | – | Stool specimen | Threshold | Ordinal value | Organism specific culture |
| 105917-9 | Bacteria identified in Bronchoalveolar lavage by Culture | – | Domain Bacteria | Bronchoalveolar lavage fluid specimen | Presence or identity | Nominal value | Microbial culture |
| 105924-5 | Bacteria identified in Surgical wound by Culture | – | Domain Bacteria | – | Presence or identity | Nominal value | Microbial culture |
| 105925-2 | Bacteria identified in Periumbilical by Aerobe culture | – | Domain Bacteria | – | Presence or identity | Nominal value | Aerobic culture |
| 105926-0 | Mycobacterium sp identified in Stool by Organism specific culture | – | Mycobacterium | Stool specimen | Presence or identity | Nominal value | Organism specific culture |
| 105932-8 | Bacteria identified in Bronchial specimen by Culture | – | Domain Bacteria | Specimen from bronchus | Presence or identity | Nominal value | Microbial culture |
| 105933-6 | Bacteria identified in Surgical wound by Anaerobe culture | – | Domain Bacteria | – | Presence or identity | Nominal value | Anaerobic culture |
| 106016-9 | Bacteria identified in Penis by Culture | – | Domain Bacteria | Specimen from penis | Presence or identity | Nominal value | Microbial culture |
| 106017-7 | Fungus identified in Preputial barnacle sulcus by Culture | – | Fungi | – | Presence or identity | Nominal value | Microbial culture |
| 106018-5 | Bacteria [#/volume] in Semen by Culture | Domain Bacteria | – | Semen sample | Number concentration | Quantitative value | Microbial culture |
| 106024-3 | Fungus identified in Vaginal fluid by Culture | – | Fungi | Specimen from vagina | Presence or identity | Nominal value | Microbial culture |
| 106032-6 | Bacteria identified in Pus by Culture | – | Domain Bacteria | Pus specimen | Presence or identity | Nominal value | Microbial culture |
| 106033-4 | Bacteria identified in Pus by Anaerobe culture | – | Domain Bacteria | Pus specimen | Presence or identity | Nominal value | Anaerobic culture |
| 106034-2 | Fungus identified in Pus by Culture | – | Fungi | Pus specimen | Presence or identity | Nominal value | Microbial culture |
| 106036-7 | Bacteria identified in Fistula by Culture | – | Domain Bacteria | – | Presence or identity | Nominal value | Microbial culture |
| 106037-5 | Bacteria identified in Fistula by Anaerobe culture | – | Domain Bacteria | – | Presence or identity | Nominal value | Anaerobic culture |
| 106038-3 | Fungus identified in Wound shallow by Culture | – | Fungi | Specimen from superficial wound | Presence or identity | Nominal value | Microbial culture |
| 106039-1 | Fungus identified in Wound deep by Culture | – | Fungi | Specimen from deep wound | Presence or identity | Nominal value | Microbial culture |
| 106041-7 | Fungus identified in Ear fluid by Culture | – | Fungi | – | Presence or identity | Nominal value | Microbial culture |
| 106042-5 | Bacteria identified in Mother's milk by Culture | – | Domain Bacteria | Mother's milk specimen | Presence or identity | Nominal value | Microbial culture |
| 106044-1 | Methicillin resistant Staphylococcus aureus [Presence] in Skin by Organism specific culture | Methicillin resistant Staphylococcus aureus | – | Specimen from skin | Threshold | Ordinal value | Organism specific culture |
| 106045-8 | Fungus identified in Bile fluid by Culture | – | Fungi | Bile specimen | Presence or identity | Nominal value | Microbial culture |
| 106046-6 | Methicillin resistant Staphylococcus aureus [Presence] in Axilla by Organism specific culture | Methicillin resistant Staphylococcus aureus | – | – | Threshold | Ordinal value | Organism specific culture |
| 10635-1 | Acanthamoeba sp identified in Eye by Organism specific culture | – | Acanthamoeba | Specimen from eye | Presence or identity | Nominal value | Organism specific culture |
| 10639-3 | Thermophilic Actinomycetes identified in Specimen by Organism specific culture | – | Thermophilic actinomycetes | Specimen | Presence or identity | Nominal value | Organism specific culture |
| 10643-5 | Amoeba identified in Stool by Organism specific culture | – | Amoeba | Stool specimen | Presence or identity | Nominal value | Organism specific culture |
| 10670-8 | Giardia lamblia [Presence] in Stool by Organism specific culture | Giardia duodenalis | – | Stool specimen | Threshold | Ordinal value | Organism specific culture |
| 10687-2 | Leishmania sp identified in Tissue by Organism specific culture | – | Leishmania | Tissue specimen | Presence or identity | Nominal value | Organism specific culture |
| 10713-6 | Prototheca identified in Specimen by Culture | – | Prototheca | Specimen | Presence or identity | Nominal value | Microbial culture |
| 107176-0 | Legionella sp identified in Aspirate by Organism specific culture | – | Legionella | Specimen obtained by aspiration | Presence or identity | Nominal value | Organism specific culture |
| 107177-8 | Mycobacterium sp identified in Skin by Organism specific culture | – | Mycobacterium | Specimen from skin | Presence or identity | Nominal value | Organism specific culture |
| 107178-6 | Mycobacterium sp identified in Semen by Organism specific culture | – | Mycobacterium | Semen sample | Presence or identity | Nominal value | Organism specific culture |
| 107179-4 | Mycobacterium sp identified in Drain by Organism specific culture | – | Mycobacterium | Drain device submitted as specimen | Presence or identity | Nominal value | Organism specific culture |
| 107180-2 | Mycobacterium sp identified in Abscess by Organism specific culture | – | Mycobacterium | Specimen from abscess | Presence or identity | Nominal value | Organism specific culture |
| 107181-0 | Fungus identified in Urethra by Culture | – | Fungi | Specimen from urethra | Presence or identity | Nominal value | Microbial culture |
| 107182-8 | Fungus identified in Semen by Culture | – | Fungi | Semen sample | Presence or identity | Nominal value | Microbial culture |
| 107183-6 | Mycobacterium sp identified in Amniotic fluid by Organism specific culture | – | Mycobacterium | Amniotic fluid specimen | Presence or identity | Nominal value | Organism specific culture |
| 107186-9 | Fungus # 2 identified in Blood by Culture | – | Fungi | Blood specimen | Presence or identity | Nominal value | Microbial culture |
| 107187-7 | Fungus # 3 identified in Blood by Culture | – | Fungi | Blood specimen | Presence or identity | Nominal value | Microbial culture |
| 107188-5 | Bacteria identified in Abscess by Anaerobe culture | – | Domain Bacteria | Specimen from abscess | Presence or identity | Nominal value | Anaerobic culture |
| 10728-4 | Trichomonas sp identified in Genital specimen by Organism specific culture | – | Trichomonas | Specimen from genital system | Presence or identity | Nominal value | Organism specific culture |
| 10730-0 | Trypanosoma sp identified in Blood by Organism specific culture | – | Genus Trypanosoma | Blood specimen | Presence or identity | Nominal value | Organism specific culture |
| 10851-4 | Escherichia coli O157:H7 [Presence] in Stool by Organism specific culture | Escherichia coli serotype O157:H7 | – | Stool specimen | Threshold | Ordinal value | Organism specific culture |
| 10860-5 | Varicella zoster virus [Presence] in Specimen by Organism specific culture | Varicellovirus humanalpha3 | – | Specimen | Threshold | Ordinal value | Organism specific culture |
| 111515-3 | Fungus identified in Prostatic fluid by Culture | – | Fungi | Prostatic fluid specimen | Presence or identity | Nominal value | Microbial culture |
| 112406-4 | Mycoplasma sp identified in Prostatic fluid by Organism specific culture | – | Genus Mycoplasma | Prostatic fluid specimen | Presence or identity | Nominal value | Organism specific culture |
| 11255-7 | Haemophilus ducreyi [Presence] in Specimen by Organism specific culture | Haemophilus ducreyi | – | Specimen | Threshold | Ordinal value | Organism specific culture |
| 11261-5 | Bacteria identified in Vaginal fluid by Aerobe culture | – | Domain Bacteria | Specimen from vagina | Presence or identity | Nominal value | Aerobic culture |
| 11267-2 | Streptococcus.beta-hemolytic [Presence] in Genital specimen by Organism specific culture | Beta-hemolytic Streptococcus | – | Specimen from genital system | Threshold | Ordinal value | Organism specific culture |
| 11268-0 | Streptococcus pyogenes [Presence] in Throat by Organism specific culture | Streptococcus pyogenes | – | Specimen from throat | Threshold | Ordinal value | Organism specific culture |
| 112851-1 | Bacteria identified in Surgical wound.shallow by Culture | – | Domain Bacteria | – | Presence or identity | Nominal value | Microbial culture |
| 112852-9 | Bacteria identified in Surgical wound.deep by Culture | – | Domain Bacteria | – | Presence or identity | Nominal value | Microbial culture |
| 112888-3 | Neisseria gonorrhoeae [Presence] in Penis by Organism specific culture | Neisseria gonorrhoeae | – | Specimen from penis | Threshold | Ordinal value | Organism specific culture |
| 112889-1 | Fungus identified in Penis by Culture | – | Fungi | Specimen from penis | Presence or identity | Nominal value | Microbial culture |
| 112891-7 | Bacteria identified in Ear by Culture | – | Domain Bacteria | – | Presence or identity | Nominal value | Microbial culture |
| 112896-6 | Actinomyces sp identified in Bronchoalveolar lavage by Organism specific culture | – | Actinomyces | Bronchoalveolar lavage fluid specimen | Presence or identity | Nominal value | Organism specific culture |
| 112897-4 | Nocardia sp identified in Bronchoalveolar lavage by Organism specific culture | – | Nocardia | Bronchoalveolar lavage fluid specimen | Presence or identity | Nominal value | Organism specific culture |
| 112898-2 | Legionella sp identified in Bronchoalveolar lavage by Organism specific culture | – | Legionella | Bronchoalveolar lavage fluid specimen | Presence or identity | Nominal value | Organism specific culture |
| 113006-1 | Fungus identified in Drain by Culture | – | Fungi | Drain device submitted as specimen | Presence or identity | Nominal value | Microbial culture |
| 113007-9 | Bacteria identified in Drain by Culture | – | Domain Bacteria | Drain device submitted as specimen | Presence or identity | Nominal value | Microbial culture |
| 113009-5 | Bacteria identified in Drain by Anaerobe culture | – | Domain Bacteria | Drain device submitted as specimen | Presence or identity | Nominal value | Anaerobic culture |
| 11469-4 | Bacillus anthracis [Presence] in Specimen by Organism specific culture | Bacillus anthracis | – | Specimen | Threshold | Ordinal value | Organism specific culture |
| 11475-1 | Microorganism identified in Specimen by Culture | – | Organism | Specimen | Presence or identity | Nominal value | Microbial culture |
| 11484-3 | Virus identified in Amniotic fluid by Culture | – | Virus | Amniotic fluid specimen | Presence or identity | Nominal value | Microbial culture |
| 11550-1 | Borrelia burgdorferi [Presence] in Specimen by Organism specific culture | Borreliella burgdorferi | – | Specimen | Threshold | Ordinal value | Organism specific culture |
| 12281-2 | Bacteria identified in Cervix by Anaerobe culture | – | Domain Bacteria | Specimen from uterine cervix | Presence or identity | Nominal value | Anaerobic culture |
| 13315-7 | Bacteria identified in 24 hour Urine by Culture | – | Domain Bacteria | Urine specimen | Presence or identity | Nominal value | Microbial culture |
| 13316-5 | Vancomycin resistant enterococcus [Presence] in Specimen by Organism specific culture | Vancomycin resistant Enterococcus | – | Specimen | Threshold | Ordinal value | Organism specific culture |
| 13317-3 | Methicillin resistant Staphylococcus aureus [Presence] in Specimen by Organism specific culture | Methicillin resistant Staphylococcus aureus | – | Specimen | Threshold | Ordinal value | Organism specific culture |
| 13318-1 | Escherichia coli enteroinvasive identified in Stool by Organism specific culture | – | Enteroinvasive Escherichia coli | Stool specimen | Presence or identity | Nominal value | Organism specific culture |
| 13921-2 | Mumps virus [Presence] in Specimen by Organism specific culture | Orthorubulavirus parotitidis | – | Specimen | Threshold | Ordinal value | Organism specific culture |
| 14093-9 | Bacteria identified in Water by Culture | – | Domain Bacteria | Water specimen | Presence or identity | Nominal value | Microbial culture |
| 14127-5 | Neisseria gonorrhoeae [Presence] in Anal by Organism specific culture | Neisseria gonorrhoeae | – | Specimen from anus | Threshold | Ordinal value | Organism specific culture |
| 14129-1 | Respiratory syncytial virus [Presence] in Nose by Organism specific culture | Human respiratory syncytial virus | – | Specimen from nose | Threshold | Ordinal value | Organism specific culture |
| 14226-5 | Nocardia sp identified in Isolate by Organism specific culture | – | Nocardia | Microbial isolate | Presence or identity | Nominal value | Organism specific culture |
| 14451-9 | Virus identified in Eye by Culture | – | Virus | Specimen from eye | Presence or identity | Nominal value | Microbial culture |
| 14452-7 | Virus identified in Cervix by Culture | – | Virus | Specimen from uterine cervix | Presence or identity | Nominal value | Microbial culture |
| 14453-5 | Virus identified in Vaginal fluid by Culture | – | Virus | Specimen from vagina | Presence or identity | Nominal value | Microbial culture |
| 14454-3 | Virus identified in Nose by Culture | – | Virus | Specimen from nose | Presence or identity | Nominal value | Microbial culture |
| 14455-0 | Virus identified in Pleural fluid by Culture | – | Virus | Pleural fluid specimen | Presence or identity | Nominal value | Microbial culture |
| 14456-8 | Virus identified in Peritoneal fluid by Culture | – | Virus | Peritoneal fluid specimen | Presence or identity | Nominal value | Microbial culture |
| 14457-6 | Virus identified in Urine by Culture | – | Virus | Urine specimen | Presence or identity | Nominal value | Microbial culture |
| 14458-4 | Virus identified in Sputum by Culture | – | Virus | Sputum specimen | Presence or identity | Nominal value | Microbial culture |
| 14459-2 | Virus identified in Penis by Culture | – | Virus | Specimen from penis | Presence or identity | Nominal value | Microbial culture |
| 14460-0 | Virus identified in Urethra by Culture | – | Virus | Specimen from urethra | Presence or identity | Nominal value | Microbial culture |
| 14461-8 | Chlamydia trachomatis [Presence] in Blood by Organism specific culture | Chlamydia trachomatis | – | Blood specimen | Threshold | Ordinal value | Organism specific culture |
| 14462-6 | Chlamydia trachomatis [Presence] in Cerebrospinal Fluid by Organism specific culture | Chlamydia trachomatis | – | Cerebrospinal fluid specimen | Threshold | Ordinal value | Organism specific culture |
| 14463-4 | Chlamydia trachomatis [Presence] in Cervix by Organism specific culture | Chlamydia trachomatis | – | Specimen from uterine cervix | Threshold | Ordinal value | Organism specific culture |
| 14464-2 | Chlamydia trachomatis [Presence] in Vaginal fluid by Organism specific culture | Chlamydia trachomatis | – | Specimen from vagina | Threshold | Ordinal value | Organism specific culture |
| 14465-9 | Chlamydia trachomatis [Presence] in Urethra by Organism specific culture | Chlamydia trachomatis | – | Specimen from urethra | Threshold | Ordinal value | Organism specific culture |
| 14467-5 | Chlamydia trachomatis [Presence] in Urine sediment by Organism specific culture | Chlamydia trachomatis | – | Urine sediment specimen | Threshold | Ordinal value | Organism specific culture |
| 14475-8 | Bacteria identified in Cervix by Aerobe culture | – | Domain Bacteria | Specimen from uterine cervix | Presence or identity | Nominal value | Aerobic culture |
| 14477-4 | Bacteria identified in Urethra by Aerobe culture | – | Domain Bacteria | Specimen from urethra | Presence or identity | Nominal value | Aerobic culture |
| 14478-2 | Bacteria identified in Penis by Aerobe culture | – | Domain Bacteria | Specimen from penis | Presence or identity | Nominal value | Aerobic culture |
| 14838-7 | Toxoplasma gondii [Presence] in Tissue by Organism specific culture | Toxoplasma gondii | – | Tissue specimen | Threshold | Ordinal value | Organism specific culture |
| 15378-3 | Fungus identified in Isolate by Culture | – | Fungi | Microbial isolate | Presence or identity | Nominal value | Microbial culture |
| 15388-2 | Mycoplasma hominis [Presence] in Specimen by Organism specific culture | Metamycoplasma hominis | – | Specimen | Threshold | Ordinal value | Organism specific culture |
| 16134-9 | Neisseria meningitidis [Presence] in Specimen by Organism specific culture | Neisseria meningitidis | – | Specimen | Threshold | Ordinal value | Organism specific culture |
| 16291-7 | Herpes simplex virus 1 [Presence] in Specimen by Organism specific culture | Human alphaherpesvirus 1 | – | Specimen | Threshold | Ordinal value | Organism specific culture |
| 16483-0 | Borrelia hermsii [Presence] in Specimen by Organism specific culture | Borrelia hermsii | – | Specimen | Threshold | Ordinal value | Organism specific culture |
| 16676-9 | Corynebacterium diphtheriae [Presence] in Specimen by Organism specific culture | Corynebacterium diphtheriae | – | Specimen | Threshold | Ordinal value | Organism specific culture |
| 16832-8 | Escherichia coli enterotoxic identified in Stool by Organism specific culture | – | Enterotoxigenic Escherichia coli | Stool specimen | Presence or identity | Nominal value | Organism specific culture |
| 16835-1 | Escherichia coli shiga-like toxin identified in Stool by Organism specific culture | – | Shiga toxin | Stool specimen | Presence or identity | Nominal value | Organism specific culture |
| 17279-1 | Bacteria identified in Pleural fluid by Aerobe culture | – | Domain Bacteria | Pleural fluid specimen | Presence or identity | Nominal value | Aerobic culture |
| 17520-8 | Respiratory syncytial virus identified in Specimen by Organism specific culture | – | Human respiratory syncytial virus | Specimen | Presence or identity | Nominal value | Organism specific culture |
| 17530-7 | Retrovirus identified in Specimen by Organism specific culture | – | Family Retroviridae | Specimen | Presence or identity | Nominal value | Organism specific culture |
| 17563-8 | Salmonella sp identified in Specimen by Organism specific culture | – | Salmonella | Specimen | Presence or identity | Nominal value | Organism specific culture |
| 17576-0 | Shigella sp identified in Specimen by Organism specific culture | – | Shigella | Specimen | Presence or identity | Nominal value | Organism specific culture |
| 17656-0 | Streptococcus pyogenes [Presence] in Specimen by Organism specific culture | Streptococcus pyogenes | – | Specimen | Threshold | Ordinal value | Organism specific culture |
| 17852-5 | Ureaplasma urealyticum [Presence] in Specimen by Organism specific culture | Ureaplasma urealyticum | – | Specimen | Threshold | Ordinal value | Organism specific culture |
| 17873-1 | Bacteria # 2 identified in Bone by Aerobe culture | – | Domain Bacteria | Specimen from bone | Presence or identity | Nominal value | Aerobic culture |
| 17874-9 | Bacteria # 3 identified in Bone by Aerobe culture | – | Domain Bacteria | Specimen from bone | Presence or identity | Nominal value | Aerobic culture |
| 17875-6 | Bacteria # 4 identified in Bone by Aerobe culture | – | Domain Bacteria | Specimen from bone | Presence or identity | Nominal value | Aerobic culture |
| 17876-4 | Bacteria # 5 identified in Bone by Aerobe culture | – | Domain Bacteria | Specimen from bone | Presence or identity | Nominal value | Aerobic culture |
| 17877-2 | Bacteria # 6 identified in Bone by Aerobe culture | – | Domain Bacteria | Specimen from bone | Presence or identity | Nominal value | Aerobic culture |
| 17878-0 | Bacteria # 2 identified in Bronchial specimen by Aerobe culture | – | Domain Bacteria | Specimen from bronchus | Presence or identity | Nominal value | Aerobic culture |
| 17879-8 | Bacteria # 3 identified in Bronchial specimen by Aerobe culture | – | Domain Bacteria | Specimen from bronchus | Presence or identity | Nominal value | Aerobic culture |
| 17880-6 | Bacteria # 4 identified in Bronchial specimen by Aerobe culture | – | Domain Bacteria | Specimen from bronchus | Presence or identity | Nominal value | Aerobic culture |
| 17881-4 | Bacteria # 5 identified in Bronchial specimen by Aerobe culture | – | Domain Bacteria | Specimen from bronchus | Presence or identity | Nominal value | Aerobic culture |
| 17882-2 | Bacteria # 6 identified in Bronchial specimen by Aerobe culture | – | Domain Bacteria | Specimen from bronchus | Presence or identity | Nominal value | Aerobic culture |
| 17883-0 | Bacteria # 2 identified in Genital specimen by Aerobe culture | – | Domain Bacteria | Specimen from genital system | Presence or identity | Nominal value | Aerobic culture |
| 17884-8 | Bacteria # 3 identified in Genital specimen by Aerobe culture | – | Domain Bacteria | Specimen from genital system | Presence or identity | Nominal value | Aerobic culture |
| 17885-5 | Bacteria # 4 identified in Genital specimen by Aerobe culture | – | Domain Bacteria | Specimen from genital system | Presence or identity | Nominal value | Aerobic culture |
| 17886-3 | Bacteria # 5 identified in Genital specimen by Aerobe culture | – | Domain Bacteria | Specimen from genital system | Presence or identity | Nominal value | Aerobic culture |
| 17887-1 | Bacteria # 6 identified in Genital specimen by Aerobe culture | – | Domain Bacteria | Specimen from genital system | Presence or identity | Nominal value | Aerobic culture |
| 17888-9 | Bacteria # 2 identified in Nose by Aerobe culture | – | Domain Bacteria | Specimen from nose | Presence or identity | Nominal value | Aerobic culture |
| 17889-7 | Bacteria # 3 identified in Nose by Aerobe culture | – | Domain Bacteria | Specimen from nose | Presence or identity | Nominal value | Aerobic culture |
| 17890-5 | Bacteria # 4 identified in Nose by Aerobe culture | – | Domain Bacteria | Specimen from nose | Presence or identity | Nominal value | Aerobic culture |
| 17891-3 | Bacteria # 5 identified in Nose by Aerobe culture | – | Domain Bacteria | Specimen from nose | Presence or identity | Nominal value | Aerobic culture |
| 17892-1 | Bacteria # 6 identified in Nose by Aerobe culture | – | Domain Bacteria | Specimen from nose | Presence or identity | Nominal value | Aerobic culture |
| 17893-9 | Bacteria # 2 identified in Sputum by Aerobe culture | – | Domain Bacteria | Sputum specimen | Presence or identity | Nominal value | Aerobic culture |
| 17894-7 | Bacteria # 3 identified in Sputum by Aerobe culture | – | Domain Bacteria | Sputum specimen | Presence or identity | Nominal value | Aerobic culture |
| 17895-4 | Bacteria # 4 identified in Sputum by Aerobe culture | – | Domain Bacteria | Sputum specimen | Presence or identity | Nominal value | Aerobic culture |
| 17896-2 | Bacteria # 5 identified in Sputum by Aerobe culture | – | Domain Bacteria | Sputum specimen | Presence or identity | Nominal value | Aerobic culture |
| 17897-0 | Bacteria # 6 identified in Sputum by Aerobe culture | – | Domain Bacteria | Sputum specimen | Presence or identity | Nominal value | Aerobic culture |
| 17898-8 | Bacteria identified in Throat by Aerobe culture | – | Domain Bacteria | Specimen from throat | Presence or identity | Nominal value | Aerobic culture |
| 17899-6 | Bacteria # 2 identified in Throat by Aerobe culture | – | Domain Bacteria | Specimen from throat | Presence or identity | Nominal value | Aerobic culture |
| 17900-2 | Bacteria # 3 identified in Throat by Aerobe culture | – | Domain Bacteria | Specimen from throat | Presence or identity | Nominal value | Aerobic culture |
| 17901-0 | Bacteria # 4 identified in Throat by Aerobe culture | – | Domain Bacteria | Specimen from throat | Presence or identity | Nominal value | Aerobic culture |
| 17902-8 | Bacteria # 5 identified in Throat by Aerobe culture | – | Domain Bacteria | Specimen from throat | Presence or identity | Nominal value | Aerobic culture |
| 17903-6 | Bacteria # 6 identified in Throat by Aerobe culture | – | Domain Bacteria | Specimen from throat | Presence or identity | Nominal value | Aerobic culture |
| 17904-4 | Bacteria # 2 identified in Tissue by Aerobe culture | – | Domain Bacteria | Tissue specimen | Presence or identity | Nominal value | Aerobic culture |
| 17905-1 | Bacteria # 3 identified in Tissue by Aerobe culture | – | Domain Bacteria | Tissue specimen | Presence or identity | Nominal value | Aerobic culture |
| 17906-9 | Bacteria # 4 identified in Tissue by Aerobe culture | – | Domain Bacteria | Tissue specimen | Presence or identity | Nominal value | Aerobic culture |
| 17907-7 | Bacteria # 5 identified in Tissue by Aerobe culture | – | Domain Bacteria | Tissue specimen | Presence or identity | Nominal value | Aerobic culture |
| 17908-5 | Bacteria # 6 identified in Tissue by Aerobe culture | – | Domain Bacteria | Tissue specimen | Presence or identity | Nominal value | Aerobic culture |
| 17909-3 | Bacteria identified in Wound deep by Aerobe culture | – | Domain Bacteria | Specimen from deep wound | Presence or identity | Nominal value | Aerobic culture |
| 17910-1 | Bacteria # 2 identified in Wound deep by Aerobe culture | – | Domain Bacteria | Specimen from deep wound | Presence or identity | Nominal value | Aerobic culture |
| 17911-9 | Bacteria # 3 identified in Wound deep by Aerobe culture | – | Domain Bacteria | Specimen from deep wound | Presence or identity | Nominal value | Aerobic culture |
| 17912-7 | Bacteria # 4 identified in Wound deep by Aerobe culture | – | Domain Bacteria | Specimen from deep wound | Presence or identity | Nominal value | Aerobic culture |
| 17913-5 | Bacteria # 5 identified in Wound deep by Aerobe culture | – | Domain Bacteria | Specimen from deep wound | Presence or identity | Nominal value | Aerobic culture |
| 17914-3 | Bacteria # 6 identified in Wound deep by Aerobe culture | – | Domain Bacteria | Specimen from deep wound | Presence or identity | Nominal value | Aerobic culture |
| 17915-0 | Bacteria identified in Wound shallow by Aerobe culture | – | Domain Bacteria | Specimen from superficial wound | Presence or identity | Nominal value | Aerobic culture |
| 17916-8 | Bacteria # 2 identified in Wound shallow by Aerobe culture | – | Domain Bacteria | Specimen from superficial wound | Presence or identity | Nominal value | Aerobic culture |
| 17917-6 | Bacteria # 3 identified in Wound shallow by Aerobe culture | – | Domain Bacteria | Specimen from superficial wound | Presence or identity | Nominal value | Aerobic culture |
| 17918-4 | Bacteria # 4 identified in Wound shallow by Aerobe culture | – | Domain Bacteria | Specimen from superficial wound | Presence or identity | Nominal value | Aerobic culture |
| 17919-2 | Bacteria # 5 identified in Wound shallow by Aerobe culture | – | Domain Bacteria | Specimen from superficial wound | Presence or identity | Nominal value | Aerobic culture |
| 17920-0 | Bacteria # 6 identified in Wound shallow by Aerobe culture | – | Domain Bacteria | Specimen from superficial wound | Presence or identity | Nominal value | Aerobic culture |
| 17921-8 | Bacteria # 2 identified in Nose by Anaerobe culture | – | Domain Bacteria | Specimen from nose | Presence or identity | Nominal value | Anaerobic culture |
| 17922-6 | Bacteria # 3 identified in Nose by Anaerobe culture | – | Domain Bacteria | Specimen from nose | Presence or identity | Nominal value | Anaerobic culture |
| 17923-4 | Bacteria # 2 identified in Tissue by Anaerobe culture | – | Domain Bacteria | Tissue specimen | Presence or identity | Nominal value | Anaerobic culture |
| 17924-2 | Bacteria # 3 identified in Tissue by Anaerobe culture | – | Domain Bacteria | Tissue specimen | Presence or identity | Nominal value | Anaerobic culture |
| 17925-9 | Bacteria identified in Wound deep by Anaerobe culture | – | Domain Bacteria | Specimen from deep wound | Presence or identity | Nominal value | Anaerobic culture |
| 17926-7 | Bacteria # 2 identified in Wound deep by Anaerobe culture | – | Domain Bacteria | Specimen from deep wound | Presence or identity | Nominal value | Anaerobic culture |
| 17927-5 | Bacteria # 3 identified in Wound deep by Anaerobe culture | – | Domain Bacteria | Specimen from deep wound | Presence or identity | Nominal value | Anaerobic culture |
| 17928-3 | Bacteria identified in Blood by Aerobe culture | – | Domain Bacteria | Blood specimen | Presence or identity | Nominal value | Aerobic culture |
| 17929-1 | Bacteria # 2 identified in Blood by Aerobe culture | – | Domain Bacteria | Blood specimen | Presence or identity | Nominal value | Aerobic culture |
| 17930-9 | Bacteria # 3 identified in Blood by Aerobe culture | – | Domain Bacteria | Blood specimen | Presence or identity | Nominal value | Aerobic culture |
| 17931-7 | Bacteria # 4 identified in Blood by Aerobe culture | – | Domain Bacteria | Blood specimen | Presence or identity | Nominal value | Aerobic culture |
| 17932-5 | Bacteria # 5 identified in Blood by Aerobe culture | – | Domain Bacteria | Blood specimen | Presence or identity | Nominal value | Aerobic culture |
| 17933-3 | Bacteria # 6 identified in Blood by Aerobe culture | – | Domain Bacteria | Blood specimen | Presence or identity | Nominal value | Aerobic culture |
| 17934-1 | Bacteria identified in Blood by Anaerobe culture | – | Domain Bacteria | Blood specimen | Presence or identity | Nominal value | Anaerobic culture |
| 17935-8 | Bacteria # 2 identified in Blood by Anaerobe culture | – | Domain Bacteria | Blood specimen | Presence or identity | Nominal value | Anaerobic culture |
| 17936-6 | Bacteria # 3 identified in Blood by Anaerobe culture | – | Domain Bacteria | Blood specimen | Presence or identity | Nominal value | Anaerobic culture |
| 17937-4 | Bacteria # 2 identified in Burn by Culture | – | Domain Bacteria | Specimen from burn injury | Presence or identity | Nominal value | Microbial culture |
| 17938-2 | Bacteria # 3 identified in Burn by Culture | – | Domain Bacteria | Specimen from burn injury | Presence or identity | Nominal value | Microbial culture |
| 17939-0 | Bacteria # 4 identified in Burn by Culture | – | Domain Bacteria | Specimen from burn injury | Presence or identity | Nominal value | Microbial culture |
| 17940-8 | Bacteria # 5 identified in Burn by Culture | – | Domain Bacteria | Specimen from burn injury | Presence or identity | Nominal value | Microbial culture |
| 17941-6 | Bacteria # 6 identified in Burn by Culture | – | Domain Bacteria | Specimen from burn injury | Presence or identity | Nominal value | Microbial culture |
| 17947-3 | Fungus # 2 identified in Specimen by Culture | – | Fungi | Specimen | Presence or identity | Nominal value | Microbial culture |
| 17948-1 | Fungus # 3 identified in Specimen by Culture | – | Fungi | Specimen | Presence or identity | Nominal value | Microbial culture |
| 17949-9 | Fungus # 4 identified in Specimen by Culture | – | Fungi | Specimen | Presence or identity | Nominal value | Microbial culture |
| 17951-5 | Bacteria # 2 identified in Body fluid by Aerobe culture | – | Domain Bacteria | Body fluid specimen | Presence or identity | Nominal value | Aerobic culture |
| 17952-3 | Bacteria # 3 identified in Body fluid by Aerobe culture | – | Domain Bacteria | Body fluid specimen | Presence or identity | Nominal value | Aerobic culture |
| 17953-1 | Bacteria # 4 identified in Body fluid by Aerobe culture | – | Domain Bacteria | Body fluid specimen | Presence or identity | Nominal value | Aerobic culture |
| 17954-9 | Bacteria # 5 identified in Body fluid by Aerobe culture | – | Domain Bacteria | Body fluid specimen | Presence or identity | Nominal value | Aerobic culture |
| 17955-6 | Bacteria # 6 identified in Body fluid by Aerobe culture | – | Domain Bacteria | Body fluid specimen | Presence or identity | Nominal value | Aerobic culture |
| 17956-4 | Bacteria identified in Body fluid by Anaerobe culture | – | Domain Bacteria | Body fluid specimen | Presence or identity | Nominal value | Anaerobic culture |
| 17957-2 | Bacteria # 2 identified in Body fluid by Anaerobe culture | – | Domain Bacteria | Body fluid specimen | Presence or identity | Nominal value | Anaerobic culture |
| 17958-0 | Bacteria # 3 identified in Body fluid by Anaerobe culture | – | Domain Bacteria | Body fluid specimen | Presence or identity | Nominal value | Anaerobic culture |
| 17959-8 | Bacteria # 2 identified in Peritoneal fluid by Culture | – | Domain Bacteria | Peritoneal fluid specimen | Presence or identity | Nominal value | Microbial culture |
| 17960-6 | Bacteria # 3 identified in Peritoneal fluid by Culture | – | Domain Bacteria | Peritoneal fluid specimen | Presence or identity | Nominal value | Microbial culture |
| 17961-4 | Bacteria # 4 identified in Peritoneal fluid by Culture | – | Domain Bacteria | Peritoneal fluid specimen | Presence or identity | Nominal value | Microbial culture |
| 17962-2 | Bacteria # 5 identified in Peritoneal fluid by Culture | – | Domain Bacteria | Peritoneal fluid specimen | Presence or identity | Nominal value | Microbial culture |
| 17963-0 | Bacteria # 6 identified in Peritoneal fluid by Culture | – | Domain Bacteria | Peritoneal fluid specimen | Presence or identity | Nominal value | Microbial culture |
| 17964-8 | Bacteria # 2 identified in Stool by Culture | – | Domain Bacteria | Stool specimen | Presence or identity | Nominal value | Microbial culture |
| 17965-5 | Bacteria # 3 identified in Stool by Culture | – | Domain Bacteria | Stool specimen | Presence or identity | Nominal value | Microbial culture |
| 17966-3 | Bacteria # 4 identified in Stool by Culture | – | Domain Bacteria | Stool specimen | Presence or identity | Nominal value | Microbial culture |
| 17967-1 | Bacteria # 5 identified in Stool by Culture | – | Domain Bacteria | Stool specimen | Presence or identity | Nominal value | Microbial culture |
| 17968-9 | Bacteria # 6 identified in Stool by Culture | – | Domain Bacteria | Stool specimen | Presence or identity | Nominal value | Microbial culture |
| 17970-5 | Bacteria # 2 identified in Urine by Culture | – | Domain Bacteria | Urine specimen | Presence or identity | Nominal value | Microbial culture |
| 17971-3 | Bacteria # 3 identified in Urine by Culture | – | Domain Bacteria | Urine specimen | Presence or identity | Nominal value | Microbial culture |
| 17972-1 | Bacteria # 4 identified in Urine by Culture | – | Domain Bacteria | Urine specimen | Presence or identity | Nominal value | Microbial culture |
| 17973-9 | Bacteria # 5 identified in Urine by Culture | – | Domain Bacteria | Urine specimen | Presence or identity | Nominal value | Microbial culture |
| 17974-7 | Bacteria # 6 identified in Urine by Culture | – | Domain Bacteria | Urine specimen | Presence or identity | Nominal value | Microbial culture |
| 17975-4 | Virus # 2 identified in Specimen by Culture | – | Virus | Specimen | Presence or identity | Nominal value | Microbial culture |
| 17976-2 | Virus # 3 identified in Specimen by Culture | – | Virus | Specimen | Presence or identity | Nominal value | Microbial culture |
| 18482-0 | Yeast [Presence] in Specimen by Organism specific culture | Yeast | – | Specimen | Threshold | Ordinal value | Organism specific culture |
| 18483-8 | Yeast [Presence] in Genital specimen by Organism specific culture | Yeast | – | Specimen from genital system | Threshold | Ordinal value | Organism specific culture |
| 19054-6 | Mycoplasma pneumoniae [Presence] in Specimen by Organism specific culture | Mycoplasmoides pneumoniae | – | Specimen | Threshold | Ordinal value | Organism specific culture |
| 19126-2 | Bacteria identified in Bone marrow by Aerobe culture | – | Domain Bacteria | Bone marrow specimen | Presence or identity | Nominal value | Aerobic culture |
| 19128-8 | Bacteria identified in Catheter tip by Culture | – | Domain Bacteria | Catheter tip submitted as specimen | Presence or identity | Nominal value | Microbial culture |
| 20688-8 | Aspergillus sp identified in Litter by Organism specific culture | – | Aspergillus | – | Presence or identity | Nominal value | Organism specific culture |
| 20693-8 | Bacteria identified in Litter by Aerobe culture | – | Domain Bacteria | – | Presence or identity | Nominal value | Aerobic culture |
| 20694-6 | Bacteria identified in Embryo by Aerobe culture | – | Domain Bacteria | – | Presence or identity | Nominal value | Aerobic culture |
| 20696-1 | Bifidobacterium sp [#/volume] in Milk by Organism specific culture | Bifidobacterium | – | Milk specimen | Number concentration | Quantitative value | Organism specific culture |
| 20734-0 | Brucella sp identified in Tissue by Organism specific culture | – | Brucella | Tissue specimen | Presence or identity | Nominal value | Organism specific culture |
| 20735-7 | Brucella sp identified in Milk by Organism specific culture | – | Brucella | Milk specimen | Presence or identity | Nominal value | Organism specific culture |
| 20738-1 | Campylobacter sp identified in Isolate by Organism specific culture | – | Campylobacter | Microbial isolate | Presence or identity | Nominal value | Organism specific culture |
| 20739-9 | Campylobacter sp identified in Body fluid by Organism specific culture | – | Campylobacter | Body fluid specimen | Presence or identity | Nominal value | Organism specific culture |
| 20740-7 | Campylobacter sp identified in Tissue by Organism specific culture | – | Campylobacter | Tissue specimen | Presence or identity | Nominal value | Organism specific culture |
| 20752-2 | Chlamydophila psittaci [Presence] in Specimen by Organism specific culture | Chlamydia psittaci | – | Specimen | Threshold | Ordinal value | Organism specific culture |
| 20762-1 | Clostridioides difficile [Presence] in Stool by Aerobe culture | Clostridioides difficile | – | Stool specimen | Threshold | Ordinal value | Aerobic culture |
| 20869-4 | Leptospira sp [Presence] in Tissue by Organism specific culture | Leptospira | – | Tissue specimen | Threshold | Ordinal value | Organism specific culture |
| 20870-2 | Listeria sp [Presence] in Milk by Organism specific culture | Listeria | – | Milk specimen | Threshold | Ordinal value | Organism specific culture |
| 20871-0 | Listeria sp [Presence] in Cheese by Organism specific culture | Listeria | – | – | Threshold | Ordinal value | Organism specific culture |
| 20878-5 | Bacteria identified in Isolate by Anaerobe culture | – | Domain Bacteria | Microbial isolate | Presence or identity | Nominal value | Anaerobic culture |
| 20879-3 | Bacteria identified in Milk by Aerobe culture | – | Domain Bacteria | Milk specimen | Presence or identity | Nominal value | Aerobic culture |
| 20898-3 | Mycoplasma sp [Presence] in Milk by Organism specific culture | Genus Mycoplasma | – | Milk specimen | Threshold | Ordinal value | Organism specific culture |
| 20899-1 | Mycoplasma sp [Presence] in Exudate by Organism specific culture | Genus Mycoplasma | – | Exudate specimen | Threshold | Ordinal value | Organism specific culture |
| 20955-1 | Salmonella sp identified in Stool by Organism specific culture | – | Salmonella | Stool specimen | Presence or identity | Nominal value | Organism specific culture |
| 20964-3 | Shigella sp identified in Feed by Organism specific culture | – | Shigella | – | Presence or identity | Nominal value | Organism specific culture |
| 20966-8 | Staphylococcus sp identified in Specimen by Organism specific culture | – | Staphylococcus | Specimen | Presence or identity | Nominal value | Organism specific culture |
| 20967-6 | Staphylococcus sp identified in Milk by Organism specific culture | – | Staphylococcus | Milk specimen | Presence or identity | Nominal value | Organism specific culture |
| 20968-4 | Staphylococcus sp identified in Cheese by Organism specific culture | – | Staphylococcus | – | Presence or identity | Nominal value | Organism specific culture |
| 20987-4 | Yersinia sp identified in Dairy product by Organism specific culture | – | Yersinia | – | Presence or identity | Nominal value | Organism specific culture |
| 21184-7 | Chlamydophila pneumoniae [Presence] in Specimen by Organism specific culture | Chlamydia pneumoniae | – | Specimen | Threshold | Ordinal value | Organism specific culture |
| 21284-5 | Gardnerella vaginalis [Presence] in Genital specimen by Organism specific culture | Gardnerella vaginalis | – | Specimen from genital system | Threshold | Ordinal value | Organism specific culture |
| 21442-9 | Parainfluenza virus identified in Nose by Organism specific culture | – | Human parainfluenza virus | Specimen from nose | Presence or identity | Nominal value | Organism specific culture |
| 23594-5 | Brucella sp identified in Semen by Organism specific culture | – | Brucella | Semen sample | Presence or identity | Nominal value | Organism specific culture |
| 23599-4 | Leptospira sp identified in Tissue by Organism specific culture | – | Leptospira | Tissue specimen | Presence or identity | Nominal value | Organism specific culture |
| 23600-0 | Leptospira sp identified in Milk by Organism specific culture | – | Leptospira | Milk specimen | Presence or identity | Nominal value | Organism specific culture |
| 23602-6 | Salmonella enteritidis [Presence] in Stool by Organism specific culture | Salmonella Enteritidis | – | Stool specimen | Threshold | Ordinal value | Organism specific culture |
| 24003-6 | Brucella sp identified in Bone marrow by Organism specific culture | – | Brucella | Bone marrow specimen | Presence or identity | Nominal value | Organism specific culture |
| 24005-1 | Chlamydia sp identified in Bronchial specimen by Organism specific culture | – | Chlamydia | Specimen from bronchus | Presence or identity | Nominal value | Organism specific culture |
| 24009-3 | Fungus identified in Bronchial specimen by Culture | – | Fungi | Specimen from bronchus | Presence or identity | Nominal value | Microbial culture |
| 27414-2 | Fungus identified in Stool by Culture | – | Fungi | Stool specimen | Presence or identity | Nominal value | Microbial culture |
| 27907-5 | Cryptosporidium sp [Identifier] in Stool by Organism specific culture | – | Cryptosporidium | Stool specimen | Presence or identity | Nominal value | Organism specific culture |
| 28549-4 | Yersinia sp identified in Stool by Organism specific culture | – | Yersinia | Stool specimen | Presence or identity | Nominal value | Organism specific culture |
| 30045-9 | Mycobacterium sp identified in Dialysis fluid by Organism specific culture | – | Mycobacterium | Dialysate specimen | Presence or identity | Nominal value | Organism specific culture |
| 30099-6 | Neisseria gonorrhoeae [Presence] in Conjunctival specimen by Organism specific culture | Neisseria gonorrhoeae | – | – | Threshold | Ordinal value | Organism specific culture |
| 30122-6 | Aeromonas sp [Presence] in Specimen by Organism specific culture | Aeromonas | – | Specimen | Threshold | Ordinal value | Organism specific culture |
| 32367-5 | Bacteria identified in Isolate by Aerobe culture | – | Domain Bacteria | Microbial isolate | Presence or identity | Nominal value | Aerobic culture |
| 32368-3 | Ureaplasma sp identified in Specimen by Organism specific culture | – | Ureaplasma | Specimen | Presence or identity | Nominal value | Organism specific culture |
| 32675-1 | Cytomegalovirus [Presence] in Bronchial specimen by Organism specific culture | Cytomegalovirus | – | Specimen from bronchus | Threshold | Ordinal value | Organism specific culture |
| 32689-2 | Herpes simplex virus identified in Eye by Organism specific culture | – | Human herpes simplex virus | Specimen from eye | Presence or identity | Nominal value | Organism specific culture |
| 33676-8 | Francisella tularensis [Presence] in Specimen by Organism specific culture | Francisella tularensis | – | Specimen | Threshold | Ordinal value | Organism specific culture |
| 33677-6 | Francisella tularensis [Presence] in Isolate by Organism specific culture | Francisella tularensis | – | Microbial isolate | Threshold | Ordinal value | Organism specific culture |
| 33685-9 | Yersinia pestis [Presence] in Specimen by Organism specific culture | Yersinia pestis | – | Specimen | Threshold | Ordinal value | Organism specific culture |
| 33686-7 | Yersinia pestis [Presence] in Isolate by Organism specific culture | Yersinia pestis | – | Microbial isolate | Threshold | Ordinal value | Organism specific culture |
| 33694-1 | Clostridium botulinum [Presence] in Specimen by Organism specific culture | Clostridium botulinum | – | Specimen | Threshold | Ordinal value | Organism specific culture |
| 33695-8 | Clostridium botulinum [Presence] in Isolate by Organism specific culture | Clostridium botulinum | – | Microbial isolate | Threshold | Ordinal value | Organism specific culture |
| 34201-4 | Cytomegalovirus [Presence] in Amniotic fluid by Organism specific culture | Cytomegalovirus | – | Amniotic fluid specimen | Threshold | Ordinal value | Organism specific culture |
| 34891-2 | Salmonella enteritidis [Presence] in Specimen by Organism specific culture | Salmonella Enteritidis | – | Specimen | Threshold | Ordinal value | Organism specific culture |
| 35417-5 | Herpes simplex virus identified in Anal by Organism specific culture | – | Human herpes simplex virus | Specimen from anus | Presence or identity | Nominal value | Organism specific culture |
| 35418-3 | Herpes simplex virus identified in Bronchial specimen by Organism specific culture | – | Human herpes simplex virus | Specimen from bronchus | Presence or identity | Nominal value | Organism specific culture |
| 35419-1 | Herpes simplex virus identified in Cerebrospinal Fluid by Organism specific culture | – | Human herpes simplex virus | Cerebrospinal fluid specimen | Presence or identity | Nominal value | Organism specific culture |
| 35420-9 | Herpes simplex virus identified in Cervix by Organism specific culture | – | Human herpes simplex virus | Specimen from uterine cervix | Presence or identity | Nominal value | Organism specific culture |
| 35421-7 | Herpes simplex virus identified in Ear by Organism specific culture | – | Human herpes simplex virus | – | Presence or identity | Nominal value | Organism specific culture |
| 35422-5 | Herpes simplex virus identified in Body fluid by Organism specific culture | – | Human herpes simplex virus | Body fluid specimen | Presence or identity | Nominal value | Organism specific culture |
| 35423-3 | Herpes simplex virus identified in Vaginal fluid by Organism specific culture | – | Human herpes simplex virus | Specimen from vagina | Presence or identity | Nominal value | Organism specific culture |
| 35424-1 | Herpes simplex virus identified in Penis by Organism specific culture | – | Human herpes simplex virus | Specimen from penis | Presence or identity | Nominal value | Organism specific culture |
| 35425-8 | Herpes simplex virus identified in Placenta by Organism specific culture | – | Human herpes simplex virus | Specimen from placenta | Presence or identity | Nominal value | Organism specific culture |
| 35426-6 | Herpes simplex virus identified in Pleural fluid by Organism specific culture | – | Human herpes simplex virus | Pleural fluid specimen | Presence or identity | Nominal value | Organism specific culture |
| 35427-4 | Herpes simplex virus identified in Peritoneal fluid by Organism specific culture | – | Human herpes simplex virus | Peritoneal fluid specimen | Presence or identity | Nominal value | Organism specific culture |
| 35428-2 | Herpes simplex virus identified in Synovial fluid by Organism specific culture | – | Human herpes simplex virus | Synovial fluid specimen | Presence or identity | Nominal value | Organism specific culture |
| 35429-0 | Herpes simplex virus identified in Stool by Organism specific culture | – | Human herpes simplex virus | Stool specimen | Presence or identity | Nominal value | Organism specific culture |
| 35430-8 | Herpes simplex virus identified in Throat by Organism specific culture | – | Human herpes simplex virus | Specimen from throat | Presence or identity | Nominal value | Organism specific culture |
| 35431-6 | Herpes simplex virus identified in Tissue by Organism specific culture | – | Human herpes simplex virus | Tissue specimen | Presence or identity | Nominal value | Organism specific culture |
| 35432-4 | Herpes simplex virus identified in Urine by Organism specific culture | – | Human herpes simplex virus | Urine specimen | Presence or identity | Nominal value | Organism specific culture |
| 35433-2 | Herpes simplex virus identified in Urethra by Organism specific culture | – | Human herpes simplex virus | Specimen from urethra | Presence or identity | Nominal value | Organism specific culture |
| 35434-0 | Herpes simplex virus identified in Wound by Organism specific culture | – | Human herpes simplex virus | Specimen from wound | Presence or identity | Nominal value | Organism specific culture |
| 35451-4 | Herpes simplex virus identified in Nasopharynx by Organism specific culture | – | Human herpes simplex virus | Specimen from nasopharynx | Presence or identity | Nominal value | Organism specific culture |
| 38353-9 | Streptococcus sp identified in Specimen by Organism specific culture | – | Streptococcus | Specimen | Presence or identity | Nominal value | Organism specific culture |
| 38377-8 | Cryptococcus neoformans [Presence] in Specimen by Organism specific culture | Cryptococcus neoformans | – | Specimen | Threshold | Ordinal value | Organism specific culture |
| 38382-8 | Influenza virus B [Presence] in Specimen by Organism specific culture | Influenza B virus | – | Specimen | Threshold | Ordinal value | Organism specific culture |
| 38393-5 | Legionella sp identified in Pleural fluid by Organism specific culture | – | Legionella | Pleural fluid specimen | Presence or identity | Nominal value | Organism specific culture |
| 38394-3 | Legionella sp identified in Urine by Organism specific culture | – | Legionella | Urine specimen | Presence or identity | Nominal value | Organism specific culture |
| 40435-0 | Fungus identified in Urine by Culture | – | Fungi | Urine specimen | Presence or identity | Nominal value | Microbial culture |
| 40436-8 | Parainfluenza virus identified in Specimen by Organism specific culture | – | Human parainfluenza virus | Specimen | Presence or identity | Nominal value | Organism specific culture |
| 40479-8 | Virus identified in Body fluid by Culture | – | Virus | Body fluid specimen | Presence or identity | Nominal value | Microbial culture |
| 40480-6 | Virus identified in Genital specimen by Culture | – | Virus | Specimen from genital system | Presence or identity | Nominal value | Microbial culture |
| 41026-6 | Fungus identified in Genital specimen by Culture | – | Fungi | Specimen from genital system | Presence or identity | Nominal value | Microbial culture |
| 43214-6 | Bacteria identified in Nasopharynx by Culture | – | Domain Bacteria | Specimen from nasopharynx | Presence or identity | Nominal value | Microbial culture |
| 43307-8 | Bacteria identified in Sinus by Culture | – | Domain Bacteria | – | Presence or identity | Nominal value | Microbial culture |
| 43365-6 | Nocardia sp identified in Specimen by Organism specific culture | – | Nocardia | Specimen | Presence or identity | Nominal value | Organism specific culture |
| 43383-9 | Neisseria sp identified in Throat by Organism specific culture | – | Neisseria | Specimen from throat | Presence or identity | Nominal value | Organism specific culture |
| 43384-7 | Neisseria sp identified in Urethra by Organism specific culture | – | Neisseria | Specimen from urethra | Presence or identity | Nominal value | Organism specific culture |
| 43385-4 | Neisseria sp identified in Cervix by Organism specific culture | – | Neisseria | Specimen from uterine cervix | Presence or identity | Nominal value | Organism specific culture |
| 43386-2 | Neisseria sp identified in Anal by Organism specific culture | – | Neisseria | Specimen from anus | Presence or identity | Nominal value | Organism specific culture |
| 43387-0 | Neisseria sp identified in Specimen by Organism specific culture | – | Neisseria | Specimen | Presence or identity | Nominal value | Organism specific culture |
| 43389-6 | Streptococcus sp identified in Isolate by Organism specific culture | – | Streptococcus | Microbial isolate | Presence or identity | Nominal value | Organism specific culture |
| 43407-6 | Bacteria identified in Wound deep by Culture | – | Domain Bacteria | Specimen from deep wound | Presence or identity | Nominal value | Microbial culture |
| 43408-4 | Bacteria identified in Tissue by Culture | – | Domain Bacteria | Tissue specimen | Presence or identity | Nominal value | Microbial culture |
| 43409-2 | Bacteria identified in Isolate by Culture | – | Domain Bacteria | Microbial isolate | Presence or identity | Nominal value | Microbial culture |
| 43410-0 | Bacteria identified in Cervix by Culture | – | Domain Bacteria | Specimen from uterine cervix | Presence or identity | Nominal value | Microbial culture |
| 43411-8 | Bacteria identified in Aspirate by Culture | – | Domain Bacteria | Specimen obtained by aspiration | Presence or identity | Nominal value | Microbial culture |
| 43426-6 | Bacteria identified in Nasopharynx by Aerobe culture | – | Domain Bacteria | Specimen from nasopharynx | Presence or identity | Nominal value | Aerobic culture |
| 43441-5 | Bacteria identified in Bronchoalveolar lavage by Aerobe culture | – | Domain Bacteria | Bronchoalveolar lavage fluid specimen | Presence or identity | Nominal value | Aerobic culture |
| 43442-3 | Bacteria identified in Bronchial brush by Aerobe culture | – | Domain Bacteria | Bronchial brushings specimen | Presence or identity | Nominal value | Aerobic culture |
| 43879-6 | Bordetella parapertussis [Presence] in Nasopharynx by Organism specific culture | Bordetella parapertussis | – | Specimen from nasopharynx | Threshold | Ordinal value | Organism specific culture |
| 43890-3 | Bordetella pertussis [Presence] in Sputum by Organism specific culture | Bordetella pertussis | – | Sputum specimen | Threshold | Ordinal value | Organism specific culture |
| 43896-0 | Bordetella pertussis [Presence] in Pleural fluid by Organism specific culture | Bordetella pertussis | – | Pleural fluid specimen | Threshold | Ordinal value | Organism specific culture |
| 43925-7 | Bordetella parapertussis [Presence] in Specimen by Organism specific culture | Bordetella parapertussis | – | Specimen | Threshold | Ordinal value | Organism specific culture |
| 43979-4 | Aspergillus sp identified in Specimen by Organism specific culture | – | Aspergillus | Specimen | Presence or identity | Nominal value | Organism specific culture |
| 44015-6 | Helicobacter pylori [Presence] in Gastric fluid by Organism specific culture | Helicobacter pylori | – | Gastric fluid specimen | Threshold | Ordinal value | Organism specific culture |
| 44089-1 | Escherichia coli O157:H7 [Identifier] in Specimen by Organism specific culture | – | Escherichia coli serotype O157:H7 | Specimen | Presence or identity | Nominal value | Organism specific culture |
| 44090-9 | Escherichia coli O157:H7 [Presence] in Isolate by Organism specific culture | Escherichia coli serotype O157:H7 | – | Microbial isolate | Threshold | Ordinal value | Organism specific culture |
| 44093-3 | Neisseria meningitidis [Identifier] in Isolate by Organism specific culture | – | Neisseria meningitidis | Microbial isolate | Presence or identity | Nominal value | Organism specific culture |
| 44463-8 | Herpes simplex virus 1 [Presence] in Vaginal fluid by Organism specific culture | Human alphaherpesvirus 1 | – | Specimen from vagina | Threshold | Ordinal value | Organism specific culture |
| 44464-6 | Herpes simplex virus 1 [Presence] in Skin by Organism specific culture | Human alphaherpesvirus 1 | – | Specimen from skin | Threshold | Ordinal value | Organism specific culture |
| 44465-3 | Herpes simplex virus 1 [Presence] in Genital specimen by Organism specific culture | Human alphaherpesvirus 1 | – | Specimen from genital system | Threshold | Ordinal value | Organism specific culture |
| 44466-1 | Herpes simplex virus 1 [Presence] in Throat by Organism specific culture | Human alphaherpesvirus 1 | – | Specimen from throat | Threshold | Ordinal value | Organism specific culture |
| 44467-9 | Herpes simplex virus 1 [Presence] in Cervix by Organism specific culture | Human alphaherpesvirus 1 | – | Specimen from uterine cervix | Threshold | Ordinal value | Organism specific culture |
| 44468-7 | Herpes simplex virus 1 [Presence] in Anal by Organism specific culture | Human alphaherpesvirus 1 | – | Specimen from anus | Threshold | Ordinal value | Organism specific culture |
| 44484-4 | Herpes simplex virus 2 [Presence] in Specimen by Organism specific culture | Human alphaherpesvirus 2 | – | Specimen | Threshold | Ordinal value | Organism specific culture |
| 44485-1 | Herpes simplex virus 2 [Presence] in Vaginal fluid by Organism specific culture | Human alphaherpesvirus 2 | – | Specimen from vagina | Threshold | Ordinal value | Organism specific culture |
| 44486-9 | Herpes simplex virus 2 [Presence] in Skin by Organism specific culture | Human alphaherpesvirus 2 | – | Specimen from skin | Threshold | Ordinal value | Organism specific culture |
| 44487-7 | Herpes simplex virus 2 [Presence] in Genital specimen by Organism specific culture | Human alphaherpesvirus 2 | – | Specimen from genital system | Threshold | Ordinal value | Organism specific culture |
| 44488-5 | Herpes simplex virus 2 [Presence] in Throat by Organism specific culture | Human alphaherpesvirus 2 | – | Specimen from throat | Threshold | Ordinal value | Organism specific culture |
| 44489-3 | Herpes simplex virus 2 [Presence] in Cervix by Organism specific culture | Human alphaherpesvirus 2 | – | Specimen from uterine cervix | Threshold | Ordinal value | Organism specific culture |
| 44490-1 | Herpes simplex virus 2 [Presence] in Anal by Organism specific culture | Human alphaherpesvirus 2 | – | Specimen from anus | Threshold | Ordinal value | Organism specific culture |
| 44797-9 | Brucella sp [Presence] in Specimen by Organism specific culture | Brucella | – | Specimen | Threshold | Ordinal value | Organism specific culture |
| 44798-7 | Burkholderia sp identified in Specimen by Organism specific culture | – | Burkholderia | Specimen | Presence or identity | Nominal value | Organism specific culture |
| 44799-5 | Coxiella burnetii [Presence] in Specimen by Organism specific culture | Coxiella burnetii | – | Specimen | Threshold | Ordinal value | Organism specific culture |
| 44800-1 | Burkholderia sp [Presence] in Specimen by Organism specific culture | Burkholderia | – | Specimen | Threshold | Ordinal value | Organism specific culture |
| 44840-7 | Fungus # 5 identified in Specimen by Culture | – | Fungi | Specimen | Presence or identity | Nominal value | Microbial culture |
| 44841-5 | Bacteria # 2 identified in Specimen by Culture | – | Domain Bacteria | Specimen | Presence or identity | Nominal value | Microbial culture |
| 44842-3 | Bacteria # 3 identified in Specimen by Culture | – | Domain Bacteria | Specimen | Presence or identity | Nominal value | Microbial culture |
| 44843-1 | Bacteria # 2 identified in Specimen by Anaerobe culture | – | Domain Bacteria | Specimen | Presence or identity | Nominal value | Anaerobic culture |
| 44844-9 | Bacteria # 4 identified in Specimen by Culture | – | Domain Bacteria | Specimen | Presence or identity | Nominal value | Microbial culture |
| 44845-6 | Bacteria # 5 identified in Specimen by Culture | – | Domain Bacteria | Specimen | Presence or identity | Nominal value | Microbial culture |
| 44846-4 | Bacteria # 6 identified in Specimen by Culture | – | Domain Bacteria | Specimen | Presence or identity | Nominal value | Microbial culture |
| 44847-2 | Bacteria # 7 identified in Urine by Culture | – | Domain Bacteria | Urine specimen | Presence or identity | Nominal value | Microbial culture |
| 44848-0 | Bacteria # 7 identified in Specimen by Culture | – | Domain Bacteria | Specimen | Presence or identity | Nominal value | Microbial culture |
| 44849-8 | Bacteria # 8 identified in Urine by Culture | – | Domain Bacteria | Urine specimen | Presence or identity | Nominal value | Microbial culture |
| 44850-6 | Bacteria # 8 identified in Specimen by Culture | – | Domain Bacteria | Specimen | Presence or identity | Nominal value | Microbial culture |
| 44851-4 | Mycobacterium sp # 2 identified in Specimen by Organism specific culture | – | Mycobacterium | Specimen | Presence or identity | Nominal value | Organism specific culture |
| 44852-2 | Mycobacterium sp # 3 identified in Specimen by Organism specific culture | – | Mycobacterium | Specimen | Presence or identity | Nominal value | Organism specific culture |
| 44853-0 | Bacteria # 3 identified in Specimen by Anaerobe culture | – | Domain Bacteria | Specimen | Presence or identity | Nominal value | Anaerobic culture |
| 44854-8 | Mycobacterium sp # 4 identified in Specimen by Organism specific culture | – | Mycobacterium | Specimen | Presence or identity | Nominal value | Organism specific culture |
| 44855-5 | Mycobacterium sp # 5 identified in Specimen by Organism specific culture | – | Mycobacterium | Specimen | Presence or identity | Nominal value | Organism specific culture |
| 44856-3 | Bacteria # 4 identified in Specimen by Anaerobe culture | – | Domain Bacteria | Specimen | Presence or identity | Nominal value | Anaerobic culture |
| 44857-1 | Bacteria # 5 identified in Specimen by Anaerobe culture | – | Domain Bacteria | Specimen | Presence or identity | Nominal value | Anaerobic culture |
| 44858-9 | Bacteria # 6 identified in Specimen by Anaerobe culture | – | Domain Bacteria | Specimen | Presence or identity | Nominal value | Anaerobic culture |
| 44859-7 | Bacteria # 7 identified in Specimen by Anaerobe culture | – | Domain Bacteria | Specimen | Presence or identity | Nominal value | Anaerobic culture |
| 45093-2 | Chlamydia trachomatis [Presence] in Anal by Organism specific culture | Chlamydia trachomatis | – | Specimen from anus | Threshold | Ordinal value | Organism specific culture |
| 45094-0 | Chlamydia trachomatis [Presence] in Conjunctival specimen by Organism specific culture | Chlamydia trachomatis | – | – | Threshold | Ordinal value | Organism specific culture |
| 45095-7 | Chlamydia trachomatis [Presence] in Genital specimen by Organism specific culture | Chlamydia trachomatis | – | Specimen from genital system | Threshold | Ordinal value | Organism specific culture |
| 45096-5 | Chlamydia trachomatis [Presence] in Nasopharynx by Organism specific culture | Chlamydia trachomatis | – | Specimen from nasopharynx | Threshold | Ordinal value | Organism specific culture |
| 45097-3 | Chlamydia sp identified in Anal by Organism specific culture | – | Chlamydia | Specimen from anus | Presence or identity | Nominal value | Organism specific culture |
| 45098-1 | Chlamydia sp identified in Cervix by Organism specific culture | – | Chlamydia | Specimen from uterine cervix | Presence or identity | Nominal value | Organism specific culture |
| 45099-9 | Chlamydia sp identified in Body fluid by Organism specific culture | – | Chlamydia | Body fluid specimen | Presence or identity | Nominal value | Organism specific culture |
| 45100-5 | Chlamydia sp identified in Vaginal fluid by Organism specific culture | – | Chlamydia | Specimen from vagina | Presence or identity | Nominal value | Organism specific culture |
| 45101-3 | Chlamydia sp identified in Nasopharynx by Organism specific culture | – | Chlamydia | Specimen from nasopharynx | Presence or identity | Nominal value | Organism specific culture |
| 46454-5 | Shigella sp [Presence] in Specimen by Organism specific culture | Shigella | – | Specimen | Threshold | Ordinal value | Organism specific culture |
| 47291-0 | Fungus # 6 identified in Specimen by Culture | – | Fungi | Specimen | Presence or identity | Nominal value | Microbial culture |
| 47292-8 | Fungus # 7 identified in Specimen by Culture | – | Fungi | Specimen | Presence or identity | Nominal value | Microbial culture |
| 47293-6 | Bacteria # 7 identified in Genital specimen by Aerobe culture | – | Domain Bacteria | Specimen from genital system | Presence or identity | Nominal value | Aerobic culture |
| 47294-4 | Bacteria # 7 identified in Wound shallow by Aerobe culture | – | Domain Bacteria | Specimen from superficial wound | Presence or identity | Nominal value | Aerobic culture |
| 47295-1 | Bacteria # 8 identified in Wound shallow by Aerobe culture | – | Domain Bacteria | Specimen from superficial wound | Presence or identity | Nominal value | Aerobic culture |

… 388 more; the complete enumeration is in the ValueSet.

