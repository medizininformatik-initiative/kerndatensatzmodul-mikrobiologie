# LOINC Ontology – ValueSets je Anforderung - MII Implementation Guide Microbiology v2027.0.0-ballot2

* [**Inhaltsverzeichnis**](toc.md)
* [**ValueSets**](value-sets.md)
* [**LOINC-Ontology-ValueSets (Vorschlag)**](loinc-ontology-valuesets.md)
* **LOINC Ontology – ValueSets je Anforderung**

## LOINC Ontology – ValueSets je Anforderung

Diese Seite listet die 29 Regeln des [LOINC-Ontology-Vorschlags](loinc-ontology-valuesets.md), gruppiert nach der Anforderungsfamilie des Moduls 2027, mit dem ValueSet, das jede Regel erzeugt, und dem abgeleiteten Observation-Profil, wo es eines gibt. Die Konstruktion ist unter [Wie die ValueSets gebaut werden](loinc-ontology-method.md) erklärt; jede Familie hat eine eigene Review-Seite mit der in Attribute zerlegten Regel und den Codes, die sie auswählt.

### Was als eine Anforderung zählt

Das Modul 2027 definiert ein Observation-Profil je **Frage an das Labor**: Wächst etwas (allgemeine Kultur), was ist es (allgemeine Bestimmung), ist ein benannter Erreger da (spezifische Bestimmung), wie viel davon (Keimzahl, Pathogenlast, Ct-Wert, Titer, quantitative Serologie), ist er empfindlich (phänotypische und voraussichtliche Empfindlichkeit), was war unter dem Mikroskop zu sehen (allgemeine und spezifische Mikroskopie), trägt er einen Resistenzmechanismus. Jede solche Frage ist hier eine Anforderungsfamilie. Innerhalb einer Familie gibt es absichtlich mehrere Regeln: die Regel, die das Profil binden würde, eine Obergrenze für das Review und Regeln, die zeigen, was eine Technique-Klausel gewinnt oder verliert.

### Wie man sie nutzt

* **Implementierende, die einen lokalen Katalog mappen**, nehmen das ValueSet der Anforderung und wählen darin den LOINC-Code, dessen Erreger, Material und Methode zum lokalen Verfahren passen. Die Attributtabelle auf der Familienseite sagt, was alle Codes der Menge gemeinsam haben.
* **Validierung**: Eine Observation, die in `meta.profile` ein abgeleitetes Profil beansprucht, wird gegen die LOINC-Aufzählung des gebundenen ValueSets geprüft.
* **Die Modulredaktion** vergleicht das ValueSet einer Regel mit dem modul­eigenen LOINC-ValueSet derselben Anforderung; die Abdeckungstabellen unten tun das für die aufgezählten Codes.

### Die Regeln

**LOINC** ist die Zahl der LOINC-Codes im ValueSet; **nur SNOMED** die Zahl der Observables der LOINC Ontology ohne LOINC-Code; die Delta-Spalte zählt Konzepte, die zwischen 2026-03-21 und 2026-10-21 in das ValueSet eingetreten oder aus ihm ausgeschieden sind.

| | | | | | | |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| [Allgemeine Kultur](loinc-ontology-request-allgemeine-kultur.md) | Allgemeine Kultur — Erregeridentität durch Kulturtechnik | 577 | 1 | +15 / −0 | [mii-vs-mikrobio-loinc-ontology-general-culture-identity](ValueSet-mii-vs-mikrobio-loinc-ontology-general-culture-identity.md) | [Allgemeine Kultur](StructureDefinition-mii-pr-mikrobio-loinc-ontology-allgemeine-kultur.md) |
| [Allgemeine Kultur](loinc-ontology-request-allgemeine-kultur.md) | Gezielte Kultur — Threshold-Presence eines benannten Erregers durch Kulturtechnik | 203 | 1 | +1 / −0 | [mii-vs-mikrobio-loinc-ontology-specific-culture-threshold](ValueSet-mii-vs-mikrobio-loinc-ontology-specific-culture-threshold.md) | – |
| [Allgemeine Kultur](loinc-ontology-request-allgemeine-kultur.md) | Alles durch Kulturtechnik (Obergrenze) | 786 | 2 | +16 / −0 | [mii-vs-mikrobio-loinc-ontology-culture-any-property](ValueSet-mii-vs-mikrobio-loinc-ontology-culture-any-property.md) | – |
| [Allgemeine Bestimmung](loinc-ontology-request-allgemeine-bestimmung.md) | Allgemeine Bestimmung — Erregeridentität, beliebige Technik | 772 | 8 | +24 / −0 | [mii-vs-mikrobio-loinc-ontology-organism-identity-any-technique](ValueSet-mii-vs-mikrobio-loinc-ontology-organism-identity-any-technique.md) | [Allgemeine Bestimmung](StructureDefinition-mii-pr-mikrobio-loinc-ontology-allgemeine-bestimmung.md) |
| [Allgemeine Bestimmung](loinc-ontology-request-allgemeine-bestimmung.md) | Allgemeine Bestimmung — methodenneutrale Identitätscodes | 88 | 0 | +2 / −0 | [mii-vs-mikrobio-loinc-ontology-organism-identity-no-technique](ValueSet-mii-vs-mikrobio-loinc-ontology-organism-identity-no-technique.md) | – |
| [Allgemeine Bestimmung](loinc-ontology-request-allgemeine-bestimmung.md) | Typisierung — Typ eines Erregers (Serotyp, Genotyp, Biotyp) | 21 | 1 | +0 / −0 | [mii-vs-mikrobio-loinc-ontology-organism-type](ValueSet-mii-vs-mikrobio-loinc-ontology-organism-type.md) | – |
| [Spezifische Bestimmung](loinc-ontology-request-spezifische-bestimmung.md) | Nukleinsäurenachweis — beliebige oder keine Technik | 2500 | 7 | +586 / −1 | [mii-vs-mikrobio-loinc-ontology-naa-detection-any-technique](ValueSet-mii-vs-mikrobio-loinc-ontology-naa-detection-any-technique.md) | [Spezifische Bestimmung](StructureDefinition-mii-pr-mikrobio-loinc-ontology-spezifische-bestimmung.md) |
| [Spezifische Bestimmung](loinc-ontology-request-spezifische-bestimmung.md) | Nukleinsäurenachweis — Amplifikationstechnik ausgewiesen | 1524 | 0 | +38 / −0 | [mii-vs-mikrobio-loinc-ontology-naa-detection-amplification](ValueSet-mii-vs-mikrobio-loinc-ontology-naa-detection-amplification.md) | – |
| [Spezifische Bestimmung](loinc-ontology-request-spezifische-bestimmung.md) | Nukleinsäurenachweis — keine Technik modelliert | 283 | 5 | +19 / −19 | [mii-vs-mikrobio-loinc-ontology-naa-detection-no-technique](ValueSet-mii-vs-mikrobio-loinc-ontology-naa-detection-no-technique.md) | – |
| [Spezifische Bestimmung](loinc-ontology-request-spezifische-bestimmung.md) | Gezielter Kulturnachweis — erregerspezifische Kulturtechnik | 191 | 1 | +1 / −0 | [mii-vs-mikrobio-loinc-ontology-specific-culture-detection](ValueSet-mii-vs-mikrobio-loinc-ontology-specific-culture-detection.md) | [Spezifische Bestimmung](StructureDefinition-mii-pr-mikrobio-loinc-ontology-spezifische-bestimmung.md) |
| [Spezifische Bestimmung](loinc-ontology-request-spezifische-bestimmung.md) | Antigennachweis — Threshold-Presence eines mikrobiellen Antigens | 895 | 4 | +1 / −0 | [mii-vs-mikrobio-loinc-ontology-antigen-detection-threshold](ValueSet-mii-vs-mikrobio-loinc-ontology-antigen-detection-threshold.md) | [Spezifische Bestimmung](StructureDefinition-mii-pr-mikrobio-loinc-ontology-spezifische-bestimmung.md) |
| [Mikroskopie](loinc-ontology-request-mikroskopie.md) | Allgemeine Mikroskopie — nominaler Befund durch Mikroskopie- oder Färbetechnik | 383 | 0 | +7 / −0 | [mii-vs-mikrobio-loinc-ontology-general-microscopy-by-technique](ValueSet-mii-vs-mikrobio-loinc-ontology-general-microscopy-by-technique.md) | [Allgemeine Mikroskopie](StructureDefinition-mii-pr-mikrobio-loinc-ontology-allgemeine-mikroskopie.md) |
| [Mikroskopie](loinc-ontology-request-mikroskopie.md) | Allgemeine Mikroskopie — methodenneutrales Muster „Befund im Material“ | 357 | 0 | +2 / −0 | [mii-vs-mikrobio-loinc-ontology-general-microscopy-in-specimen](ValueSet-mii-vs-mikrobio-loinc-ontology-general-microscopy-in-specimen.md) | [Allgemeine Mikroskopie](StructureDefinition-mii-pr-mikrobio-loinc-ontology-allgemeine-mikroskopie.md) |
| [Mikroskopie](loinc-ontology-request-mikroskopie.md) | Spezifische Mikroskopie — ordinale Threshold-Presence durch Mikroskopie- oder Färbetechnik | 331 | 0 | +16 / −1 | [mii-vs-mikrobio-loinc-ontology-specific-microscopy-threshold](ValueSet-mii-vs-mikrobio-loinc-ontology-specific-microscopy-threshold.md) | [Spezifische Mikroskopie](StructureDefinition-mii-pr-mikrobio-loinc-ontology-spezifische-mikroskopie.md) |
| [Keimzahl](loinc-ontology-request-keimzahl.md) | Keimzahl — Anzahlkonzentration eines Erregers | 16 | 0 | +0 / −0 | [mii-vs-mikrobio-loinc-ontology-colony-count-organism](ValueSet-mii-vs-mikrobio-loinc-ontology-colony-count-organism.md) | [Keimzahl](StructureDefinition-mii-pr-mikrobio-loinc-ontology-keimzahl.md) |
| [Keimzahl](loinc-ontology-request-keimzahl.md) | Keimzahl — mit ausgewiesener Kulturtechnik | 4 | 0 | +0 / −0 | [mii-vs-mikrobio-loinc-ontology-colony-count-by-culture](ValueSet-mii-vs-mikrobio-loinc-ontology-colony-count-by-culture.md) | – |
| [Empfindlichkeit](loinc-ontology-request-empfindlichkeit.md) | Phänotypische Empfindlichkeit — Isolat, keine Genotypisierung | 1230 | 0 | +3 / −0 | [mii-vs-mikrobio-loinc-ontology-susceptibility-phenotype](ValueSet-mii-vs-mikrobio-loinc-ontology-susceptibility-phenotype.md) | [Empfindlichkeit](StructureDefinition-mii-pr-mikrobio-loinc-ontology-empfindlichkeit.md) |
| [Empfindlichkeit](loinc-ontology-request-empfindlichkeit.md) | Voraussichtliche Empfindlichkeit — durch Genotypisierungstechnik | 81 | 0 | +0 / −0 | [mii-vs-mikrobio-loinc-ontology-susceptibility-genotype-predicted](ValueSet-mii-vs-mikrobio-loinc-ontology-susceptibility-genotype-predicted.md) | [Voraussichtliche Empfindlichkeit](StructureDefinition-mii-pr-mikrobio-loinc-ontology-voraussichtliche-empfindlichkeit.md) |
| [Empfindlichkeit](loinc-ontology-request-empfindlichkeit.md) | Alle Empfindlichkeits-Observables (Obergrenze) | 1349 | 1 | +5 / −0 | [mii-vs-mikrobio-loinc-ontology-susceptibility-all](ValueSet-mii-vs-mikrobio-loinc-ontology-susceptibility-all.md) | – |
| [Ct-Wert](loinc-ontology-request-ct-wert.md) | Ct-Wert — Threshold number einer mikrobiellen Nukleinsäure | 40 | 0 | +0 / −0 | [mii-vs-mikrobio-loinc-ontology-ct-value-microbial-nucleic-acid](ValueSet-mii-vs-mikrobio-loinc-ontology-ct-value-microbial-nucleic-acid.md) | [Ct-Wert](StructureDefinition-mii-pr-mikrobio-loinc-ontology-ct-wert.md) |
| [Ct-Wert](loinc-ontology-request-ct-wert.md) | Ct-Wert — alle Threshold-number-Observables (Obergrenze) | 44 | 1 | +1 / −0 | [mii-vs-mikrobio-loinc-ontology-ct-value-any](ValueSet-mii-vs-mikrobio-loinc-ontology-ct-value-any.md) | – |
| [Molekulare Pathogenlast](loinc-ontology-request-molekulare-pathogenlast.md) | Pathogenlast — quantitative mikrobielle Nukleinsäure, beliebige Technik | 401 | 0 | +4 / −0 | [mii-vs-mikrobio-loinc-ontology-pathogen-load-any-technique](ValueSet-mii-vs-mikrobio-loinc-ontology-pathogen-load-any-technique.md) | [Molekulare Pathogenlast](StructureDefinition-mii-pr-mikrobio-loinc-ontology-molekulare-pathogenlast.md) |
| [Molekulare Pathogenlast](loinc-ontology-request-molekulare-pathogenlast.md) | Pathogenlast — Amplifikationstechnik ausgewiesen | 359 | 0 | +4 / −0 | [mii-vs-mikrobio-loinc-ontology-pathogen-load-amplification](ValueSet-mii-vs-mikrobio-loinc-ontology-pathogen-load-amplification.md) | – |
| [Antigen/Antikörper quantitativ](loinc-ontology-request-antigen-antikoerper-quantitativ.md) | Serologie quantitativ — Konzentration eines Erreger-Antikörpers oder -Antigens | 1813 | 0 | +43 / −0 | [mii-vs-mikrobio-loinc-ontology-ab-ag-quantitative](ValueSet-mii-vs-mikrobio-loinc-ontology-ab-ag-quantitative.md) | [Antigen/Antikörper quantitativ](StructureDefinition-mii-pr-mikrobio-loinc-ontology-antigen-antikoerper-quantitativ.md) |
| [Antigen/Antikörper quantitativ](loinc-ontology-request-antigen-antikoerper-quantitativ.md) | Serologie qualitativ — Threshold-Presence eines Erreger-Antikörpers oder -Antigens | 2785 | 11 | +27 / −0 | [mii-vs-mikrobio-loinc-ontology-ab-ag-threshold](ValueSet-mii-vs-mikrobio-loinc-ontology-ab-ag-threshold.md) | – |
| [Titer](loinc-ontology-request-titer.md) | Titer — Erreger-Antikörpertiter | 1716 | 0 | +4 / −0 | [mii-vs-mikrobio-loinc-ontology-titer-infective-antibody](ValueSet-mii-vs-mikrobio-loinc-ontology-titer-infective-antibody.md) | [Titer](StructureDefinition-mii-pr-mikrobio-loinc-ontology-titer.md) |
| [Titer](loinc-ontology-request-titer.md) | Titer — alle Titer-Observables (Obergrenze) | 2188 | 0 | +2 / −0 | [mii-vs-mikrobio-loinc-ontology-titer-any](ValueSet-mii-vs-mikrobio-loinc-ontology-titer-any.md) | – |
| [Resistente Erreger und Resistenzmechanismen](loinc-ontology-request-resistenzmechanismen.md) | Nachweis resistenter Erreger — Presence/Identität eines antimikrobiell resistenten Erregers | 16 | 0 | +0 / −0 | [mii-vs-mikrobio-loinc-ontology-resistant-organism-detection](ValueSet-mii-vs-mikrobio-loinc-ontology-resistant-organism-detection.md) | [Resistenzmechanismen und Determinanten](StructureDefinition-mii-pr-mikrobio-loinc-ontology-resistenzmechanismen.md) |
| [Resistente Erreger und Resistenzmechanismen](loinc-ontology-request-resistenzmechanismen.md) | Resistenter Erreger — jedes Observable über einen resistenten Erreger (Obergrenze) | 16 | 0 | +0 / −0 | [mii-vs-mikrobio-loinc-ontology-resistant-organism-any-property](ValueSet-mii-vs-mikrobio-loinc-ontology-resistant-organism-any-property.md) | – |

### Die abgeleiteten Profile

Jedes Profil unten ist von einem Modulprofil abgeleitet und verengt nur `Observation.code` auf das berechnete ValueSet (Bindungsstärke **required**). Wo eine Anforderung mehrere Regeln braucht, bindet das Profil ein Vereinigungs-ValueSet.

| | | | |
| :--- | :--- | :--- | :--- |
| [MII_PR_Mikrobio_Allgemeine_Kultur](StructureDefinition-mii-pr-mikrobio-allgemeine-kultur.md) | [MII_PR_Mikrobio_LOINC_Ontology_Allgemeine_Kultur](StructureDefinition-mii-pr-mikrobio-loinc-ontology-allgemeine-kultur.md) | [mii-vs-mikrobio-loinc-ontology-general-culture-identity](ValueSet-mii-vs-mikrobio-loinc-ontology-general-culture-identity.md) | Allgemeine Kultur — Erregeridentität durch Kulturtechnik |
| [MII_PR_Mikrobio_Allgemeine_Bestimmung](StructureDefinition-mii-pr-mikrobio-allgemeine-bestimmung.md) | [MII_PR_Mikrobio_LOINC_Ontology_Allgemeine_Bestimmung](StructureDefinition-mii-pr-mikrobio-loinc-ontology-allgemeine-bestimmung.md) | [mii-vs-mikrobio-loinc-ontology-organism-identity-any-technique](ValueSet-mii-vs-mikrobio-loinc-ontology-organism-identity-any-technique.md) | Allgemeine Bestimmung — Erregeridentität, beliebige Technik |
| [MII_PR_Mikrobio_Spezifische_Bestimmung](StructureDefinition-mii-pr-mikrobio-spezifische-bestimmung.md) | [MII_PR_Mikrobio_LOINC_Ontology_Spezifische_Bestimmung](StructureDefinition-mii-pr-mikrobio-loinc-ontology-spezifische-bestimmung.md) | [mii-vs-mikrobio-loinc-ontology-spezifische-bestimmung](ValueSet-mii-vs-mikrobio-loinc-ontology-spezifische-bestimmung.md) | Nukleinsäurenachweis — beliebige oder keine Technik; Gezielter Kulturnachweis — erregerspezifische Kulturtechnik; Antigennachweis — Threshold-Presence eines mikrobiellen Antigens |
| [MII_PR_Mikrobio_Allgemeine_Mikroskopie](StructureDefinition-mii-pr-mikrobio-mikroskopie.md) | [MII_PR_Mikrobio_LOINC_Ontology_Allgemeine_Mikroskopie](StructureDefinition-mii-pr-mikrobio-loinc-ontology-allgemeine-mikroskopie.md) | [mii-vs-mikrobio-loinc-ontology-allgemeine-mikroskopie](ValueSet-mii-vs-mikrobio-loinc-ontology-allgemeine-mikroskopie.md) | Allgemeine Mikroskopie — nominaler Befund durch Mikroskopie- oder Färbetechnik; Allgemeine Mikroskopie — methodenneutrales Muster „Befund im Material“ |
| [MII_PR_Mikrobio_Spezifische_Mikroskopie](StructureDefinition-mii-pr-mikrobio-spezifische-mikroskopie.md) | [MII_PR_Mikrobio_LOINC_Ontology_Spezifische_Mikroskopie](StructureDefinition-mii-pr-mikrobio-loinc-ontology-spezifische-mikroskopie.md) | [mii-vs-mikrobio-loinc-ontology-specific-microscopy-threshold](ValueSet-mii-vs-mikrobio-loinc-ontology-specific-microscopy-threshold.md) | Spezifische Mikroskopie — ordinale Threshold-Presence durch Mikroskopie- oder Färbetechnik |
| [MII_PR_Mikrobio_Keimzahl](StructureDefinition-mii-pr-mikrobio-keimzahl.md) | [MII_PR_Mikrobio_LOINC_Ontology_Keimzahl](StructureDefinition-mii-pr-mikrobio-loinc-ontology-keimzahl.md) | [mii-vs-mikrobio-loinc-ontology-colony-count-organism](ValueSet-mii-vs-mikrobio-loinc-ontology-colony-count-organism.md) | Keimzahl — Anzahlkonzentration eines Erregers |
| [MII_PR_Mikrobio_Empfindlichkeit](StructureDefinition-mii-pr-mikrobio-empfindlichkeit.md) | [MII_PR_Mikrobio_LOINC_Ontology_Empfindlichkeit](StructureDefinition-mii-pr-mikrobio-loinc-ontology-empfindlichkeit.md) | [mii-vs-mikrobio-loinc-ontology-susceptibility-phenotype](ValueSet-mii-vs-mikrobio-loinc-ontology-susceptibility-phenotype.md) | Phänotypische Empfindlichkeit — Isolat, keine Genotypisierung |
| [MII_PR_Mikrobio_Voraussichtliche_Empfindlichkeit](StructureDefinition-mii-pr-mikrobio-voraussichtliche-empfindlichkeit.md) | [MII_PR_Mikrobio_LOINC_Ontology_Voraussichtliche_Empfindlichkeit](StructureDefinition-mii-pr-mikrobio-loinc-ontology-voraussichtliche-empfindlichkeit.md) | [mii-vs-mikrobio-loinc-ontology-susceptibility-genotype-predicted](ValueSet-mii-vs-mikrobio-loinc-ontology-susceptibility-genotype-predicted.md) | Voraussichtliche Empfindlichkeit — durch Genotypisierungstechnik |
| [MII_PR_Mikrobio_Ct_Wert](StructureDefinition-mii-pr-mikrobio-ct-wert.md) | [MII_PR_Mikrobio_LOINC_Ontology_Ct_Wert](StructureDefinition-mii-pr-mikrobio-loinc-ontology-ct-wert.md) | [mii-vs-mikrobio-loinc-ontology-ct-value-microbial-nucleic-acid](ValueSet-mii-vs-mikrobio-loinc-ontology-ct-value-microbial-nucleic-acid.md) | Ct-Wert — Threshold number einer mikrobiellen Nukleinsäure |
| [MII_PR_Mikrobio_Molekulare_Pathogenlast](StructureDefinition-mii-pr-mikrobio-molekulare-pathogenlast.md) | [MII_PR_Mikrobio_LOINC_Ontology_Molekulare_Pathogenlast](StructureDefinition-mii-pr-mikrobio-loinc-ontology-molekulare-pathogenlast.md) | [mii-vs-mikrobio-loinc-ontology-pathogen-load-any-technique](ValueSet-mii-vs-mikrobio-loinc-ontology-pathogen-load-any-technique.md) | Pathogenlast — quantitative mikrobielle Nukleinsäure, beliebige Technik |
| [MII_PR_Mikrobio_Antigen_Antikoerper_Quantitativ](StructureDefinition-mii-pr-mikrobio-antigen-antikoerper-quantitativ.md) | [MII_PR_Mikrobio_LOINC_Ontology_Antigen_Antikoerper_Quantitativ](StructureDefinition-mii-pr-mikrobio-loinc-ontology-antigen-antikoerper-quantitativ.md) | [mii-vs-mikrobio-loinc-ontology-ab-ag-quantitative](ValueSet-mii-vs-mikrobio-loinc-ontology-ab-ag-quantitative.md) | Serologie quantitativ — Konzentration eines Erreger-Antikörpers oder -Antigens |
| [MII_PR_Mikrobio_Titer](StructureDefinition-mii-pr-mikrobio-titer.md) | [MII_PR_Mikrobio_LOINC_Ontology_Titer](StructureDefinition-mii-pr-mikrobio-loinc-ontology-titer.md) | [mii-vs-mikrobio-loinc-ontology-titer-infective-antibody](ValueSet-mii-vs-mikrobio-loinc-ontology-titer-infective-antibody.md) | Titer — Erreger-Antikörpertiter |
| [MII_PR_Mikrobio_Resistenzmechanismen_Determinanten](StructureDefinition-mii-pr-mikrobio-resistenzmechanismen-determinanten.md) | [MII_PR_Mikrobio_LOINC_Ontology_Resistenzmechanismen_Determinanten](StructureDefinition-mii-pr-mikrobio-loinc-ontology-resistenzmechanismen.md) | [mii-vs-mikrobio-loinc-ontology-resistant-organism-detection](ValueSet-mii-vs-mikrobio-loinc-ontology-resistant-organism-detection.md) | Nachweis resistenter Erreger — Presence/Identität eines antimikrobiell resistenten Erregers |

### Abdeckung der aufgezählten Codes des Moduls

Das Modul zählt in mehreren seiner ValueSets LOINC-Codes auf (neben den Property-Filtern). Von diesen 105 Codes sind 33 in der LOINC Ontology 2026-10-21; der Rest ist von keiner Regel erreichbar, was immer die Regel sagt. Es fehlen unter anderem der bevorzugte methodenneutrale Code 41852-5 (**Microorganism or agent identified in Specimen**), alle Keimzahlcodes, alle Aviditätscodes und alle Resistenzdeterminanten-Codes. Die zweite Tabelle listet jeden aufgezählten Code mit seiner SCTID und den Vorschlags-ValueSets, die ihn enthalten.

| | | | |
| :--- | :--- | :--- | :--- |
| [MII VS Microbiology General Determination Tests [LOINC]](ValueSet-mii-vs-mikrobio-allgemeine-bestimmung-tests-loinc.md) | 6 | 3 | 3 |
| [MII VS Microbiology General Culture Tests [LOINC]](ValueSet-mii-vs-mikrobio-allgemeine-kultur-tests-loinc.md) | 2 | 1 | 1 |
| [MII VS Microbiology General Microscopy Tests [LOINC]](ValueSet-mii-vs-mikrobio-allgemeine-mikroskopie-tests-loinc.md) | 4 | 4 | 4 |
| [MII VS Microbiology Avidity Tests [LOINC]](ValueSet-mii-vs-mikrobio-aviditaet-tests-loinc.md) | 5 | 0 | 0 |
| [MII VS Microbiology Bartlett Score [LOINC]](ValueSet-mii-vs-mikrobio-bartlett-score-loinc.md) | 6 | 0 | 0 |
| [MII VS Microbiology Report Type [LOINC]](ValueSet-mii-vs-mikrobio-befundtyp-loinc.md) | 5 | 0 | 0 |
| [MII VS Microbiology Susceptibility Phenotype [LOINC]](ValueSet-mii-vs-mikrobio-empfindlichkeit-phenotyp-loinc.md) | 2 | 1 | 1 |
| [MII VS Microbiology Colony Count [LOINC]](ValueSet-mii-vs-mikrobio-keimzahl-loinc.md) | 4 | 0 | 0 |
| [MII VS Microbiology MRGN Class [LOINC]](ValueSet-mii-vs-mikrobio-mrgn-klasse-loinc.md) | 3 | 0 | 0 |
| [MII VS Microbiology Resistance Mechanisms Determinants [LOINC]](ValueSet-mii-vs-mikrobio-resistenzmechanismen-determinanten-loinc.md) | 6 | 0 | 0 |
| [MII VS Microbiology Specific Determination Tests [LOINC]](ValueSet-mii-vs-mikrobio-spezifische-bestimmung-tests-loinc.md) | 2 | 2 | 2 |
| [MII VS Microbiology Virulence [LOINC]](ValueSet-mii-vs-mikrobio-virulenz-loinc.md) | 61 | 22 | 3 |

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| MII VS Microbiology General Determination Tests [LOINC] | 41852-5 | Microorganism or agent identified in Specimen | – | – |
| MII VS Microbiology General Determination Tests [LOINC] | 23667-9 | Bacteria identified in Specimen | 510981010000102 | [organism_identity_any_technique](ValueSet-mii-vs-mikrobio-loinc-ontology-organism-identity-any-technique.md),[organism_identity_no_technique](ValueSet-mii-vs-mikrobio-loinc-ontology-organism-identity-no-technique.md) |
| MII VS Microbiology General Determination Tests [LOINC] | 42805-2 | Fungus identified in Specimen | 552201010000105 | [organism_identity_any_technique](ValueSet-mii-vs-mikrobio-loinc-ontology-organism-identity-any-technique.md),[organism_identity_no_technique](ValueSet-mii-vs-mikrobio-loinc-ontology-organism-identity-no-technique.md) |
| MII VS Microbiology General Determination Tests [LOINC] | 41461-5 | Virus identified in Specimen | 741131010000104 | [organism_identity_any_technique](ValueSet-mii-vs-mikrobio-loinc-ontology-organism-identity-any-technique.md),[organism_identity_no_technique](ValueSet-mii-vs-mikrobio-loinc-ontology-organism-identity-no-technique.md) |
| MII VS Microbiology General Determination Tests [LOINC] | 66885-5 | Bacteria identified based on 16S rRNA gene [Identifier] in Specimen by Sequencing | – | – |
| MII VS Microbiology General Determination Tests [LOINC] | 101534-6 | Fungal 18s rRNA gene [Identifier] in Specimen by Sequencing | – | – |
| MII VS Microbiology General Culture Tests [LOINC] | 11475-1 | Microorganism identified in Specimen by Culture | 490041010000102 | [culture_any_property](ValueSet-mii-vs-mikrobio-loinc-ontology-culture-any-property.md),[general_culture_identity](ValueSet-mii-vs-mikrobio-loinc-ontology-general-culture-identity.md),[organism_identity_any_technique](ValueSet-mii-vs-mikrobio-loinc-ontology-organism-identity-any-technique.md) |
| MII VS Microbiology General Culture Tests [LOINC] | 41852-5 | Microorganism or agent identified in Specimen | – | – |
| MII VS Microbiology General Microscopy Tests [LOINC] | 105059-0 | Microscopic observation [Identifier] in Specimen | 484041010000107 | [general_microscopy_finding_in_specimen](ValueSet-mii-vs-mikrobio-loinc-ontology-general-microscopy-in-specimen.md) |
| MII VS Microbiology General Microscopy Tests [LOINC] | 664-3 | Microscopic observation [Identifier] in Specimen by Gram stain | 604581010000108 | [general_microscopy_by_technique](ValueSet-mii-vs-mikrobio-loinc-ontology-general-microscopy-by-technique.md),[general_microscopy_finding_in_specimen](ValueSet-mii-vs-mikrobio-loinc-ontology-general-microscopy-in-specimen.md) |
| MII VS Microbiology General Microscopy Tests [LOINC] | 11545-1 | Microscopic observation [Identifier] in Specimen by Acid fast stain | 490111010000102 | [general_microscopy_by_technique](ValueSet-mii-vs-mikrobio-loinc-ontology-general-microscopy-by-technique.md),[general_microscopy_finding_in_specimen](ValueSet-mii-vs-mikrobio-loinc-ontology-general-microscopy-in-specimen.md) |
| MII VS Microbiology General Microscopy Tests [LOINC] | 676-7 | Microscopic observation [Identifier] in Specimen by Rhodamine-auramine fluorochrome stain | 605281010000106 | [general_microscopy_by_technique](ValueSet-mii-vs-mikrobio-loinc-ontology-general-microscopy-by-technique.md),[general_microscopy_finding_in_specimen](ValueSet-mii-vs-mikrobio-loinc-ontology-general-microscopy-in-specimen.md) |
| MII VS Microbiology Avidity Tests [LOINC] | 52984-2 | Cytomegalovirus IgG Ab avidity [Ratio] in Serum or Plasma by Immunoassay | – | – |
| MII VS Microbiology Avidity Tests [LOINC] | 81119-0 | Epstein Barr virus capsid IgG Ab avidity [Ratio] in Serum by Immunoassay | – | – |
| MII VS Microbiology Avidity Tests [LOINC] | 104428-8 | Measles virus IgG Ab avidity [Ratio] in Serum by Immunoassay | – | – |
| MII VS Microbiology Avidity Tests [LOINC] | 52986-7 | Rubella virus IgG Ab avidity [Ratio] in Serum by Immunoassay | – | – |
| MII VS Microbiology Avidity Tests [LOINC] | 56990-5 | Toxoplasma gondii IgG Ab avidity [Ratio] in Serum by Immunoassay | – | – |
| MII VS Microbiology Bartlett Score [LOINC] | LA21392-8 | +3 Active inflammation | – | – |
| MII VS Microbiology Bartlett Score [LOINC] | LA21391-0 | +2 Active inflammation | – | – |
| MII VS Microbiology Bartlett Score [LOINC] | LA21390-2 | +1 Active inflammation | – | – |
| MII VS Microbiology Bartlett Score [LOINC] | LA21389-4 | 0 Lack of inflammation and possible contamination with saliva | – | – |
| MII VS Microbiology Bartlett Score [LOINC] | LA21388-6 | -1 Lack of inflammation and possible contamination with saliva | – | – |
| MII VS Microbiology Bartlett Score [LOINC] | LA21387-8 | -2 Lack of inflammation and possible contamination with saliva | – | – |
| MII VS Microbiology Report Type [LOINC] | 92894-5 | Microbiology - bacterial studies | – | – |
| MII VS Microbiology Report Type [LOINC] | 92893-7 | Microbiology - viral studies | – | – |
| MII VS Microbiology Report Type [LOINC] | 96397-5 | Microbiology - mycobacteriology studies Document | – | – |
| MII VS Microbiology Report Type [LOINC] | 96398-3 | Microbiology - mycology studies Document | – | – |
| MII VS Microbiology Report Type [LOINC] | 92892-9 | Microbiology - parasitic studies | – | – |
| MII VS Microbiology Susceptibility Phenotype [LOINC] | 106843-6 | Cefotaxime+Cloxacillin [Susceptibility] in Isolate by Disk diffusion (KB) | – | – |
| MII VS Microbiology Susceptibility Phenotype [LOINC] | 103673-0 | Isavuconazole [Susceptibility] in Isolate by Gradient strip | 707601010000104 | [susceptibility_all](ValueSet-mii-vs-mikrobio-loinc-ontology-susceptibility-all.md),[susceptibility_phenotype](ValueSet-mii-vs-mikrobio-loinc-ontology-susceptibility-phenotype.md) |
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
| MII VS Microbiology Specific Determination Tests [LOINC] | 105904-7 | Vancomycin resistant enterococcus [Presence] in Specimen | 485831010000109 | [resistant_organism_any_property](ValueSet-mii-vs-mikrobio-loinc-ontology-resistant-organism-any-property.md),[resistant_organism_detection](ValueSet-mii-vs-mikrobio-loinc-ontology-resistant-organism-detection.md) |
| MII VS Microbiology Specific Determination Tests [LOINC] | 35492-8 | Methicillin resistant Staphylococcus aureus (MRSA) DNA [Presence] in Specimen by NAA with probe detection | 204071010000101 | [naa_detection_amplification](ValueSet-mii-vs-mikrobio-loinc-ontology-naa-detection-amplification.md),[naa_detection_any_technique](ValueSet-mii-vs-mikrobio-loinc-ontology-naa-detection-any-technique.md) |
| MII VS Microbiology Virulence [LOINC] | 87402-4 | Escherichia coli aidA-I gene [Presence] in Isolate by NAA with probe detection | – | – |
| MII VS Microbiology Virulence [LOINC] | 87318-2 | Escherichia coli eaeA gene [Presence] in Isolate by NAA with probe detection | – | – |
| MII VS Microbiology Virulence [LOINC] | 87319-0 | Escherichia coli enteroaggregative astA gene [Presence] in Isolate by NAA with probe detection | – | – |
| MII VS Microbiology Virulence [LOINC] | 87320-8 | Escherichia coli enterotoxigenic heat-labile toxin DNA [Presence] in Isolate by NAA with probe detection | – | – |
| MII VS Microbiology Virulence [LOINC] | 87321-6 | Escherichia coli enterotoxigenic sta gene [Presence] in Isolate by NAA with probe detection | – | – |
| MII VS Microbiology Virulence [LOINC] | 87322-4 | Escherichia coli enterotoxigenic stb gene [Presence] in Isolate by NAA with probe detection | – | – |
| MII VS Microbiology Virulence [LOINC] | 87370-3 | Escherichia coli fasA gene [Presence] in Isolate by NAA with probe detection | – | – |
| MII VS Microbiology Virulence [LOINC] | 87371-1 | Escherichia coli fedF gene [Presence] in Isolate by NAA with probe detection | – | – |
| MII VS Microbiology Virulence [LOINC] | 87372-9 | Escherichia coli FimF41a gene [Presence] in Isolate by NAA with probe detection | – | – |
| MII VS Microbiology Virulence [LOINC] | 87373-7 | Escherichia coli K88 DNA [Presence] in Isolate by NAA with probe detection | 760191010000102 | [naa_detection_amplification](ValueSet-mii-vs-mikrobio-loinc-ontology-naa-detection-amplification.md),[naa_detection_any_technique](ValueSet-mii-vs-mikrobio-loinc-ontology-naa-detection-any-technique.md) |
| MII VS Microbiology Virulence [LOINC] | 87374-5 | Escherichia coli K99 DNA [Presence] in Isolate by NAA with probe detection | 760201010000104 | [naa_detection_amplification](ValueSet-mii-vs-mikrobio-loinc-ontology-naa-detection-amplification.md),[naa_detection_any_technique](ValueSet-mii-vs-mikrobio-loinc-ontology-naa-detection-any-technique.md) |
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
| MII VS Microbiology Virulence [LOINC] | 53941-1 | Vibrio cholerae toxin Ag [Presence] in Isolate | 149741010000101 | [ab_ag_threshold](ValueSet-mii-vs-mikrobio-loinc-ontology-ab-ag-threshold.md),[antigen_detection_threshold](ValueSet-mii-vs-mikrobio-loinc-ontology-antigen-detection-threshold.md) |
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

