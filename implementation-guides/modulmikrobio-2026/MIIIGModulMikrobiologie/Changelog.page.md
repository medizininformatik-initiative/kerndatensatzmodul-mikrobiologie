## {{page-title}}

Dieses Dokument beschreibt die wesentlichen Änderungen je Release des IGs.

| Version | Datum | Typ | Inhalt |
|---------|-------|-----|--------|
| 2026.0.0-alpha.1 | 02.04.2026 | Breaking (Preview) | National und europäisch abgestimmte Neuausrichtung der Mikrobiologie-Modellierung mit neuen/ersetzten Profil-IDs, Observation-orientierter Struktur ohne `Observation.component`, aktualisierten Terminologiebindungen sowie überarbeiteter IG-Navigation. |

### 2026.0.0-alpha.1

#### Herkunft und Abstimmung

Die Änderungen in diesem Release basieren auf:

- nationaler Abstimmung zwischen MII, MIO42/KBV, RKI sowie weiteren Labor-Stakeholdern
- Abstimmung in HL7 Europe zur einheitlichen Mikrobiologie-Abbildung im Kontext EHDS

#### High-Level (Was hat sich fachlich geändert?)

- Mehrere frühere Profile wurden durch neue 2026-Profile ersetzt (Breaking Change).
- Die Mikrobiologie-Modellierung ist durchgängig Observation-orientiert; frühere `Observation.component`-Semantik wurde in eigenständige Observation-Profile überführt. Dies ermöglicht eine volle Kompatibilität mit dem Labor Modul.
- Kultur- und Bestimmungslogik wurde in allgemeine und spezifische Pfade aufgeteilt.
- Quantitative Teilbefunde (z. B. Ct-Wert, Nugent-Score, Barlett-Score, Titer, Avidität, Pathogenlast) sind als eigene Profile modelliert.
- Die Abbildung der Empfindlichkeit erfolgt nun über ein kombiniertes Modell aus interpretation (mit Susceptibility-Bindung) und einer Norm-Extension zur Angabe des verwendeten Interpretationsstandards.
- Observation-Profile leiten aus `ObservationLab` (Labor-Modul 2026.0.0), der DiagnosticReport aus `DiagnosticReportLab` ab.
- Terminologiebindungen wurden auf die 2026er Struktur konsolidiert (LOINC/SNOMED/UCUM), inklusive Filter- und Benennungsbereinigung.
- Die IG-Navigation unter `FHIR-Profile` spiegelt die neue fachliche Gliederung wider: Kultur, Determination, Weitere Eigenschaften, Serology Immunology, Diagnostic Report.

#### Detaillierte Änderungen für Implementierer (pro Artefakt-ID)

##### Profile (StructureDefinitions)

| Artefakt-ID | Änderungstyp | Vorher (falls relevant) | Nachher | Implementierungsauswirkung | Migrationshinweis |
|-------------|--------------|--------------------------|---------|----------------------------|-------------------|
| `mii-pr-mikrobio-allgemeine-kultur` | ersetzt | `mii-pr-mikrobio-kultur-nachweis` | Allgemeine Kultur als eigenes Profil mit expliziten Bindings für Test/Ergebnis/Methode | Referenzen und Profile-Mappings müssen auf neue Profil-ID umgestellt werden | Instanzen von Alt-Profil auf neue ID migrieren; Ergebnis-Codierung prüfen |
| `mii-pr-mikrobio-spezifische-kultur` | neu | - | Neues Profil für zielgerichtete Kulturbefunde | Neue Profil-ID in Erzeugung, Mapping und Validierung aufnehmen | Bei bisherigen Spezialfällen aus Kultur-Nachweis auf dieses Profil trennen |
| `mii-pr-mikrobio-keimzahl` | inhaltlich aktualisiert | gleich | Quantity-orientierte Modellierung ohne Component-Fokus, UCUM-Bindungen präzisiert | Validierung kann bei Einheiten/Value-Typ strikter greifen | Beispiele und Schnittstellen auf aktualisierte Value-Constraints prüfen |
| `mii-pr-mikrobio-mikroskopie` | inhaltlich aktualisiert | gleich | Ergebnis-/Methodenbindung auf Morphologie-spezifische ValueSets | Terminologieprüfung ändert sich | Kodierungen gegen neue Ergebnis-/Methoden-ValueSets prüfen |
| `mii-pr-mikrobio-empfindlichkeit` | inhaltlich aktualisiert | gleich | Empfindlichkeitsmodell mit Susceptibility-Interpretation + Norm-Extension | Semantikwechsel bei Interpretation/Normabbildung | Norminformationen über Extension transportieren; Interpretation-Binding beachten |
| `mii-pr-mikrobio-nugent-score` | neu | - | Ehemalige Component-Information als eigenständige Observation | Neues Profil in Ergebnisübermittlung und Referenzen berücksichtigen | Bei früherer Component-Abbildung auf eigenes Observation-Resource umstellen |
| `mii-pr-mikrobio-barlett-score` | neu | - | Ehemalige Component-Information als eigenständige Observation | Neues Profil in Ergebnisübermittlung und Referenzen berücksichtigen | Bei früherer Component-Abbildung auf eigenes Observation-Resource umstellen |
| `mii-pr-mikrobio-allgemeine-bestimmung` | neu | - | Neues Profil für allgemeine Bestimmung/Identifikation | Neues Profil in Profilrouting und Mapping ergänzen | Für allgemeine Bestimmung keine Alt-ID vorhanden; direkt neu anbinden |
| `mii-pr-mikrobio-spezifische-bestimmung` | ersetzt | `mii-pr-mikrobio-molekulare-diagnostik` | Spezifische Bestimmung als eigenes Profil mit dedizierten Test-/Methodenbindings | Profil-ID-Wechsel und Terminologieanpassung nötig | Alt-Instanzen auf neue Profil-ID und neue ValueSets migrieren |
| `mii-pr-mikrobio-ct-wert` | neu | - | Ct-Wert als eigenständige quantitative Observation | Neues Profil und neue Tests/Beispiele in Pipelines ergänzen | Früherer Component-Inhalt separat als Observation bereitstellen |
| `mii-pr-mikrobio-voraussichtliche-empfindlichkeit` | inhaltlich aktualisiert | gleich | Bindings für genotypisch abgeleitete Empfindlichkeit aktualisiert | Terminologie-Validierung kann sich ändern | Bestehende Codes gegen aktuelle ValueSets revalidieren |
| `mii-pr-mikrobio-virulenzfaktor` | inhaltlich aktualisiert | gleich | Harmonisierung auf konsistente Detected/Not-detected-Semantik | Ergebnis-Codes müssen zu aktualisierten Bindings passen | SNOMED-Codierung inkl. Display/Code gegen ValueSet prüfen |
| `mii-pr-mikrobio-resistenzmechanismen-determinanten` | ersetzt | `mii-pr-mikrobio-resistenzgene` + `mii-pr-mikrobio-resistenzmutation` | Zusammengeführtes Profil für Determinanten/Mechanismen | Zwei alte Profile werden funktional in einem neuen Profil konsolidiert | Altpfade zusammenführen; Referenzen und Mappingtabellen konsolidieren |
| `mii-pr-mikrobio-mrgn-klasse` | inhaltlich aktualisiert | gleich | Observation-Hauptwert und Terminologie konsolidiert | Value-Bindings und Beispielcodes können abweichen | Mapping und Testdaten auf neue Terminologie abstimmen |
| `mii-pr-mikrobio-mre-klasse` | inhaltlich aktualisiert | gleich | Observation-Hauptwert und Terminologie konsolidiert | Value-Bindings und Beispielcodes können abweichen | Mapping und Testdaten auf neue Terminologie abstimmen |
| `mii-pr-mikrobio-serologie-immunologie` | inhaltlich aktualisiert | gleich | Qualitative Serologie/Immunologie mit aktualisierten Bindings | Kodierungsvorgaben geändert | Vorhandene Serologie-Codes gegen neue Bindings prüfen |
| `mii-pr-mikrobio-antigen-antikoerper-quantitativ` | neu | - | Eigenständiges Profil für quantitative Antigen/Antikörper-Befunde | Neues Profil in Routing, ETL und Validierung integrieren | Einheitensystem und Methodenbindung explizit mitliefern |
| `mii-pr-mikrobio-aviditaet` | neu | - | Eigenständiges Aviditätsprofil inkl. Ergebnissemantik | Neues Profil in Routing, ETL und Validierung integrieren | Aviditätswerte/-interpretation auf neue Bindings umstellen |
| `mii-pr-mikrobio-titer` | neu | - | Eigenständiges Titer-Profil (Ratio-orientiert) | Neues Profil in Routing, ETL und Validierung integrieren | Titerbefunde nicht mehr als Component modellieren |
| `mii-pr-mikrobio-molekulare-pathogenlast` | neu | - | Eigenständiges Profil für quantitative molekulare Last | Neues Profil in Routing, ETL und Validierung integrieren | Einheiten-/Methodenbindung gemäß neuem Profil übernehmen |
| `mii-pr-mikrobio-diagnostic-report` | inhaltlich aktualisiert | gleich | Parent auf Labor-Modul-2026 DiagnosticReport und aktualisierte Ergebnisreferenzen | Aggregation und `result`-Referenzen müssen komplettes 2026-Profilset abdecken | DiagnosticReport-Erzeugung und Referenzauflösung gegen neues Profilset prüfen |

##### Entfallene Alt-Profil-IDs

| Artefakt-ID | Änderungstyp | Vorher (falls relevant) | Nachher | Implementierungsauswirkung | Migrationshinweis |
|-------------|--------------|--------------------------|---------|----------------------------|-------------------|
| `mii-pr-mikrobio-kultur-nachweis` | entfernt/ersetzt | aktiv bis Vorgängerversion | ersetzt durch neues 2026-Profil für allgemeine Kultur | Alt-ID wird im 2026-Modell nicht mehr veröffentlicht | Auf neue 2026-Kulturstruktur umstellen |
| `mii-pr-mikrobio-molekulare-diagnostik` | entfernt/ersetzt | aktiv bis Vorgängerversion | ersetzt durch neues 2026-Profil für spezifische Bestimmung | Alt-ID wird im 2026-Modell nicht mehr veröffentlicht | Auf neue 2026-Bestimmungsstruktur umstellen |
| `mii-pr-mikrobio-resistenzgene` | entfernt/ersetzt | aktiv bis Vorgängerversion | in zusammengeführtes 2026-Profil für Resistenzmechanismen/Determinanten aufgegangen | Alt-ID wird im 2026-Modell nicht mehr veröffentlicht | Mapping in zusammengeführtes 2026-Profil überführen |
| `mii-pr-mikrobio-resistenzmutation` | entfernt/ersetzt | aktiv bis Vorgängerversion | in zusammengeführtes 2026-Profil für Resistenzmechanismen/Determinanten aufgegangen | Alt-ID wird im 2026-Modell nicht mehr veröffentlicht | Mapping in zusammengeführtes 2026-Profil überführen |

##### Terminologien (ValueSets)

###### Neue/umbenannte ValueSet-IDs

| Artefakt-ID | Änderungstyp | Vorher (falls relevant) | Nachher | Implementierungsauswirkung | Migrationshinweis |
|-------------|--------------|--------------------------|---------|----------------------------|-------------------|
| `mii-vs-mikrobio-allgemeine-bestimmung-methode-snomed` | neu | - | Neues Methoden-ValueSet für allgemeine Bestimmung | Neue Terminologiereferenz in Profil-Bindings | Quellsystem-Codes gegen neues ValueSet prüfen |
| `mii-vs-mikrobio-allgemeine-kultur-ergebnis-snomed` | neu | - | Neues Ergebnis-ValueSet für allgemeine Kultur | Ergebnisvalidierung in Kulturprofilen ändert sich | Kultur-Ergebniscodes auf neues ValueSet abbilden |
| `mii-vs-mikrobio-allgemeine-kultur-methode-snomed` | neu | - | Neues Methoden-ValueSet für allgemeine Kultur | Methodenvalidierung in Kulturprofilen ändert sich | Methoden-Codes auf neues ValueSet abbilden |
| `mii-vs-mikrobio-antigen-antikoerper-methode-snomed` | neu | - | Methoden-ValueSet für quantitative Antigen/Antikörper-Befunde | Neues Binding in zugehörigem Profil | Methoden-Codes gegen neues ValueSet prüfen |
| `mii-vs-mikrobio-antigen-antikoerper-quantitativ-einheiten-ucum` | neu | - | UCUM-Einheiten für quantitative Antigen/Antikörper-Befunde | Einheitencodes werden explizit validiert | Einheitencodes und UCUM-System konsequent liefern |
| `mii-vs-mikrobio-antigen-antikoerper-quantitative-tests-loinc` | neu | - | Tests-ValueSet für quantitative Antigen/Antikörper-Befunde | Testcode-Binding in Profilen | Testcodes auf neues ValueSet mappen |
| `mii-vs-mikrobio-antigen-antikoerper-tests-loinc` | neu | - | Ergänzendes Tests-ValueSet für Antigen/Antikörper-Kontext | Zusätzliche Terminologieabhängigkeit | Lokale Mappinglisten auf splitte Testlogik prüfen |
| `mii-vs-mikrobio-aviditaet-ergebnis-snomed` | neu | - | Ergebnis-ValueSet für Avidität | Ergebnisvalidierung geändert | Aviditätsinterpretation auf neues ValueSet mappen |
| `mii-vs-mikrobio-aviditaet-tests-loinc` | neu | - | Tests-ValueSet für Avidität | Testcode-Binding geändert | Testcodes auf neues ValueSet mappen |
| `mii-vs-mikrobio-ct-wert-loinc` | neu | - | Sprechende CT-Tests-ValueSet-ID | Neue Referenz in Ct-Profil | Alte technische Benennung nicht mehr verwenden |
| `mii-vs-mikrobio-detected-not-detected-snomed` | neu | - | Einheitliche Detected/Not-detected-Semantik | Mehrere Profile nutzen einheitliches Ergebnis-ValueSet | Positive/negative Nachweise auf dieses ValueSet harmonisieren |
| `mii-vs-mikrobio-molekulare-pathogenlast-methode-snomed` | neu | - | Methoden-ValueSet für Pathogenlast | Neues Methoden-Binding | Methodencodes gemäß neuem ValueSet liefern |
| `mii-vs-mikrobio-molekulare-pathogenlast-tests-loinc` | neu | - | Tests-ValueSet für Pathogenlast | Neues Test-Binding | Testcodes gemäß neuem ValueSet liefern |
| `mii-vs-mikrobio-morphologie-ergebnis-snomed` | neu | - | Ergebnis-ValueSet für Mikroskopie/Morphologie | Ergebnisvalidierung geändert | Morphologie-Ergebniscodes auf neues ValueSet mappen |
| `mii-vs-mikrobio-morphologie-methode-snomed` | neu | - | Methoden-ValueSet für Mikroskopie/Morphologie | Methodenvalidierung geändert | Methodencodes auf neues ValueSet mappen |
| `mii-vs-mikrobio-positiv-negativ-snomed` | neu | - | Harmonisiertes Positiv/Negativ-ValueSet | Qualitative Profile nutzen neues Binding | Alt-ValueSet-Referenzen ersetzen |
| `mii-vs-mikrobio-resistenzmechanismen-determinanten-loinc` | neu | `mii-vs-mikrobio-resistenzgene-loinc`, `mii-vs-mikrobio-resistenzmutation-loinc` | Zusammengeführtes Tests-ValueSet für Determinanten | Zwei frühere Terminologiestränge werden konsolidiert | Mappingtabellen zusammenführen |
| `mii-vs-mikrobio-spezifische-bestimmung-methode-snomed` | neu | - | Methoden-ValueSet für spezifische Bestimmung | Neues Methoden-Binding | Methodencodes gegen neues ValueSet prüfen |
| `mii-vs-mikrobio-spezifische-bestimmung-tests-loinc` | neu | `mii-vs-mikrobio-molekulare-diagnostik-loinc` | Tests-ValueSet für spezifische Bestimmung (LOINC-Filter aktualisiert) | Testvalidierung und Filterlogik geändert | Lokale Testlisten auf neue LOINC-Filter abstimmen |
| `mii-vs-mikrobio-spezifische-kultur-ergebnis-snomed` | neu | - | Ergebnis-ValueSet für spezifische Kultur | Neues Ergebnis-Binding | Ergebniscodes auf neues ValueSet mappen |
| `mii-vs-mikrobio-spezifische-kultur-tests-loinc` | neu | `mii-vs-mikrobio-kulturtests-loinc` | Tests-ValueSet für spezifische Kultur | Testcode-Binding geändert | Alt-Referenzen auf neue ValueSet-ID ersetzen |
| `mii-vs-mikrobio-susceptibility` | umbenannt | `mii-vs-mikrobio-clsi-hl7` | Vendor-/Norm-neutral benanntes Susceptibility-ValueSet | Referenzname und ID haben sich geändert | Alt-ID konsequent auf neue ID umstellen |
| `mii-vs-mikrobio-titer-methode-snomed` | neu | - | Methoden-ValueSet für Titer | Neues Methoden-Binding | Methodencodes gegen neues ValueSet prüfen |
| `mii-vs-mikrobio-titer-tests-loinc` | neu | - | Tests-ValueSet für Titer | Neues Test-Binding | Testcodes gegen neues ValueSet prüfen |

###### Inhaltlich aktualisierte ValueSet-IDs

| Artefakt-ID | Änderungstyp | Vorher (falls relevant) | Nachher | Implementierungsauswirkung | Migrationshinweis |
|-------------|--------------|--------------------------|---------|----------------------------|-------------------|
| `mii-vs-mikrobio-barlett-score-loinc` | inhaltlich aktualisiert | gleich | Filter-/Inhaltsabgleich auf 2026-Struktur | Validator-Ergebnisse können sich ändern | Barlett-Testcodes gegen aktualisierten Umfang prüfen |
| `mii-vs-mikrobio-befundtyp-loinc` | inhaltlich aktualisiert | gleich | 2026-konforme Befundtyp-Bindung | Änderungen in Profil-Bindings möglich | Lokale Mappingtabellen neu validieren |
| `mii-vs-mikrobio-empfindlichkeit-einheiten-ucum` | inhaltlich aktualisiert | gleich | UCUM-Definitionen bereinigt (`{}`-freie Semantik) | Einheitencodes werden strikter geprüft | UCUM-Codes gemäß neuem ValueSet liefern |
| `mii-vs-mikrobio-empfindlichkeit-phenotyp-loinc` | inhaltlich aktualisiert | gleich | LOINC-Filterlogik an aktuelle Klassifikation angepasst | Testcode-Validierung kann sich ändern | Phenotyp-Codes gegen neues Filterergebnis revalidieren |
| `mii-vs-mikrobio-empfindlichkeit-genotyp-loinc` | inhaltlich aktualisiert | gleich | LOINC-Filterlogik und Benennung harmonisiert | Testcode-Validierung kann sich ändern | Genotyp-Codes gegen neues Filterergebnis revalidieren |
| `mii-vs-mikrobio-keimzahl-einheiten-ucum` | inhaltlich aktualisiert | gleich | UCUM-Semantik bereinigt (`1` statt `{}`-Ausdrücke) | Einheitencodes/Parserverhalten kann sich ändern | Einheitenmapping und Beispielwerte prüfen |
| `mii-vs-mikrobio-keimzahl-loinc` | inhaltlich aktualisiert | gleich | 2026-konforme Testauswahl | Testvalidierung kann sich ändern | Keimzahl-Codes gegen aktualisierten Umfang prüfen |
| `mii-vs-mikrobio-mrgn-klasse-loinc` | inhaltlich aktualisiert | gleich | Klassenbindung aktualisiert | Validierung für Klassenbefunde kann sich ändern | MRGN-Codes gegen aktualisierten Umfang prüfen |
| `mii-vs-mikrobio-molekulare-diagnostik-einheiten-ucum` | inhaltlich aktualisiert | gleich | UCUM-Semantik bereinigt (`{}`-freie Modellierung) | Einheitencodes werden strikter geprüft | Einheitenmapping in Pathogenlast-/Molekularbefunden prüfen |
| `mii-vs-mikrobio-virulenz-loinc` | inhaltlich aktualisiert | gleich | Virulenz-Testumfang aktualisiert | Testvalidierung kann sich ändern | Virulenzcodes gegen aktualisierten Umfang prüfen |

###### Entfernte/abgekündigte ValueSet-IDs

| Artefakt-ID | Änderungstyp | Vorher (falls relevant) | Nachher | Implementierungsauswirkung | Migrationshinweis |
|-------------|--------------|--------------------------|---------|----------------------------|-------------------|
| `mii-vs-mikrobio-antigen-assay-einheiten-ucum` | entfernt/abgekündigt | aktiv bis Vorgängerversion | durch profilspezifische UCUM-ValueSets ersetzt | Alt-Referenzen ungültig | Auf `mii-vs-mikrobio-antigen-antikoerper-quantitativ-einheiten-ucum` umstellen |
| `mii-vs-mikrobio-aviditaet-snomedct` | entfernt/abgekündigt | aktiv bis Vorgängerversion | durch separates Tests-/Ergebnis-Set ersetzt | Alt-Referenz ungültig | Auf `...-aviditaet-tests-loinc` und `...-aviditaet-ergebnis-snomed` umstellen |
| `mii-vs-mikrobio-eucast-snomedct` | entfernt/abgekündigt | aktiv bis Vorgängerversion | durch Susceptibility-/Normmodell ersetzt | Alt-Referenz ungültig | Auf `mii-vs-mikrobio-susceptibility` plus Norm-Extension umstellen |
| `mii-vs-mikrobio-kultur-methode-snomedct` | entfernt/abgekündigt | aktiv bis Vorgängerversion | durch allgemeine/spezifische Kultur-Methodenstränge ersetzt | Alt-Referenz ungültig | Auf `...-allgemeine-kultur-methode-snomed` bzw. spezifische Profile umstellen |
| `mii-vs-mikrobio-kulturtests-loinc` | entfernt/abgekündigt | aktiv bis Vorgängerversion | durch spezifischere Test-ValueSets ersetzt | Alt-Referenz ungültig | Auf `mii-vs-mikrobio-spezifische-kultur-tests-loinc` umstellen |
| `mii-vs-mikrobio-mikroskopie-tests-loinc` | entfernt/abgekündigt | aktiv bis Vorgängerversion | Mikroskopie über neue Morphologie-Logik organisiert | Alt-Referenz ungültig | Auf aktuelle Mikroskopie-Bindungen wechseln |
| `mii-vs-mikrobio-mikroskopiemethoden-snomedct` | entfernt/abgekündigt | aktiv bis Vorgängerversion | durch `mii-vs-mikrobio-morphologie-methode-snomed` ersetzt | Alt-Referenz ungültig | Methodencodes auf neues ValueSet umstellen |
| `mii-vs-mikrobio-molekulare-diagnostik-loinc` | entfernt/abgekündigt | aktiv bis Vorgängerversion | durch spezifische Bestimmung/Pathogenlast-ValueSets ersetzt | Alt-Referenz ungültig | Auf `...-spezifische-bestimmung-tests-loinc` bzw. `...-molekulare-pathogenlast-tests-loinc` umstellen |
| `mii-vs-mikrobio-morphologie-snomedct` | entfernt/abgekündigt | aktiv bis Vorgängerversion | in Ergebnis-/Methoden-ValueSets getrennt | Alt-Referenz ungültig | Auf `...-morphologie-ergebnis-snomed` und `...-morphologie-methode-snomed` umstellen |
| `mii-vs-mikrobio-positiv-negativ-snomedct` | entfernt/abgekündigt | aktiv bis Vorgängerversion | durch harmonisierte ID ohne `-ct` ersetzt | Alt-Referenz ungültig | Auf `mii-vs-mikrobio-positiv-negativ-snomed` umstellen |
| `mii-vs-mikrobio-qualitative-labor-ergebnisse-snomedct` | entfernt/abgekündigt | aktiv bis Vorgängerversion | durch fachspezifische Ergebnis-ValueSets ersetzt | Alt-Referenz ungültig | Auf profilspezifische Ergebnis-ValueSets umstellen |
| `mii-vs-mikrobio-resistenzgene-loinc` | entfernt/abgekündigt | aktiv bis Vorgängerversion | in Determinanten-ValueSet aufgegangen | Alt-Referenz ungültig | Auf `mii-vs-mikrobio-resistenzmechanismen-determinanten-loinc` umstellen |
| `mii-vs-mikrobio-resistenzmutation-loinc` | entfernt/abgekündigt | aktiv bis Vorgängerversion | in Determinanten-ValueSet aufgegangen | Alt-Referenz ungültig | Auf `mii-vs-mikrobio-resistenzmechanismen-determinanten-loinc` umstellen |
| `mii-vs-mikrobio-serologie-immunologie-loinc` | entfernt/abgekündigt | aktiv bis Vorgängerversion | durch differenzierte Serologie-/Antigen-/Titer-Bindungen ersetzt | Alt-Referenz ungültig | Auf die neuen profilspezifischen Test-ValueSets umstellen |
| `mii-vs-mikrobio-serologischer-test-einheiten-ucum` | entfernt/abgekündigt | aktiv bis Vorgängerversion | durch konkrete profilspezifische UCUM-ValueSets ersetzt | Alt-Referenz ungültig | Einheiten je Zielprofil neu binden |

##### Extension / Logical Model / CapabilityStatement

| Artefakt-ID | Änderungstyp | Vorher (falls relevant) | Nachher | Implementierungsauswirkung | Migrationshinweis |
|-------------|--------------|--------------------------|---------|----------------------------|-------------------|
| `mii-ex-mikrobio-empfindlichkeit-norm` | neu | - | Lokale Extension zur Normabbildung (z. B. System/Version/Kategorie) im Empfindlichkeitskontext | Neue Extension muss bei Normbezug unterstützt werden | Empfindlichkeits-Pipelines um Extension-Mapping ergänzen |
| `mii-lm-mikrobio-logical-model` | inhaltlich aktualisiert | flachere/ältere Struktur | Kategorieorientierte Neustruktur: Kultur, Determination, Weitere Eigenschaften, Serology Immunology, Diagnostic Report | Mappingdokumente und Implementierungsleitfäden müssen neu zugeordnet werden | Logische Mappings auf neue Knotenstruktur umstellen |
| `mii-cps-mikrobio-metadata` | inhaltlich aktualisiert | älteres SupportedProfile-Set und IG-Referenz | SupportedProfile auf 2026-Profilset und `ImplementationGuide|2026.0.0-alpha.1` aktualisiert | Capability-basierte Clients prüfen ggf. anderes Profilset | Profil-Discovery/Conformance-Tests gegen neues Set revalidieren |

##### Beispiele & IG-Seitenstruktur

| Artefakt-ID | Änderungstyp | Vorher (falls relevant) | Nachher | Implementierungsauswirkung | Migrationshinweis |
|-------------|--------------|--------------------------|---------|----------------------------|-------------------|
| `mii-exa-mikrobio-allgemeine-kultur` | neu | - | Minimalbeispiel für neues Profil | Neues Referenzbeispiel für Implementierer | In Testdatenkatalog aufnehmen |
| `mii-exa-mikrobio-spezifische-kultur` | neu | - | Minimalbeispiel für neues Profil | Neues Referenzbeispiel für Implementierer | In Testdatenkatalog aufnehmen |
| `mii-exa-mikrobio-allgemeine-bestimmung` | neu | - | Minimalbeispiel für neues Profil | Neues Referenzbeispiel für Implementierer | In Testdatenkatalog aufnehmen |
| `mii-exa-mikrobio-spezifische-bestimmung` | neu | - | Minimalbeispiel für neues Profil | Neues Referenzbeispiel für Implementierer | In Testdatenkatalog aufnehmen |
| `mii-exa-mikrobio-resistenzmechanismen-determinanten` | neu | - | Minimalbeispiel für neues Profil | Neues Referenzbeispiel für Implementierer | In Testdatenkatalog aufnehmen |
| `mii-exa-mikrobio-antigen-antikoerper-quantitativ` | neu | - | Minimalbeispiel für neues Profil | Neues Referenzbeispiel für Implementierer | In Testdatenkatalog aufnehmen |
| `mii-exa-mikrobio-aviditaet` | neu | - | Minimalbeispiel für neues Profil | Neues Referenzbeispiel für Implementierer | In Testdatenkatalog aufnehmen |
| `mii-exa-mikrobio-ct-wert` | neu | - | Minimalbeispiel für neues Profil | Neues Referenzbeispiel für Implementierer | In Testdatenkatalog aufnehmen |
| `mii-exa-mikrobio-titer` | neu | - | Minimalbeispiel für neues Profil | Neues Referenzbeispiel für Implementierer | In Testdatenkatalog aufnehmen |
| `mii-exa-mikrobio-nugent-score` | neu | - | Minimalbeispiel für neues Profil | Neues Referenzbeispiel für Implementierer | In Testdatenkatalog aufnehmen |
| `mii-exa-mikrobio-barlett-score` | neu | - | Minimalbeispiel für neues Profil | Neues Referenzbeispiel für Implementierer | In Testdatenkatalog aufnehmen |
| `mii-exa-mikrobio-molekulare-pathogenlast` | neu | - | Minimalbeispiel für neues Profil | Neues Referenzbeispiel für Implementierer | In Testdatenkatalog aufnehmen |
| `mii-exa-mikrobio-kultur-nachweis` | entfernt/abgekündigt | Altbeispiel vorhanden | entfällt zugunsten neuer Kultur-Beispiele | Altbeispiel nicht mehr passend zum 2026-Modell | Abgekündigt; nicht weiter verwenden |
| `mii-exa-mikrobio-molekulare-diagnostik` | entfernt/abgekündigt | Altbeispiel vorhanden | entfällt zugunsten spezifischer Bestimmung | Altbeispiel nicht mehr passend zum 2026-Modell | Abgekündigt; nicht weiter verwenden |
| `mii-exa-mikrobio-resistenzgene` | entfernt/abgekündigt | Altbeispiel vorhanden | entfällt zugunsten Determinanten-Profil | Altbeispiel nicht mehr passend zum 2026-Modell | Abgekündigt; nicht weiter verwenden |
| `mii-exa-mikrobio-resistenzmutation` | entfernt/abgekündigt | Altbeispiel vorhanden | entfällt zugunsten Determinanten-Profil | Altbeispiel nicht mehr passend zum 2026-Modell | Abgekündigt; nicht weiter verwenden |
