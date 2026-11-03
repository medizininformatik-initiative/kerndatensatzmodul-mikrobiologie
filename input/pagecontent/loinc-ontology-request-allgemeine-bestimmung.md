This page is the review material for the request family **General determination** of the [LOINC Ontology proposal](loinc-ontology-valuesets.html): every rule of the family as the LOINC Ontology 2026-10-21 resolves it, decomposed into its attributes, with the codes it selects and what the release 2026-03-21 → 2026-10-21 changed. The method is explained under [How the ValueSets are built](loinc-ontology-method.html); all families are listed under [ValueSets per request](loinc-ontology-requests.html).

Microbiology request: general determination = untargeted identification of a microorganism by any method (MII KDS Mikrobiologie 2027, profile MII_PR_Mikrobio_Allgemeine_Bestimmung, ValueSet MII_VS_Mikrobio_Allgemeine_Bestimmung_Tests_LOINC). Of the six enumerated module codes only three are in the ontology (11475-1 culture, and two sequencing/organism-group codes); the preferred 41852-5 'Microorganism or agent identified in Specimen' is NOT in the LOINC Ontology 2026-10-21. The ontology pattern is Property = Presence or identity with the organism (or organism group: Bacteria, Fungi, virus) in 'Inheres in'.

### General determination — organism identity, any technique

Nominal identification of an organism or organism group by any technique (culture, sequencing, mass spectrometry, stain) or none. Superset of the general-culture identity query.

ValueSet [mii-vs-mikrobio-loinc-ontology-organism-identity-any-technique](ValueSet-mii-vs-mikrobio-loinc-ontology-organism-identity-any-technique.html). Bound by the derived profile [mii-pr-mikrobio-loinc-ontology-allgemeine-bestimmung](StructureDefinition-mii-pr-mikrobio-loinc-ontology-allgemeine-bestimmung.html).

```
<< 363787002 |Observable entity (observable entity)| : 370130000 |Property (attribute)| = 118584009 |Presence or identity (property) (qualifier value)|, 704319004 |Inheres in (attribute)| = << 410607006 |Organism (organism)|
```

| Attribute | Value |
|---|---|
| Property | Presence or identity |
| Inheres in | `<< Organism` |

The rule selects **780** concepts (772 with a LOINC code, 8 without). Release 2026-03-21 → 2026-10-21: **+24 / −0** (lists on the [release delta](loinc-ontology-release-delta.html) page).

#### Codes (780)

| LOINC | Name | Inheres in | Direct site | Property | Scale type | Technique |
|---|---|---|---|---|---|---|
| 100905-9 | Gram positive bacteria identified in Isolate by Organism specific culture | Gram-positive bacteria | Microbial isolate | Presence or identity | Nominal value | Organism specific culture |
| 100907-5 | Vancomycin resistant enterococcus [Identifier] in Specimen by Organism specific culture | Vancomycin resistant Enterococcus | Specimen | Presence or identity | Nominal value | Organism specific culture |
| 10347-3 | Babesia microti identified in Blood by Light microscopy | Babesia microti | Blood specimen | Presence or identity | Nominal value | Light microscopy |
| 10352-3 | Bacteria identified in Genital specimen by Aerobe culture | Domain Bacteria | Specimen from genital system | Presence or identity | Nominal value | Aerobic culture |
| 10353-1 | Bacteria identified in Nose by Aerobe culture | Domain Bacteria | Specimen from nose | Presence or identity | Nominal value | Aerobic culture |
| 10354-9 | Bacteria identified in Urethra by Culture | Domain Bacteria | Specimen from urethra | Presence or identity | Nominal value | Microbial culture |
| 104553-3 | Microorganism identified by MS.MALDI-TOF in Positive blood culture | Organism | – | Presence or identity | Nominal value | Matrix assisted laser desorption ionization time of flight mass spectrometry technique |
| 105064-0 | Staphylococcus sp identified in Specimen | Staphylococcus | Specimen | Presence or identity | Nominal value | – |
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
| 10636-9 | Acanthamoeba sp identified in Eye by Wet preparation | Acanthamoeba | Specimen from eye | Presence or identity | Nominal value | Wet preparation technique |
| 10639-3 | Thermophilic Actinomycetes identified in Specimen by Organism specific culture | Thermophilic actinomycetes | Specimen | Presence or identity | Nominal value | Organism specific culture |
| 10641-9 | Amoeba identified in Aspirate by Immune stain | Amoeba | Specimen obtained by aspiration | Presence or identity | Nominal value | Immunohistochemistry |
| 10642-7 | Amoeba identified in Aspirate by Wet preparation | Amoeba | Specimen obtained by aspiration | Presence or identity | Nominal value | Wet preparation technique |
| 10643-5 | Amoeba identified in Stool by Organism specific culture | Amoeba | Stool specimen | Presence or identity | Nominal value | Organism specific culture |
| 10644-3 | Arthropod identified in Specimen | Phylum Arthropoda | Specimen | Presence or identity | Nominal value | – |
| 10646-8 | Astrovirus [Identifier] in Stool by Electron microscopy | Human astrovirus | Stool specimen | Presence or identity | Nominal value | Electron microscopy |
| 10647-6 | Babesia sp identified in Blood by Thick film | Babesia | Blood specimen | Presence or identity | Nominal value | – |
| 10648-4 | Babesia sp identified in Blood by Thin film | Babesia | Blood specimen | Presence or identity | Nominal value | – |
| 10655-9 | Coccidia identified in Duodenal fluid by Acid fast stain | Coccidia | Duodenal fluid specimen | Presence or identity | Nominal value | Acid fast stain |
| 10656-7 | Coccidia identified in Stool by Acid fast stain | Coccidia | Stool specimen | Presence or identity | Nominal value | Acid fast stain |
| 10661-7 | Dinoflagellate identified in Water by Light microscopy | Phylum Dinoflagellata | Water specimen | Presence or identity | Nominal value | Light microscopy |
| 10666-6 | Fungus identified in Tissue by Fontana-Masson stain | Fungi | Tissue specimen | Presence or identity | Nominal value | Fontana-Masson silver stain technique |
| 10667-4 | Fungus identified in Specimen by Animal inoculation | Fungi | Specimen | Presence or identity | Nominal value | – |
| 10668-2 | Fungus identified in Specimen by Environmental culture | Fungi | Specimen | Presence or identity | Nominal value | – |
| 10669-0 | Fungus identified in Specimen by Sticky tape for environmental fungus | Fungi | Specimen | Presence or identity | Nominal value | – |
| 10680-7 | Herpes simplex virus identified in Cerebrospinal Fluid by Electron microscopy | Human herpes simplex virus | Cerebrospinal fluid specimen | Presence or identity | Nominal value | Electron microscopy |
| 10681-5 | Herpes simplex virus identified in Tissue by Electron microscopy | Human herpes simplex virus | Tissue specimen | Presence or identity | Nominal value | Electron microscopy |
| 10683-1 | Hydatid cyst identified in Aspirate by Immune stain | Echinococcus granulosa larva | Specimen obtained by aspiration | Presence or identity | Nominal value | Immunohistochemistry |
| 10684-9 | Hydatid cyst identified in Liver by Wet preparation | Echinococcus granulosa larva | Specimen from liver | Presence or identity | Nominal value | Wet preparation technique |
| 10685-6 | Hydatid cyst identified in Lung tissue by Wet preparation | Echinococcus granulosa larva | Tissue specimen from lung | Presence or identity | Nominal value | Wet preparation technique |
| 10686-4 | Leishmania sp identified in Tissue by Giemsa stain | Leishmania | Tissue specimen | Presence or identity | Nominal value | Giemsa stain technique |
| 10687-2 | Leishmania sp identified in Tissue by Organism specific culture | Leishmania | Tissue specimen | Presence or identity | Nominal value | Organism specific culture |
| 10690-6 | Microsporidia identified in Duodenal fluid by Trichrome stain modified | Microsporidia | Duodenal fluid specimen | Presence or identity | Nominal value | – |
| 10696-3 | Norovirus [Identifier] in Stool by Electron microscopy | Norovirus | Stool specimen | Presence or identity | Nominal value | Electron microscopy |
| 10700-3 | Orthopoxvirus [Identifier] in Skin by Electron microscopy | Orthopoxvirus | Specimen from skin | Presence or identity | Nominal value | Electron microscopy |
| 10706-0 | Picornavirus [Identifier] in Stool by Electron microscopy | Family Picornaviridae | Stool specimen | Presence or identity | Nominal value | Electron microscopy |
| 10710-2 | Plasmodium sp identified in Blood by Thin film | Plasmodium | Blood specimen | Presence or identity | Nominal value | – |
| 10712-8 | Pneumocystis sp identified in Lung tissue | Pneumocystis | Tissue specimen from lung | Presence or identity | Nominal value | – |
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
| 10722-7 | Torovirus [Identifier] in Stool by Electron microscopy | Genus Torovirus | Stool specimen | Presence or identity | Nominal value | Electron microscopy |
| 10727-6 | Toxoplasma gondii identified in Tissue | Toxoplasma gondii | Tissue specimen | Presence or identity | Nominal value | – |
| 10728-4 | Trichomonas sp identified in Genital specimen by Organism specific culture | Trichomonas | Specimen from genital system | Presence or identity | Nominal value | Organism specific culture |
| 10729-2 | Trypanosoma sp identified in Blood by Light microscopy | Genus Trypanosoma | Blood specimen | Presence or identity | Nominal value | Light microscopy |
| 10730-0 | Trypanosoma sp identified in Blood by Organism specific culture | Genus Trypanosoma | Blood specimen | Presence or identity | Nominal value | Organism specific culture |
| 10731-8 | Trypanosoma sp identified in Blood by Thick film | Genus Trypanosoma | Blood specimen | Presence or identity | Nominal value | – |
| 10732-6 | Trypanosoma sp identified in Blood by Thin film | Genus Trypanosoma | Blood specimen | Presence or identity | Nominal value | – |
| 10733-4 | Trypanosoma sp identified in Blood by Wet preparation | Genus Trypanosoma | Blood specimen | Presence or identity | Nominal value | Wet preparation technique |
| 10734-2 | Varicella zoster virus identified in Skin by Electron microscopy | Varicellovirus humanalpha3 | Specimen from skin | Presence or identity | Nominal value | Electron microscopy |
| 10735-9 | Virus identified in Serum by Sequencing | Virus | Serum specimen | Presence or identity | Nominal value | Nucleic acid sequencing technique |
| 10736-7 | Virus identified in Cerebrospinal Fluid by Electron microscopy | Virus | Cerebrospinal fluid specimen | Presence or identity | Nominal value | Electron microscopy |
| 10737-5 | Virus identified in Stool by Electron microscopy | Virus | Stool specimen | Presence or identity | Nominal value | Electron microscopy |
| 10738-3 | Virus identified in Tissue by Electron microscopy | Virus | Tissue specimen | Presence or identity | Nominal value | Electron microscopy |
| 10739-1 | Virus identified in Specimen by Electron microscopy | Virus | Specimen | Presence or identity | Nominal value | Electron microscopy |
| 10857-1 | Microsporidia identified in Specimen by Light microscopy | Microsporidia | Specimen | Presence or identity | Nominal value | Light microscopy |
| 10859-7 | Trypanosoma sp identified in Blood by Acridine Orange + Giemsa Stain | Genus Trypanosoma | Blood specimen | Presence or identity | Nominal value | Acridine orange and Giemsa stain technique |
| 11083-3 | Human papilloma virus identified in Cervix | Human papillomavirus | Specimen from uterine cervix | Presence or identity | Nominal value | – |
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
| 113037-6 | Gram positive bacteria identified in Synovial fluid by Gram stain | Gram-positive bacteria | Synovial fluid specimen | Presence or identity | Ordinal value | Gram stain |
| 113049-1 | Gram positive bacteria identified in Pleural fluid by Gram stain | Gram-positive bacteria | Pleural fluid specimen | Presence or identity | Nominal value | Gram stain |
| 113056-6 | Gram positive bacteria identified in Peritoneal fluid by Gram stain | Gram-positive bacteria | Peritoneal fluid specimen | Presence or identity | Nominal value | Gram stain |
| 11474-4 | Hydatid cyst identified in Specimen by Wet preparation | Echinococcus granulosa larva | Specimen | Presence or identity | Nominal value | Wet preparation technique |
| 11475-1 | Microorganism identified in Specimen by Culture | Organism | Specimen | Presence or identity | Nominal value | Microbial culture |
| 11481-9 | Human papilloma virus identified in Specimen | Human papillomavirus | Specimen | Presence or identity | Nominal value | – |
| 11484-3 | Virus identified in Amniotic fluid by Culture | Virus | Amniotic fluid specimen | Presence or identity | Nominal value | Microbial culture |
| 12272-1 | Virus identified in Specimen by Immunofluorescence | Virus | Specimen | Presence or identity | Nominal value | Immunofluorescence technique |
| 12281-2 | Bacteria identified in Cervix by Anaerobe culture | Domain Bacteria | Specimen from uterine cervix | Presence or identity | Nominal value | Anaerobic culture |
| 13314-0 | Bacteria identified in Semen | Domain Bacteria | Semen sample | Presence or identity | Nominal value | – |
| 13315-7 | Bacteria identified in 24 hour Urine by Culture | Domain Bacteria | Urine specimen | Presence or identity | Nominal value | Microbial culture |
| 13318-1 | Escherichia coli enteroinvasive identified in Stool by Organism specific culture | Enteroinvasive Escherichia coli | Stool specimen | Presence or identity | Nominal value | Organism specific culture |
| 13326-4 | Pneumocystis sp identified in Specimen by Light microscopy | Pneumocystis | Specimen | Presence or identity | Nominal value | Light microscopy |
| 14093-9 | Bacteria identified in Water by Culture | Domain Bacteria | Water specimen | Presence or identity | Nominal value | Microbial culture |
| 14226-5 | Nocardia sp identified in Isolate by Organism specific culture | Nocardia | Microbial isolate | Presence or identity | Nominal value | Organism specific culture |
| 14325-5 | Bacteria identified in Specimen by Environmental culture | Domain Bacteria | Specimen | Presence or identity | Nominal value | – |
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
| 14488-1 | Virus identified in Cerebrospinal Fluid by Immunofluorescence | Virus | Cerebrospinal fluid specimen | Presence or identity | Nominal value | Immunofluorescence technique |
| 14489-9 | Virus identified in Blood by Immunofluorescence | Virus | Blood specimen | Presence or identity | Nominal value | Immunofluorescence technique |
| 14490-7 | Virus identified in Semen by Immunofluorescence | Virus | Semen sample | Presence or identity | Nominal value | Immunofluorescence technique |
| 14491-5 | Virus identified in Throat by Immunofluorescence | Virus | Specimen from throat | Presence or identity | Nominal value | Immunofluorescence technique |
| 14492-3 | Virus identified in Eye by Immunofluorescence | Virus | Specimen from eye | Presence or identity | Nominal value | Immunofluorescence technique |
| 14493-1 | Virus identified in Cervix by Immunofluorescence | Virus | Specimen from uterine cervix | Presence or identity | Nominal value | Immunofluorescence technique |
| 14494-9 | Virus identified in Vaginal fluid by Immunofluorescence | Virus | Specimen from vagina | Presence or identity | Nominal value | Immunofluorescence technique |
| 14495-6 | Virus identified in Urine sediment by Immunofluorescence | Virus | Urine sediment specimen | Presence or identity | Nominal value | Immunofluorescence technique |
| 14496-4 | Virus identified in Sputum by Immunofluorescence | Virus | Sputum specimen | Presence or identity | Nominal value | Immunofluorescence technique |
| 14497-2 | Virus identified in Penis by Immunofluorescence | Virus | Specimen from penis | Presence or identity | Nominal value | Immunofluorescence technique |
| 14498-0 | Virus identified in Urethra by Immunofluorescence | Virus | Specimen from urethra | Presence or identity | Nominal value | Immunofluorescence technique |
| 14787-6 | Arthropod identified in Specimen by Permanent mount | Phylum Arthropoda | Specimen | Presence or identity | Nominal value | – |
| 14839-5 | Trypanosoma sp identified in Buffy Coat by Light microscopy | Genus Trypanosoma | Buffy coat | Presence or identity | Nominal value | Light microscopy |
| 14840-3 | Trypanosoma sp identified in Cerebrospinal Fluid by Wet preparation | Genus Trypanosoma | Cerebrospinal fluid specimen | Presence or identity | Nominal value | Wet preparation technique |
| 15378-3 | Fungus identified in Isolate by Culture | Fungi | Microbial isolate | Presence or identity | Nominal value | Microbial culture |
| 16832-8 | Escherichia coli enterotoxic identified in Stool by Organism specific culture | Enterotoxigenic Escherichia coli | Stool specimen | Presence or identity | Nominal value | Organism specific culture |
| 17279-1 | Bacteria identified in Pleural fluid by Aerobe culture | Domain Bacteria | Pleural fluid specimen | Presence or identity | Nominal value | Aerobic culture |
| 17280-9 | Plasmodium sp identified in Tissue by Thick film | Plasmodium | Tissue specimen | Presence or identity | Nominal value | – |
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
| 17942-4 | Bacteria # 2 identified in Line specimen by IV Line culture | Domain Bacteria | – | Presence or identity | Nominal value | – |
| 17943-2 | Bacteria # 3 identified in Line specimen by IV Line culture | Domain Bacteria | – | Presence or identity | Nominal value | – |
| 17944-0 | Bacteria # 4 identified in Line specimen by IV Line culture | Domain Bacteria | – | Presence or identity | Nominal value | – |
| 17945-7 | Bacteria # 5 identified in Line specimen by IV Line culture | Domain Bacteria | – | Presence or identity | Nominal value | – |
| 17946-5 | Bacteria # 6 identified in Line specimen by IV Line culture | Domain Bacteria | – | Presence or identity | Nominal value | – |
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
| 18305-3 | Amoeba identified in Aspirate by Iron hematoxylin stain | Amoeba | Specimen obtained by aspiration | Presence or identity | Nominal value | Iron hematoxylin stain technique |
| 18306-1 | Hydatid cyst identified in Aspirate by Iron hematoxylin stain | Echinococcus granulosa larva | Specimen obtained by aspiration | Presence or identity | Nominal value | Iron hematoxylin stain technique |
| 18308-7 | Pneumocystis sp identified in Lung tissue by Immune stain | Pneumocystis | Tissue specimen from lung | Presence or identity | Nominal value | Immunohistochemistry |
| 19126-2 | Bacteria identified in Bone marrow by Aerobe culture | Domain Bacteria | Bone marrow specimen | Presence or identity | Nominal value | Aerobic culture |
| 19127-0 | Bacteria identified in Sputum by Acute Respiratory Distress (ARDS) culture | Domain Bacteria | Sputum specimen | Presence or identity | Nominal value | – |
| 19128-8 | Bacteria identified in Catheter tip by Culture | Domain Bacteria | Catheter tip submitted as specimen | Presence or identity | Nominal value | Microbial culture |
| 20474-3 | Bacteria identified in Tissue by Biopsy culture | Domain Bacteria | Tissue specimen | Presence or identity | Nominal value | – |
| 20688-8 | Aspergillus sp identified in Litter by Organism specific culture | Aspergillus | – | Presence or identity | Nominal value | Organism specific culture |
| 20693-8 | Bacteria identified in Litter by Aerobe culture | Domain Bacteria | – | Presence or identity | Nominal value | Aerobic culture |
| 20694-6 | Bacteria identified in Embryo by Aerobe culture | Domain Bacteria | – | Presence or identity | Nominal value | Aerobic culture |
| 20734-0 | Brucella sp identified in Tissue by Organism specific culture | Brucella | Tissue specimen | Presence or identity | Nominal value | Organism specific culture |
| 20735-7 | Brucella sp identified in Milk by Organism specific culture | Brucella | Milk specimen | Presence or identity | Nominal value | Organism specific culture |
| 20738-1 | Campylobacter sp identified in Isolate by Organism specific culture | Campylobacter | Microbial isolate | Presence or identity | Nominal value | Organism specific culture |
| 20739-9 | Campylobacter sp identified in Body fluid by Organism specific culture | Campylobacter | Body fluid specimen | Presence or identity | Nominal value | Organism specific culture |
| 20740-7 | Campylobacter sp identified in Tissue by Organism specific culture | Campylobacter | Tissue specimen | Presence or identity | Nominal value | Organism specific culture |
| 20877-7 | Bacteria identified in Isolate by Animal inoculation | Domain Bacteria | Microbial isolate | Presence or identity | Nominal value | – |
| 20878-5 | Bacteria identified in Isolate by Anaerobe culture | Domain Bacteria | Microbial isolate | Presence or identity | Nominal value | Anaerobic culture |
| 20879-3 | Bacteria identified in Milk by Aerobe culture | Domain Bacteria | Milk specimen | Presence or identity | Nominal value | Aerobic culture |
| 20955-1 | Salmonella sp identified in Stool by Organism specific culture | Salmonella | Stool specimen | Presence or identity | Nominal value | Organism specific culture |
| 20964-3 | Shigella sp identified in Feed by Organism specific culture | Shigella | – | Presence or identity | Nominal value | Organism specific culture |
| 20966-8 | Staphylococcus sp identified in Specimen by Organism specific culture | Staphylococcus | Specimen | Presence or identity | Nominal value | Organism specific culture |
| 20967-6 | Staphylococcus sp identified in Milk by Organism specific culture | Staphylococcus | Milk specimen | Presence or identity | Nominal value | Organism specific culture |
| 20968-4 | Staphylococcus sp identified in Cheese by Organism specific culture | Staphylococcus | – | Presence or identity | Nominal value | Organism specific culture |
| 20987-4 | Yersinia sp identified in Dairy product by Organism specific culture | Yersinia | – | Presence or identity | Nominal value | Organism specific culture |
| 21003-9 | Fungus identified in Specimen by Fungus stain | Fungi | Specimen | Presence or identity | Nominal value | Fungus stain method |
| 21020-3 | Bacteria identified in Specimen by Anaerobe+Aerobe culture | Domain Bacteria | Specimen | Presence or identity | Nominal value | – |
| 21442-9 | Parainfluenza virus identified in Nose by Organism specific culture | Human parainfluenza virus | Specimen from nose | Presence or identity | Nominal value | Organism specific culture |
| 22799-1 | Anaplasma sp identified in Tissue by Modified Giemsa stain | Anaplasma | Tissue specimen | Presence or identity | Nominal value | – |
| 22800-7 | Anaplasma sp identified in Blood by Modified Giemsa stain | Anaplasma | Blood specimen | Presence or identity | Nominal value | – |
| 22826-2 | Influenza virus A identified in Specimen by Bioassay | Influenza A virus | Specimen | Presence or identity | Nominal value | – |
| 22827-0 | Influenza virus A subtype [Identifier] in Specimen by NAA with probe detection | Influenza A virus | Specimen | Presence or identity | Nominal value | Probe with target amplification |
| 22828-8 | Influenza virus A subtype [Identifier] in Specimen by Immune diffusion (ID) | Influenza A virus | Specimen | Presence or identity | Nominal value | Immunodiffusion |
| 22832-0 | Avian paramyxovirus 1 identified in Specimen by Bioassay | Newcastle disease virus | Specimen | Presence or identity | Nominal value | – |
| 22858-5 | Babesia sp identified in Tissue by Giemsa stain | Babesia | Tissue specimen | Presence or identity | Nominal value | Giemsa stain technique |
| 23160-5 | Leishmania sp identified in Tissue by Immunofluorescence | Leishmania | Tissue specimen | Presence or identity | Nominal value | Immunofluorescence technique |
| 23161-3 | Leishmania sp identified in Tissue by Electrophoresis | Leishmania | Tissue specimen | Presence or identity | Nominal value | Electrophoresis |
| 23162-1 | Leishmania sp identified in Tissue by Polyacrylamide gel electrophoresis (PAGE) | Leishmania | Tissue specimen | Presence or identity | Nominal value | – |
| 23232-2 | Mite identified in Skin by Flotation | Mite | Specimen from skin | Presence or identity | Nominal value | – |
| 23233-0 | Mite identified in Skin by Parasite sedimentation | Mite | Specimen from skin | Presence or identity | Nominal value | – |
| 23536-6 | Trypanosoma sp identified in Blood by Concentration | Genus Trypanosoma | Blood specimen | Presence or identity | Nominal value | – |
| 23594-5 | Brucella sp identified in Semen by Organism specific culture | Brucella | Semen sample | Presence or identity | Nominal value | Organism specific culture |
| 23599-4 | Leptospira sp identified in Tissue by Organism specific culture | Leptospira | Tissue specimen | Presence or identity | Nominal value | Organism specific culture |
| 23600-0 | Leptospira sp identified in Milk by Organism specific culture | Leptospira | Milk specimen | Presence or identity | Nominal value | Organism specific culture |
| 23667-9 | Bacteria identified in Specimen | Domain Bacteria | Specimen | Presence or identity | Nominal value | – |
| 23752-9 | Mite identified in Skin | Mite | Specimen from skin | Presence or identity | Nominal value | – |
| 24003-6 | Brucella sp identified in Bone marrow by Organism specific culture | Brucella | Bone marrow specimen | Presence or identity | Nominal value | Organism specific culture |
| 24005-1 | Chlamydia sp identified in Bronchial specimen by Organism specific culture | Chlamydia | Specimen from bronchus | Presence or identity | Nominal value | Organism specific culture |
| 24009-3 | Fungus identified in Bronchial specimen by Culture | Fungi | Specimen from bronchus | Presence or identity | Nominal value | Microbial culture |
| 24412-9 | Coccidia identified in Small intestine Tissue by Giemsa stain | Coccidia | Tissue specimen from small intestine | Presence or identity | Nominal value | Giemsa stain technique |
| 27414-2 | Fungus identified in Stool by Culture | Fungi | Stool specimen | Presence or identity | Nominal value | Microbial culture |
| 27907-5 | Cryptosporidium sp [Identifier] in Stool by Organism specific culture | Cryptosporidium | Stool specimen | Presence or identity | Nominal value | Organism specific culture |
| 28549-4 | Yersinia sp identified in Stool by Organism specific culture | Yersinia | Stool specimen | Presence or identity | Nominal value | Organism specific culture |
| 30045-9 | Mycobacterium sp identified in Dialysis fluid by Organism specific culture | Mycobacterium | Dialysate specimen | Presence or identity | Nominal value | Organism specific culture |
| 32206-5 | Plasmodium sp identified in Blood by Light microscopy | Plasmodium | Blood specimen | Presence or identity | Nominal value | Light microscopy |
| 32355-0 | Bacteria identified in Specimen by Respiratory culture | Domain Bacteria | Specimen | Presence or identity | Nominal value | – |
| 32367-5 | Bacteria identified in Isolate by Aerobe culture | Domain Bacteria | Microbial isolate | Presence or identity | Nominal value | Aerobic culture |
| 32368-3 | Ureaplasma sp identified in Specimen by Organism specific culture | Ureaplasma | Specimen | Presence or identity | Nominal value | Organism specific culture |
| 32689-2 | Herpes simplex virus identified in Eye by Organism specific culture | Human herpes simplex virus | Specimen from eye | Presence or identity | Nominal value | Organism specific culture |
| 32701-5 | Microsporidia identified in Stool by Trichrome stain modified | Microsporidia | Stool specimen | Presence or identity | Nominal value | – |
| 32809-6 | Fungus identified in Bronchial specimen by Fungus stain | Fungi | Specimen from bronchus | Presence or identity | Nominal value | Fungus stain method |
| 32810-4 | Bacteria identified in Bronchial specimen | Domain Bacteria | Specimen from bronchus | Presence or identity | Nominal value | – |
| 32819-5 | Microsporidia identified in Stool by Trichrome stain | Microsporidia | Stool specimen | Presence or identity | Nominal value | Trichrome stain |
| 33038-1 | Candida sp identified in Vaginal fluid by Cyto stain | Candida | Specimen from vagina | Presence or identity | Nominal value | Cytology stain |
| 33039-9 | Fungus identified in Body fluid by Fungus stain | Fungi | Body fluid specimen | Presence or identity | Nominal value | Fungus stain method |
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
| 40698-3 | Mycoplasma sp identified in Specimen | Genus Mycoplasma | Specimen | Presence or identity | Nominal value | – |
| 40699-1 | Mycobacterium sp identified in Specimen | Mycobacterium | Specimen | Presence or identity | Nominal value | – |
| 40958-1 | Cryptosporidium parvum identified in Stool | Cryptosporidium parvum | Stool specimen | Presence or identity | Nominal value | – |
| 41026-6 | Fungus identified in Genital specimen by Culture | Fungi | Specimen from genital system | Presence or identity | Nominal value | Microbial culture |
| 41454-0 | Human coronavirus identified in Specimen | Human coronavirus | Specimen | Presence or identity | Nominal value | – |
| 41461-5 | Virus identified in Specimen | Virus | Specimen | Presence or identity | Nominal value | – |
| 42343-4 | Toxoplasma gondii identified in Specimen by Other stain | Toxoplasma gondii | Specimen | Presence or identity | Nominal value | Staining technique |
| 42661-9 | Bacteria identified in Isolate by Pulsed-Field Gel Electrophoresis (PFGE) | Domain Bacteria | Microbial isolate | Presence or identity | Nominal value | – |
| 42803-7 | Bacteria identified in Isolate | Domain Bacteria | Microbial isolate | Presence or identity | Nominal value | – |
| 42804-5 | Fungus identified in Isolate | Fungi | Microbial isolate | Presence or identity | Nominal value | – |
| 42805-2 | Fungus identified in Specimen | Fungi | Specimen | Presence or identity | Nominal value | – |
| 42808-6 | Virus identified in Isolate | Virus | Microbial isolate | Presence or identity | Nominal value | – |
| 43214-6 | Bacteria identified in Nasopharynx by Culture | Domain Bacteria | Specimen from nasopharynx | Presence or identity | Nominal value | Microbial culture |
| 43307-8 | Bacteria identified in Sinus by Culture | Domain Bacteria | – | Presence or identity | Nominal value | Microbial culture |
| 43364-9 | Enterovirus identified in Specimen by Immunofluorescence | Genus Enterovirus | Specimen | Presence or identity | Nominal value | Immunofluorescence technique |
| 43365-6 | Nocardia sp identified in Specimen by Organism specific culture | Nocardia | Specimen | Presence or identity | Nominal value | Organism specific culture |
| 43383-9 | Neisseria sp identified in Throat by Organism specific culture | Neisseria | Specimen from throat | Presence or identity | Nominal value | Organism specific culture |
| 43384-7 | Neisseria sp identified in Urethra by Organism specific culture | Neisseria | Specimen from urethra | Presence or identity | Nominal value | Organism specific culture |
| 43385-4 | Neisseria sp identified in Cervix by Organism specific culture | Neisseria | Specimen from uterine cervix | Presence or identity | Nominal value | Organism specific culture |
| 43386-2 | Neisseria sp identified in Anal by Organism specific culture | Neisseria | Specimen from anus | Presence or identity | Nominal value | Organism specific culture |
| 43387-0 | Neisseria sp identified in Specimen by Organism specific culture | Neisseria | Specimen | Presence or identity | Nominal value | Organism specific culture |
| 43389-6 | Streptococcus sp identified in Isolate by Organism specific culture | Streptococcus | Microbial isolate | Presence or identity | Nominal value | Organism specific culture |
| 43390-4 | Streptococcus sp identified in Isolate | Streptococcus | Microbial isolate | Presence or identity | Nominal value | – |
| 43407-6 | Bacteria identified in Wound deep by Culture | Domain Bacteria | Specimen from deep wound | Presence or identity | Nominal value | Microbial culture |
| 43408-4 | Bacteria identified in Tissue by Culture | Domain Bacteria | Tissue specimen | Presence or identity | Nominal value | Microbial culture |
| 43409-2 | Bacteria identified in Isolate by Culture | Domain Bacteria | Microbial isolate | Presence or identity | Nominal value | Microbial culture |
| 43410-0 | Bacteria identified in Cervix by Culture | Domain Bacteria | Specimen from uterine cervix | Presence or identity | Nominal value | Microbial culture |
| 43411-8 | Bacteria identified in Aspirate by Culture | Domain Bacteria | Specimen obtained by aspiration | Presence or identity | Nominal value | Microbial culture |
| 43426-6 | Bacteria identified in Nasopharynx by Aerobe culture | Domain Bacteria | Specimen from nasopharynx | Presence or identity | Nominal value | Aerobic culture |
| 43441-5 | Bacteria identified in Bronchoalveolar lavage by Aerobe culture | Domain Bacteria | Bronchoalveolar lavage fluid specimen | Presence or identity | Nominal value | Aerobic culture |
| 43442-3 | Bacteria identified in Bronchial brush by Aerobe culture | Domain Bacteria | Bronchial brushings specimen | Presence or identity | Nominal value | Aerobic culture |
| 43693-1 | Varicella zoster virus identified in Skin by Shell vial culture | Varicellovirus humanalpha3 | Specimen from skin | Presence or identity | Nominal value | – |
| 43696-4 | Herpes simplex virus identified in Cerebrospinal Fluid by Shell vial culture | Human herpes simplex virus | Cerebrospinal fluid specimen | Presence or identity | Nominal value | – |
| 43697-2 | Herpes simplex virus identified in Specimen by Shell vial culture | Human herpes simplex virus | Specimen | Presence or identity | Nominal value | – |
| 43698-0 | Enterovirus identified in Specimen by Shell vial culture | Genus Enterovirus | Specimen | Presence or identity | Nominal value | – |
| 43699-8 | Enterovirus identified in Cerebrospinal Fluid by Shell vial culture | Genus Enterovirus | Cerebrospinal fluid specimen | Presence or identity | Nominal value | – |
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

… 380 more; the complete enumeration is in the ValueSet.

### General determination — method-neutral identity codes

The technique-free identity observables ('Presence or identity of virus in specimen'); the method-neutral request codes live here.

ValueSet [mii-vs-mikrobio-loinc-ontology-organism-identity-no-technique](ValueSet-mii-vs-mikrobio-loinc-ontology-organism-identity-no-technique.html).

```
<< 363787002 |Observable entity (observable entity)| : 370130000 |Property (attribute)| = 118584009 |Presence or identity (property) (qualifier value)|, 704319004 |Inheres in (attribute)| = << 410607006 |Organism (organism)|, [0..0] 246501002 |Technique (attribute)| = *
```

| Attribute | Value |
|---|---|
| Property | Presence or identity |
| Inheres in | `<< Organism` |
| Technique | none, `[0..0]`: any (`*`) |

The rule selects **88** concepts (88 with a LOINC code, 0 without). Release 2026-03-21 → 2026-10-21: **+2 / −0** (lists on the [release delta](loinc-ontology-release-delta.html) page).

#### Codes (88)

| LOINC | Name | Inheres in | Direct site | Property | Scale type |
|---|---|---|---|---|---|
| 105064-0 | Staphylococcus sp identified in Specimen | Staphylococcus | Specimen | Presence or identity | Nominal value |
| 10644-3 | Arthropod identified in Specimen | Phylum Arthropoda | Specimen | Presence or identity | Nominal value |
| 10647-6 | Babesia sp identified in Blood by Thick film | Babesia | Blood specimen | Presence or identity | Nominal value |
| 10648-4 | Babesia sp identified in Blood by Thin film | Babesia | Blood specimen | Presence or identity | Nominal value |
| 10667-4 | Fungus identified in Specimen by Animal inoculation | Fungi | Specimen | Presence or identity | Nominal value |
| 10668-2 | Fungus identified in Specimen by Environmental culture | Fungi | Specimen | Presence or identity | Nominal value |
| 10669-0 | Fungus identified in Specimen by Sticky tape for environmental fungus | Fungi | Specimen | Presence or identity | Nominal value |
| 10690-6 | Microsporidia identified in Duodenal fluid by Trichrome stain modified | Microsporidia | Duodenal fluid specimen | Presence or identity | Nominal value |
| 10710-2 | Plasmodium sp identified in Blood by Thin film | Plasmodium | Blood specimen | Presence or identity | Nominal value |
| 10712-8 | Pneumocystis sp identified in Lung tissue | Pneumocystis | Tissue specimen from lung | Presence or identity | Nominal value |
| 10727-6 | Toxoplasma gondii identified in Tissue | Toxoplasma gondii | Tissue specimen | Presence or identity | Nominal value |
| 10731-8 | Trypanosoma sp identified in Blood by Thick film | Genus Trypanosoma | Blood specimen | Presence or identity | Nominal value |
| 10732-6 | Trypanosoma sp identified in Blood by Thin film | Genus Trypanosoma | Blood specimen | Presence or identity | Nominal value |
| 11083-3 | Human papilloma virus identified in Cervix | Human papillomavirus | Specimen from uterine cervix | Presence or identity | Nominal value |
| 11481-9 | Human papilloma virus identified in Specimen | Human papillomavirus | Specimen | Presence or identity | Nominal value |
| 13314-0 | Bacteria identified in Semen | Domain Bacteria | Semen sample | Presence or identity | Nominal value |
| 14325-5 | Bacteria identified in Specimen by Environmental culture | Domain Bacteria | Specimen | Presence or identity | Nominal value |
| 14787-6 | Arthropod identified in Specimen by Permanent mount | Phylum Arthropoda | Specimen | Presence or identity | Nominal value |
| 17280-9 | Plasmodium sp identified in Tissue by Thick film | Plasmodium | Tissue specimen | Presence or identity | Nominal value |
| 17942-4 | Bacteria # 2 identified in Line specimen by IV Line culture | Domain Bacteria | – | Presence or identity | Nominal value |
| 17943-2 | Bacteria # 3 identified in Line specimen by IV Line culture | Domain Bacteria | – | Presence or identity | Nominal value |
| 17944-0 | Bacteria # 4 identified in Line specimen by IV Line culture | Domain Bacteria | – | Presence or identity | Nominal value |
| 17945-7 | Bacteria # 5 identified in Line specimen by IV Line culture | Domain Bacteria | – | Presence or identity | Nominal value |
| 17946-5 | Bacteria # 6 identified in Line specimen by IV Line culture | Domain Bacteria | – | Presence or identity | Nominal value |
| 19127-0 | Bacteria identified in Sputum by Acute Respiratory Distress (ARDS) culture | Domain Bacteria | Sputum specimen | Presence or identity | Nominal value |
| 20474-3 | Bacteria identified in Tissue by Biopsy culture | Domain Bacteria | Tissue specimen | Presence or identity | Nominal value |
| 20877-7 | Bacteria identified in Isolate by Animal inoculation | Domain Bacteria | Microbial isolate | Presence or identity | Nominal value |
| 21020-3 | Bacteria identified in Specimen by Anaerobe+Aerobe culture | Domain Bacteria | Specimen | Presence or identity | Nominal value |
| 22799-1 | Anaplasma sp identified in Tissue by Modified Giemsa stain | Anaplasma | Tissue specimen | Presence or identity | Nominal value |
| 22800-7 | Anaplasma sp identified in Blood by Modified Giemsa stain | Anaplasma | Blood specimen | Presence or identity | Nominal value |
| 22826-2 | Influenza virus A identified in Specimen by Bioassay | Influenza A virus | Specimen | Presence or identity | Nominal value |
| 22832-0 | Avian paramyxovirus 1 identified in Specimen by Bioassay | Newcastle disease virus | Specimen | Presence or identity | Nominal value |
| 23162-1 | Leishmania sp identified in Tissue by Polyacrylamide gel electrophoresis (PAGE) | Leishmania | Tissue specimen | Presence or identity | Nominal value |
| 23232-2 | Mite identified in Skin by Flotation | Mite | Specimen from skin | Presence or identity | Nominal value |
| 23233-0 | Mite identified in Skin by Parasite sedimentation | Mite | Specimen from skin | Presence or identity | Nominal value |
| 23536-6 | Trypanosoma sp identified in Blood by Concentration | Genus Trypanosoma | Blood specimen | Presence or identity | Nominal value |
| 23667-9 | Bacteria identified in Specimen | Domain Bacteria | Specimen | Presence or identity | Nominal value |
| 23752-9 | Mite identified in Skin | Mite | Specimen from skin | Presence or identity | Nominal value |
| 32355-0 | Bacteria identified in Specimen by Respiratory culture | Domain Bacteria | Specimen | Presence or identity | Nominal value |
| 32701-5 | Microsporidia identified in Stool by Trichrome stain modified | Microsporidia | Stool specimen | Presence or identity | Nominal value |
| 32810-4 | Bacteria identified in Bronchial specimen | Domain Bacteria | Specimen from bronchus | Presence or identity | Nominal value |
| 40698-3 | Mycoplasma sp identified in Specimen | Genus Mycoplasma | Specimen | Presence or identity | Nominal value |
| 40699-1 | Mycobacterium sp identified in Specimen | Mycobacterium | Specimen | Presence or identity | Nominal value |
| 40958-1 | Cryptosporidium parvum identified in Stool | Cryptosporidium parvum | Stool specimen | Presence or identity | Nominal value |
| 41454-0 | Human coronavirus identified in Specimen | Human coronavirus | Specimen | Presence or identity | Nominal value |
| 41461-5 | Virus identified in Specimen | Virus | Specimen | Presence or identity | Nominal value |
| 42661-9 | Bacteria identified in Isolate by Pulsed-Field Gel Electrophoresis (PFGE) | Domain Bacteria | Microbial isolate | Presence or identity | Nominal value |
| 42803-7 | Bacteria identified in Isolate | Domain Bacteria | Microbial isolate | Presence or identity | Nominal value |
| 42804-5 | Fungus identified in Isolate | Fungi | Microbial isolate | Presence or identity | Nominal value |
| 42805-2 | Fungus identified in Specimen | Fungi | Specimen | Presence or identity | Nominal value |
| 42808-6 | Virus identified in Isolate | Virus | Microbial isolate | Presence or identity | Nominal value |
| 43390-4 | Streptococcus sp identified in Isolate | Streptococcus | Microbial isolate | Presence or identity | Nominal value |
| 43693-1 | Varicella zoster virus identified in Skin by Shell vial culture | Varicellovirus humanalpha3 | Specimen from skin | Presence or identity | Nominal value |
| 43696-4 | Herpes simplex virus identified in Cerebrospinal Fluid by Shell vial culture | Human herpes simplex virus | Cerebrospinal fluid specimen | Presence or identity | Nominal value |
| 43697-2 | Herpes simplex virus identified in Specimen by Shell vial culture | Human herpes simplex virus | Specimen | Presence or identity | Nominal value |
| 43698-0 | Enterovirus identified in Specimen by Shell vial culture | Genus Enterovirus | Specimen | Presence or identity | Nominal value |
| 43699-8 | Enterovirus identified in Cerebrospinal Fluid by Shell vial culture | Genus Enterovirus | Cerebrospinal fluid specimen | Presence or identity | Nominal value |
| 45275-5 | Bacteria identified in Blood by Aerobe culture 25 degree C incubation | Domain Bacteria | Blood specimen | Presence or identity | Nominal value |
| 45276-3 | Bacteria identified in Blood by Anaerobe culture 25 degree C incubation | Domain Bacteria | Blood specimen | Presence or identity | Nominal value |
| 48561-5 | Bacteria # 2 identified in Specimen by Respiratory culture | Domain Bacteria | Specimen | Presence or identity | Nominal value |
| 48562-3 | Bacteria # 3 identified in Specimen by Respiratory culture | Domain Bacteria | Specimen | Presence or identity | Nominal value |
| 48563-1 | Bacteria # 4 identified in Specimen by Respiratory culture | Domain Bacteria | Specimen | Presence or identity | Nominal value |
| 48564-9 | Bacteria # 5 identified in Specimen by Respiratory culture | Domain Bacteria | Specimen | Presence or identity | Nominal value |
| 48565-6 | Bacteria # 6 identified in Specimen by Respiratory culture | Domain Bacteria | Specimen | Presence or identity | Nominal value |
| 48566-4 | Bacteria # 7 identified in Specimen by Respiratory culture | Domain Bacteria | Specimen | Presence or identity | Nominal value |
| 49538-2 | Influenza virus identified in Specimen by Shell vial culture | Influenza virus | Specimen | Presence or identity | Nominal value |
| 50024-9 | Virus identified in Specimen by Shell vial culture | Virus | Specimen | Presence or identity | Nominal value |
| 53625-0 | Leishmania sp identified in Tissue | Leishmania | Tissue specimen | Presence or identity | Nominal value |
| 54242-3 | Influenza virus identified in Isolate | Influenza virus | Microbial isolate | Presence or identity | Nominal value |
| 54244-9 | Influenza virus identified in Specimen | Influenza virus | Specimen | Presence or identity | Nominal value |
| 55096-2 | Nocardia sp identified in Isolate | Nocardia | Microbial isolate | Presence or identity | Nominal value |
| 616-3 | Bacteria identified in Line specimen by IV Line culture | Domain Bacteria | – | Presence or identity | Nominal value |
| 623-9 | Bacteria identified in Sputum by Cystic fibrosis respiratory culture | Domain Bacteria | Sputum specimen | Presence or identity | Nominal value |
| 624-7 | Bacteria identified in Sputum by Respiratory culture | Domain Bacteria | Sputum specimen | Presence or identity | Nominal value |
| 636-1 | Bacteria identified in Specimen by Sterile body fluid culture | Domain Bacteria | Specimen | Presence or identity | Nominal value |
| 637-9 | Plasmodium sp identified in Blood by Thick film | Plasmodium | Blood specimen | Presence or identity | Nominal value |
| 67867-2 | Babesia sp identified in Specimen | Babesia | Specimen | Presence or identity | Nominal value |
| 74816-0 | Bacteria identified in Eye by Anaerobe+Aerobe culture | Domain Bacteria | Specimen from eye | Presence or identity | Nominal value |
| 75269-1 | Bacteria identified in Genital specimen by Anaerobe+Aerobe culture | Domain Bacteria | Specimen from genital system | Presence or identity | Nominal value |
| 75357-4 | Bacteria identified in Abscess by Anaerobe+Aerobe culture | Domain Bacteria | Specimen from abscess | Presence or identity | Nominal value |
| 75358-2 | Bacteria identified in Bone by Anaerobe+Aerobe culture | Domain Bacteria | Specimen from bone | Presence or identity | Nominal value |
| 75359-0 | Bacteria identified in Bone marrow by Anaerobe+Aerobe culture | Domain Bacteria | Bone marrow specimen | Presence or identity | Nominal value |
| 79425-5 | Bacteria identified in Lower respiratory specimen by Cystic fibrosis respiratory culture | Domain Bacteria | Lower respiratory tract specimen | Presence or identity | Nominal value |
| 86337-3 | Virus identified in Isolate by Shell vial culture | Virus | Microbial isolate | Presence or identity | Nominal value |
| 88717-4 | Candida sp identified in Isolate | Candida | Microbial isolate | Presence or identity | Nominal value |
| 89655-5 | Virus identified in Tissue by Shell vial culture | Virus | Tissue specimen | Presence or identity | Nominal value |
| 9825-1 | Mycobacterium sp identified in Isolate | Mycobacterium | Microbial isolate | Presence or identity | Nominal value |
| 98411-2 | Cryptosporidium sp [Identifier] in Isolate by RFLP.rRNA | Cryptosporidium | Microbial isolate | Presence or identity | Nominal value |

### Typing — type of an organism (serotype, genotype, biotype)

Property = Type with an organism in 'Inheres in': serotyping, HBV/HCV genotype, biotype of an isolate. Sits between determination and susceptibility in the 2027 module (no own profile).

ValueSet [mii-vs-mikrobio-loinc-ontology-organism-type](ValueSet-mii-vs-mikrobio-loinc-ontology-organism-type.html).

```
<< 363787002 |Observable entity (observable entity)| : 370130000 |Property (attribute)| = 410656007 |Type (property) (qualifier value)|, 704319004 |Inheres in (attribute)| = << 410607006 |Organism (organism)|
```

| Attribute | Value |
|---|---|
| Property | Type |
| Inheres in | `<< Organism` |

The rule selects **22** concepts (21 with a LOINC code, 1 without). Unchanged between 2026-03-21 and 2026-10-21.

#### Codes (22)

| LOINC | Name | Inheres in | Direct site | Property | Scale type | Technique |
|---|---|---|---|---|---|---|
| 59846-6 | Salmonella sp identified [Type] in Isolate | Salmonella | Microbial isolate | Type | Nominal value | – |
| 60528-7 | Enterovirus subtype in Specimen by NAA with probe detection | Genus Enterovirus | Specimen | Type | Nominal value | Probe with target amplification |
| 60546-9 | Polio virus identified [Type] in Isolate by Organism specific culture | Human poliovirus | Microbial isolate | Type | Nominal value | Organism specific culture |
| 61112-9 | HTLV [Type] in Serum or Plasma | Human T-lymphotropic virus | Serum or plasma specimen | Type | Nominal value | – |
| 65756-9 | Salmonella sp serovar [Type] in Isolate | Salmonella | Microbial isolate | Type | Nominal value | Serotyping |
| 72412-0 | BK virus subtype in Urine by NAA with probe detection | BK virus | Urine specimen | Type | Nominal value | Probe with target amplification |
| 72413-8 | BK virus subtype in Specimen by NAA with probe detection | BK virus | Specimen | Type | Nominal value | Probe with target amplification |
| 72482-3 | BK virus subtype in Tissue by NAA with probe detection | BK virus | Tissue specimen | Type | Nominal value | Probe with target amplification |
| 72483-1 | BK virus subtype in Serum or Plasma by NAA with probe detection | BK virus | Serum or plasma specimen | Type | Nominal value | Probe with target amplification |
| 72484-9 | BK virus subtype in Blood by NAA with probe detection | BK virus | Blood specimen | Type | Nominal value | Probe with target amplification |
| 73658-7 | HIV 1 subtype in Specimen by NAA with probe detection | Human immunodeficiency virus 1 | Specimen | Type | Nominal value | Probe with target amplification |
| 73659-5 | HIV 2 subtype in Specimen by NAA with probe detection | Human immunodeficiency virus 2 | Specimen | Type | Nominal value | Probe with target amplification |
| 73666-0 | Streptococcus.beta-hemolytic [Type] in Isolate by Latex agglutination | Beta-hemolytic Streptococcus | Microbial isolate | Type | Nominal value | Latex agglutination test |
| 73671-0 | Legionella pneumophila serogroup [Type] in Isolate by Agglutination | Legionella pneumophila | Microbial isolate | Type | Nominal value | Agglutination technique |
| 73672-8 | Salmonella sp phage type in Isolate | Salmonella | Microbial isolate | Type | Nominal value | Bacterial bacteriophage typing |
| 73673-6 | Yersinia enterocolitica serotype [Type] in Isolate by Agglutination | Yersinia enterocolitica | Microbial isolate | Type | Nominal value | Agglutination technique |
| 73702-3 | Neisseria meningitidis serosubtype [Type] in Isolate by Immunoassay | Neisseria meningitidis | Microbial isolate | Type | Nominal value | Immunoassay technique |
| 73733-8 | Bacteria biotype [Type] in Isolate | Domain Bacteria | Microbial isolate | Type | Nominal value | Biotyping |
| 82512-5 | Hepatitis C virus genotype 1 [Type] in Serum or Plasma by NAA with probe detection | Hepatitis C virus genotype 1 | Serum or plasma specimen | Type | Nominal value | Probe with target amplification |
| 86732-5 | Leptospira sp identified [Type] in Isolate by Sequencing | Leptospira | Microbial isolate | Type | Nominal value | Nucleic acid sequencing technique |
| 87962-7 | HIV 1 subtype identified in Cerebral spinal fluid by NAA with probe detection | Human immunodeficiency virus 1 | Cerebrospinal fluid specimen | Type | Nominal value | Probe with target amplification |
| SCT 1285113001 | Type of antimicrobial resistant organism | Organism | – | Type | – | – |
