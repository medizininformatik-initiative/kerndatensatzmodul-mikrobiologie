This page shows what the LOINC Ontology release **2026-10-21** changed for every rule of the [LOINC Ontology proposal](loinc-ontology-valuesets.html) compared with the previous release **2026-03-21**: how many concepts each rule selected before and after, and which concepts entered or left. It is the output of the generator's release comparison, rendered with fully specified names and LOINC codes so that a reviewer can read it without a terminology server.

### How to read it

* A concept is *added* when the new release selects it and the old one did not. Most additions are new LOINC Ontology concepts for codes of a newer LOINC release; some are existing concepts whose attributes were remodelled so that the rule now sees them.
* A concept is *removed* when the old release selected it and the new one does not: it was inactivated, or an attribute the rule depends on was dropped or changed. A removal is a review item for the rule, not for the module's data.
* Unchanged rules are listed in the table but have no concept lists.

### Summary

| Family | Request | 2026-03-21 | 2026-10-21 | added | removed |
|---|---|--:|--:|--:|--:|
| [General culture](loinc-ontology-request-allgemeine-kultur.html) | General culture — organism identity by culture technique | 563 | 578 | 15 | 0 |
| [General culture](loinc-ontology-request-allgemeine-kultur.html) | Targeted culture — threshold presence of a named organism by culture technique | 203 | 204 | 1 | 0 |
| [General culture](loinc-ontology-request-allgemeine-kultur.html) | Everything by culture technique (upper bound) | 772 | 788 | 16 | 0 |
| [General determination](loinc-ontology-request-allgemeine-bestimmung.html) | General determination — organism identity, any technique | 756 | 780 | 24 | 0 |
| [General determination](loinc-ontology-request-allgemeine-bestimmung.html) | General determination — method-neutral identity codes | 86 | 88 | 2 | 0 |
| [General determination](loinc-ontology-request-allgemeine-bestimmung.html) | Typing — type of an organism (serotype, genotype, biotype) | 22 | 22 | 0 | 0 |
| [Specific determination](loinc-ontology-request-spezifische-bestimmung.html) | Nucleic-acid detection — any or no technique | 1922 | 2507 | 586 | 1 |
| [Specific determination](loinc-ontology-request-spezifische-bestimmung.html) | Nucleic-acid detection — amplification technique asserted | 1486 | 1524 | 38 | 0 |
| [Specific determination](loinc-ontology-request-spezifische-bestimmung.html) | Nucleic-acid detection — no technique modelled | 288 | 288 | 19 | 19 |
| [Specific determination](loinc-ontology-request-spezifische-bestimmung.html) | Targeted culture detection — organism specific culture technique | 191 | 192 | 1 | 0 |
| [Specific determination](loinc-ontology-request-spezifische-bestimmung.html) | Antigen detection — threshold presence of a microbial antigen | 898 | 899 | 1 | 0 |
| [Microscopy](loinc-ontology-request-mikroskopie.html) | General microscopy — nominal finding by microscopy or staining technique | 376 | 383 | 7 | 0 |
| [Microscopy](loinc-ontology-request-mikroskopie.html) | General microscopy — method-neutral 'finding in specimen' pattern | 355 | 357 | 2 | 0 |
| [Microscopy](loinc-ontology-request-mikroskopie.html) | Specific microscopy — ordinal threshold presence by microscopy or staining technique | 316 | 331 | 16 | 1 |
| [Colony count](loinc-ontology-request-keimzahl.html) | Colony count — number concentration of an organism | 16 | 16 | 0 | 0 |
| [Colony count](loinc-ontology-request-keimzahl.html) | Colony count — with culture technique asserted | 4 | 4 | 0 | 0 |
| [Susceptibility](loinc-ontology-request-empfindlichkeit.html) | Phenotypic susceptibility — isolate, not genotyping | 1227 | 1230 | 3 | 0 |
| [Susceptibility](loinc-ontology-request-empfindlichkeit.html) | Predicted susceptibility — by genotype determination technique | 81 | 81 | 0 | 0 |
| [Susceptibility](loinc-ontology-request-empfindlichkeit.html) | All susceptibility observables (upper bound) | 1345 | 1350 | 5 | 0 |
| [Ct value](loinc-ontology-request-ct-wert.html) | Ct value — threshold number of a microbial nucleic acid | 40 | 40 | 0 | 0 |
| [Ct value](loinc-ontology-request-ct-wert.html) | Ct value — all threshold-number observables (upper bound) | 44 | 45 | 1 | 0 |
| [Molecular pathogen load](loinc-ontology-request-molekulare-pathogenlast.html) | Pathogen load — quantitative microbial nucleic acid, any technique | 397 | 401 | 4 | 0 |
| [Molecular pathogen load](loinc-ontology-request-molekulare-pathogenlast.html) | Pathogen load — amplification technique asserted | 355 | 359 | 4 | 0 |
| [Quantitative antigen and antibody tests](loinc-ontology-request-antigen-antikoerper-quantitativ.html) | Serology quantitative — concentration of a pathogen antibody or antigen | 1770 | 1813 | 43 | 0 |
| [Quantitative antigen and antibody tests](loinc-ontology-request-antigen-antikoerper-quantitativ.html) | Serology qualitative — threshold presence of a pathogen antibody or antigen | 2769 | 2796 | 27 | 0 |
| [Titre](loinc-ontology-request-titer.html) | Titre — pathogen antibody titre | 1712 | 1716 | 4 | 0 |
| [Titre](loinc-ontology-request-titer.html) | Titre — all titre observables (upper bound) | 2186 | 2188 | 2 | 0 |
| [Resistant organisms and resistance mechanisms](loinc-ontology-request-resistenzmechanismen.html) | Resistant-organism detection — presence/identity of an antimicrobial resistant organism | 16 | 16 | 0 | 0 |
| [Resistant organisms and resistance mechanisms](loinc-ontology-request-resistenzmechanismen.html) | Resistant organism — any observable about a resistant organism (upper bound) | 16 | 16 | 0 | 0 |

### Concepts per rule

### General culture — General culture — organism identity by culture technique

[ValueSet](ValueSet-mii-vs-mikrobio-loinc-ontology-general-culture-identity.html)

**Added in 2026-10-21** (15)

| LOINC | SCTID | FSN |
|---|---|---|
| 10687-2 | 883841010000105 | Presence or identity of Leishmania in tissue at point in time by organism specific culture (observable entity) |
| 111515-3 | 883941010000102 | Presence or identity of Fungi in prostatic fluid at point in time by microbial culture (observable entity) |
| 112851-1 | 884661010000105 | Presence or identity of Bacteria in surgical wound.shallow at point in time by microbial culture (observable entity) |
| 112852-9 | 884671010000100 | Presence or identity of Bacteria in surgical wound.deep at point in time by microbial culture (observable entity) |
| 112889-1 | 884831010000104 | Presence or identity of Fungi in penis at point in time by microbial culture (observable entity) |
| 112891-7 | 884841010000107 | Presence or identity of Bacteria in ear at point in time by microbial culture (observable entity) |
| 112896-6 | 884891010000100 | Presence or identity of Actinomyces in bronchoalveolar lavage fluid at point in time by organism specific culture (observable entity) |
| 112897-4 | 884901010000101 | Presence or identity of Nocardia in bronchoalveolar lavage fluid at point in time by organism specific culture (observable entity) |
| 112898-2 | 884911010000103 | Presence or identity of Legionella in bronchoalveolar lavage fluid at point in time by organism specific culture (observable entity) |
| 113006-1 | 885001010000101 | Presence or identity of Fungi in drain device at point in time by microbial culture (observable entity) |
| 113007-9 | 885011010000103 | Presence or identity of Bacteria in drain device at point in time by microbial culture (observable entity) |
| 113009-5 | 885031010000107 | Presence or identity of Bacteria in drain device at point in time by anaerobic culture (observable entity) |
| 51710-2 | 902961010000101 | Presence or identity of Leishmania in specimen at point in time by organism specific culture (observable entity) |
| 87986-6 | 903351010000109 | Presence or identity of Leishmania in bone marrow at point in time by organism specific culture (observable entity) |
| 87987-4 | 903361010000106 | Presence or identity of Leishmania in blood at point in time by organism specific culture (observable entity) |

### General culture — Targeted culture — threshold presence of a named organism by culture technique

[ValueSet](ValueSet-mii-vs-mikrobio-loinc-ontology-specific-culture-threshold.html)

**Added in 2026-10-21** (1)

| LOINC | SCTID | FSN |
|---|---|---|
| 112888-3 | 884821010000102 | Threshold presence of Neisseria gonorrhoeae in penis at point in time by organism specific culture (observable entity) |

### General culture — Everything by culture technique (upper bound)

[ValueSet](ValueSet-mii-vs-mikrobio-loinc-ontology-culture-any-property.html)

**Added in 2026-10-21** (16)

| LOINC | SCTID | FSN |
|---|---|---|
| 10687-2 | 883841010000105 | Presence or identity of Leishmania in tissue at point in time by organism specific culture (observable entity) |
| 111515-3 | 883941010000102 | Presence or identity of Fungi in prostatic fluid at point in time by microbial culture (observable entity) |
| 112851-1 | 884661010000105 | Presence or identity of Bacteria in surgical wound.shallow at point in time by microbial culture (observable entity) |
| 112852-9 | 884671010000100 | Presence or identity of Bacteria in surgical wound.deep at point in time by microbial culture (observable entity) |
| 112888-3 | 884821010000102 | Threshold presence of Neisseria gonorrhoeae in penis at point in time by organism specific culture (observable entity) |
| 112889-1 | 884831010000104 | Presence or identity of Fungi in penis at point in time by microbial culture (observable entity) |
| 112891-7 | 884841010000107 | Presence or identity of Bacteria in ear at point in time by microbial culture (observable entity) |
| 112896-6 | 884891010000100 | Presence or identity of Actinomyces in bronchoalveolar lavage fluid at point in time by organism specific culture (observable entity) |
| 112897-4 | 884901010000101 | Presence or identity of Nocardia in bronchoalveolar lavage fluid at point in time by organism specific culture (observable entity) |
| 112898-2 | 884911010000103 | Presence or identity of Legionella in bronchoalveolar lavage fluid at point in time by organism specific culture (observable entity) |
| 113006-1 | 885001010000101 | Presence or identity of Fungi in drain device at point in time by microbial culture (observable entity) |
| 113007-9 | 885011010000103 | Presence or identity of Bacteria in drain device at point in time by microbial culture (observable entity) |
| 113009-5 | 885031010000107 | Presence or identity of Bacteria in drain device at point in time by anaerobic culture (observable entity) |
| 51710-2 | 902961010000101 | Presence or identity of Leishmania in specimen at point in time by organism specific culture (observable entity) |
| 87986-6 | 903351010000109 | Presence or identity of Leishmania in bone marrow at point in time by organism specific culture (observable entity) |
| 87987-4 | 903361010000106 | Presence or identity of Leishmania in blood at point in time by organism specific culture (observable entity) |

### General determination — General determination — organism identity, any technique

[ValueSet](ValueSet-mii-vs-mikrobio-loinc-ontology-organism-identity-any-technique.html)

**Added in 2026-10-21** (24)

| LOINC | SCTID | FSN |
|---|---|---|
| 10686-4 | 883831010000102 | Presence or identity of Leishmania in tissue at point in time by Giemsa stain (observable entity) |
| 10687-2 | 883841010000105 | Presence or identity of Leishmania in tissue at point in time by organism specific culture (observable entity) |
| 111515-3 | 883941010000102 | Presence or identity of Fungi in prostatic fluid at point in time by microbial culture (observable entity) |
| 112851-1 | 884661010000105 | Presence or identity of Bacteria in surgical wound.shallow at point in time by microbial culture (observable entity) |
| 112852-9 | 884671010000100 | Presence or identity of Bacteria in surgical wound.deep at point in time by microbial culture (observable entity) |
| 112889-1 | 884831010000104 | Presence or identity of Fungi in penis at point in time by microbial culture (observable entity) |
| 112891-7 | 884841010000107 | Presence or identity of Bacteria in ear at point in time by microbial culture (observable entity) |
| 112896-6 | 884891010000100 | Presence or identity of Actinomyces in bronchoalveolar lavage fluid at point in time by organism specific culture (observable entity) |
| 112897-4 | 884901010000101 | Presence or identity of Nocardia in bronchoalveolar lavage fluid at point in time by organism specific culture (observable entity) |
| 112898-2 | 884911010000103 | Presence or identity of Legionella in bronchoalveolar lavage fluid at point in time by organism specific culture (observable entity) |
| 113006-1 | 885001010000101 | Presence or identity of Fungi in drain device at point in time by microbial culture (observable entity) |
| 113007-9 | 885011010000103 | Presence or identity of Bacteria in drain device at point in time by microbial culture (observable entity) |
| 113009-5 | 885031010000107 | Presence or identity of Bacteria in drain device at point in time by anaerobic culture (observable entity) |
| 113037-6 | 885091010000106 | Presence or identity of Gram-positive bacteria in synovial fluid at point in time by Gram stain (observable entity) |
| 113049-1 | 885141010000100 | Presence or identity of Gram-positive bacteria in pleural fluid at point in time by Gram stain (observable entity) |
| 113056-6 | 885181010000109 | Presence or identity of Gram-positive bacteria in peritoneal fluid at point in time by Gram stain (observable entity) |
| 23160-5 | 902161010000103 | Presence or identity of Leishmania in tissue at point in time by immunofluorescence (observable entity) |
| 23161-3 | 902171010000108 | Presence or identity of Leishmania in tissue at point in time by electrophoresis (observable entity) |
| 23162-1 | 902181010000106 | Presence or identity of Leishmania in tissue at point in time by PAGE (observable entity) |
| 51709-4 | 902951010000103 | Presence or identity of Leishmania in specimen at point in time by Giemsa stain (observable entity) |
| 51710-2 | 902961010000101 | Presence or identity of Leishmania in specimen at point in time by organism specific culture (observable entity) |
| 53625-0 | 902971010000106 | Presence or identity of Leishmania in tissue at point in time (observable entity) |
| 87986-6 | 903351010000109 | Presence or identity of Leishmania in bone marrow at point in time by organism specific culture (observable entity) |
| 87987-4 | 903361010000106 | Presence or identity of Leishmania in blood at point in time by organism specific culture (observable entity) |

### General determination — General determination — method-neutral identity codes

[ValueSet](ValueSet-mii-vs-mikrobio-loinc-ontology-organism-identity-no-technique.html)

**Added in 2026-10-21** (2)

| LOINC | SCTID | FSN |
|---|---|---|
| 23162-1 | 902181010000106 | Presence or identity of Leishmania in tissue at point in time by PAGE (observable entity) |
| 53625-0 | 902971010000106 | Presence or identity of Leishmania in tissue at point in time (observable entity) |

### Specific determination — Nucleic-acid detection — any or no technique

[ValueSet](ValueSet-mii-vs-mikrobio-loinc-ontology-naa-detection-any-technique.html)

**Added in 2026-10-21** (586)

| LOINC | SCTID | FSN |
|---|---|---|
| 104341-3 | 708031010000104 | Threshold presence of Orthobornavirus bornaense RNA in specimen at point in time by molecular genetics (observable entity) |
| 112628-3 | 884111010000100 | Threshold presence of Human coronavirus RNA in bronchoalveolar lavage fluid at point in time by non-probe.amp.tar (observable entity) |
| 112629-1 | 884121010000106 | Threshold presence of Human coronavirus RNA in sputum at point in time by non-probe.amp.tar (observable entity) |
| 112630-9 | 884131010000109 | Threshold presence of Mycoplasma pneumoniae DNA in sputum at point in time by non-probe.amp.tar (observable entity) |
| 112631-7 | 884141010000101 | Threshold presence of Mycoplasma pneumoniae DNA in bronchoalveolar lavage fluid at point in time by non-probe.amp.tar (observable entity) |
| 112707-5 | 884181010000105 | Threshold presence of Streptococcus pneumoniae DNA in wound at point in time by probe with target amplification (observable entity) |
| 112708-3 | 884191010000108 | Threshold presence of Neisseria meningitidis DNA in wound at point in time by probe with target amplification (observable entity) |
| 112709-1 | 884201010000106 | Threshold presence of Escherichia coli DNA in wound at point in time by probe with target amplification (observable entity) |
| 112710-9 | 884211010000109 | Threshold presence of Enterococcus faecium DNA in wound at point in time by probe with target amplification (observable entity) |
| 112711-7 | 884221010000103 | Threshold presence of Streptococcus DNA in wound at point in time by probe with target amplification (observable entity) |
| 112712-5 | 884231010000100 | Threshold presence of Enterobacteriaceae DNA in wound at point in time by probe with target amplification (observable entity) |
| 112713-3 | 884241010000108 | Threshold presence of Stenotrophomonas maltophilia DNA in wound at point in time by probe with target amplification (observable entity) |
| 112714-1 | 884251010000105 | Threshold presence of Candida tropicalis DNA in wound at point in time by probe with target amplification (observable entity) |
| 112716-6 | 884261010000107 | Threshold presence of Enterococcus faecalis DNA in wound at point in time by probe with target amplification (observable entity) |
| 112717-4 | 884271010000102 | Threshold presence of Listeria monocytogenes DNA in wound at point in time by probe with target amplification (observable entity) |
| 112723-2 | 884281010000104 | Threshold presence of Candida parapsilosis DNA in wound at point in time by probe with target amplification (observable entity) |
| 112724-0 | 884291010000101 | Threshold presence of Klebsiella oxytoca DNA in wound at point in time by probe with target amplification (observable entity) |
| 112725-7 | 884301010000100 | Threshold presence of Haemophilus influenzae DNA in wound at point in time by probe with target amplification (observable entity) |
| 112726-5 | 884311010000102 | Threshold presence of Acinetobacter baumannii DNA in wound at point in time by probe with target amplification (observable entity) |
| 112727-3 | 884321010000108 | Threshold presence of Klebsiella pneumoniae DNA in wound at point in time by probe with target amplification (observable entity) |
| 112728-1 | 884331010000106 | Threshold presence of Candida albicans DNA in wound at point in time by probe with target amplification (observable entity) |
| 112729-9 | 884341010000103 | Threshold presence of Pseudomonas aeruginosa DNA in wound at point in time by probe with target amplification (observable entity) |
| 112732-3 | 884351010000101 | Threshold presence of Nakaseomyces glabratus DNA in wound at point in time by probe with target amplification (observable entity) |
| 112733-1 | 884361010000104 | Threshold presence of Candida krusei DNA in wound at point in time by probe with target amplification (observable entity) |
| 112735-6 | 884371010000109 | Threshold presence of Pseudomonas DNA in wound at point in time by probe with target amplification (observable entity) |
| 112736-4 | 884381010000107 | Threshold presence of Staphylococcus aureus DNA in wound at point in time by probe with target amplification (observable entity) |
| 112749-7 | 884461010000108 | Threshold presence of Human coronavirus 229E RNA in bronchoalveolar aspirate at point in time by probe with target amplification (observable entity) |
| 112750-5 | 884471010000103 | Threshold presence of severe acute respiratory syndrome coronavirus 2 RNA in sputum at point in time by probe with target amplification (observable entity) |
| 112755-4 | 884511010000106 | Threshold presence of Human coronavirus RNA in sputum at point in time by probe with target amplification (observable entity) |
| 112757-0 | 884521010000100 | Threshold presence of Legionella pneumophila DNA in throat at point in time by probe with target amplification (observable entity) |
| 112776-0 | 884531010000102 | Threshold presence of Human herpesvirus 8 DNA in cerebrospinal fluid at point in time by probe with target amplification (observable entity) |
| 112777-8 | 884541010000105 | Threshold presence of Human herpesvirus 8 DNA in specimen at point in time by probe with target amplification (observable entity) |
| 112778-6 | 884551010000107 | Threshold presence of human herpes simplex virus DNA in skin at point in time by probe with target amplification (observable entity) |
| 112779-4 | 884561010000109 | Threshold presence of human herpes simplex virus DNA in bronchoalveolar lavage fluid at point in time by probe with target amplification (observable entity) |
| 112780-2 | 884571010000104 | Threshold presence of Human alphaherpesvirus 2 DNA in bronchoalveolar lavage fluid at point in time by probe with target amplification (observable entity) |
| 112781-0 | 884581010000101 | Threshold presence of Human alphaherpesvirus 1 DNA in bronchoalveolar lavage fluid at point in time by probe with target amplification (observable entity) |
| 112782-8 | 884591010000103 | Threshold presence of Epstein-Barr virus DNA in bronchoalveolar lavage fluid at point in time by probe with target amplification (observable entity) |
| 112783-6 | 884601010000109 | Threshold presence of Epstein-Barr virus DNA in throat at point in time by probe with target amplification (observable entity) |
| 112873-5 | 884681010000102 | Threshold presence of Legionella pneumophila DNA in sputum at point in time by non-probe.amp.tar (observable entity) |
| 112874-3 | 884691010000104 | Threshold presence of Parainfluenza virus 4 RNA in throat at point in time by non-probe.amp.tar (observable entity) |
| 112875-0 | 884701010000104 | Threshold presence of Parainfluenza virus 3 RNA in throat at point in time by non-probe.amp.tar (observable entity) |
| 112876-8 | 884711010000101 | Threshold presence of Parainfluenza virus 2 RNA in throat at point in time by non-probe.amp.tar (observable entity) |
| 112877-6 | 884721010000107 | Threshold presence of Parainfluenza virus 1 RNA in throat at point in time by non-probe.amp.tar (observable entity) |
| 112878-4 | 884731010000105 | Threshold presence of Betacoronavirus cameli RNA in throat at point in time by non-probe.amp.tar (observable entity) |
| 112879-2 | 884741010000102 | Threshold presence of Influenza A virus H1 RNA in throat at point in time by non-probe.amp.tar (observable entity) |
| 112880-0 | 884751010000100 | Threshold presence of Human coronavirus OC43 RNA in throat at point in time by non-probe.amp.tar (observable entity) |
| 112881-8 | 884761010000103 | Threshold presence of Klebsiella pneumoniae DNA in synovial fluid at point in time by non-probe.amp.tar (observable entity) |
| 112882-6 | 884771010000108 | Threshold presence of Human coronavirus 229E RNA in throat at point in time by non-probe.amp.tar (observable entity) |
| 112883-4 | 884781010000106 | Threshold presence of Human coronavirus NL63 RNA in throat at point in time by non-probe.amp.tar (observable entity) |
| 112884-2 | 884791010000109 | Threshold presence of Parainfluenza virus RNA in sputum at point in time by non-probe.amp.tar (observable entity) |
| 112885-9 | 884801010000105 | Threshold presence of Betacoronavirus cameli RNA in sputum at point in time by non-probe.amp.tar (observable entity) |
| 112892-5 | 884851010000109 | Threshold presence of Human Respiratory syncytial virus RNA in sputum at point in time by non-probe.amp.tar (observable entity) |
| 112893-3 | 884861010000106 | Threshold presence of Human coronavirus HKU1 RNA in throat at point in time by non-probe.amp.tar (observable entity) |
| 112894-1 | 884871010000101 | Threshold presence of Haemophilus influenzae DNA in throat at point in time by probe with target amplification (observable entity) |
| 112895-8 | 884881010000103 | Threshold presence of Streptococcus pneumoniae DNA in throat at point in time by probe with target amplification (observable entity) |
| 114505-1 | 895931010000105 | Threshold presence of Orthoflavivirus zikaense RNA in specimen at point in time by molecular genetics (observable entity) |
| 114507-7 | 895941010000102 | Threshold presence of Yersinia pseudotuberculosis DNA in specimen at point in time by molecular genetics (observable entity) |
| 114508-5 | 895951010000100 | Threshold presence of Yersinia pestis DNA in specimen at point in time by molecular genetics (observable entity) |
| 114510-1 | 895961010000103 | Threshold presence of Yellow fever virus RNA in specimen at point in time by molecular genetics (observable entity) |
| 114512-7 | 895971010000108 | Threshold presence of microorganism DNA in specimen at point in time by molecular genetics (observable entity) |
| 114513-5 | 895981010000106 | Threshold presence of Western equine encephalitis virus RNA in specimen at point in time by molecular genetics (observable entity) |
| 114514-3 | 895991010000109 | Threshold presence of West Nile virus RNA in specimen at point in time by molecular genetics (observable entity) |
| 114516-8 | 896001010000105 | Threshold presence of Vibrio vulnificus DNA in specimen at point in time by molecular genetics (observable entity) |
| 114517-6 | 896011010000108 | Threshold presence of Vibrio parahaemolyticus DNA in specimen at point in time by molecular genetics (observable entity) |
| 114523-4 | 896021010000102 | Threshold presence of Alphavirus venezuelan RNA in specimen at point in time by molecular genetics (observable entity) |
| 114524-2 | 896031010000104 | Threshold presence of Variola virus DNA in specimen at point in time by molecular genetics (observable entity) |
| 114525-9 | 896041010000107 | Threshold presence of Varicella virus DNA in specimen at point in time by molecular genetics (observable entity) |
| 114526-7 | 896051010000109 | Threshold presence of Vaccinia virus DNA in specimen at point in time by molecular genetics (observable entity) |
| 114529-1 | 896061010000106 | Threshold presence of Ureaplasma urealyticum DNA in specimen at point in time by molecular genetics (observable entity) |
| 114530-9 | 896071010000101 | Threshold presence of Ureaplasma DNA in specimen at point in time by molecular genetics (observable entity) |
| 114531-7 | 896081010000103 | Threshold presence of Ureaplasma parvum DNA in specimen at point in time by molecular genetics (observable entity) |
| 114534-1 | 896091010000100 | Threshold presence of Trypanosoma cruzi DNA in specimen at point in time by molecular genetics (observable entity) |
| 114536-6 | 896101010000109 | Threshold presence of Trypanosoma brucei DNA in specimen at point in time by molecular genetics (observable entity) |
| 114537-4 | 896111010000107 | Threshold presence of Tropheryma whipplei DNA in specimen at point in time by molecular genetics (observable entity) |
| 114539-0 | 896121010000101 | Threshold presence of Trichophyton violaceum DNA in specimen at point in time by molecular genetics (observable entity) |
| 114540-8 | 896131010000103 | Threshold presence of Trichophyton verrucosum DNA in specimen at point in time by molecular genetics (observable entity) |
| 114541-6 | 896141010000106 | Threshold presence of Trichophyton tonsurans DNA in specimen at point in time by molecular genetics (observable entity) |
| 114542-4 | 896151010000108 | Threshold presence of Trichophyton simii DNA in specimen at point in time by molecular genetics (observable entity) |
| 114543-2 | 896161010000105 | Threshold presence of Trichophyton schoenleinii DNA in specimen at point in time by molecular genetics (observable entity) |
| 114544-0 | 896171010000100 | Threshold presence of Trichophyton rubrum DNA in specimen at point in time by molecular genetics (observable entity) |
| 114545-7 | 896181010000102 | Threshold presence of Trichophyton quinckeanum DNA in specimen at point in time by molecular genetics (observable entity) |
| 114546-5 | 896191010000104 | Threshold presence of Trichophyton mentagrophytes DNA in specimen at point in time by molecular genetics (observable entity) |
| 114547-3 | 896201010000101 | Threshold presence of Trichophyton interdigitale DNA in specimen at point in time by molecular genetics (observable entity) |
| 114548-1 | 896211010000103 | Threshold presence of Trichophyton eriotrephon DNA in specimen at point in time by molecular genetics (observable entity) |
| 114549-9 | 896221010000109 | Threshold presence of Trichophyton erinacei DNA in specimen at point in time by molecular genetics (observable entity) |
| 114550-7 | 896231010000107 | Threshold presence of Trichophyton equinum DNA in specimen at point in time by molecular genetics (observable entity) |
| 114551-5 | 896241010000104 | Threshold presence of Trichophyton concentricum DNA in specimen at point in time by molecular genetics (observable entity) |
| 114552-3 | 896251010000102 | Threshold presence of Trichophyton bullosum DNA in specimen at point in time by molecular genetics (observable entity) |
| 114555-6 | 896261010000100 | Threshold presence of Trichinella spiralis DNA in specimen at point in time by molecular genetics (observable entity) |
| 114557-2 | 896271010000105 | Threshold presence of Treponema pallidum DNA in specimen at point in time by molecular genetics (observable entity) |
| 114559-8 | 896281010000108 | Threshold presence of Toxoplasma gondii DNA in specimen at point in time by molecular genetics (observable entity) |
| 114561-4 | 896291010000106 | Threshold presence of Torque teno virus DNA in specimen at point in time by molecular genetics (observable entity) |
| 114562-2 | 896301010000107 | Threshold presence of Orthoflavivirus encephalitidis RNA in specimen at point in time by molecular genetics (observable entity) |
| 114572-1 | 896311010000105 | Threshold presence of Taenia solium DNA in specimen at point in time by molecular genetics (observable entity) |
| 114574-7 | 896321010000104 | Threshold presence of Orthoebolavirus sudanense RNA in specimen at point in time by molecular genetics (observable entity) |
| 114575-4 | 896331010000101 | Threshold presence of Strongyloides stercoralis DNA in specimen at point in time by molecular genetics (observable entity) |
| 114577-0 | 896341010000109 | Threshold presence of Streptococcus DNA in specimen at point in time by molecular genetics (observable entity) |
| 114578-8 | 896351010000106 | Threshold presence of Streptococcus salivarius DNA in specimen at point in time by molecular genetics (observable entity) |
| 114579-6 | 896361010000108 | Threshold presence of Streptococcus pyogenes rRNA in specimen at point in time by molecular genetics (observable entity) |
| 114581-2 | 896371010000103 | Threshold presence of Streptococcus pneumoniae rRNA in specimen at point in time by molecular genetics (observable entity) |
| 114583-8 | 896381010000100 | Threshold presence of Streptococcus pneumoniae DNA in specimen at point in time by molecular genetics (observable entity) |
| 114584-6 | 896391010000102 | Threshold presence of Streptococcus mitis DNA in specimen at point in time by molecular genetics (observable entity) |
| 114585-3 | 896401010000100 | Threshold presence of Streptococcus intermedius DNA in specimen at point in time by molecular genetics (observable entity) |
| 114586-1 | 896411010000102 | Threshold presence of Streptococcus gordonii DNA in specimen at point in time by molecular genetics (observable entity) |
| 114587-9 | 896421010000108 | Threshold presence of Streptococcus equinus DNA in specimen at point in time by molecular genetics (observable entity) |
| 114588-7 | 896431010000106 | Threshold presence of Streptococcus dysgalactiae equisimilis DNA in specimen at point in time by molecular genetics (observable entity) |
| 114589-5 | 896441010000103 | Threshold presence of Streptococcus dysgalactiae DNA in specimen at point in time by molecular genetics (observable entity) |
| 114590-3 | 896451010000101 | Threshold presence of Streptococcus constellatus DNA in specimen at point in time by molecular genetics (observable entity) |
| 114593-7 | 896461010000104 | Threshold presence of Streptococcus anginosus DNA in specimen at point in time by molecular genetics (observable entity) |
| 114594-5 | 896471010000109 | Threshold presence of Streptococcus agalactiae rRNA in specimen at point in time by molecular genetics (observable entity) |
| 114596-0 | 896481010000107 | Threshold presence of Streptobacillus moniliformis DNA in specimen at point in time by molecular genetics (observable entity) |
| 114597-8 | 896491010000105 | Threshold presence of Stenotrophomonas maltophilia DNA in specimen at point in time by molecular genetics (observable entity) |
| 114598-6 | 896501010000104 | Threshold presence of coagulase-negative Staphylococcus DNA in specimen at point in time by molecular genetics (observable entity) |
| 114601-8 | 896511010000101 | Threshold presence of Staphylococcus saprophyticus DNA in specimen at point in time by molecular genetics (observable entity) |
| 114603-4 | 896521010000107 | Threshold presence of Staphylococcus lugdunensis DNA in specimen at point in time by molecular genetics (observable entity) |
| 114604-2 | 896531010000105 | Threshold presence of Staphylococcus haemolyticus DNA in specimen at point in time by molecular genetics (observable entity) |
| 114606-7 | 896541010000102 | Threshold presence of Staphylococcus epidermidis DNA in specimen at point in time by molecular genetics (observable entity) |
| 114607-5 | 896551010000100 | Threshold presence of methicillin resistant Staphylococcus aureus DNA in specimen at point in time by molecular genetics (observable entity) |
| 114609-1 | 896561010000103 | Threshold presence of Staphylococcus aureus rRNA in specimen at point in time by molecular genetics (observable entity) |
| 114622-4 | 896571010000108 | Threshold presence of Alphavirus sindbis RNA in specimen at point in time by molecular genetics (observable entity) |
| 114624-0 | 896581010000106 | Threshold presence of Shigella DNA in specimen at point in time by molecular genetics (observable entity) |
| 114626-5 | 896591010000109 | Threshold presence of Serratia marcescens DNA in specimen at point in time by molecular genetics (observable entity) |
| 114628-1 | 896601010000103 | Threshold presence of Alphavirus semliki RNA in specimen at point in time by molecular genetics (observable entity) |
| 114629-9 | 896611010000100 | Threshold presence of Scopulariopsis brevicaulis DNA in specimen at point in time by molecular genetics (observable entity) |
| 114631-5 | 896621010000106 | Threshold presence of Scedosporium DNA in specimen at point in time by molecular genetics (observable entity) |
| 114632-3 | 896631010000109 | Threshold presence of Lomentospora prolificans DNA in specimen at point in time by molecular genetics (observable entity) |
| 114633-1 | 896641010000101 | Threshold presence of Scedosporium apiospermum DNA in specimen at point in time by molecular genetics (observable entity) |
| 114639-8 | 896651010000104 | Threshold presence of Severe acute respiratory syndrome coronavirus Urbani RNA in specimen at point in time by molecular genetics (observable entity) |
| 114640-6 | 896661010000102 | Threshold presence of Severe acute respiratory syndrome coronavirus RNA in specimen at point in time by molecular genetics (observable entity) |
| 114651-3 | 896671010000107 | Threshold presence of Sarcoptes scabiei DNA in specimen at point in time by molecular genetics (observable entity) |
| 114652-1 | 896681010000105 | Threshold presence of Sapovirus RNA in specimen at point in time by molecular genetics (observable entity) |
| 114654-7 | 896691010000108 | Threshold presence of Sapovirus genogroup V RNA in specimen at point in time by molecular genetics (observable entity) |
| 114655-4 | 896701010000108 | Threshold presence of Phlebovirus napoliense RNA in specimen at point in time by molecular genetics (observable entity) |
| 114656-2 | 896711010000106 | Threshold presence of Salmonella enterica enterica serovar Typhi DNA in specimen at point in time by molecular genetics (observable entity) |
| 114660-4 | 896721010000100 | Threshold presence of Salmonella DNA in specimen at point in time by molecular genetics (observable entity) |
| 114666-1 | 896731010000102 | Threshold presence of Salmonella enterica DNA in specimen at point in time by molecular genetics (observable entity) |
| 114667-9 | 896741010000105 | Threshold presence of Saint Louis encephalitis virus RNA in specimen at point in time by molecular genetics (observable entity) |
| 114668-7 | 896751010000107 | Threshold presence of Saccharomyces DNA in specimen at point in time by molecular genetics (observable entity) |
| 114669-5 | 896761010000109 | Threshold presence of Saccharomyces cerevisiae DNA in specimen at point in time by molecular genetics (observable entity) |
| 114670-3 | 896771010000104 | Threshold presence of Rubella virus RNA in specimen at point in time by molecular genetics (observable entity) |
| 114671-1 | 896781010000101 | Threshold presence of Rotavirus RNA in specimen at point in time by molecular genetics (observable entity) |
| 114672-9 | 896791010000103 | Threshold presence of Rotavirus dsRNA in specimen at point in time by molecular genetics (observable entity) |
| 114673-7 | 896801010000102 | Threshold presence of Rotavirus tritogastroenteritidis RNA in specimen at point in time by molecular genetics (observable entity) |
| 114674-5 | 896811010000104 | Threshold presence of Rotavirus betagastroenteritidis RNA in specimen at point in time by molecular genetics (observable entity) |
| 114677-8 | 896821010000105 | Threshold presence of Alphavirus rossriver RNA in specimen at point in time by molecular genetics (observable entity) |
| 114679-4 | 896831010000108 | Threshold presence of Phlebovirus riftense RNA in specimen at point in time by molecular genetics (observable entity) |
| 114680-2 | 896841010000100 | Threshold presence of Rickettsia typhus group DNA in specimen at point in time by molecular genetics (observable entity) |
| 114681-0 | 896851010000103 | Threshold presence of Rickettsia spotted fever group RNA in specimen at point in time by molecular genetics (observable entity) |
| 114682-8 | 896861010000101 | Threshold presence of Rickettsia spotted fever group DNA in specimen at point in time by molecular genetics (observable entity) |
| 114683-6 | 896871010000106 | Threshold presence of Rickettsia DNA in specimen at point in time by molecular genetics (observable entity) |
| 114684-4 | 896881010000109 | Threshold presence of Rickettsia rickettsii RNA in specimen at point in time by molecular genetics (observable entity) |
| 114685-1 | 896891010000107 | Threshold presence of Rickettsia rickettsii DNA in specimen at point in time by molecular genetics (observable entity) |
| 114686-9 | 896901010000106 | Threshold presence of Rickettsia prowazekii RNA in specimen at point in time by molecular genetics (observable entity) |
| 114687-7 | 896911010000109 | Threshold presence of Rhodotorula DNA in specimen at point in time by molecular genetics (observable entity) |
| 114689-3 | 896921010000103 | Threshold presence of Rhinovirus RNA in specimen at point in time by molecular genetics (observable entity) |
| 114692-7 | 896931010000100 | Threshold presence of Human respiratory syncytial virus B RNA in specimen at point in time by molecular genetics (observable entity) |
| 114695-0 | 896941010000108 | Threshold presence of Human respiratory syncytial virus A RNA in specimen at point in time by molecular genetics (observable entity) |
| 114696-8 | 896951010000105 | Threshold presence of Orthopneumovirus hominis A 5' untranslated region RNA in specimen at point in time by molecular genetics (observable entity) |
| 114698-4 | 896961010000107 | Threshold presence of Lyssavirus rabies RNA in specimen at point in time by molecular genetics (observable entity) |
| 114705-7 | 896971010000102 | Threshold presence of Pseudomonas aeruginosa DNA in specimen at point in time by molecular genetics (observable entity) |
| 114707-3 | 896981010000104 | Threshold presence of Pseudocowpox virus DNA in specimen at point in time by molecular genetics (observable entity) |
| 114708-1 | 896991010000101 | Threshold presence of Providencia stuartii DNA in specimen at point in time by molecular genetics (observable entity) |
| 114709-9 | 897001010000107 | Threshold presence of Providencia rettgeri DNA in specimen at point in time by molecular genetics (observable entity) |
| 114710-7 | 897011010000105 | Threshold presence of Proteus vulgaris DNA in specimen at point in time by molecular genetics (observable entity) |
| 114711-5 | 897021010000104 | Threshold presence of Proteus DNA in specimen at point in time by molecular genetics (observable entity) |
| 114713-1 | 897031010000101 | Threshold presence of Proteus mirabilis DNA in specimen at point in time by molecular genetics (observable entity) |
| 114714-9 | 897041010000109 | Threshold presence of Propionibacteriaceae DNA in specimen at point in time by molecular genetics (observable entity) |
| 114715-6 | 897051010000106 | Threshold presence of Prevotella intermedia DNA in specimen at point in time by molecular genetics (observable entity) |
| 114716-4 | 897061010000108 | Threshold presence of Prevotella buccae DNA in specimen at point in time by molecular genetics (observable entity) |
| 114717-2 | 897071010000103 | Threshold presence of Powassan virus RNA in specimen at point in time by molecular genetics (observable entity) |
| 114732-1 | 897081010000100 | Threshold presence of Pneumocystis murina DNA in specimen at point in time by molecular genetics (observable entity) |
| 114733-9 | 897091010000102 | Threshold presence of Pneumocystis jirovecii DNA in specimen at point in time by molecular genetics (observable entity) |
| 114735-4 | 897101010000106 | Threshold presence of Plasmodium vivax DNA in specimen at point in time by molecular genetics (observable entity) |
| 114736-2 | 897111010000109 | Threshold presence of Plasmodium DNA in specimen at point in time by molecular genetics (observable entity) |
| 114737-0 | 897121010000103 | Threshold presence of Plasmodium ovale DNA in specimen at point in time by molecular genetics (observable entity) |
| 114738-8 | 897131010000100 | Threshold presence of Plasmodium malariae DNA in specimen at point in time by molecular genetics (observable entity) |
| 114739-6 | 897141010000108 | Threshold presence of Plasmodium knowlesi DNA in specimen at point in time by molecular genetics (observable entity) |
| 114740-4 | 897151010000105 | Threshold presence of Plasmodium falciparum DNA in specimen at point in time by molecular genetics (observable entity) |
| 114741-2 | 897161010000107 | Threshold presence of Pichia DNA in specimen at point in time by molecular genetics (observable entity) |
| 114742-0 | 897171010000102 | Threshold presence of Pichia kudriavzevii DNA in specimen at point in time by molecular genetics (observable entity) |
| 114743-8 | 897181010000104 | Threshold presence of Phlebovirus RNA in specimen at point in time by molecular genetics (observable entity) |
| 114745-3 | 897191010000101 | Threshold presence of Peptostreptococcus anaerobius DNA in specimen at point in time by molecular genetics (observable entity) |
| 114746-1 | 897201010000103 | Threshold presence of Peptoniphilus DNA in specimen at point in time by molecular genetics (observable entity) |
| 114748-7 | 897211010000100 | Threshold presence of Pasteurella multocida rRNA in specimen at point in time by molecular genetics (observable entity) |
| 114749-5 | 897221010000106 | Threshold presence of Pasteurella multocida DNA in specimen at point in time by molecular genetics (observable entity) |
| 114750-3 | 897231010000109 | Threshold presence of Human parvovirus B19 RNA in specimen at point in time by molecular genetics (observable entity) |
| 114751-1 | 897241010000101 | Threshold presence of Human parvovirus B19 DNA in specimen at point in time by molecular genetics (observable entity) |
| 114752-9 | 897251010000104 | Threshold presence of Parvimonas micra DNA in specimen at point in time by molecular genetics (observable entity) |
| 114753-7 | 897261010000102 | Threshold presence of Parechovirus RNA in specimen at point in time by molecular genetics (observable entity) |
| 114754-5 | 897271010000107 | Threshold presence of Human parechovirus RNA in specimen at point in time by molecular genetics (observable entity) |
| 114755-2 | 897281010000105 | Threshold presence of Parapoxvirus DNA in specimen at point in time by molecular genetics (observable entity) |
| 114756-0 | 897291010000108 | Threshold presence of Parainfluenza virus RNA in specimen at point in time by molecular genetics (observable entity) |
| 114757-8 | 897301010000109 | Threshold presence of Parainfluenza virus 4b RNA in specimen at point in time by molecular genetics (observable entity) |
| 114758-6 | 897311010000107 | Threshold presence of Parainfluenza virus 4a RNA in specimen at point in time by molecular genetics (observable entity) |
| 114765-1 | 897321010000101 | Threshold presence of Pantoea DNA in specimen at point in time by molecular genetics (observable entity) |
| 114770-1 | 897331010000103 | Threshold presence of Orthopoxvirus DNA in specimen at point in time by molecular genetics (observable entity) |
| 114771-9 | 897341010000106 | Threshold presence of Orthobunyavirus oropoucheense RNA in specimen at point in time by molecular genetics (observable entity) |
| 114772-7 | 897351010000108 | Threshold presence of Orientia tsutsugamushi DNA in specimen at point in time by molecular genetics (observable entity) |
| 114773-5 | 897361010000105 | Threshold presence of Parapoxvirus orf DNA in specimen at point in time by molecular genetics (observable entity) |
| 114774-3 | 897371010000100 | Threshold presence of Alphavirus onyong RNA in specimen at point in time by molecular genetics (observable entity) |
| 114775-0 | 897381010000102 | Threshold presence of Norovirus RNA in specimen at point in time by molecular genetics (observable entity) |
| 114776-8 | 897391010000104 | Threshold presence of Norovirus genogroup II RNA in specimen at point in time by molecular genetics (observable entity) |
| 114778-4 | 897401010000102 | Threshold presence of Norovirus genogroup I RNA in specimen at point in time by molecular genetics (observable entity) |
| 114779-2 | 897411010000104 | Threshold presence of Nocardia DNA in specimen at point in time by molecular genetics (observable entity) |
| 114781-8 | 897421010000105 | Threshold presence of Neisseria meningitidis serogroup Y DNA in specimen at point in time by molecular genetics (observable entity) |
| 114782-6 | 897431010000108 | Threshold presence of Neisseria meningitidis serogroup X DNA in specimen at point in time by molecular genetics (observable entity) |
| 114783-4 | 897441010000100 | Threshold presence of Neisseria meningitidis serogroup W135 DNA in specimen at point in time by molecular genetics (observable entity) |
| 114784-2 | 897451010000103 | Threshold presence of Neisseria meningitidis serogroup C DNA in specimen at point in time by molecular genetics (observable entity) |
| 114785-9 | 897461010000101 | Threshold presence of Neisseria meningitidis serogroup B DNA in specimen at point in time by molecular genetics (observable entity) |
| 114786-7 | 897471010000106 | Threshold presence of Neisseria meningitidis serogroup A DNA in specimen at point in time by molecular genetics (observable entity) |
| 114787-5 | 897481010000109 | Threshold presence of Neisseria meningitidis rRNA in specimen at point in time by molecular genetics (observable entity) |
| 114788-3 | 897491010000107 | Threshold presence of Neisseria meningitidis DNA in specimen at point in time by molecular genetics (observable entity) |
| 114789-1 | 897501010000101 | Threshold presence of Nannizzia persicolor DNA in specimen at point in time by molecular genetics (observable entity) |
| 114790-9 | 897511010000103 | Threshold presence of Nannizzia incurvata DNA in specimen at point in time by molecular genetics (observable entity) |
| 114791-7 | 897521010000109 | Threshold presence of Nannizzia gypsea DNA in specimen at point in time by molecular genetics (observable entity) |
| 114792-5 | 897531010000107 | Threshold presence of Nannizzia fulva DNA in specimen at point in time by molecular genetics (observable entity) |
| 114793-3 | 897541010000104 | Threshold presence of Nakaseomyces nivariensis DNA in specimen at point in time by molecular genetics (observable entity) |
| 114794-1 | 897551010000102 | Threshold presence of Nakaseomyces bracarensis DNA in specimen at point in time by molecular genetics (observable entity) |
| 114795-8 | 897561010000100 | Threshold presence of Naegleria fowleri DNA in specimen at point in time by molecular genetics (observable entity) |
| 114798-2 | 897571010000105 | Threshold presence of Mycoplasma rRNA in specimen at point in time by molecular genetics (observable entity) |
| 114799-0 | 897581010000108 | Threshold presence of Mycoplasma DNA in specimen at point in time by molecular genetics (observable entity) |
| 114800-6 | 897591010000106 | Threshold presence of Mycoplasma pneumoniae rRNA in specimen at point in time by molecular genetics (observable entity) |
| 114801-4 | 897601010000100 | Threshold presence of Mycoplasma penetrans DNA in specimen at point in time by molecular genetics (observable entity) |
| 114804-8 | 897611010000102 | Threshold presence of Mycoplasma hominis DNA in specimen at point in time by molecular genetics (observable entity) |
| 114805-5 | 897621010000108 | Threshold presence of Mycoplasma genitalium rRNA in specimen at point in time by molecular genetics (observable entity) |
| 114806-3 | 897631010000106 | Threshold presence of Mycoplasma genitalium DNA in specimen at point in time by molecular genetics (observable entity) |
| 114811-3 | 897641010000103 | Threshold presence of Mycoplasma fermentans DNA in specimen at point in time by molecular genetics (observable entity) |
| 114815-4 | 897651010000101 | Threshold presence of Mycobacterium ulcerans DNA in specimen at point in time by molecular genetics (observable entity) |
| 114816-2 | 897661010000104 | Threshold presence of Mycobacterium tuberculosis rRNA in specimen at point in time by molecular genetics (observable entity) |
| 114817-0 | 897671010000109 | Threshold presence of Mycobacterium tuberculosis DNA in specimen at point in time by molecular genetics (observable entity) |
| 114818-8 | 897681010000107 | Threshold presence of Mycobacterium tuberculosis complex rRNA in specimen at point in time by molecular genetics (observable entity) |
| 114819-6 | 897691010000105 | Threshold presence of Mycobacterium tuberculosis complex DNA in specimen at point in time by molecular genetics (observable entity) |
| 114820-4 | 897701010000105 | Threshold presence of Mycobacterium rRNA in specimen at point in time by molecular genetics (observable entity) |
| 114821-2 | 897711010000108 | Threshold presence of Mycobacterium DNA in specimen at point in time by molecular genetics (observable entity) |
| 114822-0 | 897721010000102 | Threshold presence of Mycobacterium marinum DNA in specimen at point in time by molecular genetics (observable entity) |
| 114823-8 | 897731010000104 | Threshold presence of Mycobacterium leprae DNA in specimen at point in time by molecular genetics (observable entity) |
| 114824-6 | 897741010000107 | Threshold presence of Mycobacterium kansasii rRNA in specimen at point in time by molecular genetics (observable entity) |
| 114825-3 | 897751010000109 | Threshold presence of Mycobacterium kansasii DNA in specimen at point in time by molecular genetics (observable entity) |
| 114826-1 | 897761010000106 | Threshold presence of Mycobacterium intracellulare rRNA in specimen at point in time by molecular genetics (observable entity) |
| 114827-9 | 897771010000101 | Threshold presence of Mycobacterium gordonae rRNA in specimen at point in time by molecular genetics (observable entity) |
| 114830-3 | 897781010000103 | Threshold presence of Mycobacterium avium subspecies avium rRNA in specimen at point in time by molecular genetics (observable entity) |
| 114831-1 | 897791010000100 | Threshold presence of Mycobacterium avium complex rRNA in specimen at point in time by molecular genetics (observable entity) |
| 114832-9 | 897801010000104 | Threshold presence of Mycobacterium avium complex DNA in specimen at point in time by molecular genetics (observable entity) |
| 114833-7 | 897811010000101 | Threshold presence of Mycobacterium abscessus DNA in specimen at point in time by molecular genetics (observable entity) |
| 114834-5 | 897821010000107 | Threshold presence of Orthoflavivirus murrayense RNA in specimen at point in time by molecular genetics (observable entity) |
| 114835-2 | 897831010000105 | Threshold presence of Orthorubulavirus parotitidis RNA in specimen at point in time by molecular genetics (observable entity) |
| 114836-0 | 897841010000102 | Threshold presence of Morganella morganii DNA in specimen at point in time by molecular genetics (observable entity) |
| 114837-8 | 897851010000100 | Threshold presence of Moraxella catarrhalis DNA in specimen at point in time by molecular genetics (observable entity) |
| 114838-6 | 897861010000103 | Threshold presence of Orthopoxvirus monkeypox DNA in specimen at point in time by molecular genetics (observable entity) |
| 114843-6 | 897871010000108 | Threshold presence of Mobiluncus rRNA in specimen at point in time by molecular genetics (observable entity) |
| 114844-4 | 897881010000106 | Threshold presence of Betacoronavirus cameli upstream of E gene RNA in specimen at point in time by molecular genetics (observable entity) |
| 114845-1 | 897891010000109 | Threshold presence of Betacoronavirus cameli RNA in specimen at point in time by molecular genetics (observable entity) |
| 114846-9 | 897901010000108 | Threshold presence of Betacoronavirus cameli N3 gene RNA in specimen at point in time by molecular genetics (observable entity) |
| 114847-7 | 897911010000106 | Threshold presence of Betacoronavirus cameli N2 gene RNA in specimen at point in time by molecular genetics (observable entity) |
| 114848-5 | 897921010000100 | Threshold presence of Microsporum ferrugineum DNA in specimen at point in time by molecular genetics (observable entity) |
| 114849-3 | 897931010000102 | Threshold presence of Microsporum canis DNA in specimen at point in time by molecular genetics (observable entity) |
| 114850-1 | 897941010000105 | Threshold presence of Microsporum audouinii DNA in specimen at point in time by molecular genetics (observable entity) |
| 114851-9 | 897951010000107 | Threshold presence of Microsporidia DNA in specimen at point in time by molecular genetics (observable entity) |
| 114852-7 | 897961010000109 | Threshold presence of Micrococcus DNA in specimen at point in time by molecular genetics (observable entity) |
| 114853-5 | 897971010000104 | Threshold presence of Micrococcus luteus DNA in specimen at point in time by molecular genetics (observable entity) |
| 114854-3 | 897981010000101 | Threshold presence of Measles virus RNA in specimen at point in time by molecular genetics (observable entity) |
| 114856-8 | 897991010000103 | Threshold presence of Alphavirus mayaro RNA in specimen at point in time by molecular genetics (observable entity) |
| 114858-4 | 898001010000106 | Threshold presence of Marburg virus RNA in specimen at point in time by molecular genetics (observable entity) |
| 114859-2 | 898011010000109 | Threshold presence of Lymphocytic choriomeningitis virus RNA in specimen at point in time by molecular genetics (observable entity) |
| 114861-8 | 898021010000103 | Threshold presence of Loa loa DNA in specimen at point in time by molecular genetics (observable entity) |
| 114864-2 | 898031010000100 | Threshold presence of Listeria monocytogenes rRNA in specimen at point in time by molecular genetics (observable entity) |
| 114865-9 | 898041010000108 | Threshold presence of Listeria monocytogenes DNA in specimen at point in time by molecular genetics (observable entity) |
| 114866-7 | 898051010000105 | Threshold presence of Leptospira DNA in specimen at point in time by molecular genetics (observable entity) |
| 114867-5 | 898061010000107 | Threshold presence of Leishmania DNA in specimen at point in time by molecular genetics (observable entity) |
| 114869-1 | 898071010000102 | Threshold presence of Legionella rRNA in specimen at point in time by molecular genetics (observable entity) |
| 114870-9 | 898081010000104 | Threshold presence of Legionella DNA in specimen at point in time by molecular genetics (observable entity) |
| 114871-7 | 898091010000101 | Threshold presence of Legionella pneumophila DNA in specimen at point in time by molecular genetics (observable entity) |
| 114872-5 | 898101010000105 | Threshold presence of Legionella micdadei DNA in specimen at point in time by molecular genetics (observable entity) |
| 114873-3 | 898111010000108 | Threshold presence of Mammarenavirus lassaense RNA in specimen at point in time by molecular genetics (observable entity) |
| 114874-1 | 898121010000102 | Threshold presence of Lactobacillus DNA in specimen at point in time by molecular genetics (observable entity) |
| 114877-4 | 898131010000104 | Threshold presence of La Crosse virus RNA in specimen at point in time by molecular genetics (observable entity) |
| 114878-2 | 898141010000107 | Threshold presence of Klebsiella variicola subspecies tropica DNA in specimen at point in time by molecular genetics (observable entity) |
| 114881-6 | 898151010000109 | Threshold presence of Klebsiella pneumoniae DNA in specimen at point in time by molecular genetics (observable entity) |
| 114883-2 | 898161010000106 | Threshold presence of Klebsiella oxytoca DNA in specimen at point in time by molecular genetics (observable entity) |
| 114885-7 | 898171010000101 | Threshold presence of Klebsiella aerogenes DNA in specimen at point in time by molecular genetics (observable entity) |
| 114887-3 | 898181010000103 | Threshold presence of Kingella kingae DNA in specimen at point in time by molecular genetics (observable entity) |
| 114888-1 | 898191010000100 | Threshold presence of John Cunningham virus DNA in specimen at point in time by molecular genetics (observable entity) |
| 114889-9 | 898201010000102 | Threshold presence of Japanese encephalitis virus RNA in specimen at point in time by molecular genetics (observable entity) |
| 114890-7 | 898211010000104 | Threshold presence of Jamestown Canyon virus RNA in specimen at point in time by molecular genetics (observable entity) |
| 114891-5 | 898221010000105 | Threshold presence of Influenza C virus RNA in specimen at point in time by molecular genetics (observable entity) |
| 114892-3 | 898231010000108 | Threshold presence of Betainfluenzavirus influenzae Yamagata lineage RNA in specimen at point in time by molecular genetics (observable entity) |
| 114893-1 | 898241010000100 | Threshold presence of Betainfluenzavirus influenzae Victoria lineage RNA in specimen at point in time by molecular genetics (observable entity) |
| 114897-2 | 898251010000103 | Threshold presence of Influenza A virus N1 RNA in specimen at point in time by molecular genetics (observable entity) |
| 114899-8 | 898261010000101 | Threshold presence of Influenza A virus H9 RNA in specimen at point in time by molecular genetics (observable entity) |
| 114900-4 | 898271010000106 | Threshold presence of Influenza A virus H7 RNA in specimen at point in time by molecular genetics (observable entity) |
| 114902-0 | 898281010000109 | Threshold presence of Influenza A virus H6 RNA in specimen at point in time by molecular genetics (observable entity) |
| 114905-3 | 898291010000107 | Threshold presence of Influenza A virus H5 RNA in specimen at point in time by molecular genetics (observable entity) |
| 114906-1 | 898301010000108 | Threshold presence of Influenza A virus H5 Asian lineage RNA in specimen at point in time by molecular genetics (observable entity) |
| 114908-7 | 898311010000106 | Threshold presence of Influenza A virus H2 RNA in specimen at point in time by molecular genetics (observable entity) |
| 114912-9 | 898321010000100 | Threshold presence of Alphainfluenzavirus influenzae H3N2 variant RNA in specimen at point in time by molecular genetics (observable entity) |
| 114914-5 | 898331010000102 | Threshold presence of Orthoflavivirus ilheusense RNA in specimen at point in time by molecular genetics (observable entity) |
| 114916-0 | 898351010000107 | Threshold presence of Enterovirus alpharhino RNA in specimen at point in time by molecular genetics (observable entity) |
| 114918-6 | 898361010000109 | Threshold presence of Papillomavirus rRNA in specimen at point in time by molecular genetics (observable entity) |
| 114919-4 | 898371010000104 | Threshold presence of Human papillomavirus 82 DNA in specimen at point in time by molecular genetics (observable entity) |
| 114920-2 | 898381010000101 | Threshold presence of Human papillomavirus 73 DNA in specimen at point in time by molecular genetics (observable entity) |
| 114921-0 | 898391010000103 | Threshold presence of Human papillomavirus 70 DNA in specimen at point in time by molecular genetics (observable entity) |
| 114922-8 | 898401010000101 | Threshold presence of Human papillomavirus 69 DNA in specimen at point in time by molecular genetics (observable entity) |
| 114923-6 | 898411010000103 | Threshold presence of Human papillomavirus 68 DNA in specimen at point in time by molecular genetics (observable entity) |
| 114924-4 | 898421010000109 | Threshold presence of Human papillomavirus 67 DNA in specimen at point in time by molecular genetics (observable entity) |
| 114925-1 | 898431010000107 | Threshold presence of Human papillomavirus 66 DNA in specimen at point in time by molecular genetics (observable entity) |
| 114930-1 | 898441010000104 | Threshold presence of Human papillomavirus 6 DNA in specimen at point in time by molecular genetics (observable entity) |
| 114931-9 | 898451010000102 | Threshold presence of Human papillomavirus 59 DNA in specimen at point in time by molecular genetics (observable entity) |
| 114932-7 | 898461010000100 | Threshold presence of Human papillomavirus 58 DNA in specimen at point in time by molecular genetics (observable entity) |
| 114934-3 | 898471010000105 | Threshold presence of Human papillomavirus 56 DNA in specimen at point in time by molecular genetics (observable entity) |
| 114935-0 | 898481010000108 | Threshold presence of Human papillomavirus 53 DNA in specimen at point in time by molecular genetics (observable entity) |
| 114936-8 | 898491010000106 | Threshold presence of Human papillomavirus 52 DNA in specimen at point in time by molecular genetics (observable entity) |
| 114937-6 | 898501010000100 | Threshold presence of Human papillomavirus 51 DNA in specimen at point in time by molecular genetics (observable entity) |
| 114938-4 | 898511010000102 | Threshold presence of Human papillomavirus 45 DNA in specimen at point in time by molecular genetics (observable entity) |
| 114939-2 | 898521010000108 | Threshold presence of Human papillomavirus 44 DNA in specimen at point in time by molecular genetics (observable entity) |
| 114940-0 | 898531010000106 | Threshold presence of Human papillomavirus 42 DNA in specimen at point in time by molecular genetics (observable entity) |
| 114941-8 | 898541010000103 | Threshold presence of Human papillomavirus 39 DNA in specimen at point in time by molecular genetics (observable entity) |
| 114944-2 | 898551010000101 | Threshold presence of Human papillomavirus 35 DNA in specimen at point in time by molecular genetics (observable entity) |
| 114946-7 | 898561010000104 | Threshold presence of Human papillomavirus 33 DNA in specimen at point in time by molecular genetics (observable entity) |
| 114951-7 | 898571010000109 | Threshold presence of Human papillomavirus 31 DNA in specimen at point in time by molecular genetics (observable entity) |
| 114953-3 | 898581010000107 | Threshold presence of Human papillomavirus 26 DNA in specimen at point in time by molecular genetics (observable entity) |
| 114956-6 | 898591010000105 | Threshold presence of Human papillomavirus 18 DNA in specimen at point in time by molecular genetics (observable entity) |
| 114966-5 | 898601010000104 | Threshold presence of Alphapapillomavirus 9 mRNA in specimen at point in time by molecular genetics (observable entity) |
| 114968-1 | 898611010000101 | Threshold presence of Human papillomavirus 16 DNA in specimen at point in time by molecular genetics (observable entity) |
| 114971-5 | 898621010000107 | Threshold presence of Human papillomavirus 11 DNA in specimen at point in time by molecular genetics (observable entity) |
| 114972-3 | 898631010000105 | Threshold presence of Human metapneumovirus B RNA in specimen at point in time by molecular genetics (observable entity) |
| 114974-9 | 898641010000102 | Threshold presence of Human metapneumovirus A RNA in specimen at point in time by molecular genetics (observable entity) |
| 114975-6 | 898651010000100 | Threshold presence of Human coronavirus RNA in specimen at point in time by molecular genetics (observable entity) |
| 114981-4 | 898661010000103 | Threshold presence of Human bocavirus DNA in specimen at point in time by molecular genetics (observable entity) |
| 114984-8 | 898671010000108 | Threshold presence of Human T-lymphotropic virus type 2 DNA in specimen at point in time by molecular genetics (observable entity) |
| 114987-1 | 898681010000106 | Threshold presence of Human T-lymphotropic virus type 1 DNA in specimen at point in time by molecular genetics (observable entity) |
| 114989-7 | 898691010000109 | Threshold presence of Human immunodeficiency virus 2 RNA in specimen at point in time by molecular genetics (observable entity) |
| 114990-5 | 898701010000109 | Threshold presence of HIV 2 proviral DNA in specimen at point in time by molecular genetics (observable entity) |
| 114997-0 | 898711010000107 | Threshold presence of Human immunodeficiency virus 1 RNA in specimen at point in time by molecular genetics (observable entity) |
| 114998-8 | 898721010000101 | Threshold presence of Human immunodeficiency virus 1 proviral DNA in specimen at point in time by molecular genetics (observable entity) |
| 115002-8 | 898731010000103 | Threshold presence of Histoplasma capsulatum rRNA in specimen at point in time by molecular genetics (observable entity) |
| 115003-6 | 898741010000106 | Threshold presence of Histoplasma capsulatum DNA in specimen at point in time by molecular genetics (observable entity) |
| 115004-4 | 898751010000108 | Threshold presence of Alphavirus highlandsj RNA in specimen at point in time by molecular genetics (observable entity) |
| 115005-1 | 898761010000105 | Threshold presence of Human herpesvirus 8 DNA in specimen at point in time by molecular genetics (observable entity) |
| 115006-9 | 898771010000100 | Threshold presence of Human herpesvirus 7 DNA in specimen at point in time by molecular genetics (observable entity) |
| 115007-7 | 898781010000102 | Threshold presence of Human herpesvirus 6B DNA in specimen at point in time by molecular genetics (observable entity) |
| 115008-5 | 898791010000104 | Threshold presence of Human herpesvirus 6A DNA in specimen at point in time by molecular genetics (observable entity) |
| 115009-3 | 898801010000103 | Threshold presence of Human herpesvirus 6 DNA in specimen at point in time by molecular genetics (observable entity) |
| 115011-9 | 898811010000100 | Threshold presence of human herpes simplex virus DNA in specimen at point in time by molecular genetics (observable entity) |
| 115013-5 | 898821010000106 | Threshold presence of Human alphaherpesvirus 2 DNA in specimen at point in time by molecular genetics (observable entity) |
| 115016-8 | 898831010000109 | Threshold presence of Human alphaherpesvirus 1 DNA in specimen at point in time by molecular genetics (observable entity) |
| 115017-6 | 898841010000101 | Threshold presence of Hepatitis G virus RNA in specimen at point in time by molecular genetics (observable entity) |
| 115018-4 | 898851010000104 | Threshold presence of Hepatitis E virus RNA in specimen at point in time by molecular genetics (observable entity) |
| 115020-0 | 898861010000102 | Threshold presence of Hepatitis D virus RNA in specimen at point in time by molecular genetics (observable entity) |
| 115021-8 | 898871010000107 | Threshold presence of Hepatitis C virus RNA in specimen at point in time by molecular genetics (observable entity) |
| 115023-4 | 898881010000105 | Threshold presence of Hepatitis B virus rRNA in specimen at point in time by molecular genetics (observable entity) |
| 115025-9 | 898891010000108 | Threshold presence of Hepatitis B virus polymerase DNA in specimen at point in time by molecular genetics (observable entity) |
| 115026-7 | 898901010000107 | Threshold presence of Hepatitis B virus DNA in specimen at point in time by molecular genetics (observable entity) |
| 115027-5 | 898911010000105 | Threshold presence of Hepatitis A virus RNA in specimen at point in time by molecular genetics (observable entity) |
| 115028-3 | 898921010000104 | Threshold presence of Henipavirus hendraense RNA in specimen at point in time by molecular genetics (observable entity) |
| 115029-1 | 898931010000101 | Threshold presence of Helicobacter pylori DNA in specimen at point in time by molecular genetics (observable entity) |
| 115030-9 | 898941010000109 | Threshold presence of Bandavirus heartlandense RNA in specimen at point in time by molecular genetics (observable entity) |
| 115031-7 | 898951010000106 | Threshold presence of Hantavirus RNA in specimen at point in time by molecular genetics (observable entity) |
| 115032-5 | 898961010000108 | Threshold presence of Orthohantavirus puumalaense RNA in specimen at point in time by molecular genetics (observable entity) |
| 115033-3 | 898971010000103 | Threshold presence of Haemophilus parainfluenzae DNA in specimen at point in time by molecular genetics (observable entity) |
| 115034-1 | 898981010000100 | Threshold presence of Haemophilus influenzae rRNA in specimen at point in time by molecular genetics (observable entity) |
| 115037-4 | 898991010000102 | Threshold presence of Haemophilus influenzae DNA in specimen at point in time by molecular genetics (observable entity) |
| 115040-8 | 899001010000102 | Threshold presence of Haemophilus influenzae type b DNA in specimen at point in time by molecular genetics (observable entity) |
| 115041-6 | 899011010000104 | Threshold presence of Haemophilus influenzae type a DNA in specimen at point in time by molecular genetics (observable entity) |
| 115042-4 | 899021010000105 | Threshold presence of Haemophilus haemolyticus DNA in specimen at point in time by molecular genetics (observable entity) |
| 115043-2 | 899031010000108 | Threshold presence of Haemophilus ducreyi DNA in specimen at point in time by molecular genetics (observable entity) |
| 115044-0 | 899041010000100 | Threshold presence of Granulicatella adiacens DNA in specimen at point in time by molecular genetics (observable entity) |
| 115049-9 | 899051010000103 | Threshold presence of Giardia lamblia DNA in specimen at point in time by molecular genetics (observable entity) |
| 115050-7 | 899061010000101 | Threshold presence of Giardia lamblia 18S rRNA in specimen at point in time by molecular genetics (observable entity) |
| 115052-3 | 899071010000106 | Threshold presence of Gardnerella vaginalis rRNA in specimen at point in time by molecular genetics (observable entity) |
| 115053-1 | 899081010000109 | Threshold presence of Gardnerella vaginalis DNA in specimen at point in time by molecular genetics (observable entity) |
| 115054-9 | 899091010000107 | Threshold presence of Fusobacterium DNA in specimen at point in time by molecular genetics (observable entity) |
| 115055-6 | 899101010000103 | Threshold presence of Fusobacterium nucleatum DNA in specimen at point in time by molecular genetics (observable entity) |
| 115056-4 | 899111010000100 | Threshold presence of Fusobacterium necrophorum DNA in specimen at point in time by molecular genetics (observable entity) |
| 115057-2 | 899121010000106 | Threshold presence of Fusarium DNA in specimen at point in time by molecular genetics (observable entity) |
| 115059-8 | 899131010000109 | Threshold presence of Fusarium oxysporum DNA in specimen at point in time by molecular genetics (observable entity) |
| 115064-8 | 899141010000101 | Threshold presence of Francisella tularensis rRNA in specimen at point in time by molecular genetics (observable entity) |
| 115065-5 | 899151010000104 | Threshold presence of Francisella tularensis DNA in specimen at point in time by molecular genetics (observable entity) |
| 115066-3 | 899161010000102 | Threshold presence of Francisella tularensis holarctica rRNA in specimen at point in time by molecular genetics (observable entity) |
| 115067-1 | 899171010000107 | Threshold presence of Francisella tularensis holarctica DNA in specimen at point in time by molecular genetics (observable entity) |
| 115068-9 | 899181010000105 | Threshold presence of Francisella tularensis tularensis rRNA in specimen at point in time by molecular genetics (observable entity) |
| 115069-7 | 899191010000108 | Threshold presence of Francisella tularensis tularensis DNA in specimen at point in time by molecular genetics (observable entity) |
| 115072-1 | 899201010000106 | Threshold presence of Flavivirus RNA in specimen at point in time by molecular genetics (observable entity) |
| 115073-9 | 899211010000109 | Threshold presence of Finegoldia magna DNA in specimen at point in time by molecular genetics (observable entity) |
| 115074-7 | 899221010000103 | Threshold presence of Filaria DNA in specimen at point in time by molecular genetics (observable entity) |
| 115076-2 | 899231010000100 | Threshold presence of Exserohilum rostratum DNA in specimen at point in time by molecular genetics (observable entity) |
| 115085-3 | 899241010000108 | Threshold presence of Escherichia coli O157:H7 DNA in specimen at point in time by molecular genetics (observable entity) |
| 115087-9 | 899251010000105 | Threshold presence of Escherichia coli O157 DNA in specimen at point in time by molecular genetics (observable entity) |
| 115088-7 | 899261010000107 | Threshold presence of Escherichia coli K99 DNA in specimen at point in time by molecular genetics (observable entity) |
| 115089-5 | 899271010000102 | Threshold presence of Escherichia coli K88 DNA in specimen at point in time by molecular genetics (observable entity) |
| 115090-3 | 899281010000104 | Threshold presence of Escherichia coli K1 DNA in specimen at point in time by molecular genetics (observable entity) |
| 115099-4 | 899291010000101 | Threshold presence of enterotoxigenic Escherichia coli DNA in specimen at point in time by molecular genetics (observable entity) |
| 115101-8 | 899301010000100 | Threshold presence of enteropathogenic Escherichia coli DNA in specimen at point in time by molecular genetics (observable entity) |
| 115102-6 | 899311010000102 | Threshold presence of enteroinvasive Escherichia coli DNA in specimen at point in time by molecular genetics (observable entity) |
| 115104-2 | 899321010000108 | Threshold presence of enteroaggregative Escherichia coli DNA in specimen at point in time by molecular genetics (observable entity) |
| 115107-5 | 899331010000106 | Threshold presence of Escherichia coli DNA in specimen at point in time by molecular genetics (observable entity) |
| 115115-8 | 899341010000103 | Threshold presence of Epstein-Barr virus-encoded RNA 1 in specimen at point in time by molecular genetics (observable entity) |
| 115116-6 | 899351010000101 | Threshold presence of Epstein-Barr virus DNA in specimen at point in time by molecular genetics (observable entity) |
| 115118-2 | 899361010000104 | Threshold presence of Epidermophyton floccosum DNA in specimen at point in time by molecular genetics (observable entity) |
| 115119-0 | 899371010000109 | Threshold presence of Enterovirus RNA in specimen at point in time by molecular genetics (observable entity) |
| 115121-6 | 899381010000107 | Threshold presence of Enterovirus D68 RNA in specimen at point in time by molecular genetics (observable entity) |
| 115123-2 | 899391010000105 | Threshold presence of Enterovirus 71 RNA in specimen at point in time by molecular genetics (observable entity) |
| 115124-0 | 899401010000107 | Threshold presence of Enterocytozoon bieneusi DNA in specimen at point in time by molecular genetics (observable entity) |
| 115126-5 | 899411010000105 | Threshold presence of Enterococcus rRNA in specimen at point in time by molecular genetics (observable entity) |
| 115127-3 | 899421010000104 | Threshold presence of Enterococcus DNA in specimen at point in time by molecular genetics (observable entity) |
| 115129-9 | 899431010000101 | Threshold presence of Enterococcus faecium DNA in specimen at point in time by molecular genetics (observable entity) |
| 115132-3 | 899441010000109 | Threshold presence of Enterococcus faecalis DNA in specimen at point in time by molecular genetics (observable entity) |
| 115134-9 | 899451010000106 | Threshold presence of Enterobacteriaceae DNA in specimen at point in time by molecular genetics (observable entity) |
| 115135-6 | 899461010000108 | Threshold presence of Enterobacterales DNA in specimen at point in time by molecular genetics (observable entity) |
| 115138-0 | 899471010000103 | Threshold presence of Enterobacter roggenkampii DNA in specimen at point in time by molecular genetics (observable entity) |
| 115139-8 | 899481010000100 | Threshold presence of Enterobacter hormaechei DNA in specimen at point in time by molecular genetics (observable entity) |
| 115140-6 | 899491010000102 | Threshold presence of Enterobacter cloacae DNA in specimen at point in time by molecular genetics (observable entity) |
| 115141-4 | 899501010000108 | Threshold presence of Enterobacter cloacae complex DNA in specimen at point in time by molecular genetics (observable entity) |
| 115144-8 | 899511010000106 | Threshold presence of Entamoeba moshkovskii DNA in specimen at point in time by molecular genetics (observable entity) |
| 115146-3 | 899521010000100 | Threshold presence of Entamoeba histolytica DNA in specimen at point in time by molecular genetics (observable entity) |
| 115147-1 | 899531010000102 | Threshold presence of Entamoeba histolytica 18S rRNA in specimen at point in time by molecular genetics (observable entity) |
| 115148-9 | 899541010000105 | Threshold presence of Entamoeba hartmanni DNA in specimen at point in time by molecular genetics (observable entity) |
| 115149-7 | 899551010000107 | Threshold presence of Entamoeba dispar DNA in specimen at point in time by molecular genetics (observable entity) |
| 115150-5 | 899561010000109 | Threshold presence of Entamoeba coli DNA in specimen at point in time by molecular genetics (observable entity) |
| 115151-3 | 899571010000104 | Threshold presence of Entamoeba bangladeshi DNA in specimen at point in time by molecular genetics (observable entity) |
| 115154-7 | 899581010000101 | Threshold presence of Encephalitozoon intestinalis DNA in specimen at point in time by molecular genetics (observable entity) |
| 115155-4 | 899591010000103 | Threshold presence of Encephalitozoon hellem DNA in specimen at point in time by molecular genetics (observable entity) |
| 115156-2 | 899601010000109 | Threshold presence of Encephalitozoon cuniculi DNA in specimen at point in time by molecular genetics (observable entity) |
| 115157-0 | 899611010000107 | Threshold presence of Eikenella corrodens DNA in specimen at point in time by molecular genetics (observable entity) |
| 115158-8 | 899621010000101 | Threshold presence of Ehrlichia DNA in specimen at point in time by molecular genetics (observable entity) |
| 115160-4 | 899631010000103 | Threshold presence of Ehrlichia ewingii DNA in specimen at point in time by molecular genetics (observable entity) |
| 115162-0 | 899641010000106 | Threshold presence of Ehrlichia chaffeensis DNA in specimen at point in time by molecular genetics (observable entity) |
| 115165-3 | 899651010000108 | Threshold presence of Echovirus 4 RNA in specimen at point in time by molecular genetics (observable entity) |
| 115166-1 | 899661010000105 | Threshold presence of Echovirus 30 RNA in specimen at point in time by molecular genetics (observable entity) |
| 115167-9 | 899671010000100 | Threshold presence of Echovirus 11 RNA in specimen at point in time by molecular genetics (observable entity) |
| 115169-5 | 899681010000102 | Threshold presence of Orthoebolavirus zairense RNA in specimen at point in time by molecular genetics (observable entity) |
| 115170-3 | 899691010000104 | Threshold presence of Ebola virus RNA in specimen at point in time by molecular genetics (observable entity) |
| 115171-1 | 899701010000104 | Threshold presence of Eastern equine encephalitis virus RNA in specimen at point in time by molecular genetics (observable entity) |
| 115173-7 | 899711010000101 | Threshold presence of Dientamoeba fragilis DNA in specimen at point in time by molecular genetics (observable entity) |
| 115176-0 | 899721010000107 | Threshold presence of Dengue virus RNA in specimen at point in time by molecular genetics (observable entity) |
| 115177-8 | 899731010000105 | Threshold presence of Dengue virus DNA in specimen at point in time by molecular genetics (observable entity) |
| 115178-6 | 899741010000102 | Threshold presence of Dengue virus 4 RNA in specimen at point in time by molecular genetics (observable entity) |
| 115179-4 | 899751010000100 | Threshold presence of Dengue virus 3 RNA in specimen at point in time by molecular genetics (observable entity) |
| 115181-0 | 899761010000103 | Threshold presence of Dengue virus 2 RNA in specimen at point in time by molecular genetics (observable entity) |
| 115186-9 | 899771010000108 | Threshold presence of Dengue virus 1 RNA in specimen at point in time by molecular genetics (observable entity) |
| 115187-7 | 899781010000106 | Threshold presence of Cyclospora papionis DNA in specimen at point in time by molecular genetics (observable entity) |
| 115188-5 | 899791010000109 | Threshold presence of Cyclospora colobi DNA in specimen at point in time by molecular genetics (observable entity) |
| 115189-3 | 899801010000105 | Threshold presence of Cyclospora cayetanensis DNA in specimen at point in time by molecular genetics (observable entity) |
| 115190-1 | 899811010000108 | Threshold presence of Cyclospora cercopitheci DNA in specimen at point in time by molecular genetics (observable entity) |
| 115192-7 | 899821010000102 | Threshold presence of Cutibacterium acnes DNA in specimen at point in time by molecular genetics (observable entity) |
| 115193-5 | 899831010000104 | Threshold presence of Cryptosporidium DNA in specimen at point in time by molecular genetics (observable entity) |
| 115196-8 | 899841010000107 | Threshold presence of Cryptosporidium parvum DNA in specimen at point in time by molecular genetics (observable entity) |
| 115197-6 | 899851010000109 | Threshold presence of Cryptosporidium hominis DNA in specimen at point in time by molecular genetics (observable entity) |
| 115199-2 | 899861010000106 | Threshold presence of Cryptococcus neoformans rRNA in specimen at point in time by molecular genetics (observable entity) |
| 115200-8 | 899871010000101 | Threshold presence of Cryptococcus neoformans DNA in specimen at point in time by molecular genetics (observable entity) |
| 115202-4 | 899881010000103 | Threshold presence of Cryptococcus gattii DNA in specimen at point in time by molecular genetics (observable entity) |
| 115203-2 | 899891010000100 | Threshold presence of Cronobacter sakazakii DNA in specimen at point in time by molecular genetics (observable entity) |
| 115204-0 | 899901010000101 | Threshold presence of Orthonairovirus haemorrhagiae RNA in specimen at point in time by molecular genetics (observable entity) |
| 115205-7 | 899911010000103 | Threshold presence of Coxiella DNA in specimen at point in time by molecular genetics (observable entity) |
| 115206-5 | 899921010000109 | Threshold presence of Coxiella burnetii DNA in specimen at point in time by molecular genetics (observable entity) |
| 115210-7 | 899931010000107 | Threshold presence of Corynebacterium ulcerans DNA in specimen at point in time by molecular genetics (observable entity) |
| 115212-3 | 899941010000104 | Threshold presence of Corynebacterium jeikeium DNA in specimen at point in time by molecular genetics (observable entity) |
| 115213-1 | 899951010000102 | Threshold presence of Corynebacterium diphtheriae DNA in specimen at point in time by molecular genetics (observable entity) |
| 115214-9 | 899961010000100 | Threshold presence of Columbid circovirus DNA in specimen at point in time by molecular genetics (observable entity) |
| 115215-6 | 899971010000105 | Threshold presence of Coltivirus dermacentoris RNA in specimen at point in time by molecular genetics (observable entity) |
| 115216-4 | 899981010000108 | Threshold presence of Coccidioides rRNA in specimen at point in time by molecular genetics (observable entity) |
| 115217-2 | 899991010000106 | Threshold presence of Coccidioides DNA in specimen at point in time by molecular genetics (observable entity) |
| 115218-0 | 900001010000104 | Threshold presence of Coccidioides immitis rRNA in specimen at point in time by molecular genetics (observable entity) |
| 115222-2 | 900011010000101 | Threshold presence of Clostridium perfringens DNA in specimen at point in time by molecular genetics (observable entity) |
| 115234-7 | 900021010000107 | Threshold presence of Clostridium botulinum DNA in specimen at point in time by molecular genetics (observable entity) |
| 115242-0 | 900031010000105 | Threshold presence of Clostridium difficile DNA in specimen at point in time by molecular genetics (observable entity) |
| 115243-8 | 900041010000102 | Threshold presence of Clostridioides difficile BI-NAP1-027 DNA in specimen at point in time by molecular genetics (observable entity) |
| 115245-3 | 900051010000100 | Threshold presence of Cladosporium DNA in specimen at point in time by molecular genetics (observable entity) |
| 115246-1 | 900061010000103 | Threshold presence of Citrobacter DNA in specimen at point in time by molecular genetics (observable entity) |
| 115248-7 | 900071010000108 | Threshold presence of Citrobacter koseri DNA in specimen at point in time by molecular genetics (observable entity) |
| 115249-5 | 900081010000106 | Threshold presence of Citrobacter freundii DNA in specimen at point in time by molecular genetics (observable entity) |
| 115251-1 | 900091010000109 | Threshold presence of Chlamydophila psittaci DNA in specimen at point in time by molecular genetics (observable entity) |
| 115253-7 | 900101010000100 | Threshold presence of Chlamydophila pneumoniae rRNA in specimen at point in time by molecular genetics (observable entity) |
| 115256-0 | 900111010000102 | Threshold presence of Chlamydia trachomatis serovar L3 DNA in specimen at point in time by molecular genetics (observable entity) |
| 115257-8 | 900121010000108 | Threshold presence of Chlamydia trachomatis L2 DNA in specimen at point in time by molecular genetics (observable entity) |
| 115259-4 | 900131010000106 | Threshold presence of Chlamydia trachomatis serovar L1 DNA in specimen at point in time by molecular genetics (observable entity) |
| 115260-2 | 900141010000103 | Threshold presence of Chlamydia rRNA in specimen at point in time by molecular genetics (observable entity) |
| 115261-0 | 900151010000101 | Threshold presence of Chlamydia DNA in specimen at point in time by molecular genetics (observable entity) |
| 115263-6 | 900161010000104 | Threshold presence of Chikungunya virus RNA in specimen at point in time by molecular genetics (observable entity) |
| 115264-4 | 900171010000109 | Threshold presence of Alphavirus chikungunya nonstructural protein 1 RNA in specimen at point in time by molecular genetics (observable entity) |
| 115266-9 | 900181010000107 | Threshold presence of Cardiobacterium hominis DNA in specimen at point in time by molecular genetics (observable entity) |
| 115272-7 | 900191010000105 | Threshold presence of Candida tropicalis DNA in specimen at point in time by molecular genetics (observable entity) |
| 115273-5 | 900201010000108 | Threshold presence of Candida rRNA in specimen at point in time by molecular genetics (observable entity) |
| 115274-3 | 900211010000106 | Threshold presence of Candida DNA in specimen at point in time by molecular genetics (observable entity) |
| 115275-0 | 900221010000100 | Threshold presence of Candida parapsilosis DNA in specimen at point in time by molecular genetics (observable entity) |
| 115276-8 | 900231010000102 | Threshold presence of Candida lusitaniae DNA in specimen at point in time by molecular genetics (observable entity) |
| 115277-6 | 900241010000105 | Threshold presence of Candida krusei DNA in specimen at point in time by molecular genetics (observable entity) |
| 115278-4 | 900251010000107 | Threshold presence of Kluyveromyces marxianus DNA in specimen at point in time by molecular genetics (observable entity) |
| 115280-0 | 900261010000109 | Threshold presence of Meyerozyma guilliermondii DNA in specimen at point in time by molecular genetics (observable entity) |
| 115282-6 | 900271010000104 | Threshold presence of Nakaseomyces glabratus RNA in specimen at point in time by molecular genetics (observable entity) |
| 115283-4 | 900281010000101 | Threshold presence of Nakaseomyces glabratus DNA in specimen at point in time by molecular genetics (observable entity) |
| 115284-2 | 900291010000103 | Threshold presence of Debaryomyces hansenii DNA in specimen at point in time by molecular genetics (observable entity) |
| 115285-9 | 900301010000102 | Threshold presence of Candidozyma duobushaemuli DNA in specimen at point in time by molecular genetics (observable entity) |
| 115287-5 | 900311010000104 | Threshold presence of Candida dubliniensis DNA in specimen at point in time by molecular genetics (observable entity) |
| 115289-1 | 900321010000105 | Threshold presence of Candidozyma auris DNA in specimen at point in time by molecular genetics (observable entity) |
| 115295-8 | 900331010000108 | Threshold presence of Candida albicans DNA in specimen at point in time by molecular genetics (observable entity) |
| 115296-6 | 900341010000100 | Threshold presence of Campylobacter upsaliensis DNA in specimen at point in time by molecular genetics (observable entity) |
| 115297-4 | 900351010000103 | Threshold presence of Campylobacter rRNA in specimen at point in time by molecular genetics (observable entity) |
| 115298-2 | 900361010000101 | Threshold presence of diarrheagenic Campylobacter DNA in specimen at point in time by molecular genetics (observable entity) |
| 115299-0 | 900371010000106 | Threshold presence of Campylobacter DNA in specimen at point in time by molecular genetics (observable entity) |
| 115300-6 | 900381010000109 | Threshold presence of Campylobacter lari rRNA in specimen at point in time by molecular genetics (observable entity) |
| 115301-4 | 900391010000107 | Threshold presence of Campylobacter jejuni rRNA in specimen at point in time by molecular genetics (observable entity) |
| 115302-2 | 900401010000109 | Threshold presence of Campylobacter jejuni DNA in specimen at point in time by molecular genetics (observable entity) |
| 115308-9 | 900411010000107 | Threshold presence of Campylobacter coli rRNA in specimen at point in time by molecular genetics (observable entity) |
| 115309-7 | 900421010000101 | Threshold presence of Campylobacter coli DNA in specimen at point in time by molecular genetics (observable entity) |
| 115312-1 | 900431010000103 | Threshold presence of Calicivirus RNA in specimen at point in time by molecular genetics (observable entity) |
| 115313-9 | 900441010000106 | Threshold presence of Cache Valley virus RNA in specimen at point in time by molecular genetics (observable entity) |
| 115314-7 | 900451010000108 | Threshold presence of Orthobunyavirus bwambaense RNA in specimen at point in time by molecular genetics (observable entity) |
| 115315-4 | 900461010000105 | Threshold presence of Burkholderia DNA in specimen at point in time by molecular genetics (observable entity) |
| 115316-2 | 900471010000100 | Threshold presence of Burkholderia pseudomallei DNA in specimen at point in time by molecular genetics (observable entity) |
| 115317-0 | 900481010000102 | Threshold presence of Burkholderia mallei DNA in specimen at point in time by molecular genetics (observable entity) |
| 115319-6 | 900491010000104 | Threshold presence of Orthobunyavirus bunyamweraense RNA in specimen at point in time by molecular genetics (observable entity) |
| 115320-4 | 900501010000105 | Threshold presence of Brucella suis rRNA in specimen at point in time by molecular genetics (observable entity) |
| 115321-2 | 900511010000108 | Threshold presence of Brucella suis DNA in specimen at point in time by molecular genetics (observable entity) |
| 115322-0 | 900521010000102 | Threshold presence of Brucella DNA in specimen at point in time by molecular genetics (observable entity) |
| 115323-8 | 900531010000104 | Threshold presence of Brucella melitensis DNA in specimen at point in time by molecular genetics (observable entity) |
| 115324-6 | 900541010000107 | Threshold presence of Brucella abortus rRNA in specimen at point in time by molecular genetics (observable entity) |
| 115325-3 | 900551010000109 | Threshold presence of Brucella abortus DNA in specimen at point in time by molecular genetics (observable entity) |
| 115326-1 | 900561010000106 | Threshold presence of Brachyspira DNA in specimen at point in time by molecular genetics (observable entity) |
| 115327-9 | 900571010000101 | Threshold presence of Brachyspira pilosicoli DNA in specimen at point in time by molecular genetics (observable entity) |
| 115334-5 | 900581010000103 | Threshold presence of Borrelia DNA in specimen at point in time by molecular genetics (observable entity) |
| 115335-2 | 900591010000100 | Threshold presence of Borrelia recurrentis DNA in specimen at point in time by molecular genetics (observable entity) |
| 115338-6 | 900601010000106 | Threshold presence of Borrelia miyamotoi DNA in specimen at point in time by molecular genetics (observable entity) |
| 115344-4 | 900611010000109 | Threshold presence of Borrelia burgdorferi DNA in specimen at point in time by molecular genetics (observable entity) |
| 115348-5 | 900631010000100 | Threshold presence of Bordetella DNA in specimen at point in time by molecular genetics (observable entity) |
| 115355-0 | 900641010000108 | Threshold presence of Bordetella holmesii DNA in specimen at point in time by molecular genetics (observable entity) |
| 115356-8 | 900651010000105 | Threshold presence of Bordetella bronchiseptica DNA in specimen at point in time by molecular genetics (observable entity) |
| 115357-6 | 900661010000107 | Threshold presence of Pestivirus ovis RNA in specimen at point in time by molecular genetics (observable entity) |
| 115360-0 | 900671010000102 | Threshold presence of Blastomyces DNA in specimen at point in time by molecular genetics (observable entity) |
| 115361-8 | 900681010000104 | Threshold presence of Blastomyces dermatitidis rRNA in specimen at point in time by molecular genetics (observable entity) |
| 115362-6 | 900691010000101 | Threshold presence of Blastomyces dermatitidis DNA in specimen at point in time by molecular genetics (observable entity) |
| 115363-4 | 900701010000101 | Threshold presence of Blastocystis hominis DNA in specimen at point in time by molecular genetics (observable entity) |
| 115365-9 | 900711010000103 | Threshold presence of Bartonella DNA in specimen at point in time by molecular genetics (observable entity) |
| 115366-7 | 900721010000109 | Threshold presence of Bartonella quintana rRNA in specimen at point in time by molecular genetics (observable entity) |
| 115367-5 | 900731010000107 | Threshold presence of Bartonella quintana DNA in specimen at point in time by molecular genetics (observable entity) |
| 115368-3 | 900741010000104 | Threshold presence of Bartonella henselae DNA in specimen at point in time by molecular genetics (observable entity) |
| 115369-1 | 900751010000102 | Threshold presence of Bartonella bacilliformis DNA in specimen at point in time by molecular genetics (observable entity) |
| 115370-9 | 900761010000100 | Threshold presence of Alphavirus barmah RNA in specimen at point in time by molecular genetics (observable entity) |
| 115371-7 | 900771010000105 | Threshold presence of Balamuthia mandrillaris DNA in specimen at point in time by molecular genetics (observable entity) |
| 115372-5 | 900781010000108 | Threshold presence of Bacteroides fragilis DNA in specimen at point in time by molecular genetics (observable entity) |
| 115374-1 | 900791010000106 | Threshold presence of Bacterial vaginosis-associated bacterium 2 DNA in specimen at point in time by molecular genetics (observable entity) |
| 115383-2 | 900801010000107 | Threshold presence of Bacteria 16S rRNA in specimen at point in time by molecular genetics (observable entity) |
| 115385-7 | 900811010000105 | Threshold presence of Bacillus subtilis DNA in specimen at point in time by molecular genetics (observable entity) |
| 115386-5 | 900821010000104 | Threshold presence of Bacillus cereus DNA in specimen at point in time by molecular genetics (observable entity) |
| 115389-9 | 900831010000101 | Threshold presence of Bacillus anthracis DNA in specimen at point in time by molecular genetics (observable entity) |
| 115390-7 | 900841010000109 | Threshold presence of Babesia rRNA in specimen at point in time by molecular genetics (observable entity) |
| 115391-5 | 900851010000106 | Threshold presence of Babesia DNA in specimen at point in time by molecular genetics (observable entity) |
| 115392-3 | 900861010000108 | Threshold presence of Babesia 18S rRNA in specimen at point in time by molecular genetics (observable entity) |
| 115393-1 | 900871010000103 | Threshold presence of Babesia microti DNA in specimen at point in time by molecular genetics (observable entity) |
| 115402-0 | 900881010000100 | Threshold presence of Atopobium vaginae DNA in specimen at point in time by molecular genetics (observable entity) |
| 115404-6 | 900891010000102 | Threshold presence of Astrovirus RNA in specimen at point in time by molecular genetics (observable entity) |
| 115405-3 | 900901010000103 | Threshold presence of Aspergillus terreus DNA in specimen at point in time by molecular genetics (observable entity) |
| 115406-1 | 900911010000100 | Threshold presence of Aspergillus DNA in specimen at point in time by molecular genetics (observable entity) |
| 115407-9 | 900921010000106 | Threshold presence of Aspergillus niger DNA in specimen at point in time by molecular genetics (observable entity) |
| 115408-7 | 900931010000109 | Threshold presence of Aspergillus fumigatus DNA in specimen at point in time by molecular genetics (observable entity) |
| 115409-5 | 900941010000101 | Threshold presence of Aspergillus flavus DNA in specimen at point in time by molecular genetics (observable entity) |
| 115410-3 | 900951010000104 | Threshold presence of Aspergillus clavatus DNA in specimen at point in time by molecular genetics (observable entity) |
| 115412-9 | 900961010000102 | Threshold presence of Arenavirus RNA in specimen at point in time by molecular genetics (observable entity) |
| 115413-7 | 900971010000107 | Threshold presence of Angiostrongylus costaricensis DNA in specimen at point in time by molecular genetics (observable entity) |
| 115414-5 | 900981010000105 | Threshold presence of Angiostrongylus cantonensis DNA in specimen at point in time by molecular genetics (observable entity) |
| 115417-8 | 900991010000108 | Threshold presence of Anaplasma phagocytophilum DNA in specimen at point in time by molecular genetics (observable entity) |
| 115420-2 | 901001010000109 | Threshold presence of Anaerococcus DNA in specimen at point in time by molecular genetics (observable entity) |
| 115422-8 | 901011010000107 | Threshold presence of Alphavirus RNA in specimen at point in time by molecular genetics (observable entity) |
| 115424-4 | 901021010000101 | Threshold presence of Alcaligenes faecalis DNA in specimen at point in time by molecular genetics (observable entity) |
| 115425-1 | 901031010000103 | Threshold presence of Aggregatibacter aphrophilus DNA in specimen at point in time by molecular genetics (observable entity) |
| 115426-9 | 901041010000106 | Threshold presence of Aggregatibacter actinomycetemcomitans DNA in specimen at point in time by molecular genetics (observable entity) |
| 115429-3 | 901051010000108 | Threshold presence of Aeromonas DNA in specimen at point in time by molecular genetics (observable entity) |
| 115431-9 | 901061010000105 | Threshold presence of Aeromonas hydrophila DNA in specimen at point in time by molecular genetics (observable entity) |
| 115432-7 | 901071010000100 | Threshold presence of Aerococcus viridans DNA in specimen at point in time by molecular genetics (observable entity) |
| 115433-5 | 901081010000102 | Threshold presence of Aerococcus urinae DNA in specimen at point in time by molecular genetics (observable entity) |
| 115434-3 | 901091010000104 | Threshold presence of Adenovirus rRNA in specimen at point in time by molecular genetics (observable entity) |
| 115435-0 | 901101010000108 | Threshold presence of Mastadenovirus RNA in specimen at point in time by molecular genetics (observable entity) |
| 115442-6 | 901111010000106 | Threshold presence of Mastadenovirus blackbeardi 7 DNA in specimen at point in time by molecular genetics (observable entity) |
| 115445-9 | 901121010000100 | Threshold presence of Mastadenovirus exoticum 4 DNA in specimen at point in time by molecular genetics (observable entity) |
| 115447-5 | 901131010000102 | Threshold presence of Mastadenovirus blackbeardi 3 DNA in specimen at point in time by molecular genetics (observable entity) |
| 115448-3 | 901141010000105 | Threshold presence of Mastadenovirus blackbeardi 21 DNA in specimen at point in time by molecular genetics (observable entity) |
| 115449-1 | 901151010000107 | Threshold presence of Mastadenovirus blackbeardi 16 DNA in specimen at point in time by molecular genetics (observable entity) |
| 115450-9 | 901161010000109 | Threshold presence of Mastadenovirus blackbeardi 14 DNA in specimen at point in time by molecular genetics (observable entity) |
| 115451-7 | 901171010000104 | Threshold presence of Mastadenovirus blackbeardi 11 DNA in specimen at point in time by molecular genetics (observable entity) |
| 115455-8 | 901181010000101 | Threshold presence of Actinobacillus pleuropneumoniae DNA in specimen at point in time by molecular genetics (observable entity) |
| 115458-2 | 901191010000103 | Threshold presence of Acinetobacter baumannii DNA in specimen at point in time by molecular genetics (observable entity) |
| 115459-0 | 901201010000100 | Threshold presence of Achromobacter DNA in specimen at point in time by molecular genetics (observable entity) |
| 115460-8 | 901211010000102 | Threshold presence of Acanthamoeba DNA in specimen at point in time by molecular genetics (observable entity) |
| 115461-6 | 901221010000108 | Threshold presence of Abiotrophia defectiva DNA in specimen at point in time by molecular genetics (observable entity) |
| 115795-7 | 901611010000104 | Threshold presence of Human papillomavirus 45 DNA in vagina at point in time by probe with target amplification (observable entity) |
| 115796-5 | 901621010000105 | Threshold presence of Human papillomavirus 18 DNA in vagina at point in time by probe with target amplification (observable entity) |
| 115798-1 | 901641010000100 | Threshold presence of Human papillomavirus 16 DNA in vagina at point in time by probe with target amplification (observable entity) |

**Removed in 2026-03-21** (1)

| LOINC | SCTID | FSN |
|---|---|---|
| 105085-5 | 484201010000101 | Presence of Neisseria gonorrhoeae rRNA in specimen at point in time (observable entity) |

### Specific determination — Nucleic-acid detection — amplification technique asserted

[ValueSet](ValueSet-mii-vs-mikrobio-loinc-ontology-naa-detection-amplification.html)

**Added in 2026-10-21** (38)

| LOINC | SCTID | FSN |
|---|---|---|
| 112707-5 | 884181010000105 | Threshold presence of Streptococcus pneumoniae DNA in wound at point in time by probe with target amplification (observable entity) |
| 112708-3 | 884191010000108 | Threshold presence of Neisseria meningitidis DNA in wound at point in time by probe with target amplification (observable entity) |
| 112709-1 | 884201010000106 | Threshold presence of Escherichia coli DNA in wound at point in time by probe with target amplification (observable entity) |
| 112710-9 | 884211010000109 | Threshold presence of Enterococcus faecium DNA in wound at point in time by probe with target amplification (observable entity) |
| 112711-7 | 884221010000103 | Threshold presence of Streptococcus DNA in wound at point in time by probe with target amplification (observable entity) |
| 112712-5 | 884231010000100 | Threshold presence of Enterobacteriaceae DNA in wound at point in time by probe with target amplification (observable entity) |
| 112713-3 | 884241010000108 | Threshold presence of Stenotrophomonas maltophilia DNA in wound at point in time by probe with target amplification (observable entity) |
| 112714-1 | 884251010000105 | Threshold presence of Candida tropicalis DNA in wound at point in time by probe with target amplification (observable entity) |
| 112716-6 | 884261010000107 | Threshold presence of Enterococcus faecalis DNA in wound at point in time by probe with target amplification (observable entity) |
| 112717-4 | 884271010000102 | Threshold presence of Listeria monocytogenes DNA in wound at point in time by probe with target amplification (observable entity) |
| 112723-2 | 884281010000104 | Threshold presence of Candida parapsilosis DNA in wound at point in time by probe with target amplification (observable entity) |
| 112724-0 | 884291010000101 | Threshold presence of Klebsiella oxytoca DNA in wound at point in time by probe with target amplification (observable entity) |
| 112725-7 | 884301010000100 | Threshold presence of Haemophilus influenzae DNA in wound at point in time by probe with target amplification (observable entity) |
| 112726-5 | 884311010000102 | Threshold presence of Acinetobacter baumannii DNA in wound at point in time by probe with target amplification (observable entity) |
| 112727-3 | 884321010000108 | Threshold presence of Klebsiella pneumoniae DNA in wound at point in time by probe with target amplification (observable entity) |
| 112728-1 | 884331010000106 | Threshold presence of Candida albicans DNA in wound at point in time by probe with target amplification (observable entity) |
| 112729-9 | 884341010000103 | Threshold presence of Pseudomonas aeruginosa DNA in wound at point in time by probe with target amplification (observable entity) |
| 112732-3 | 884351010000101 | Threshold presence of Nakaseomyces glabratus DNA in wound at point in time by probe with target amplification (observable entity) |
| 112733-1 | 884361010000104 | Threshold presence of Candida krusei DNA in wound at point in time by probe with target amplification (observable entity) |
| 112735-6 | 884371010000109 | Threshold presence of Pseudomonas DNA in wound at point in time by probe with target amplification (observable entity) |
| 112736-4 | 884381010000107 | Threshold presence of Staphylococcus aureus DNA in wound at point in time by probe with target amplification (observable entity) |
| 112749-7 | 884461010000108 | Threshold presence of Human coronavirus 229E RNA in bronchoalveolar aspirate at point in time by probe with target amplification (observable entity) |
| 112750-5 | 884471010000103 | Threshold presence of severe acute respiratory syndrome coronavirus 2 RNA in sputum at point in time by probe with target amplification (observable entity) |
| 112755-4 | 884511010000106 | Threshold presence of Human coronavirus RNA in sputum at point in time by probe with target amplification (observable entity) |
| 112757-0 | 884521010000100 | Threshold presence of Legionella pneumophila DNA in throat at point in time by probe with target amplification (observable entity) |
| 112776-0 | 884531010000102 | Threshold presence of Human herpesvirus 8 DNA in cerebrospinal fluid at point in time by probe with target amplification (observable entity) |
| 112777-8 | 884541010000105 | Threshold presence of Human herpesvirus 8 DNA in specimen at point in time by probe with target amplification (observable entity) |
| 112778-6 | 884551010000107 | Threshold presence of human herpes simplex virus DNA in skin at point in time by probe with target amplification (observable entity) |
| 112779-4 | 884561010000109 | Threshold presence of human herpes simplex virus DNA in bronchoalveolar lavage fluid at point in time by probe with target amplification (observable entity) |
| 112780-2 | 884571010000104 | Threshold presence of Human alphaherpesvirus 2 DNA in bronchoalveolar lavage fluid at point in time by probe with target amplification (observable entity) |
| 112781-0 | 884581010000101 | Threshold presence of Human alphaherpesvirus 1 DNA in bronchoalveolar lavage fluid at point in time by probe with target amplification (observable entity) |
| 112782-8 | 884591010000103 | Threshold presence of Epstein-Barr virus DNA in bronchoalveolar lavage fluid at point in time by probe with target amplification (observable entity) |
| 112783-6 | 884601010000109 | Threshold presence of Epstein-Barr virus DNA in throat at point in time by probe with target amplification (observable entity) |
| 112894-1 | 884871010000101 | Threshold presence of Haemophilus influenzae DNA in throat at point in time by probe with target amplification (observable entity) |
| 112895-8 | 884881010000103 | Threshold presence of Streptococcus pneumoniae DNA in throat at point in time by probe with target amplification (observable entity) |
| 115795-7 | 901611010000104 | Threshold presence of Human papillomavirus 45 DNA in vagina at point in time by probe with target amplification (observable entity) |
| 115796-5 | 901621010000105 | Threshold presence of Human papillomavirus 18 DNA in vagina at point in time by probe with target amplification (observable entity) |
| 115798-1 | 901641010000100 | Threshold presence of Human papillomavirus 16 DNA in vagina at point in time by probe with target amplification (observable entity) |

### Specific determination — Nucleic-acid detection — no technique modelled

[ValueSet](ValueSet-mii-vs-mikrobio-loinc-ontology-naa-detection-no-technique.html)

**Added in 2026-10-21** (19)

| LOINC | SCTID | FSN |
|---|---|---|
| 112628-3 | 884111010000100 | Threshold presence of Human coronavirus RNA in bronchoalveolar lavage fluid at point in time by non-probe.amp.tar (observable entity) |
| 112629-1 | 884121010000106 | Threshold presence of Human coronavirus RNA in sputum at point in time by non-probe.amp.tar (observable entity) |
| 112630-9 | 884131010000109 | Threshold presence of Mycoplasma pneumoniae DNA in sputum at point in time by non-probe.amp.tar (observable entity) |
| 112631-7 | 884141010000101 | Threshold presence of Mycoplasma pneumoniae DNA in bronchoalveolar lavage fluid at point in time by non-probe.amp.tar (observable entity) |
| 112873-5 | 884681010000102 | Threshold presence of Legionella pneumophila DNA in sputum at point in time by non-probe.amp.tar (observable entity) |
| 112874-3 | 884691010000104 | Threshold presence of Parainfluenza virus 4 RNA in throat at point in time by non-probe.amp.tar (observable entity) |
| 112875-0 | 884701010000104 | Threshold presence of Parainfluenza virus 3 RNA in throat at point in time by non-probe.amp.tar (observable entity) |
| 112876-8 | 884711010000101 | Threshold presence of Parainfluenza virus 2 RNA in throat at point in time by non-probe.amp.tar (observable entity) |
| 112877-6 | 884721010000107 | Threshold presence of Parainfluenza virus 1 RNA in throat at point in time by non-probe.amp.tar (observable entity) |
| 112878-4 | 884731010000105 | Threshold presence of Betacoronavirus cameli RNA in throat at point in time by non-probe.amp.tar (observable entity) |
| 112879-2 | 884741010000102 | Threshold presence of Influenza A virus H1 RNA in throat at point in time by non-probe.amp.tar (observable entity) |
| 112880-0 | 884751010000100 | Threshold presence of Human coronavirus OC43 RNA in throat at point in time by non-probe.amp.tar (observable entity) |
| 112881-8 | 884761010000103 | Threshold presence of Klebsiella pneumoniae DNA in synovial fluid at point in time by non-probe.amp.tar (observable entity) |
| 112882-6 | 884771010000108 | Threshold presence of Human coronavirus 229E RNA in throat at point in time by non-probe.amp.tar (observable entity) |
| 112883-4 | 884781010000106 | Threshold presence of Human coronavirus NL63 RNA in throat at point in time by non-probe.amp.tar (observable entity) |
| 112884-2 | 884791010000109 | Threshold presence of Parainfluenza virus RNA in sputum at point in time by non-probe.amp.tar (observable entity) |
| 112885-9 | 884801010000105 | Threshold presence of Betacoronavirus cameli RNA in sputum at point in time by non-probe.amp.tar (observable entity) |
| 112892-5 | 884851010000109 | Threshold presence of Human Respiratory syncytial virus RNA in sputum at point in time by non-probe.amp.tar (observable entity) |
| 112893-3 | 884861010000106 | Threshold presence of Human coronavirus HKU1 RNA in throat at point in time by non-probe.amp.tar (observable entity) |

**Removed in 2026-03-21** (19)

| LOINC | SCTID | FSN |
|---|---|---|
| 105056-6 | 708471010000109 | Presence of Rotavirus alphagastroenteritidis RNA in specimen at point in time (observable entity) |
| 105057-4 | 484031010000104 | Presence of Plesiomonas shigelloides DNA in specimen at point in time (observable entity) |
| 105062-4 | 484061010000106 | Presence of Streptococcus pyogenes DNA in specimen at point in time (observable entity) |
| 105073-1 | 484101010000109 | Presence of Megasphaera type 1 DNA in specimen at point in time (observable entity) |
| 105075-6 | 484121010000101 | Presence of Influenza A virus RNA in specimen at point in time (observable entity) |
| 105076-4 | 484131010000103 | Presence of Influenza A virus H1 RNA in specimen at point in time (observable entity) |
| 105077-2 | 484141010000106 | Presence of human papillomavirus DNA in specimen at point in time (observable entity) |
| 105078-0 | 484151010000108 | Presence of Human coronavirus OC43 RNA in specimen at point in time (observable entity) |
| 105079-8 | 484161010000105 | Presence of Human coronavirus 229E RNA in specimen at point in time (observable entity) |
| 105084-8 | 484191010000104 | Presence of Trichomonas vaginalis rRNA in specimen at point in time (observable entity) |
| 105085-5 | 484201010000101 | Presence of Neisseria gonorrhoeae rRNA in specimen at point in time (observable entity) |
| 105875-9 | 485601010000104 | Presence of Bordetella pertussis DNA in specimen at point in time (observable entity) |
| 105876-7 | 485611010000101 | Presence of Bordetella parapertussis DNA in specimen at point in time (observable entity) |
| 105884-1 | 485681010000106 | Presence of Chlamydophila pneumoniae DNA in specimen at point in time (observable entity) |
| 105887-4 | 485711010000107 | Presence of Adenovirus DNA in specimen at point in time (observable entity) |
| 105890-8 | 709341010000102 | Presence of Yersinia enterocolitica DNA in specimen at point in time (observable entity) |
| 105892-4 | 485741010000106 | Presence of Vibrio cholerae DNA in specimen at point in time (observable entity) |
| 105898-1 | 485801010000103 | Presence of Human polyomavirus 1 DNA in specimen at point in time (observable entity) |
| 105909-6 | 485881010000105 | Presence of severe acute respiratory syndrome coronavirus 2 RNA in specimen at point in time (observable entity) |

### Specific determination — Targeted culture detection — organism specific culture technique

[ValueSet](ValueSet-mii-vs-mikrobio-loinc-ontology-specific-culture-detection.html)

**Added in 2026-10-21** (1)

| LOINC | SCTID | FSN |
|---|---|---|
| 112888-3 | 884821010000102 | Threshold presence of Neisseria gonorrhoeae in penis at point in time by organism specific culture (observable entity) |

### Specific determination — Antigen detection — threshold presence of a microbial antigen

[ValueSet](ValueSet-mii-vs-mikrobio-loinc-ontology-antigen-detection-threshold.html)

**Added in 2026-10-21** (1)

| LOINC | SCTID | FSN |
|---|---|---|
| 115347-7 | 900621010000103 | Threshold presence of Orthobornavirus bornaense antigen in specimen at point in time by molecular genetics (observable entity) |

### Microscopy — General microscopy — nominal finding by microscopy or staining technique

[ValueSet](ValueSet-mii-vs-mikrobio-loinc-ontology-general-microscopy-by-technique.html)

**Added in 2026-10-21** (7)

| LOINC | SCTID | FSN |
|---|---|---|
| 10686-4 | 883831010000102 | Presence or identity of Leishmania in tissue at point in time by Giemsa stain (observable entity) |
| 111514-6 | 883931010000105 | Microscopic observation of finding in fistula at point in time by Gram stain (observable entity) |
| 112887-5 | 884811010000108 | Microscopic observation of finding in specimen from penis at point in time by Gram stain (observable entity) |
| 113008-7 | 885021010000109 | Microscopic observation of finding in drain device submitted as specimen at point in time by Gram stain (observable entity) |
| 113049-1 | 885141010000100 | Presence or identity of Gram-positive bacteria in pleural fluid at point in time by Gram stain (observable entity) |
| 113056-6 | 885181010000109 | Presence or identity of Gram-positive bacteria in peritoneal fluid at point in time by Gram stain (observable entity) |
| 51709-4 | 902951010000103 | Presence or identity of Leishmania in specimen at point in time by Giemsa stain (observable entity) |

### Microscopy — General microscopy — method-neutral 'finding in specimen' pattern

[ValueSet](ValueSet-mii-vs-mikrobio-loinc-ontology-general-microscopy-in-specimen.html)

**Added in 2026-10-21** (2)

| LOINC | SCTID | FSN |
|---|---|---|
| 112887-5 | 884811010000108 | Microscopic observation of finding in specimen from penis at point in time by Gram stain (observable entity) |
| 113008-7 | 885021010000109 | Microscopic observation of finding in drain device submitted as specimen at point in time by Gram stain (observable entity) |

### Microscopy — Specific microscopy — ordinal threshold presence by microscopy or staining technique

[ValueSet](ValueSet-mii-vs-mikrobio-loinc-ontology-specific-microscopy-threshold.html)

**Added in 2026-10-21** (16)

| LOINC | SCTID | FSN |
|---|---|---|
| 112407-2 | 884021010000105 | Threshold presence of bacteria in urine at point in time by light microscopy (observable entity) |
| 113024-4 | 885051010000102 | Threshold presence of yeast in urethra at point in time by Gram stain (observable entity) |
| 113028-5 | 885061010000100 | Threshold presence of Gram-positive bacteria in urethra at point in time by Gram stain (observable entity) |
| 113032-7 | 885071010000105 | Threshold presence of Gram-positive bacteria in bronchoalveolar lavage fluid at point in time by Gram stain (observable entity) |
| 113042-6 | 885101010000102 | Threshold presence of Gram-positive bacteria in vagina at point in time by Gram stain (observable entity) |
| 113045-9 | 885131010000108 | Threshold presence of yeast in pleural fluid at point in time by Gram stain (observable entity) |
| 113053-3 | 885171010000106 | Threshold presence of yeast in peritoneal fluid at point in time by Gram stain (observable entity) |
| 113058-2 | 885201010000105 | Threshold presence of leukocyte in peritoneal fluid at point in time by Gram stain (observable entity) |
| 113059-0 | 885211010000108 | Threshold presence of Gram-positive bacteria in sputum at point in time by Gram stain (observable entity) |
| 113060-8 | 885221010000102 | Threshold presence of yeast in bronchoalveolar aspirate at point in time by Gram stain (observable entity) |
| 113064-0 | 885231010000104 | Threshold presence of Gram-positive bacteria in bronchoalveolar aspirate at point in time by Gram stain (observable entity) |
| 113071-5 | 885241010000107 | Threshold presence of yeast in tissue at point in time by Gram stain (observable entity) |
| 113075-6 | 885251010000109 | Threshold presence of Gram-positive bacteria in tissue at point in time by Gram stain (observable entity) |
| 113081-4 | 885281010000103 | Threshold presence of Gram-positive bacteria in specimen obtained by aspiration at point in time by Gram stain (observable entity) |
| 113082-2 | 885291010000100 | Threshold presence of yeast in sputum at point in time by Gram stain (observable entity) |
| 113089-7 | 885301010000104 | Threshold presence of Gram-positive bacteria in pus at point in time by Gram stain (observable entity) |

**Removed in 2026-03-21** (1)

| LOINC | SCTID | FSN |
|---|---|---|
| 107527-4 | 710541010000101 | Presence of clue cell in vagina at point in time by Gram stain (observable entity) |

### Susceptibility — Phenotypic susceptibility — isolate, not genotyping

[ValueSet](ValueSet-mii-vs-mikrobio-loinc-ontology-susceptibility-phenotype.html)

**Added in 2026-10-21** (3)

| LOINC | SCTID | FSN |
|---|---|---|
| 55136-6 | 903001010000108 | Susceptibility to penicillin in microbial isolate at point in time by MIC.Parenteral (observable entity) |
| 58085-2 | 903161010000108 | Susceptibility to penicillin in microbial isolate at point in time by parenteral (observable entity) |
| 77960-3 | 903311010000108 | Susceptibility to penicillin in microbial isolate at point in time by agar diffusion.Parenteral (observable entity) |

### Susceptibility — All susceptibility observables (upper bound)

[ValueSet](ValueSet-mii-vs-mikrobio-loinc-ontology-susceptibility-all.html)

**Added in 2026-10-21** (5)

| LOINC | SCTID | FSN |
|---|---|---|
| 55136-6 | 903001010000108 | Susceptibility to penicillin in microbial isolate at point in time by MIC.Parenteral (observable entity) |
| 55137-4 | 903011010000106 | Susceptibility to penicillin in isolate.meningitis at point in time by MIC.Parenteral (observable entity) |
| 58080-3 | 903151010000106 | Susceptibility to penicillin in isolate.meningitis at point in time by parenteral (observable entity) |
| 58085-2 | 903161010000108 | Susceptibility to penicillin in microbial isolate at point in time by parenteral (observable entity) |
| 77960-3 | 903311010000108 | Susceptibility to penicillin in microbial isolate at point in time by agar diffusion.Parenteral (observable entity) |

### Ct value — Ct value — all threshold-number observables (upper bound)

[ValueSet](ValueSet-mii-vs-mikrobio-loinc-ontology-ct-value-any.html)

**Added in 2026-10-21** (1)

| LOINC | SCTID | FSN |
|---|---|---|
| 92002-5 | 903401010000103 | Threshold number of SMN1 gene in dried blood spot at point in time by probe with target amplification (observable entity) |

### Molecular pathogen load — Pathogen load — quantitative microbial nucleic acid, any technique

[ValueSet](ValueSet-mii-vs-mikrobio-loinc-ontology-pathogen-load-any-technique.html)

**Added in 2026-10-21** (4)

| LOINC | SCTID | FSN |
|---|---|---|
| 112751-3 | 884481010000100 | Number concentration of West Nile virus RNA in plasma at point in time by probe with target amplification (observable entity) |
| 112752-1 | 884491010000102 | Number concentration of West Nile virus RNA in specimen at point in time by probe with target amplification (observable entity) |
| 112753-9 | 884501010000108 | Arbitrary concentration of Cytomegalovirus DNA in amniotic fluid at point in time by probe with target amplification (observable entity) |
| 115802-1 | 901651010000103 | Logarithmic arbitrary concentration of Human immunodeficiency virus 1 RNA in serum or plasma at point in time by probe with target amplification (observable entity) |

### Molecular pathogen load — Pathogen load — amplification technique asserted

[ValueSet](ValueSet-mii-vs-mikrobio-loinc-ontology-pathogen-load-amplification.html)

**Added in 2026-10-21** (4)

| LOINC | SCTID | FSN |
|---|---|---|
| 112751-3 | 884481010000100 | Number concentration of West Nile virus RNA in plasma at point in time by probe with target amplification (observable entity) |
| 112752-1 | 884491010000102 | Number concentration of West Nile virus RNA in specimen at point in time by probe with target amplification (observable entity) |
| 112753-9 | 884501010000108 | Arbitrary concentration of Cytomegalovirus DNA in amniotic fluid at point in time by probe with target amplification (observable entity) |
| 115802-1 | 901651010000103 | Logarithmic arbitrary concentration of Human immunodeficiency virus 1 RNA in serum or plasma at point in time by probe with target amplification (observable entity) |

### Quantitative antigen and antibody tests — Serology quantitative — concentration of a pathogen antibody or antigen

[ValueSet](ValueSet-mii-vs-mikrobio-loinc-ontology-ab-ag-quantitative.html)

**Added in 2026-10-21** (43)

| LOINC | SCTID | FSN |
|---|---|---|
| 112632-5 | 884151010000104 | Arbitrary concentration of Adenovirus IgA in serum at point in time by immunoassay (observable entity) |
| 18409-3 | 734971010000101 | Arbitrary concentration of Curvularia lunata IgG in serum at point in time (observable entity) |
| 18410-1 | 734981010000103 | Arbitrary concentration of Epicoccum purpurascens IgG in serum at point in time (observable entity) |
| 18411-9 | 734991010000100 | Arbitrary concentration of Rhizopus stolonifer IgG in serum at point in time (observable entity) |
| 18412-7 | 735001010000105 | Arbitrary concentration of Stemphylium botryosum IgG in serum at point in time (observable entity) |
| 18416-8 | 735011010000108 | Arbitrary concentration of Aspergillus nidulans IgG in serum at point in time (observable entity) |
| 18420-0 | 735021010000102 | Arbitrary concentration of Chaetomium globosum IgG in serum at point in time (observable entity) |
| 18421-8 | 735031010000104 | Arbitrary concentration of Fusarium oxysporum IgG in serum at point in time (observable entity) |
| 24517-5 | 736331010000109 | Arbitrary concentration of Phoma IgG in serum at point in time (observable entity) |
| 25779-0 | 736521010000103 | Arbitrary concentration of Stachybotrys chartarum IgG in serum at point in time (observable entity) |
| 30022-8 | 737311010000103 | Arbitrary concentration of Botrytis cinerea IgG in serum at point in time (observable entity) |
| 30032-7 | 737331010000107 | Arbitrary concentration of Phoma betae IgG in serum at point in time (observable entity) |
| 35548-7 | 739861010000104 | Mass concentration of Fusarium verticillioides IgG in serum at point in time (observable entity) |
| 35549-5 | 739871010000109 | Mass concentration of Mucor racemosus IgG in serum at point in time (observable entity) |
| 35551-1 | 739881010000107 | Mass concentration of Phoma betae IgG in serum at point in time (observable entity) |
| 35552-9 | 739891010000105 | Mass concentration of Rhizopus stolonifer IgG in serum at point in time (observable entity) |
| 35553-7 | 739901010000109 | Mass concentration of Stemphylium botryosum IgG in serum at point in time (observable entity) |
| 35555-2 | 739921010000101 | Mass concentration of Exserohilum rostratum IgG in serum at point in time (observable entity) |
| 42591-8 | 741441010000104 | Mass concentration of Botrytis cinerea IgG in serum at point in time (observable entity) |
| 42816-9 | 741551010000101 | Mass concentration of Stachybotrys chartarum IgG in serum at point in time (observable entity) |
| 42904-3 | 741591010000105 | Mass concentration of Epicoccum purpurascens IgG in serum at point in time (observable entity) |
| 42907-6 | 741601010000104 | Mass concentration of Helminthosporium IgG in serum at point in time (observable entity) |
| 49195-1 | 743311010000105 | Arbitrary concentration of California encephalitis virus IgG in serum at point in time (observable entity) |
| 58958-0 | 749811010000101 | Mass concentration of Fusarium oxysporum IgG in serum at point in time (observable entity) |
| 59382-2 | 749991010000103 | Mass concentration of Aspergillus versicolor IgG in serum at point in time (observable entity) |
| 63162-2 | 751841010000103 | Mass concentration of Curvularia lunata IgG in serum at point in time (observable entity) |
| 63163-0 | 751851010000101 | Mass concentration of Paecilomyces IgG in serum at point in time (observable entity) |
| 63164-8 | 751861010000104 | Mass concentration of Penicillium brevicompactum IgG in serum at point in time (observable entity) |
| 63165-5 | 751871010000109 | Mass concentration of Serpula lacrimans IgG in serum at point in time (observable entity) |
| 63166-3 | 751881010000107 | Mass concentration of Aspergillus terreus IgG in serum at point in time (observable entity) |
| 63168-9 | 751891010000105 | Mass concentration of Aspergillus amstelodami IgG in serum at point in time (observable entity) |
| 63169-7 | 751901010000109 | Mass concentration of Aspergillus nidulans IgG in serum at point in time (observable entity) |
| 63170-5 | 751921010000101 | Mass concentration of Dendryphiella vinosa IgG in serum at point in time (observable entity) |
| 63171-3 | 751931010000103 | Mass concentration of Neurospora sitophila IgG in serum at point in time (observable entity) |
| 63172-1 | 751941010000106 | Mass concentration of Mucor plumbeus IgG in serum at point in time (observable entity) |
| 63173-9 | 751951010000108 | Mass concentration of Hypomyces perniciosus IgG in serum at point in time (observable entity) |
| 63174-7 | 751961010000105 | Mass concentration of Spondylocladium IgG in serum at point in time (observable entity) |
| 63175-4 | 751971010000100 | Mass concentration of Epidermophyton floccosum IgG in serum at point in time (observable entity) |
| 63178-8 | 751991010000104 | Mass concentration of Chaetomium globosum IgG in serum at point in time (observable entity) |
| 7325-4 | 754331010000101 | Arbitrary concentration of Fusarium verticillioides IgG in serum at point in time (observable entity) |
| 7396-5 | 754911010000109 | Arbitrary concentration of Helminthosporium IgG in serum at point in time (observable entity) |
| 7507-7 | 755751010000108 | Arbitrary concentration of Mucor racemosus IgG in serum at point in time (observable entity) |
| 7638-0 | 756331010000105 | Arbitrary concentration of Pullularia IgG in serum at point in time (observable entity) |

### Quantitative antigen and antibody tests — Serology qualitative — threshold presence of a pathogen antibody or antigen

[ValueSet](ValueSet-mii-vs-mikrobio-loinc-ontology-ab-ag-threshold.html)

**Added in 2026-10-21** (27)

| LOINC | SCTID | FSN |
|---|---|---|
| 102905-7 | 706781010000100 | Threshold presence of Stachybotrys chartarum IgG in serum at point in time by radioallergosorbent testing (observable entity) |
| 102956-0 | 706941010000107 | Threshold presence of Curvularia spicifera IgG in serum at point in time by radioallergosorbent testing (observable entity) |
| 102958-6 | 706961010000106 | Threshold presence of Fusarium verticillioides IgG in serum at point in time by radioallergosorbent testing (observable entity) |
| 102959-4 | 706971010000101 | Threshold presence of Helminthosporium IgG in serum at point in time by radioallergosorbent testing (observable entity) |
| 102961-0 | 706991010000100 | Threshold presence of Mucor racemosus IgG in serum at point in time by radioallergosorbent testing (observable entity) |
| 102963-6 | 707001010000106 | Threshold presence of Phoma betae IgG in serum at point in time by radioallergosorbent testing (observable entity) |
| 102966-9 | 707021010000103 | Threshold presence of Rhizopus stolonifer IgG in serum at point in time by radioallergosorbent testing (observable entity) |
| 102967-7 | 707031010000100 | Threshold presence of Stemphylium botryosum IgG in serum at point in time by radioallergosorbent testing (observable entity) |
| 112334-8 | 883971010000108 | Threshold presence of Western equine encephalitis virus IgM in serum at point in time by immunofluorescence (observable entity) |
| 112335-5 | 883981010000106 | Threshold presence of Saint Louis encephalitis virus IgM in serum at point in time by immunofluorescence (observable entity) |
| 112336-3 | 883991010000109 | Threshold presence of Eastern equine encephalitis virus IgM in serum at point in time by immunofluorescence (observable entity) |
| 112340-5 | 884001010000102 | Threshold presence of Western equine encephalitis virus IgG in serum at point in time by immunofluorescence (observable entity) |
| 112341-3 | 884011010000104 | Threshold presence of Saint Louis encephalitis virus IgG in serum at point in time by immunofluorescence (observable entity) |
| 112598-8 | 884081010000109 | Threshold presence of Borrelia burgdorferi IgM in serum or plasma at point in time by IA.STTT (observable entity) |
| 112599-6 | 884091010000107 | Threshold presence of Borrelia burgdorferi IgG in serum or plasma at point in time by IA.STTT (observable entity) |
| 112694-5 | 884161010000102 | Threshold presence of Human immunodeficiency virus 2 antibody in serum at point in time by line blot (observable entity) |
| 112695-2 | 884171010000107 | Threshold presence of Hepatitis C virus IgG in serum at point in time by line blot (observable entity) |
| 115347-7 | 900621010000103 | Threshold presence of Orthobornavirus bornaense antigen in specimen at point in time by molecular genetics (observable entity) |
| 115744-5 | 901291010000105 | Threshold presence of Saint Louis encephalitis virus IgG in cerebrospinal fluid at point in time by immunofluorescence (observable entity) |
| 115745-2 | 901301010000106 | Threshold presence of Western equine encephalitis virus IgG in cerebrospinal fluid at point in time by immunofluorescence (observable entity) |
| 115749-4 | 901311010000109 | Threshold presence of Eastern equine encephalitis virus IgM in cerebrospinal fluid at point in time by immunofluorescence (observable entity) |
| 115750-2 | 901321010000103 | Threshold presence of Saint Louis encephalitis virus IgM in cerebrospinal fluid at point in time by immunofluorescence (observable entity) |
| 115751-0 | 901331010000100 | Threshold presence of Western equine encephalitis virus IgM in cerebrospinal fluid at point in time by immunofluorescence (observable entity) |
| 51541-1 | 746071010000108 | Threshold presence of Stachybotrys chartarum IgG in serum at point in time (observable entity) |
| 51542-9 | 746081010000106 | Threshold presence of Aspergillus versicolor IgG in serum at point in time (observable entity) |
| 95543-5 | 762721010000104 | Threshold presence of Aspergillus terreus IgG in serum at point in time (observable entity) |
| 96507-9 | 763061010000103 | Threshold presence of California encephalitis virus IgG in specimen at point in time by immunoassay (observable entity) |

### Titre — Titre — pathogen antibody titre

[ValueSet](ValueSet-mii-vs-mikrobio-loinc-ontology-titer-infective-antibody.html)

**Added in 2026-10-21** (4)

| LOINC | SCTID | FSN |
|---|---|---|
| 35694-9 | 739971010000100 | Titer of California encephalitis virus IgG in serum at point in time (observable entity) |
| 49138-1 | 743281010000108 | Titer of California encephalitis virus IgG in cerebrospinal fluid at point in time by immunofluorescence (observable entity) |
| 49140-7 | 743291010000106 | Titer of California encephalitis virus IgG in serum at point in time by immunofluorescence (observable entity) |
| 49194-4 | 743301010000107 | Titer of California encephalitis virus IgG in cerebrospinal fluid at point in time (observable entity) |

### Titre — Titre — all titre observables (upper bound)

[ValueSet](ValueSet-mii-vs-mikrobio-loinc-ontology-titer-any.html)

**Added in 2026-10-21** (2)

| LOINC | SCTID | FSN |
|---|---|---|
| 10866-2 | 883911010000101 | Titer of sulfatide IgG in serum at point in time (observable entity) |
| 21545-9 | 901791010000102 | Titer of sulfatide IgG in cerebrospinal fluid at point in time (observable entity) |

