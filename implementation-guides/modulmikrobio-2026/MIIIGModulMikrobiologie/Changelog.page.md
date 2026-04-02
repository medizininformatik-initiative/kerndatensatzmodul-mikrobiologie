## {{page-title}}

Dieses Dokument beschreibt die wesentlichen Änderungen je Release des IGs.

| Version | Datum | Typ | Inhalt |
|---------|-------|-----|--------|
| 2026.0.0-alpha.1 | 02.04.2026 | Breaking (Preview) | National und europäisch abgestimmte Neuausrichtung der Mikrobiologie-Modellierung: neue/ersetzte Profile, inhaltliche Updates bestehender Profile, Observation-orientiertes Modell ohne `Observation.component`, neue Norm-Extension bei Empfindlichkeit, aktualisierte CapabilityStatement-Profile und IG-Struktur. |

### 2026.0.0-alpha.1

#### Herkunft und Abstimmung

Die Änderungen in diesem Release basieren auf:

- nationaler Abstimmung zwischen MII, MIO42/KBV, RKI sowie weiteren Labor-Stakeholdern
- Abstimmung in HL7 Europe zur einheitlichen Mikrobiologie-Abbildung im Kontext EHDS

#### Ersetzte Profile (Breaking Profil-ID-Wechsel)

| Vorherige Profil-ID | Neue Profil-ID | Detaillierte Änderung |
|---------------------|----------------|-----------------------|
| `mii-pr-mikrobio-kultur-nachweis` | `mii-pr-mikrobio-allgemeine-kultur` | Semantik auf allgemeine Kulturdiagnostik geschärft; Ergebnis auf `Detected/Not detected` harmonisiert; strukturelle Verknüpfung über `hasMember` zu Folgebeobachtungen (u. a. Keimzahl, Empfindlichkeit, MRE/MRGN, Mikroskopie, spezifische Kultur, allgemeine Bestimmung). |
| `mii-pr-mikrobio-molekulare-diagnostik` | `mii-pr-mikrobio-spezifische-bestimmung` | Zielgerichtete Bestimmung als eigenes Profil; explizites Test- und Methodenbinding; Ergebnis auf `Detected/Not detected`; `derivedFrom` für methodischen Bezug explizit. |
| `mii-pr-mikrobio-resistenzgene` + `mii-pr-mikrobio-resistenzmutation` | `mii-pr-mikrobio-resistenzmechanismen-determinanten` | Zusammenführung zweier vorher getrennter Nachweispfade in ein Profil; einheitliches Testbinding für Determinanten; Ergebnis auf `Detected/Not detected` konsolidiert. |

#### Neue Profile (ohne direkten 1:1-Vorgänger) mit Detail pro Profil-ID

| Profil-ID | Detaillierte Änderung |
|-----------|-----------------------|
| `mii-pr-mikrobio-spezifische-kultur` | Neu als separates Profil für zielgerichtete Kulturdiagnostik; Testbinding auf spezifische Kultur-LOINC; Ergebnisbinding auf spezifische Kultur-Ergebniscodes; explizite Methodenfixierung. |
| `mii-pr-mikrobio-allgemeine-bestimmung` | Neu als separates Profil für allgemeine Identifikation/Bestimmung; fester Testcode (`LOINC 41852-5`); Ergebnis als Organismus-Concept. |
| `mii-pr-mikrobio-antigen-antikoerper-quantitativ` | Neu für quantitative Antigen/Antikörper-Befunde; `value[x]` auf `Quantity` begrenzt; explizite Methoden- und Einheitenkonvention. |
| `mii-pr-mikrobio-aviditaet` | Neu als eigenes Aviditätsprofil; separates Testbinding und Ergebnisbinding für Aviditätsklassen. |
| `mii-pr-mikrobio-ct-wert` | Neu als separates Ct-Wert-Profil; `value[x] = Quantity`; `derivedFrom` verpflichtend für den Bezug zur Primärmessung. |
| `mii-pr-mikrobio-titer` | Neu als separates Titer-Profil; `value[x] = Ratio`; methodische Kodierung explizit gebunden. |
| `mii-pr-mikrobio-nugent-score` | Neu als separates Nugent-Profil; eigener Testcode; Ergebnis als `Quantity` im Observation-Hauptwert (statt Component-Element). |
| `mii-pr-mikrobio-barlett-score` | Neu als separates Barlett-Profil; eigener Testcode und explizite Methodenangabe. |
| `mii-pr-mikrobio-molekulare-pathogenlast` | Neu als separates Profil für quantitative molekulare Last; `value[x] = Quantity`; explizite Bindings für Test, Methode und UCUM-Einheiten. |

#### Inhaltlich aktualisierte bestehende Profile mit Detail pro Profil-ID

| Profil-ID | Detaillierte Änderung |
|-----------|-----------------------|
| `mii-pr-mikrobio-keimzahl` | Struktur auf Observation-Hauptwert umgestellt; `interpretation` entfernt; `value[x]` auf `Quantity/CodeableConcept` fokussiert; UCUM-Bindung präzisiert. |
| `mii-pr-mikrobio-empfindlichkeit` | Normabbildung von `Observation.interpretation` auf lokale Norm-Extension umgestellt (`system`, `version`, `kategorie`); `interpretation` deaktiviert. |
| `mii-pr-mikrobio-mikroskopie` | Ergebnis- und Methodensemantik konkretisiert über eigene Morphologie-Ergebnis-/Methoden-ValueSets. |
| `mii-pr-mikrobio-serologie-immunologie` | Qualitative Serologie auf harmonisierte Positiv/Negativ-Semantik mit expliziter Methodenbindung angepasst. |
| `mii-pr-mikrobio-virulenzfaktor` | Ergebnissemantik vereinheitlicht auf `Detected/Not detected`; Testbinding geschärft. |
| `mii-pr-mikrobio-voraussichtliche-empfindlichkeit` | Test- und Ergebnisbindings für genotypisch abgeleitete voraussichtliche Empfindlichkeit konsolidiert. |
| `mii-pr-mikrobio-mre-klasse` | MRE-Klassifikation als eigenständiger Observation-Hauptwert konsolidiert; Component-Semantik entfällt. |
| `mii-pr-mikrobio-mrgn-klasse` | MRGN-Klassifikation als eigenständiger Observation-Hauptwert konsolidiert; Component-Semantik entfällt. |
| `mii-pr-mikrobio-diagnostic-report` | Ergebnisreferenzen auf das neue 2026-Profilspektrum umgestellt; Profilbezug zum Labor-Modul 2026 (`DiagnosticReportLab`) aktualisiert. |

#### Querschnittliche Semantik- und Modelländerungen

- Umstellung auf Observation-orientiertes Modell ohne `Observation.component`.
- Empfindlichkeit von `Observation.interpretation` auf lokale Norm-Extension umgestellt.
- Observation-Profile auf Basis Labor-Modul 2026 (`ObservationLab`) und DiagnosticReport auf Basis `DiagnosticReportLab`.

#### Migration-Hinweis

Dieses Alpha-Release enthält Breaking Changes. Alte Profil-IDs der ersetzten Profile werden im 2026-Modell nicht weitergeführt (damit ändern sich entsprechend auch die zugehörigen Canonical URLs).
