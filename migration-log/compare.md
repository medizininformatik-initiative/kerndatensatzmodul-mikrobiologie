# IG-Vergleich (2 IGs)

_Objektiver Kennzahlen-Vergleich der analysierten IGs inkl. Linguistik. Die Spalte „Σ Gesamt“ zeigt den aggregierten Gesamtumfang; faire Einordnung über normalisierte Werte._

## Kennzahlen (je IG + Gesamt)

<div align="center">

| Metrik | mikrobiologie-source-2027.0.0-alpha.6 | mikrobiologie-migrated-2027.0.0-alpha.6 | Σ Gesamt |
|---|---|---|---|
| Artefakte gesamt | 102 | 103 | 205 |
| Profile | 20 | 20 | 40 |
| ValueSets | 42 | 42 | 84 |
| CodeSystems | 3 | 3 | 6 |
| Beispiele | 27 | 28 | 55 |
| Narrative-Inhalts-Seiten | 40 | 64 | 104 |
| Wörter gesamt | 11357 | 28174 | 39531 |
| Plattform-Direktiven | 303 | 303 | 606 |
| Doppelte Inhaltsblöcke | 3 | 8 | 11 |
| Nicht referenzierte Bilder | 0 | 2 | 2 |
| Dependencies (floating) | 1 (0) | 4 (0) | — |
| Ø Wörter / Seite | 283,9 | 440,2 | — |
| Median Wörter / Seite | 81 | 130 | — |
| Hersteller-Lock-in /100 | 91 | 57 | — |
| Standard-Terminologie % | 100 | 100 | — |
| Bus-Faktor % (Top-Autor) | 90 | 90 | — |

</div>

## Portfolio: Wiederverwendung & Konsolidierung

_Artefakte mit identischem Namen in mehreren IGs deuten auf Konsolidierungspotenzial (gemeinsames Basis-Modul) hin; senkt den Gesamt-Wartungsaufwand._

<div align="center">

| Geteiltes Artefakt (Typ) | vorkommend in |
|---|---|
| MII_CS_Mikrobio_MRGN_Ergebnis (codesystems) | mikrobiologie-migrated-2027.0.0-alpha.6 · mikrobiologie-source-2027.0.0-alpha.6 |
| MII_CS_Mikrobio_Resistenzkategorie (codesystems) | mikrobiologie-migrated-2027.0.0-alpha.6 · mikrobiologie-source-2027.0.0-alpha.6 |
| MII_CS_Mikrobio_Susceptibility_NORM (codesystems) | mikrobiologie-migrated-2027.0.0-alpha.6 · mikrobiologie-source-2027.0.0-alpha.6 |
| ExtensionObservation_TriggeredBy (extensions) | mikrobiologie-migrated-2027.0.0-alpha.6 · mikrobiologie-source-2027.0.0-alpha.6 |
| MII_EX_Mikrobio_Empfindlichkeit_Norm (extensions) | mikrobiologie-migrated-2027.0.0-alpha.6 · mikrobiologie-source-2027.0.0-alpha.6 |
| MII_PR_Mikrobio_Allgemeine_Bestimmung (profiles) | mikrobiologie-migrated-2027.0.0-alpha.6 · mikrobiologie-source-2027.0.0-alpha.6 |
| MII_PR_Mikrobio_Allgemeine_Kultur (profiles) | mikrobiologie-migrated-2027.0.0-alpha.6 · mikrobiologie-source-2027.0.0-alpha.6 |
| MII_PR_Mikrobio_Antigen_Antikoerper_Quantitativ (profiles) | mikrobiologie-migrated-2027.0.0-alpha.6 · mikrobiologie-source-2027.0.0-alpha.6 |
| MII_PR_Mikrobio_Aviditaet (profiles) | mikrobiologie-migrated-2027.0.0-alpha.6 · mikrobiologie-source-2027.0.0-alpha.6 |
| MII_PR_Mikrobio_Barlett_Score (profiles) | mikrobiologie-migrated-2027.0.0-alpha.6 · mikrobiologie-source-2027.0.0-alpha.6 |
| MII_PR_Mikrobio_Ct_Wert (profiles) | mikrobiologie-migrated-2027.0.0-alpha.6 · mikrobiologie-source-2027.0.0-alpha.6 |
| MII_PR_Mikrobio_Diagnostic_Report (profiles) | mikrobiologie-migrated-2027.0.0-alpha.6 · mikrobiologie-source-2027.0.0-alpha.6 |
| MII_PR_Mikrobio_Empfindlichkeit (profiles) | mikrobiologie-migrated-2027.0.0-alpha.6 · mikrobiologie-source-2027.0.0-alpha.6 |
| MII_PR_Mikrobio_Keimzahl (profiles) | mikrobiologie-migrated-2027.0.0-alpha.6 · mikrobiologie-source-2027.0.0-alpha.6 |
| MII_PR_Mikrobio_MRGN_Klasse (profiles) | mikrobiologie-migrated-2027.0.0-alpha.6 · mikrobiologie-source-2027.0.0-alpha.6 |
| MII_PR_Mikrobio_Mikroskopie (profiles) | mikrobiologie-migrated-2027.0.0-alpha.6 · mikrobiologie-source-2027.0.0-alpha.6 |
| MII_PR_Mikrobio_Molekulare_Pathogenlast (profiles) | mikrobiologie-migrated-2027.0.0-alpha.6 · mikrobiologie-source-2027.0.0-alpha.6 |
| MII_PR_Mikrobio_Nugent_Score (profiles) | mikrobiologie-migrated-2027.0.0-alpha.6 · mikrobiologie-source-2027.0.0-alpha.6 |
| MII_PR_Mikrobio_Resistenzkategorie_Status (profiles) | mikrobiologie-migrated-2027.0.0-alpha.6 · mikrobiologie-source-2027.0.0-alpha.6 |
| MII_PR_Mikrobio_Resistenzmechanismen_Determinanten (profiles) | mikrobiologie-migrated-2027.0.0-alpha.6 · mikrobiologie-source-2027.0.0-alpha.6 |
| MII_PR_Mikrobio_Spezifische_Bestimmung (profiles) | mikrobiologie-migrated-2027.0.0-alpha.6 · mikrobiologie-source-2027.0.0-alpha.6 |
| MII_PR_Mikrobio_Spezifische_Kultur (profiles) | mikrobiologie-migrated-2027.0.0-alpha.6 · mikrobiologie-source-2027.0.0-alpha.6 |
| MII_PR_Mikrobio_Titer (profiles) | mikrobiologie-migrated-2027.0.0-alpha.6 · mikrobiologie-source-2027.0.0-alpha.6 |
| MII_PR_Mikrobio_Virulenzfaktor (profiles) | mikrobiologie-migrated-2027.0.0-alpha.6 · mikrobiologie-source-2027.0.0-alpha.6 |
| MII_PR_Mikrobio_Voraussichtliche_Empfindlichkeit (profiles) | mikrobiologie-migrated-2027.0.0-alpha.6 · mikrobiologie-source-2027.0.0-alpha.6 |
| MII_VS_Labor_Laborergebnis_Semiquantitativ (valuesets) | mikrobiologie-migrated-2027.0.0-alpha.6 · mikrobiologie-source-2027.0.0-alpha.6 |
| MII_VS_Mikrobio_Allgemeine_Bestimmung_Ergebnis_SNOMED (valuesets) | mikrobiologie-migrated-2027.0.0-alpha.6 · mikrobiologie-source-2027.0.0-alpha.6 |
| MII_VS_Mikrobio_Allgemeine_Bestimmung_Methode_SNOMED (valuesets) | mikrobiologie-migrated-2027.0.0-alpha.6 · mikrobiologie-source-2027.0.0-alpha.6 |
| MII_VS_Mikrobio_Allgemeine_Kultur_Methode_SNOMED (valuesets) | mikrobiologie-migrated-2027.0.0-alpha.6 · mikrobiologie-source-2027.0.0-alpha.6 |
| MII_VS_Mikrobio_Antigen_Antikoerper_Methode_SNOMED (valuesets) | mikrobiologie-migrated-2027.0.0-alpha.6 · mikrobiologie-source-2027.0.0-alpha.6 |
| MII_VS_Mikrobio_Antigen_Antikoerper_Quantitativ_Einheiten_UCUM (valuesets) | mikrobiologie-migrated-2027.0.0-alpha.6 · mikrobiologie-source-2027.0.0-alpha.6 |
| MII_VS_Mikrobio_Antigen_Antikoerper_Quantitative_Tests_LOINC (valuesets) | mikrobiologie-migrated-2027.0.0-alpha.6 · mikrobiologie-source-2027.0.0-alpha.6 |
| MII_VS_Mikrobio_Aviditaet_Ergebnis (valuesets) | mikrobiologie-migrated-2027.0.0-alpha.6 · mikrobiologie-source-2027.0.0-alpha.6 |
| MII_VS_Mikrobio_Aviditaet_Tests_LOINC (valuesets) | mikrobiologie-migrated-2027.0.0-alpha.6 · mikrobiologie-source-2027.0.0-alpha.6 |
| MII_VS_Mikrobio_Barlett_Score_LOINC (valuesets) | mikrobiologie-migrated-2027.0.0-alpha.6 · mikrobiologie-source-2027.0.0-alpha.6 |
| MII_VS_Mikrobio_Befundtyp_LOINC (valuesets) | mikrobiologie-migrated-2027.0.0-alpha.6 · mikrobiologie-source-2027.0.0-alpha.6 |
| MII_VS_Mikrobio_CT_Wert_LOINC (valuesets) | mikrobiologie-migrated-2027.0.0-alpha.6 · mikrobiologie-source-2027.0.0-alpha.6 |
| MII_VS_Mikrobio_Data_Absent_Reason (valuesets) | mikrobiologie-migrated-2027.0.0-alpha.6 · mikrobiologie-source-2027.0.0-alpha.6 |
| MII_VS_Mikrobio_Detected_Not_Detected_SNOMED (valuesets) | mikrobiologie-migrated-2027.0.0-alpha.6 · mikrobiologie-source-2027.0.0-alpha.6 |
| MII_VS_Mikrobio_Empfaenglichkeit_Genotyp_LOINC (valuesets) | mikrobiologie-migrated-2027.0.0-alpha.6 · mikrobiologie-source-2027.0.0-alpha.6 |
| MII_VS_Mikrobio_Empfindlichkeit_Einheiten_UCUM (valuesets) | mikrobiologie-migrated-2027.0.0-alpha.6 · mikrobiologie-source-2027.0.0-alpha.6 |
| MII_VS_Mikrobio_Empfindlichkeit_Phenotyp_LOINC (valuesets) | mikrobiologie-migrated-2027.0.0-alpha.6 · mikrobiologie-source-2027.0.0-alpha.6 |
| MII_VS_Mikrobio_Keimzahl_Einheiten_UCUM (valuesets) | mikrobiologie-migrated-2027.0.0-alpha.6 · mikrobiologie-source-2027.0.0-alpha.6 |
| MII_VS_Mikrobio_Keimzahl_LOINC (valuesets) | mikrobiologie-migrated-2027.0.0-alpha.6 · mikrobiologie-source-2027.0.0-alpha.6 |
| MII_VS_Mikrobio_Kultur_Ergebnis_SNOMED (valuesets) | mikrobiologie-migrated-2027.0.0-alpha.6 · mikrobiologie-source-2027.0.0-alpha.6 |
| MII_VS_Mikrobio_MRGN_Klasse_LOINC (valuesets) | mikrobiologie-migrated-2027.0.0-alpha.6 · mikrobiologie-source-2027.0.0-alpha.6 |
| MII_VS_Mikrobio_Molekulare_Diagnostik_Einheiten_UCUM (valuesets) | mikrobiologie-migrated-2027.0.0-alpha.6 · mikrobiologie-source-2027.0.0-alpha.6 |
| MII_VS_Mikrobio_Molekulare_Pathogenlast_Methode_SNOMED (valuesets) | mikrobiologie-migrated-2027.0.0-alpha.6 · mikrobiologie-source-2027.0.0-alpha.6 |
| MII_VS_Mikrobio_Molekulare_Pathogenlast_Tests_LOINC (valuesets) | mikrobiologie-migrated-2027.0.0-alpha.6 · mikrobiologie-source-2027.0.0-alpha.6 |
| MII_VS_Mikrobio_Morphologie_Ergebnis_SNOMED (valuesets) | mikrobiologie-migrated-2027.0.0-alpha.6 · mikrobiologie-source-2027.0.0-alpha.6 |
| MII_VS_Mikrobio_Morphologie_Methode_SNOMED (valuesets) | mikrobiologie-migrated-2027.0.0-alpha.6 · mikrobiologie-source-2027.0.0-alpha.6 |
| MII_VS_Mikrobio_Organismen_SNOMEDCT (valuesets) | mikrobiologie-migrated-2027.0.0-alpha.6 · mikrobiologie-source-2027.0.0-alpha.6 |
| MII_VS_Mikrobio_Resistenzkategorie_Status (valuesets) | mikrobiologie-migrated-2027.0.0-alpha.6 · mikrobiologie-source-2027.0.0-alpha.6 |
| MII_VS_Mikrobio_Resistenzkategorie_Status_Ergebnis (valuesets) | mikrobiologie-migrated-2027.0.0-alpha.6 · mikrobiologie-source-2027.0.0-alpha.6 |
| MII_VS_Mikrobio_Resistenzmechanismen_Determinanten_LOINC (valuesets) | mikrobiologie-migrated-2027.0.0-alpha.6 · mikrobiologie-source-2027.0.0-alpha.6 |
| MII_VS_Mikrobio_Resistenzmechanismen_Methode_SNOMED (valuesets) | mikrobiologie-migrated-2027.0.0-alpha.6 · mikrobiologie-source-2027.0.0-alpha.6 |
| MII_VS_Mikrobio_Spezifische_Bestimmung_Ergebnis_SNOMED (valuesets) | mikrobiologie-migrated-2027.0.0-alpha.6 · mikrobiologie-source-2027.0.0-alpha.6 |
| MII_VS_Mikrobio_Spezifische_Bestimmung_Methode_SNOMED (valuesets) | mikrobiologie-migrated-2027.0.0-alpha.6 · mikrobiologie-source-2027.0.0-alpha.6 |
| MII_VS_Mikrobio_Spezifische_Bestimmung_Tests_LOINC (valuesets) | mikrobiologie-migrated-2027.0.0-alpha.6 · mikrobiologie-source-2027.0.0-alpha.6 |
| MII_VS_Mikrobio_Spezifische_Kultur_Methode_SNOMED (valuesets) | mikrobiologie-migrated-2027.0.0-alpha.6 · mikrobiologie-source-2027.0.0-alpha.6 |
| MII_VS_Mikrobio_Spezifische_Kultur_Tests_LOINC (valuesets) | mikrobiologie-migrated-2027.0.0-alpha.6 · mikrobiologie-source-2027.0.0-alpha.6 |
| MII_VS_Mikrobio_Susceptibility (valuesets) | mikrobiologie-migrated-2027.0.0-alpha.6 · mikrobiologie-source-2027.0.0-alpha.6 |
| MII_VS_Mikrobio_Susceptibility_NORM (valuesets) | mikrobiologie-migrated-2027.0.0-alpha.6 · mikrobiologie-source-2027.0.0-alpha.6 |
| MII_VS_Mikrobio_Titer_Methode_SNOMED (valuesets) | mikrobiologie-migrated-2027.0.0-alpha.6 · mikrobiologie-source-2027.0.0-alpha.6 |
| MII_VS_Mikrobio_Titer_Tests_LOINC (valuesets) | mikrobiologie-migrated-2027.0.0-alpha.6 · mikrobiologie-source-2027.0.0-alpha.6 |
| MII_VS_Mikrobio_Virulenz_LOINC (valuesets) | mikrobiologie-migrated-2027.0.0-alpha.6 · mikrobiologie-source-2027.0.0-alpha.6 |
| MII_VS_Mikrobio_Voraussichtliche_Empfindlichkeit (valuesets) | mikrobiologie-migrated-2027.0.0-alpha.6 · mikrobiologie-source-2027.0.0-alpha.6 |

</div>

## Normalisierte Kennzahlen (fairer Vergleich)

<div align="center">

| Metrik | mikrobiologie-source-2027.0.0-alpha.6 | mikrobiologie-migrated-2027.0.0-alpha.6 |
|---|---|---|
| Direktiven je Seite | 7.58 | 4.73 |
| Beispiele je Profil | 1.35 | 1.4 |

</div>

## Umfang: Artefakte vs. Plattform-Direktiven

<div align="center">

```mermaid
%%{init: {'theme':'base','themeVariables':{"quadrant1Fill": "#4E79A7", "quadrant2Fill": "#F28E2B", "quadrant3Fill": "#59A14F", "quadrant4Fill": "#E15759", "quadrant1TextFill": "#FFFFFF", "quadrant2TextFill": "#FFFFFF", "quadrant3TextFill": "#FFFFFF", "quadrant4TextFill": "#FFFFFF", "quadrantPointFill": "#1A1A1A", "quadrantPointTextFill": "#1A1A1A", "quadrantXAxisTextFill": "#1A1A1A", "quadrantYAxisTextFill": "#1A1A1A", "quadrantTitleFill": "#1A1A1A"}}}%%
quadrantChart
    title Artefakte vs. Direktiven
    x-axis Wenige_Artefakte --> Viele_Artefakte
    y-axis Wenige_Direktiven --> Viele_Direktiven
    quadrant-1 viele & direktivenlastig
    quadrant-2 wenige & direktivenlastig
    quadrant-3 wenige & direktivenarm
    quadrant-4 viele & direktivenarm
    "mikrobiologie-source-2027.0.0-alpha.6": [0.99, 1.0]
    "mikrobiologie-migrated-2027.0.0-alpha.6": [1.0, 1.0]
```

</div>

# Anhang: Methodik & Metrik-Erklärung

_Beschreibung jeder im Report verwendeten Kennzahl - was sie misst und wie sie ermittelt wird - zur Nachvollziehbarkeit._

<div align="center">

| Kennzahl | Was es misst | Herkunft / Berechnung |
|---|---|---|
| Artefakte (publiziert) | Anzahl der vom IG bereitgestellten FHIR-Konformitätsressourcen je Typ (Profile, Extensions, ValueSets, CodeSystems, Logical Models, CapabilityStatements, Beispiele). | Zählung der Deklarationen in input/fsh (bzw. generierten Ressourcen); interne FSH-Konstrukte (RuleSets/Invarianten/Mappings) separat, nicht im Total. |
| Plattform-/Simplifier-Direktiven | Vorkommen plattformspezifischer Platzhalter in den Erklärseiten, die ein generischer IG Publisher nicht versteht. | Mustererkennung je Direktiven-Typ in den Narrative-Seiten; nicht abgedeckte -> UNBEKANNT. |
| Linguistik (Wörter/Seite) | Textumfang der Inhalts-Seiten als Durchschnitt, Median und Extremwerte - Indikator für Dokumentations- und Übersetzungsumfang. | Wortzählung je Inhalts-Seite (ohne Stubs). |
| Inhaltliche Dopplungen | Identische Textabsätze (>= 12 Wörter) bzw. identische Seiten - Hinweis auf Redundanz/Aufräumpotenzial. | Hash-Vergleich normalisierter Absätze/Dateien. |
| Repo-Hygiene (ungenutzte Dateien) | Bilder/Beispiele, die in keiner Erklärseite referenziert sind (Dead-Code-Analogie). | Heuristik: Datei-/Artefaktname kommt im Seitentext nicht vor (kein Beweis für Ungenutztheit). |
| Reife-Komponenten | Status, Doku-Vollständigkeit (Inhalt vs. Stubs), Beispiel-Abdeckung der Profile und Governance-Merkmale — nebeneinander, bewusst nicht zu einem Score verdichtet. | Gezählt/abgeleitet aus sushi-config, Narrative, artifacts_detail und Repo-Dateien; die Freigabe-Einordnung bleibt menschlich. |
| Hersteller-Lock-in | Bindung an die Quellplattform durch proprietäre Direktiven (0-100, Band). | Grobe Heuristik aus Direktiven je Seite. |
| Standard-Terminologie-Anteil | Anteil standardisierter Terminologie (SNOMED/LOINC/ICD/UCUM) gegenüber Eigen-Terminologie. | Grobe Heuristik aus Textvorkommen der Standardsysteme vs. Anzahl lokaler CodeSystems. |
| Wiederverwendung externer Profile | Anteil der Profil-Parents, die auf externen Basisbausteinen statt eigenem Material beruhen. | FSH Parent:-Referenzen; abstrakte LM-Basistypen (Element/Base/...) ausgeschlossen. |
| FHIR-Versions-Aktualität | Wie aktuell die FHIR-Basis ist (R4/R4B/R5) - Zukunftssicherheit. | fhirVersion aus sushi-config, gegen bekannte Versionslinie eingeordnet. |
| Pflege-Kadenz | Lebendigkeit der Pflege (Commits/Jahr, Tage seit letztem Commit). | Git-Historie des analysierten Repos. Erfordert vollständige Git-Historie: bei einem shallow clone (jeder URL-Input wird shallow geklont) nicht ermittelbar und daher null. |
| Bus-Faktor (Wissenskonzentration) | Schlüsselpersonen-Risiko: Anteil des Top-Autors an allen Commits. | Git-Historie, Autoren nach E-Mail gruppiert (Alias-robust). Erfordert vollständige Git-Historie: bei einem shallow clone (jeder URL-Input wird shallow geklont) nicht ermittelbar und daher null. |
| Terminologie-Lizenz | Lizenz-/IP-Risiko gebundener Terminologien (z.B. SNOMED CT lizenzpflichtig). | Erkennung der Standardsysteme im FSH + hinterlegte Lizenzeinstufung. |
| Unterdrückte Warnungen | Risiko, dass ausgeblendete QA-Meldungen echte Fehler verbergen (breit/Wildcard vs. eng). | Klassifikation der Einträge in input/ignoreWarnings.txt. |
| Datenschutz-Substanz | Ob die Datenschutz-Seite substanziell ist und ob Beispiele PII-artige Daten enthalten. | Wortzahl der security-privacy-Seite + Heuristik (birthDate/name) in Beispielen. |
| Breaking-Change-Risiko | Kompatibilitätsbruch gegenüber der publizierten Vorversion. | Nur per Build/Vorversions-Diff ermittelbar - im statischen Modus nicht erhoben (null). |
| Statisch vs. Build | Erhebungsmodus jeder Kennzahl. | static = nur Quelldateien/Git; build = erfordert IG-Publisher-Lauf (qa.json); extern = Registry/Netz. Nicht statisch erhebbare Größen bleiben null und sind so markiert. |

</div>
