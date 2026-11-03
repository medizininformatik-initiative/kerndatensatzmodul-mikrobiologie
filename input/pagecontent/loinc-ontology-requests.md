This page lists the 29 rules of the [LOINC Ontology proposal](loinc-ontology-valuesets.html), grouped by the request family of the 2027 module, with the ValueSet each rule produces and the derived Observation profile where one exists. The construction is explained under [How the ValueSets are built](loinc-ontology-method.html); every family has its own review page with the rule decomposed into attributes and the codes it selects.

### What counts as one request

The 2027 module defines one Observation profile per *question asked of the laboratory*: is something growing (general culture), what is it (general determination), is a named pathogen there (specific determination), how much of it (colony count, pathogen load, Ct value, titre, quantitative serology), is it susceptible (phenotypic and predicted susceptibility), what was seen under the microscope (general and specific microscopy), does it carry a resistance mechanism. Each such question is a request family here. Inside a family several rules exist on purpose: the rule the profile would bind, an upper bound for review, and rules that show what a technique clause gains or loses.

### How to use them

* **Implementers mapping a local catalogue** pick the ValueSet of the request and choose, within it, the LOINC code whose organism, specimen and method match the local procedure. The attribute table on the family page says what every code in the set has in common.
* **Validation**: an Observation that claims a derived profile in `meta.profile` is checked against the LOINC enumeration of the bound ValueSet.
* **Module editors** compare the ValueSet of a rule with the module's own LOINC ValueSet of the same request; the coverage tables below do that for the enumerated codes.

### The rules

*LOINC* is the number of LOINC codes in the ValueSet; *SNOMED only* the number of LOINC Ontology observables without a LOINC code; the delta column counts concepts that entered or left the ValueSet between 2026-03-21 and 2026-10-21.

| Family | Request | LOINC | SNOMED only | +/− vs {prev} | ValueSet | Profile |
|---|---|--:|--:|--:|---|---|
| [General culture](loinc-ontology-request-allgemeine-kultur.html) | General culture — organism identity by culture technique | 577 | 1 | +15 / −0 | [mii-vs-mikrobio-loinc-ontology-general-culture-identity](ValueSet-mii-vs-mikrobio-loinc-ontology-general-culture-identity.html) | [General culture](StructureDefinition-mii-pr-mikrobio-loinc-ontology-allgemeine-kultur.html) |
| [General culture](loinc-ontology-request-allgemeine-kultur.html) | Targeted culture — threshold presence of a named organism by culture technique | 203 | 1 | +1 / −0 | [mii-vs-mikrobio-loinc-ontology-specific-culture-threshold](ValueSet-mii-vs-mikrobio-loinc-ontology-specific-culture-threshold.html) | – |
| [General culture](loinc-ontology-request-allgemeine-kultur.html) | Everything by culture technique (upper bound) | 786 | 2 | +16 / −0 | [mii-vs-mikrobio-loinc-ontology-culture-any-property](ValueSet-mii-vs-mikrobio-loinc-ontology-culture-any-property.html) | – |
| [General determination](loinc-ontology-request-allgemeine-bestimmung.html) | General determination — organism identity, any technique | 772 | 8 | +24 / −0 | [mii-vs-mikrobio-loinc-ontology-organism-identity-any-technique](ValueSet-mii-vs-mikrobio-loinc-ontology-organism-identity-any-technique.html) | [General determination](StructureDefinition-mii-pr-mikrobio-loinc-ontology-allgemeine-bestimmung.html) |
| [General determination](loinc-ontology-request-allgemeine-bestimmung.html) | General determination — method-neutral identity codes | 88 | 0 | +2 / −0 | [mii-vs-mikrobio-loinc-ontology-organism-identity-no-technique](ValueSet-mii-vs-mikrobio-loinc-ontology-organism-identity-no-technique.html) | – |
| [General determination](loinc-ontology-request-allgemeine-bestimmung.html) | Typing — type of an organism (serotype, genotype, biotype) | 21 | 1 | +0 / −0 | [mii-vs-mikrobio-loinc-ontology-organism-type](ValueSet-mii-vs-mikrobio-loinc-ontology-organism-type.html) | – |
| [Specific determination](loinc-ontology-request-spezifische-bestimmung.html) | Nucleic-acid detection — any or no technique | 2500 | 7 | +586 / −1 | [mii-vs-mikrobio-loinc-ontology-naa-detection-any-technique](ValueSet-mii-vs-mikrobio-loinc-ontology-naa-detection-any-technique.html) | [Specific determination](StructureDefinition-mii-pr-mikrobio-loinc-ontology-spezifische-bestimmung.html) |
| [Specific determination](loinc-ontology-request-spezifische-bestimmung.html) | Nucleic-acid detection — amplification technique asserted | 1524 | 0 | +38 / −0 | [mii-vs-mikrobio-loinc-ontology-naa-detection-amplification](ValueSet-mii-vs-mikrobio-loinc-ontology-naa-detection-amplification.html) | – |
| [Specific determination](loinc-ontology-request-spezifische-bestimmung.html) | Nucleic-acid detection — no technique modelled | 283 | 5 | +19 / −19 | [mii-vs-mikrobio-loinc-ontology-naa-detection-no-technique](ValueSet-mii-vs-mikrobio-loinc-ontology-naa-detection-no-technique.html) | – |
| [Specific determination](loinc-ontology-request-spezifische-bestimmung.html) | Targeted culture detection — organism specific culture technique | 191 | 1 | +1 / −0 | [mii-vs-mikrobio-loinc-ontology-specific-culture-detection](ValueSet-mii-vs-mikrobio-loinc-ontology-specific-culture-detection.html) | [Specific determination](StructureDefinition-mii-pr-mikrobio-loinc-ontology-spezifische-bestimmung.html) |
| [Specific determination](loinc-ontology-request-spezifische-bestimmung.html) | Antigen detection — threshold presence of a microbial antigen | 895 | 4 | +1 / −0 | [mii-vs-mikrobio-loinc-ontology-antigen-detection-threshold](ValueSet-mii-vs-mikrobio-loinc-ontology-antigen-detection-threshold.html) | [Specific determination](StructureDefinition-mii-pr-mikrobio-loinc-ontology-spezifische-bestimmung.html) |
| [Microscopy](loinc-ontology-request-mikroskopie.html) | General microscopy — nominal finding by microscopy or staining technique | 383 | 0 | +7 / −0 | [mii-vs-mikrobio-loinc-ontology-general-microscopy-by-technique](ValueSet-mii-vs-mikrobio-loinc-ontology-general-microscopy-by-technique.html) | [General microscopy](StructureDefinition-mii-pr-mikrobio-loinc-ontology-allgemeine-mikroskopie.html) |
| [Microscopy](loinc-ontology-request-mikroskopie.html) | General microscopy — method-neutral 'finding in specimen' pattern | 357 | 0 | +2 / −0 | [mii-vs-mikrobio-loinc-ontology-general-microscopy-in-specimen](ValueSet-mii-vs-mikrobio-loinc-ontology-general-microscopy-in-specimen.html) | [General microscopy](StructureDefinition-mii-pr-mikrobio-loinc-ontology-allgemeine-mikroskopie.html) |
| [Microscopy](loinc-ontology-request-mikroskopie.html) | Specific microscopy — ordinal threshold presence by microscopy or staining technique | 331 | 0 | +16 / −1 | [mii-vs-mikrobio-loinc-ontology-specific-microscopy-threshold](ValueSet-mii-vs-mikrobio-loinc-ontology-specific-microscopy-threshold.html) | [Specific microscopy](StructureDefinition-mii-pr-mikrobio-loinc-ontology-spezifische-mikroskopie.html) |
| [Colony count](loinc-ontology-request-keimzahl.html) | Colony count — number concentration of an organism | 16 | 0 | +0 / −0 | [mii-vs-mikrobio-loinc-ontology-colony-count-organism](ValueSet-mii-vs-mikrobio-loinc-ontology-colony-count-organism.html) | [Colony count](StructureDefinition-mii-pr-mikrobio-loinc-ontology-keimzahl.html) |
| [Colony count](loinc-ontology-request-keimzahl.html) | Colony count — with culture technique asserted | 4 | 0 | +0 / −0 | [mii-vs-mikrobio-loinc-ontology-colony-count-by-culture](ValueSet-mii-vs-mikrobio-loinc-ontology-colony-count-by-culture.html) | – |
| [Susceptibility](loinc-ontology-request-empfindlichkeit.html) | Phenotypic susceptibility — isolate, not genotyping | 1230 | 0 | +3 / −0 | [mii-vs-mikrobio-loinc-ontology-susceptibility-phenotype](ValueSet-mii-vs-mikrobio-loinc-ontology-susceptibility-phenotype.html) | [Susceptibility](StructureDefinition-mii-pr-mikrobio-loinc-ontology-empfindlichkeit.html) |
| [Susceptibility](loinc-ontology-request-empfindlichkeit.html) | Predicted susceptibility — by genotype determination technique | 81 | 0 | +0 / −0 | [mii-vs-mikrobio-loinc-ontology-susceptibility-genotype-predicted](ValueSet-mii-vs-mikrobio-loinc-ontology-susceptibility-genotype-predicted.html) | [Predicted susceptibility](StructureDefinition-mii-pr-mikrobio-loinc-ontology-voraussichtliche-empfindlichkeit.html) |
| [Susceptibility](loinc-ontology-request-empfindlichkeit.html) | All susceptibility observables (upper bound) | 1349 | 1 | +5 / −0 | [mii-vs-mikrobio-loinc-ontology-susceptibility-all](ValueSet-mii-vs-mikrobio-loinc-ontology-susceptibility-all.html) | – |
| [Ct value](loinc-ontology-request-ct-wert.html) | Ct value — threshold number of a microbial nucleic acid | 40 | 0 | +0 / −0 | [mii-vs-mikrobio-loinc-ontology-ct-value-microbial-nucleic-acid](ValueSet-mii-vs-mikrobio-loinc-ontology-ct-value-microbial-nucleic-acid.html) | [Ct value](StructureDefinition-mii-pr-mikrobio-loinc-ontology-ct-wert.html) |
| [Ct value](loinc-ontology-request-ct-wert.html) | Ct value — all threshold-number observables (upper bound) | 44 | 1 | +1 / −0 | [mii-vs-mikrobio-loinc-ontology-ct-value-any](ValueSet-mii-vs-mikrobio-loinc-ontology-ct-value-any.html) | – |
| [Molecular pathogen load](loinc-ontology-request-molekulare-pathogenlast.html) | Pathogen load — quantitative microbial nucleic acid, any technique | 401 | 0 | +4 / −0 | [mii-vs-mikrobio-loinc-ontology-pathogen-load-any-technique](ValueSet-mii-vs-mikrobio-loinc-ontology-pathogen-load-any-technique.html) | [Molecular pathogen load](StructureDefinition-mii-pr-mikrobio-loinc-ontology-molekulare-pathogenlast.html) |
| [Molecular pathogen load](loinc-ontology-request-molekulare-pathogenlast.html) | Pathogen load — amplification technique asserted | 359 | 0 | +4 / −0 | [mii-vs-mikrobio-loinc-ontology-pathogen-load-amplification](ValueSet-mii-vs-mikrobio-loinc-ontology-pathogen-load-amplification.html) | – |
| [Quantitative antigen and antibody tests](loinc-ontology-request-antigen-antikoerper-quantitativ.html) | Serology quantitative — concentration of a pathogen antibody or antigen | 1813 | 0 | +43 / −0 | [mii-vs-mikrobio-loinc-ontology-ab-ag-quantitative](ValueSet-mii-vs-mikrobio-loinc-ontology-ab-ag-quantitative.html) | [Quantitative antigen and antibody tests](StructureDefinition-mii-pr-mikrobio-loinc-ontology-antigen-antikoerper-quantitativ.html) |
| [Quantitative antigen and antibody tests](loinc-ontology-request-antigen-antikoerper-quantitativ.html) | Serology qualitative — threshold presence of a pathogen antibody or antigen | 2785 | 11 | +27 / −0 | [mii-vs-mikrobio-loinc-ontology-ab-ag-threshold](ValueSet-mii-vs-mikrobio-loinc-ontology-ab-ag-threshold.html) | – |
| [Titre](loinc-ontology-request-titer.html) | Titre — pathogen antibody titre | 1716 | 0 | +4 / −0 | [mii-vs-mikrobio-loinc-ontology-titer-infective-antibody](ValueSet-mii-vs-mikrobio-loinc-ontology-titer-infective-antibody.html) | [Titre](StructureDefinition-mii-pr-mikrobio-loinc-ontology-titer.html) |
| [Titre](loinc-ontology-request-titer.html) | Titre — all titre observables (upper bound) | 2188 | 0 | +2 / −0 | [mii-vs-mikrobio-loinc-ontology-titer-any](ValueSet-mii-vs-mikrobio-loinc-ontology-titer-any.html) | – |
| [Resistant organisms and resistance mechanisms](loinc-ontology-request-resistenzmechanismen.html) | Resistant-organism detection — presence/identity of an antimicrobial resistant organism | 16 | 0 | +0 / −0 | [mii-vs-mikrobio-loinc-ontology-resistant-organism-detection](ValueSet-mii-vs-mikrobio-loinc-ontology-resistant-organism-detection.html) | [Resistance mechanisms and determinants](StructureDefinition-mii-pr-mikrobio-loinc-ontology-resistenzmechanismen.html) |
| [Resistant organisms and resistance mechanisms](loinc-ontology-request-resistenzmechanismen.html) | Resistant organism — any observable about a resistant organism (upper bound) | 16 | 0 | +0 / −0 | [mii-vs-mikrobio-loinc-ontology-resistant-organism-any-property](ValueSet-mii-vs-mikrobio-loinc-ontology-resistant-organism-any-property.html) | – |

### The derived profiles

Each profile below is derived from a module profile and only tightens `Observation.code` to the computed ValueSet (binding strength *required*). Where a request needs several rules, the profile binds a union ValueSet.

| Module profile | Derived proposal profile | Bound ValueSet | Rules |
|---|---|---|---|
| [MII_PR_Mikrobio_Allgemeine_Kultur](StructureDefinition-mii-pr-mikrobio-allgemeine-kultur.html) | [MII_PR_Mikrobio_LOINC_Ontology_Allgemeine_Kultur](StructureDefinition-mii-pr-mikrobio-loinc-ontology-allgemeine-kultur.html) | [mii-vs-mikrobio-loinc-ontology-general-culture-identity](ValueSet-mii-vs-mikrobio-loinc-ontology-general-culture-identity.html) | General culture — organism identity by culture technique |
| [MII_PR_Mikrobio_Allgemeine_Bestimmung](StructureDefinition-mii-pr-mikrobio-allgemeine-bestimmung.html) | [MII_PR_Mikrobio_LOINC_Ontology_Allgemeine_Bestimmung](StructureDefinition-mii-pr-mikrobio-loinc-ontology-allgemeine-bestimmung.html) | [mii-vs-mikrobio-loinc-ontology-organism-identity-any-technique](ValueSet-mii-vs-mikrobio-loinc-ontology-organism-identity-any-technique.html) | General determination — organism identity, any technique |
| [MII_PR_Mikrobio_Spezifische_Bestimmung](StructureDefinition-mii-pr-mikrobio-spezifische-bestimmung.html) | [MII_PR_Mikrobio_LOINC_Ontology_Spezifische_Bestimmung](StructureDefinition-mii-pr-mikrobio-loinc-ontology-spezifische-bestimmung.html) | [mii-vs-mikrobio-loinc-ontology-spezifische-bestimmung](ValueSet-mii-vs-mikrobio-loinc-ontology-spezifische-bestimmung.html) | Nucleic-acid detection — any or no technique; Targeted culture detection — organism specific culture technique; Antigen detection — threshold presence of a microbial antigen |
| [MII_PR_Mikrobio_Allgemeine_Mikroskopie](StructureDefinition-mii-pr-mikrobio-mikroskopie.html) | [MII_PR_Mikrobio_LOINC_Ontology_Allgemeine_Mikroskopie](StructureDefinition-mii-pr-mikrobio-loinc-ontology-allgemeine-mikroskopie.html) | [mii-vs-mikrobio-loinc-ontology-allgemeine-mikroskopie](ValueSet-mii-vs-mikrobio-loinc-ontology-allgemeine-mikroskopie.html) | General microscopy — nominal finding by microscopy or staining technique; General microscopy — method-neutral 'finding in specimen' pattern |
| [MII_PR_Mikrobio_Spezifische_Mikroskopie](StructureDefinition-mii-pr-mikrobio-spezifische-mikroskopie.html) | [MII_PR_Mikrobio_LOINC_Ontology_Spezifische_Mikroskopie](StructureDefinition-mii-pr-mikrobio-loinc-ontology-spezifische-mikroskopie.html) | [mii-vs-mikrobio-loinc-ontology-specific-microscopy-threshold](ValueSet-mii-vs-mikrobio-loinc-ontology-specific-microscopy-threshold.html) | Specific microscopy — ordinal threshold presence by microscopy or staining technique |
| [MII_PR_Mikrobio_Keimzahl](StructureDefinition-mii-pr-mikrobio-keimzahl.html) | [MII_PR_Mikrobio_LOINC_Ontology_Keimzahl](StructureDefinition-mii-pr-mikrobio-loinc-ontology-keimzahl.html) | [mii-vs-mikrobio-loinc-ontology-colony-count-organism](ValueSet-mii-vs-mikrobio-loinc-ontology-colony-count-organism.html) | Colony count — number concentration of an organism |
| [MII_PR_Mikrobio_Empfindlichkeit](StructureDefinition-mii-pr-mikrobio-empfindlichkeit.html) | [MII_PR_Mikrobio_LOINC_Ontology_Empfindlichkeit](StructureDefinition-mii-pr-mikrobio-loinc-ontology-empfindlichkeit.html) | [mii-vs-mikrobio-loinc-ontology-susceptibility-phenotype](ValueSet-mii-vs-mikrobio-loinc-ontology-susceptibility-phenotype.html) | Phenotypic susceptibility — isolate, not genotyping |
| [MII_PR_Mikrobio_Voraussichtliche_Empfindlichkeit](StructureDefinition-mii-pr-mikrobio-voraussichtliche-empfindlichkeit.html) | [MII_PR_Mikrobio_LOINC_Ontology_Voraussichtliche_Empfindlichkeit](StructureDefinition-mii-pr-mikrobio-loinc-ontology-voraussichtliche-empfindlichkeit.html) | [mii-vs-mikrobio-loinc-ontology-susceptibility-genotype-predicted](ValueSet-mii-vs-mikrobio-loinc-ontology-susceptibility-genotype-predicted.html) | Predicted susceptibility — by genotype determination technique |
| [MII_PR_Mikrobio_Ct_Wert](StructureDefinition-mii-pr-mikrobio-ct-wert.html) | [MII_PR_Mikrobio_LOINC_Ontology_Ct_Wert](StructureDefinition-mii-pr-mikrobio-loinc-ontology-ct-wert.html) | [mii-vs-mikrobio-loinc-ontology-ct-value-microbial-nucleic-acid](ValueSet-mii-vs-mikrobio-loinc-ontology-ct-value-microbial-nucleic-acid.html) | Ct value — threshold number of a microbial nucleic acid |
| [MII_PR_Mikrobio_Molekulare_Pathogenlast](StructureDefinition-mii-pr-mikrobio-molekulare-pathogenlast.html) | [MII_PR_Mikrobio_LOINC_Ontology_Molekulare_Pathogenlast](StructureDefinition-mii-pr-mikrobio-loinc-ontology-molekulare-pathogenlast.html) | [mii-vs-mikrobio-loinc-ontology-pathogen-load-any-technique](ValueSet-mii-vs-mikrobio-loinc-ontology-pathogen-load-any-technique.html) | Pathogen load — quantitative microbial nucleic acid, any technique |
| [MII_PR_Mikrobio_Antigen_Antikoerper_Quantitativ](StructureDefinition-mii-pr-mikrobio-antigen-antikoerper-quantitativ.html) | [MII_PR_Mikrobio_LOINC_Ontology_Antigen_Antikoerper_Quantitativ](StructureDefinition-mii-pr-mikrobio-loinc-ontology-antigen-antikoerper-quantitativ.html) | [mii-vs-mikrobio-loinc-ontology-ab-ag-quantitative](ValueSet-mii-vs-mikrobio-loinc-ontology-ab-ag-quantitative.html) | Serology quantitative — concentration of a pathogen antibody or antigen |
| [MII_PR_Mikrobio_Titer](StructureDefinition-mii-pr-mikrobio-titer.html) | [MII_PR_Mikrobio_LOINC_Ontology_Titer](StructureDefinition-mii-pr-mikrobio-loinc-ontology-titer.html) | [mii-vs-mikrobio-loinc-ontology-titer-infective-antibody](ValueSet-mii-vs-mikrobio-loinc-ontology-titer-infective-antibody.html) | Titre — pathogen antibody titre |
| [MII_PR_Mikrobio_Resistenzmechanismen_Determinanten](StructureDefinition-mii-pr-mikrobio-resistenzmechanismen-determinanten.html) | [MII_PR_Mikrobio_LOINC_Ontology_Resistenzmechanismen_Determinanten](StructureDefinition-mii-pr-mikrobio-loinc-ontology-resistenzmechanismen.html) | [mii-vs-mikrobio-loinc-ontology-resistant-organism-detection](ValueSet-mii-vs-mikrobio-loinc-ontology-resistant-organism-detection.html) | Resistant-organism detection — presence/identity of an antimicrobial resistant organism |

### Coverage of the module's enumerated codes

The module enumerates LOINC codes in several of its ValueSets (next to the property filters). Of those 105 codes, 33 are in the LOINC Ontology 2026-10-21; the rest cannot be reached by any rule, whatever the rule says. Missing are, among others, the preferred method-neutral code 41852-5 (*Microorganism or agent identified in Specimen*), all colony-count codes, all avidity codes and all resistance-determinant codes. The second table lists every enumerated code with its SCTID and the proposal ValueSets that contain it.

| Module ValueSet | Enumerated codes | In the LOINC Ontology | In a proposal ValueSet |
|---|--:|--:|--:|
| [MII VS Microbiology General Determination Tests [LOINC]](ValueSet-mii-vs-mikrobio-allgemeine-bestimmung-tests-loinc.html) | 6 | 3 | 3 |
| [MII VS Microbiology General Culture Tests [LOINC]](ValueSet-mii-vs-mikrobio-allgemeine-kultur-tests-loinc.html) | 2 | 1 | 1 |
| [MII VS Microbiology General Microscopy Tests [LOINC]](ValueSet-mii-vs-mikrobio-allgemeine-mikroskopie-tests-loinc.html) | 4 | 4 | 4 |
| [MII VS Microbiology Avidity Tests [LOINC]](ValueSet-mii-vs-mikrobio-aviditaet-tests-loinc.html) | 5 | 0 | 0 |
| [MII VS Microbiology Bartlett Score [LOINC]](ValueSet-mii-vs-mikrobio-bartlett-score-loinc.html) | 6 | 0 | 0 |
| [MII VS Microbiology Report Type [LOINC]](ValueSet-mii-vs-mikrobio-befundtyp-loinc.html) | 5 | 0 | 0 |
| [MII VS Microbiology Susceptibility Phenotype [LOINC]](ValueSet-mii-vs-mikrobio-empfindlichkeit-phenotyp-loinc.html) | 2 | 1 | 1 |
| [MII VS Microbiology Colony Count [LOINC]](ValueSet-mii-vs-mikrobio-keimzahl-loinc.html) | 4 | 0 | 0 |
| [MII VS Microbiology MRGN Class [LOINC]](ValueSet-mii-vs-mikrobio-mrgn-klasse-loinc.html) | 3 | 0 | 0 |
| [MII VS Microbiology Resistance Mechanisms Determinants [LOINC]](ValueSet-mii-vs-mikrobio-resistenzmechanismen-determinanten-loinc.html) | 6 | 0 | 0 |
| [MII VS Microbiology Specific Determination Tests [LOINC]](ValueSet-mii-vs-mikrobio-spezifische-bestimmung-tests-loinc.html) | 2 | 2 | 2 |
| [MII VS Microbiology Virulence [LOINC]](ValueSet-mii-vs-mikrobio-virulenz-loinc.html) | 61 | 22 | 3 |

| Module ValueSet | LOINC | Display | SCTID | Proposal ValueSets |
|---|---|---|---|---|
| MII VS Microbiology General Determination Tests [LOINC] | 41852-5 | Microorganism or agent identified in Specimen | – | – |
| MII VS Microbiology General Determination Tests [LOINC] | 23667-9 | Bacteria identified in Specimen | 510981010000102 | [organism_identity_any_technique](ValueSet-mii-vs-mikrobio-loinc-ontology-organism-identity-any-technique.html), [organism_identity_no_technique](ValueSet-mii-vs-mikrobio-loinc-ontology-organism-identity-no-technique.html) |
| MII VS Microbiology General Determination Tests [LOINC] | 42805-2 | Fungus identified in Specimen | 552201010000105 | [organism_identity_any_technique](ValueSet-mii-vs-mikrobio-loinc-ontology-organism-identity-any-technique.html), [organism_identity_no_technique](ValueSet-mii-vs-mikrobio-loinc-ontology-organism-identity-no-technique.html) |
| MII VS Microbiology General Determination Tests [LOINC] | 41461-5 | Virus identified in Specimen | 741131010000104 | [organism_identity_any_technique](ValueSet-mii-vs-mikrobio-loinc-ontology-organism-identity-any-technique.html), [organism_identity_no_technique](ValueSet-mii-vs-mikrobio-loinc-ontology-organism-identity-no-technique.html) |
| MII VS Microbiology General Determination Tests [LOINC] | 66885-5 | Bacteria identified based on 16S rRNA gene [Identifier] in Specimen by Sequencing | – | – |
| MII VS Microbiology General Determination Tests [LOINC] | 101534-6 | Fungal 18s rRNA gene [Identifier] in Specimen by Sequencing | – | – |
| MII VS Microbiology General Culture Tests [LOINC] | 11475-1 | Microorganism identified in Specimen by Culture | 490041010000102 | [culture_any_property](ValueSet-mii-vs-mikrobio-loinc-ontology-culture-any-property.html), [general_culture_identity](ValueSet-mii-vs-mikrobio-loinc-ontology-general-culture-identity.html), [organism_identity_any_technique](ValueSet-mii-vs-mikrobio-loinc-ontology-organism-identity-any-technique.html) |
| MII VS Microbiology General Culture Tests [LOINC] | 41852-5 | Microorganism or agent identified in Specimen | – | – |
| MII VS Microbiology General Microscopy Tests [LOINC] | 105059-0 | Microscopic observation [Identifier] in Specimen | 484041010000107 | [general_microscopy_finding_in_specimen](ValueSet-mii-vs-mikrobio-loinc-ontology-general-microscopy-in-specimen.html) |
| MII VS Microbiology General Microscopy Tests [LOINC] | 664-3 | Microscopic observation [Identifier] in Specimen by Gram stain | 604581010000108 | [general_microscopy_by_technique](ValueSet-mii-vs-mikrobio-loinc-ontology-general-microscopy-by-technique.html), [general_microscopy_finding_in_specimen](ValueSet-mii-vs-mikrobio-loinc-ontology-general-microscopy-in-specimen.html) |
| MII VS Microbiology General Microscopy Tests [LOINC] | 11545-1 | Microscopic observation [Identifier] in Specimen by Acid fast stain | 490111010000102 | [general_microscopy_by_technique](ValueSet-mii-vs-mikrobio-loinc-ontology-general-microscopy-by-technique.html), [general_microscopy_finding_in_specimen](ValueSet-mii-vs-mikrobio-loinc-ontology-general-microscopy-in-specimen.html) |
| MII VS Microbiology General Microscopy Tests [LOINC] | 676-7 | Microscopic observation [Identifier] in Specimen by Rhodamine-auramine fluorochrome stain | 605281010000106 | [general_microscopy_by_technique](ValueSet-mii-vs-mikrobio-loinc-ontology-general-microscopy-by-technique.html), [general_microscopy_finding_in_specimen](ValueSet-mii-vs-mikrobio-loinc-ontology-general-microscopy-in-specimen.html) |
| MII VS Microbiology Avidity Tests [LOINC] | 52984-2 | Cytomegalovirus IgG Ab avidity [Ratio] in Serum or Plasma by Immunoassay | – | – |
| MII VS Microbiology Avidity Tests [LOINC] | 81119-0 | Epstein Barr virus capsid IgG Ab avidity [Ratio] in Serum by Immunoassay | – | – |
| MII VS Microbiology Avidity Tests [LOINC] | 104428-8 | Measles virus IgG Ab avidity [Ratio] in Serum by Immunoassay | – | – |
| MII VS Microbiology Avidity Tests [LOINC] | 52986-7 | Rubella virus IgG Ab avidity [Ratio] in Serum by Immunoassay | – | – |
| MII VS Microbiology Avidity Tests [LOINC] | 56990-5 | Toxoplasma gondii IgG Ab avidity [Ratio] in Serum by Immunoassay | – | – |
| MII VS Microbiology Bartlett Score [LOINC] | LA21392-8 | +3 Active inflammation | – | – |
| MII VS Microbiology Bartlett Score [LOINC] | LA21391-0 | +2 Active inflammation | – | – |
| MII VS Microbiology Bartlett Score [LOINC] | LA21390-2 | +1 Active inflammation | – | – |
| MII VS Microbiology Bartlett Score [LOINC] | LA21389-4 | 0  Lack of inflammation and possible contamination with saliva | – | – |
| MII VS Microbiology Bartlett Score [LOINC] | LA21388-6 | -1 Lack of inflammation and possible contamination with saliva | – | – |
| MII VS Microbiology Bartlett Score [LOINC] | LA21387-8 | -2 Lack of inflammation and possible contamination with saliva | – | – |
| MII VS Microbiology Report Type [LOINC] | 92894-5 | Microbiology - bacterial studies | – | – |
| MII VS Microbiology Report Type [LOINC] | 92893-7 | Microbiology - viral studies | – | – |
| MII VS Microbiology Report Type [LOINC] | 96397-5 | Microbiology - mycobacteriology studies Document | – | – |
| MII VS Microbiology Report Type [LOINC] | 96398-3 | Microbiology - mycology studies Document | – | – |
| MII VS Microbiology Report Type [LOINC] | 92892-9 | Microbiology - parasitic studies | – | – |
| MII VS Microbiology Susceptibility Phenotype [LOINC] | 106843-6 | Cefotaxime+Cloxacillin [Susceptibility] in Isolate by Disk diffusion (KB) | – | – |
| MII VS Microbiology Susceptibility Phenotype [LOINC] | 103673-0 | Isavuconazole [Susceptibility] in Isolate by Gradient strip | 707601010000104 | [susceptibility_all](ValueSet-mii-vs-mikrobio-loinc-ontology-susceptibility-all.html), [susceptibility_phenotype](ValueSet-mii-vs-mikrobio-loinc-ontology-susceptibility-phenotype.html) |
| MII VS Microbiology Colony Count [LOINC] | 49223-1 | Colony count [#/volume] in Specimen by Visual count | – | – |
| MII VS Microbiology Colony Count [LOINC] | 564-5 | Colony count [#] in Specimen by Visual count | – | – |
| MII VS Microbiology Colony Count [LOINC] | 38436-2 | Colony count [#/mass] in Specimen by Visual count | – | – |
| MII VS Microbiology Colony Count [LOINC] | 699-9 | Organism count [#/volume] in Specimen by Microscopic count | – | – |
| MII VS Microbiology MRGN Class [LOINC] | LA33214-0 | 2MRGN | – | – |
| MII VS Microbiology MRGN Class [LOINC] | LA33215-7 | 3MRGN | – | – |
| MII VS Microbiology MRGN Class [LOINC] | LA33216-5 | 4MRGN | – | – |
| MII VS Microbiology Resistance Mechanisms Determinants [LOINC] | 86930-5 | Carbapenemase [Presence] in Isolate | – | – |
| MII VS Microbiology Resistance Mechanisms Determinants [LOINC] | 101673-2 | KPC carbapenemase [Presence] in Isolate by Rapid immunoassay | – | – |
| MII VS Microbiology Resistance Mechanisms Determinants [LOINC] | 101675-7 | IMP Carbapenemase [Presence] in Isolate by Rapid immunoassay | – | – |
| MII VS Microbiology Resistance Mechanisms Determinants [LOINC] | 101677-3 | NDM Carbapenemase [Presence] in Isolate by Rapid immunoassay | – | – |
| MII VS Microbiology Resistance Mechanisms Determinants [LOINC] | 101676-5 | VIM Carbapenemase [Presence] in Isolate by Rapid immunoassay | – | – |
| MII VS Microbiology Resistance Mechanisms Determinants [LOINC] | 101674-0 | OXA-48-like carbapenemase [Presence] in Isolate by Rapid immunoassay | – | – |
| MII VS Microbiology Specific Determination Tests [LOINC] | 105904-7 | Vancomycin resistant enterococcus [Presence] in Specimen | 485831010000109 | [resistant_organism_any_property](ValueSet-mii-vs-mikrobio-loinc-ontology-resistant-organism-any-property.html), [resistant_organism_detection](ValueSet-mii-vs-mikrobio-loinc-ontology-resistant-organism-detection.html) |
| MII VS Microbiology Specific Determination Tests [LOINC] | 35492-8 | Methicillin resistant Staphylococcus aureus (MRSA) DNA [Presence] in Specimen by NAA with probe detection | 204071010000101 | [naa_detection_amplification](ValueSet-mii-vs-mikrobio-loinc-ontology-naa-detection-amplification.html), [naa_detection_any_technique](ValueSet-mii-vs-mikrobio-loinc-ontology-naa-detection-any-technique.html) |
| MII VS Microbiology Virulence [LOINC] | 87402-4 | Escherichia coli aidA-I gene [Presence] in Isolate by NAA with probe detection | – | – |
| MII VS Microbiology Virulence [LOINC] | 87318-2 | Escherichia coli eaeA gene [Presence] in Isolate by NAA with probe detection | – | – |
| MII VS Microbiology Virulence [LOINC] | 87319-0 | Escherichia coli enteroaggregative astA gene [Presence] in Isolate by NAA with probe detection | – | – |
| MII VS Microbiology Virulence [LOINC] | 87320-8 | Escherichia coli enterotoxigenic heat-labile toxin DNA [Presence] in Isolate by NAA with probe detection | – | – |
| MII VS Microbiology Virulence [LOINC] | 87321-6 | Escherichia coli enterotoxigenic sta gene [Presence] in Isolate by NAA with probe detection | – | – |
| MII VS Microbiology Virulence [LOINC] | 87322-4 | Escherichia coli enterotoxigenic stb gene [Presence] in Isolate by NAA with probe detection | – | – |
| MII VS Microbiology Virulence [LOINC] | 87370-3 | Escherichia coli fasA gene [Presence] in Isolate by NAA with probe detection | – | – |
| MII VS Microbiology Virulence [LOINC] | 87371-1 | Escherichia coli fedF gene [Presence] in Isolate by NAA with probe detection | – | – |
| MII VS Microbiology Virulence [LOINC] | 87372-9 | Escherichia coli FimF41a gene [Presence] in Isolate by NAA with probe detection | – | – |
| MII VS Microbiology Virulence [LOINC] | 87373-7 | Escherichia coli K88 DNA [Presence] in Isolate by NAA with probe detection | 760191010000102 | [naa_detection_amplification](ValueSet-mii-vs-mikrobio-loinc-ontology-naa-detection-amplification.html), [naa_detection_any_technique](ValueSet-mii-vs-mikrobio-loinc-ontology-naa-detection-any-technique.html) |
| MII VS Microbiology Virulence [LOINC] | 87374-5 | Escherichia coli K99 DNA [Presence] in Isolate by NAA with probe detection | 760201010000104 | [naa_detection_amplification](ValueSet-mii-vs-mikrobio-loinc-ontology-naa-detection-amplification.html), [naa_detection_any_technique](ValueSet-mii-vs-mikrobio-loinc-ontology-naa-detection-any-technique.html) |
| MII VS Microbiology Virulence [LOINC] | 87375-2 | Escherichia coli paa gene [Presence] in Isolate by NAA with probe detection | – | – |
| MII VS Microbiology Virulence [LOINC] | 87376-0 | Escherichia coli Stx1 toxin stx1 gene [Presence] in Isolate by NAA with probe detection | – | – |
| MII VS Microbiology Virulence [LOINC] | 87377-8 | Escherichia coli Stx2 toxin stx2 gene [Presence] in Isolate by NAA with probe detection | – | – |
| MII VS Microbiology Virulence [LOINC] | 87380-2 | Escherichia coli Stx2e toxin stx2e gene [Presence] in Isolate by NAA with probe detection | – | – |
| MII VS Microbiology Virulence [LOINC] | 87304-2 | Clostridium perfringens cpa gene [Presence] in Isolate by NAA with probe detection | – | – |
| MII VS Microbiology Virulence [LOINC] | 87397-6 | Clostridium perfringens cpb gene [Presence] in Isolate by NAA with probe detection | – | – |
| MII VS Microbiology Virulence [LOINC] | 87305-9 | Clostridium perfringens cpb2 gene [Presence] in Isolate by NAA with probe detection | – | – |
| MII VS Microbiology Virulence [LOINC] | 87306-7 | Clostridium perfringens cpe gene [Presence] in Isolate by NAA with probe detection | – | – |
| MII VS Microbiology Virulence [LOINC] | 87307-5 | Clostridium perfringens etx gene [Presence] in Isolate by NAA with probe detection | – | – |
| MII VS Microbiology Virulence [LOINC] | 87313-3 | Clostridium perfringens iota toxin DNA [Presence] in Isolate by NAA with probe detection | – | – |
| MII VS Microbiology Virulence [LOINC] | 53941-1 | Vibrio cholerae toxin Ag [Presence] in Isolate | 149741010000101 | [ab_ag_threshold](ValueSet-mii-vs-mikrobio-loinc-ontology-ab-ag-threshold.html), [antigen_detection_threshold](ValueSet-mii-vs-mikrobio-loinc-ontology-antigen-detection-threshold.html) |
| MII VS Microbiology Virulence [LOINC] | 24102-6 | Corynebacterium toxin [Presence] in Specimen by Immune diffusion (ID) | 146291010000105 | – |
| MII VS Microbiology Virulence [LOINC] | 13329-8 | Escherichia coli labile toxin [Presence] in Specimen | 95031010000107 | – |
| MII VS Microbiology Virulence [LOINC] | 33708-9 | Clostridium botulinum toxin [Presence] in Specimen | 166671010000101 | – |
| MII VS Microbiology Virulence [LOINC] | 33712-1 | Clostridium botulinum toxin A+B+E [Presence] in Specimen | – | – |
| MII VS Microbiology Virulence [LOINC] | 33696-6 | Clostridium botulinum toxin [Presence] in Specimen by Mouse bioassay | 178461010000100 | – |
| MII VS Microbiology Virulence [LOINC] | 33709-7 | Clostridium botulinum toxin A [Presence] in Specimen | 84681010000103 | – |
| MII VS Microbiology Virulence [LOINC] | 33713-9 | Clostridium botulinum toxin B [Presence] in Specimen | 129901010000102 | – |
| MII VS Microbiology Virulence [LOINC] | 33710-5 | Clostridium botulinum toxin E [Presence] in Specimen | 64571010000102 | – |
| MII VS Microbiology Virulence [LOINC] | 23349-4 | Pasteurella multocida toxin [Presence] in Specimen by Immunoassay | 209391010000101 | – |
| MII VS Microbiology Virulence [LOINC] | 45039-5 | Clostridium botulinum toxin [Presence] in Specimen by Immunoassay | 115971010000104 | – |
| MII VS Microbiology Virulence [LOINC] | 33711-3 | Clostridium botulinum toxin F [Presence] in Specimen | 165731010000100 | – |
| MII VS Microbiology Virulence [LOINC] | 33704-8 | Clostridium botulinum toxin A+B+E [Presence] in Specimen by Mouse bioassay neutralization | – | – |
| MII VS Microbiology Virulence [LOINC] | 33701-4 | Clostridium botulinum toxin A [Presence] in Specimen by Mouse bioassay neutralization | 83171010000106 | – |
| MII VS Microbiology Virulence [LOINC] | 33705-5 | Clostridium botulinum toxin B [Presence] in Specimen by Mouse bioassay neutralization | 244061010000101 | – |
| MII VS Microbiology Virulence [LOINC] | 33702-2 | Clostridium botulinum toxin E [Presence] in Specimen by Mouse bioassay neutralization | 187181010000106 | – |
| MII VS Microbiology Virulence [LOINC] | 38989-0 | Clostridium botulinum toxin A+B+E+F+G [Presence] in Specimen by Mouse bioassay neutralization | – | – |
| MII VS Microbiology Virulence [LOINC] | 63427-9 | Escherichia coli Stx1 toxin stx1 gene [Presence] in Specimen by NAA with probe detection | – | – |
| MII VS Microbiology Virulence [LOINC] | 63428-7 | Escherichia coli Stx2 toxin stx2 gene [Presence] in Specimen by NAA with probe detection | – | – |
| MII VS Microbiology Virulence [LOINC] | 71786-8 | Staphylococcus aureus exfoliative toxin A eta gene [Presence] in Specimen by NAA with probe detection | – | – |
| MII VS Microbiology Virulence [LOINC] | 71787-6 | Staphylococcus aureus exfoliative toxin B etb gene [Presence] in Specimen by NAA with probe detection | – | – |
| MII VS Microbiology Virulence [LOINC] | 41630-5 | Clostridium botulinum toxin A [Presence] in Specimen by Immunofluorescence | 137381010000100 | – |
| MII VS Microbiology Virulence [LOINC] | 41632-1 | Clostridium botulinum toxin B [Presence] in Specimen by Immunofluorescence | 269991010000104 | – |
| MII VS Microbiology Virulence [LOINC] | 41634-7 | Clostridium botulinum toxin E [Presence] in Specimen by Immunofluorescence | 221511010000105 | – |
| MII VS Microbiology Virulence [LOINC] | 41635-4 | Clostridium botulinum toxin F [Presence] in Specimen by Immunofluorescence | 225781010000107 | – |
| MII VS Microbiology Virulence [LOINC] | 33703-0 | Clostridium botulinum toxin F [Presence] in Specimen by Mouse bioassay neutralization | 101361010000109 | – |
| MII VS Microbiology Virulence [LOINC] | 23935-0 | Staphylococcus aureus toxic shock syndrome toxin 1 [Presence] in Specimen | 736071010000109 | – |
| MII VS Microbiology Virulence [LOINC] | 80518-4 | Clostridium baratii toxin F bont gene [Presence] in Specimen by NAA with probe detection | – | – |
| MII VS Microbiology Virulence [LOINC] | 81644-7 | Clostridium botulinum toxin C botC gene [Presence] in Specimen by NAA with probe detection | – | – |
| MII VS Microbiology Virulence [LOINC] | 81645-4 | Clostridium botulinum toxin D botD gene [Presence] in Specimen by NAA with probe detection | – | – |
| MII VS Microbiology Virulence [LOINC] | 81646-2 | Clostridium botulinum toxin E botE gene [Presence] in Specimen by NAA with probe detection | – | – |
| MII VS Microbiology Virulence [LOINC] | 81647-0 | Clostridium botulinum toxin F botF gene [Presence] in Specimen by NAA with probe detection | – | – |
| MII VS Microbiology Virulence [LOINC] | 53943-7 | Bacterial cytolethal distending toxin cdt gene [Presence] in Specimen by NAA with probe detection | – | – |
| MII VS Microbiology Virulence [LOINC] | 94611-1 | Pasteurella multocida toxin toxA gene [Presence] in Specimen by NAA with probe detection | – | – |
| MII VS Microbiology Virulence [LOINC] | 41631-3 | Clostridium botulinum toxin A botA gene [Presence] in Specimen by NAA with probe detection | – | – |
| MII VS Microbiology Virulence [LOINC] | 41633-9 | Clostridium botulinum toxin B botB gene [Presence] in Specimen by NAA with probe detection | – | – |
| MII VS Microbiology Virulence [LOINC] | 81648-8 | Clostridium botulinum toxin G botG gene [Presence] in Specimen by NAA with probe detection | – | – |
| MII VS Microbiology Virulence [LOINC] | 44881-1 | Staphylococcus aureus toxic shock syndrome toxin gene [Presence] in Specimen by NAA with probe detection | – | – |
| MII VS Microbiology Virulence [LOINC] | 53942-9 | Vibrio cholerae toxin ctx gene [Presence] in Specimen by NAA with probe detection | – | – |
| MII VS Microbiology Virulence [LOINC] | 48816-3 | Staphylococcus aureus Panton-Valentine leukocidin gene [Presence] in Isolate or Specimen by Molecular genetics method | – | – |
