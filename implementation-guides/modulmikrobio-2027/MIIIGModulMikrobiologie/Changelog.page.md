## {{page-title}}

Dieses Dokument beschreibt die wesentlichen Änderungen je Release des IGs.

| Version | Datum | Typ | Inhalt |
|---------|-------|-----|--------|
| 2027.0.0-alpha.2 | 16.04.2026 | Inhaltliche Aktualisierung (Preview) | Bindings in mehreren Profilen von `required` auf `extensible` gelockert, Methodenbindung für Resistenzmechanismen auf neues ValueSet umgestellt sowie Terminologieinhalte für Avidität/Morphologie erweitert. |
| 2027.0.0-alpha.1 | 14.04.2026 | Breaking (Preview) | National und europäisch abgestimmte Neuausrichtung der Mikrobiologie-Modellierung mit neuen/ersetzten Profil-URLs (Canonicals), Observation-orientierter Struktur ohne `Observation.component`, aktualisierten Terminologiebindungen sowie überarbeiteter IG-Navigation. |

### 2027.0.0-alpha.2

#### High-Level (Was hat sich fachlich geändert?)

- Mehrere bislang als `required` definierte Terminologie-Bindings wurden auf `extensible` umgestellt, um fachlich valide lokale Kodierungen weiterhin regelkonform zuzulassen.
- Für `mii-pr-mikrobio-resistenzmechanismen-determinanten` wurde die Methodenbindung auf ein eigenes Methoden-ValueSet für Resistenzmechanismen umgestellt.
- Das Ergebnis-ValueSet für Avidität wurde um `Intermediate` ergänzt.
- Das Morphologie-Ergebnis-ValueSet wurde um zusätzliche Pilzhyphen-Befunde erweitert.

#### Detaillierte Änderungen für Implementierer (pro Artefakt-URL / Canonical)

##### Profile (StructureDefinitions)

| Artefakt (Canonical-URL) | Änderungstyp | Vorher (falls relevant) | Nachher | Implementierungsauswirkung | Migrationshinweis |
|-------------|--------------|--------------------------|---------|----------------------------|-------------------|
| `mii-pr-mikrobio-diagnostic-report` | inhaltlich aktualisiert | Binding auf `MII_VS_Mikrobio_Befundtyp_LOINC` war `required` | Binding auf `MII_VS_Mikrobio_Befundtyp_LOINC` ist `extensible` | Befundtyp-Kodierungen außerhalb des ValueSets können im Ausnahmefall regelkonform abgebildet werden | Lokale Kodierungen weiterhin bevorzugt auf ValueSet-Codes mappen, bei Abweichungen dokumentieren |
| `mii-pr-mikrobio-empfindlichkeit` | inhaltlich aktualisiert | `code` und `valueQuantity.code` waren `required` gebunden | beide Bindings sind `extensible` | Größere Flexibilität bei Testcode- und Einheitencodierung | Primär ValueSet-Codes verwenden; lokale Codes nur bei fachlicher Notwendigkeit |
| `mii-pr-mikrobio-keimzahl` | inhaltlich aktualisiert | `code`, `valueQuantity.code`, `interpretation` waren `required` gebunden | diese Bindings sind `extensible` | Reduzierte Ablehnungsrate bei terminologischen Randfällen | Bestehende Mappings beibehalten, Abweichungen auf Konformität prüfen |
| `mii-pr-mikrobio-mre-klasse` | inhaltlich aktualisiert | `valueCodeableConcept` war `required` gebunden | `valueCodeableConcept` ist `extensible` | Flexiblere Abbildung von Klassifikationskodierungen | Lokale Abweichungen mit Mapping auf Ziel-ValueSet absichern |
| `mii-pr-mikrobio-mikroskopie` | inhaltlich aktualisiert | Ergebnis- und Methodenbindung waren `required` | Ergebnis- und Methodenbindung sind `extensible` | Höhere Interoperabilität bei heterogenen Methodenkatalogen | Vorrangig ValueSet-Codes liefern; lokale Ergänzungen sauber kennzeichnen |
| `mii-pr-mikrobio-molekulare-pathogenlast` | inhaltlich aktualisiert | Einheitenbindung (`valueQuantity.code`) war `required` | Einheitenbindung ist `extensible` | Mehr Spielraum bei spezialisierten Einheitencodes | UCUM-Standardcodes weiter bevorzugen |
| `mii-pr-mikrobio-spezifische-bestimmung` | inhaltlich aktualisiert | Ergebnisbindung war `required` | Ergebnisbindung ist `extensible` | Qualitative Ergebniscodierung wird weniger restriktiv validiert | Mapping auf Ziel-ValueSet weiterhin als Primärpfad nutzen |
| `mii-pr-mikrobio-voraussichtliche-empfindlichkeit` | inhaltlich aktualisiert | Testcode-Binding war `required` | Testcode-Binding ist `extensible` | Bessere Abdeckung lokaler genotypischer Testkodierungen | Lokale Testcodes gegen Ziel-ValueSet prüfen und dokumentieren |
| `mii-pr-mikrobio-resistenzmechanismen-determinanten` | inhaltlich aktualisiert | Methodenbindung auf `MII_VS_Mikrobio_Spezifische_Bestimmung_Methode_SNOMED` | Methodenbindung auf `MII_VS_Mikrobio_Resistenzmechanismen_Methode_SNOMED` | Fachlich präzisere Methodenvalidierung für Resistenzmechanismen | Methodencodes auf neues ValueSet umstellen |

##### Terminologien (ValueSets)

| Artefakt (Canonical-URL) | Änderungstyp | Vorher (falls relevant) | Nachher | Implementierungsauswirkung | Migrationshinweis |
|-------------|--------------|--------------------------|---------|----------------------------|-------------------|
| `mii-vs-mikrobio-resistenzmechanismen-methode-snomed` | neu | - | Eigenes Methoden-ValueSet für den Nachweis von Resistenzgenen/-mutationen (molekulare Verfahren) | Neue Terminologiereferenz im Profil `mii-pr-mikrobio-resistenzmechanismen-determinanten` | Methodencodes auf dieses ValueSet mappen |
| `mii-vs-mikrobio-aviditaet-ergebnis` | inhaltlich aktualisiert | nur `Low`/`High` | `Intermediate` ergänzt | Ergebnisvalidierung erlaubt nun dreistufige Interpretation | Falls vorhanden, `Intermediate`-Befunde auf das ValueSet mappen |
| `mii-vs-mikrobio-morphologie-ergebnis-snomed` | inhaltlich aktualisiert | keine expliziten Pilzhyphen-Subtypen | zusätzliche SNOMED-Codes für Hyphenmorphologien ergänzt (u. a. septiert/nicht-septiert, branching/non-branching) | Feinere morphologische Ergebniscodierung möglich | Lokale Mykologie-Kodierungen auf die neuen Konzepte prüfen |

### 2027.0.0-alpha.1

#### Herkunft und Abstimmung

Die Änderungen in diesem Release basieren auf:

- nationaler Abstimmung zwischen MII, MIO42/KBV, RKI sowie weiteren Labor-Stakeholdern
- Abstimmung in HL7 Europe zur einheitlichen Mikrobiologie-Abbildung im Kontext EHDS

#### High-Level (Was hat sich fachlich geändert?)

- Mehrere frühere Profile wurden durch neue 2027-Profile ersetzt (Breaking Change).
- Die Mikrobiologie-Modellierung ist durchgängig Observation-orientiert; frühere `Observation.component`-Semantik wurde in eigenständige Observation-Profile überführt. Dies ermöglicht eine volle Kompatibilität mit dem Labor Modul.
- Kultur- und Bestimmungslogik wurde in allgemeine und spezifische Pfade aufgeteilt.
- Quantitative Teilbefunde (z. B. Ct-Wert, Nugent-Score, Barlett-Score, Titer, Avidität, Pathogenlast) sind als eigene Profile modelliert.
- Die Abbildung der Empfindlichkeit erfolgt nun über ein kombiniertes Modell aus interpretation (mit Susceptibility-Bindung) und einer Norm-Extension zur Angabe des verwendeten Interpretationsstandards.
- Observation-Profile leiten aus `ObservationLab` (Labor-Modul 2026.0.0), der DiagnosticReport aus `DiagnosticReportLab` ab.
- Für Observationen wird nun die `triggeredBy`-Semantik über die R5-Extension `extension-Observation.triggeredBy` unterstützt, um diagnostische Ketten zwischen aufeinander aufbauenden Untersuchungen abzubilden; die Art der Auslösung wird über `triggeredBy.type` modelliert (insbesondere `reflex` für durch vorherige Untersuchungsergebnisse ausgelöste Folgediagnostik).
- Terminologiebindungen wurden konsolidiert (LOINC/SNOMED/UCUM), inklusive Filter- und Benennungsbereinigung.
- Die IG-Navigation unter `FHIR-Profile` spiegelt die neue fachliche Gliederung wider: Kultur, Bestimmung, Quantitative tests, Weitere Eigenschaften, Diagnostic Report.

#### Detaillierte Änderungen für Implementierer (pro Artefakt-URL / Canonical)

##### Profile (StructureDefinitions)

| Artefakt (Canonical-URL) | Änderungstyp | Vorher (falls relevant) | Nachher | Implementierungsauswirkung | Migrationshinweis |
|-------------|--------------|--------------------------|---------|----------------------------|-------------------|
| `mii-pr-mikrobio-allgemeine-kultur` | ersetzt | `mii-pr-mikrobio-kultur-nachweis` | Allgemeine Kultur als eigenes Profil mit expliziten Bindings für Test/Ergebnis/Methode | Referenzen und Profile-Mappings müssen auf neue Profil-URL (Canonical) umgestellt werden | Instanzen vom Alt-Profil auf neue Profil-URL migrieren; Ergebnis-Codierung prüfen |
| `mii-pr-mikrobio-keimzahl` | inhaltlich aktualisiert | gleich | value[x] wurde auf Quantity eingeschränkt, VS für semi-quantitative Ergebnisse wurde auf .interpretation gebunden , UCUM-Bindungen präzisiert | Validierung kann bei Einheiten/Value-Typ strikter greifen | Beispiele und Schnittstellen auf aktualisierte Value-Constraints prüfen |
| `mii-pr-mikrobio-mikroskopie` | inhaltlich aktualisiert | gleich | Components wurden entfernt und in eigenständige Observation-Profile überführt; `value[x]` sowie die Methodenbindung wurden auf Morphologie-spezifische ValueSets umgestellt | Struktur der Ressourcen und Terminologieprüfung ändern sich; bisherige Component-basierte Inhalte müssen nun als separate referenzierbare Observationen übermittelt werden | Vorhandene `Observation.component`-Abbildungen in eigenständige Observation-Ressourcen überführen und Kodierungen gegen die neuen Ergebnis-/Methoden-ValueSets prüfen |
| `mii-pr-mikrobio-empfindlichkeit` | inhaltlich aktualisiert | gleich | Empfindlichkeitsmodell mit Susceptibility-Interpretation + Norm-Extension | Semantikwechsel bei Interpretation/Normabbildung | Norminformationen über Extension transportieren; Interpretation-Binding beachten |
| `mii-pr-mikrobio-nugent-score` | neu | - | Ehemalige Component-Information als eigenständige Observation | Neues Profil in Ergebnisübermittlung und Referenzen berücksichtigen | Bei früherer Component-Abbildung auf eigenes Observation-Resource umstellen |
| `mii-pr-mikrobio-barlett-score` | neu | - | Ehemalige Component-Information als eigenständige Observation | Neues Profil in Ergebnisübermittlung und Referenzen berücksichtigen | Bei früherer Component-Abbildung auf eigenes Observation-Resource umstellen |
| `mii-pr-mikrobio-allgemeine-bestimmung` | neu | - | Ehemalige Component-Information zur Erregeridentifikation (z. B. `NameMikroorganismus`) aus zuvor zusammengefassten Befundprofilen als eigenständige Observation | Neues Profil in Profilrouting und Mapping ergänzen | Für allgemeine Bestimmung kein 1:1 Alt-Profil vorhanden; component-basierte Identifikationsangaben auf dieses Profil überführen |
| `mii-pr-mikrobio-spezifische-bestimmung` | ersetzt/erweitert | `mii-pr-mikrobio-molekulare-diagnostik` | Spezifische Bestimmung als fachlich breiteres Profil mit dedizierten Test-/Methoden-/Ergebnis-Bindungen für zielgerichtete Nachweise inkl. Überführung früherer component-basierter Nachweisanteile | Profil-URL-Wechsel (Canonical) und Terminologieanpassung nötig; bestehende Annahmen, dass nur molekulardiagnostische Befunde abgebildet werden, sind nicht mehr gültig | Alt-Instanzen und bisherige component-basierte zielgerichtete Nachweis-Mappings auf diese Profil-URL und die aktuellen ValueSets migrieren |
| `mii-pr-mikrobio-ct-wert` | neu | - | Ehemalige Component-Information (Ct-Wert) als eigenständige quantitative Observation | Neues Profil und neue Tests/Beispiele in Pipelines ergänzen | Bei früherer Component-Abbildung auf eigenes Observation-Resource umstellen |
| `mii-pr-mikrobio-virulenzfaktor` | inhaltlich aktualisiert | gleich | Harmonisierung auf konsistente Detected/Not-detected-Semantik | Ergebnis-Codes müssen zu aktualisierten Bindings passen | SNOMED-Codierung inkl. Display/Code gegen ValueSet prüfen |
| `mii-pr-mikrobio-resistenzmechanismen-determinanten` | ersetzt | `mii-pr-mikrobio-resistenzgene` + `mii-pr-mikrobio-resistenzmutation` | Zusammengeführtes Profil für Determinanten/Mechanismen; frühere Component-Inhalte zu Gen-/Mutationsangaben werden nun über `Observation.code` (präkoordinierte LOINC-Determinanten, wo verfügbar) und `valueCodeableConcept` (Detected/Not detected) abgebildet | Zwei alte Profile werden funktional in einem neuen Profil konsolidiert; Component-basierte Datenmodelle müssen auf Code/Value-Semantik umgestellt werden | Altpfade zusammenführen; Referenzen und Mappingtabellen konsolidieren |
| `mii-pr-mikrobio-mre-klasse` | inhaltlich aktualisiert | gleich | Component  "Infectious agent genotype identification (procedure)" wurde entfernt | - | Abbildung des Pathogens über Allgemeine oder Spezifische Bestimmung |
| `mii-pr-mikrobio-antigen-antikoerper-quantitativ` | neu | - | Ehemalige Component-Information (quantitatives Antigen-/Antikörper-Ergebnis) als eigenständiges Profil | Neues Profil in Routing, ETL und Validierung integrieren | Bei früherer Component-Abbildung auf eigenes Observation-Resource umstellen; Einheitensystem und Methodenbindung explizit mitliefern |
| `mii-pr-mikrobio-aviditaet` | neu | - | Ehemalige Component-Information (Avidität) als eigenständiges Profil inkl. Ergebnissemantik | Neues Profil in Routing, ETL und Validierung integrieren | Bei früherer Component-Abbildung auf eigenes Observation-Resource umstellen; Aviditätswerte/-interpretation auf neue Bindings mappen |
| `mii-pr-mikrobio-titer` | neu | - | Ehemalige Component-Information (quantitatives serologisches Ergebnis/Titer) als eigenständiges Profil (Ratio-orientiert) | Neues Profil in Routing, ETL und Validierung integrieren | Bei früherer Component-Abbildung auf eigenes Observation-Resource umstellen |
| `mii-pr-mikrobio-molekulare-pathogenlast` | neu | - | Ehemalige Component-Information (quantitatives molekulares Last-/Viruslast-Ergebnis) als eigenständiges Profil | Neues Profil in Routing, ETL und Validierung integrieren | Bei früherer Component-Abbildung auf eigenes Observation-Resource umstellen; Einheiten-/Methodenbindung gemäß neuem Profil übernehmen |
| `mii-pr-mikrobio-diagnostic-report` | inhaltlich aktualisiert | gleich | Parent auf Labor-Modul-2026 DiagnosticReport und aktualisierte Ergebnisreferenzen | Aggregation und `result`-Referenzen müssen komplettes 2026-Profilset abdecken | DiagnosticReport-Erzeugung und Referenzauflösung gegen neues Profilset prüfen |

##### Entfallene Alt-Profile (Canonical-URLs)

| Artefakt (Canonical-URL) | Änderungstyp | Vorher (falls relevant) | Nachher | Implementierungsauswirkung | Migrationshinweis |
|-------------|--------------|--------------------------|---------|----------------------------|-------------------|
| `mii-pr-mikrobio-kultur-nachweis` | entfernt/ersetzt | aktiv bis Vorgängerversion | ersetzt durch neues 2027-Profil für allgemeine Kultur | Profil wird im 2027-Modell nicht mehr veröffentlicht | Auf neue 2027-Kulturstruktur umstellen |
| `mii-pr-mikrobio-molekulare-diagnostik` | entfernt/ersetzt | aktiv bis Vorgängerversion | ersetzt durch neues 2027-Profil für spezifische Bestimmung | Profil wird im 2027-Modell nicht mehr veröffentlicht | Auf neue 2027-Bestimmungsstruktur umstellen |
| `mii-pr-mikrobio-resistenzgene` | entfernt/ersetzt | aktiv bis Vorgängerversion | in zusammengeführtes 2027-Profil für Resistenzmechanismen/Determinanten aufgegangen | Profil wird im 2027-Modell nicht mehr veröffentlicht | Frühere Component-Angaben zum Gennamen (`component[NamedesGens*]`) auf präkoordinierte `Observation.code`-Codierung im Zielprofil mappen; Nachweis weiterhin über `valueCodeableConcept` |
| `mii-pr-mikrobio-resistenzmutation` | entfernt/ersetzt | aktiv bis Vorgängerversion | in zusammengeführtes 2027-Profil für Resistenzmechanismen/Determinanten aufgegangen | Profil wird im 2027-Modell nicht mehr veröffentlicht | Frühere Component-Angaben zur Resistenzmutation (`component[MicroorganismResistanceMutation]`) auf präkoordinierte `Observation.code`-Codierung im Zielprofil mappen; Nachweis weiterhin über `valueCodeableConcept` |
| `mii-pr-mikrobio-serologie-immunologie` | entfernt/ersetzt | aktiv bis Vorgängerversion | in  2027-Profil Spezfische Bestimmung überführt, Komponenten wurden in eigene Profile überführt | Profil wird im 2027-Modell nicht mehr veröffentlicht | Mapping in  2027-Profile überführen |
##### Terminologien (ValueSets)

###### Neue/umbenannte ValueSet-URLs (Canonicals)

| Artefakt (Canonical-URL) | Änderungstyp | Vorher (falls relevant) | Nachher | Implementierungsauswirkung | Migrationshinweis |
|-------------|--------------|--------------------------|---------|----------------------------|-------------------|
| `mii-vs-mikrobio-allgemeine-bestimmung-methode-snomed` | neu | - | Neues Methoden-ValueSet für allgemeine Bestimmung | Neue Terminologiereferenz in Profil-Bindings | Quellsystem-Codes gegen neues ValueSet prüfen |
| `mii-vs-mikrobio-allgemeine-kultur-ergebnis-snomed` | neu | - | Neues Ergebnis-ValueSet für allgemeine Kultur | Ergebnisvalidierung in Kulturprofilen ändert sich | Kultur-Ergebniscodes auf neues ValueSet abbilden |
| `mii-vs-mikrobio-allgemeine-kultur-methode-snomed` | neu | - | Neues Methoden-ValueSet für allgemeine Kultur | Methodenvalidierung in Kulturprofilen ändert sich | Methoden-Codes auf neues ValueSet abbilden |
| `mii-vs-mikrobio-antigen-antikoerper-methode-snomed` | neu | - | Methoden-ValueSet für quantitative Antigen/Antikörper-Befunde | Neues Binding in zugehörigem Profil | Methoden-Codes gegen neues ValueSet prüfen |
| `mii-vs-mikrobio-antigen-antikoerper-quantitativ-einheiten-ucum` | neu | - | UCUM-Einheiten für quantitative Antigen/Antikörper-Befunde | Einheitencodes werden explizit validiert | Einheitencodes und UCUM-System konsequent liefern |
| `mii-vs-mikrobio-antigen-antikoerper-quantitative-tests-loinc` | neu | - | Tests-ValueSet für quantitative Antigen/Antikörper-Befunde | Testcode-Binding in Profilen | Testcodes auf neues ValueSet mappen |
| `mii-vs-mikrobio-aviditaet-ergebnis-snomed` | neu | - | Ergebnis-ValueSet für Avidität | Ergebnisvalidierung geändert | Aviditätsinterpretation auf neues ValueSet mappen |
| `mii-vs-mikrobio-aviditaet-tests-loinc` | neu | - | Tests-ValueSet für Avidität | Testcode-Binding geändert | Testcodes auf neues ValueSet mappen |
| `mii-vs-mikrobio-ct-wert-loinc` | neu | - | Sprechende Canonical-Bezeichnung für CT-Tests-ValueSet | Neue Referenz in Ct-Profil | Alte technische Benennung nicht mehr verwenden |
| `mii-vs-mikrobio-detected-not-detected-snomed` | neu | - | Einheitliche Detected/Not-detected-Semantik | Mehrere Profile nutzen einheitliches Ergebnis-ValueSet | Positive/negative Nachweise auf dieses ValueSet harmonisieren |
| `mii-vs-mikrobio-molekulare-pathogenlast-methode-snomed` | neu | - | Methoden-ValueSet für Pathogenlast | Neues Methoden-Binding | Methodencodes gemäß neuem ValueSet liefern |
| `mii-vs-mikrobio-molekulare-pathogenlast-tests-loinc` | neu | - | Tests-ValueSet für Pathogenlast | Neues Test-Binding | Testcodes gemäß neuem ValueSet liefern |
| `mii-vs-mikrobio-morphologie-ergebnis-snomed` | neu | - | Ergebnis-ValueSet für Mikroskopie/Morphologie | Ergebnisvalidierung geändert | Morphologie-Ergebniscodes auf neues ValueSet mappen |
| `mii-vs-mikrobio-morphologie-methode-snomed` | neu | - | Methoden-ValueSet für Mikroskopie/Morphologie | Methodenvalidierung geändert | Methodencodes auf neues ValueSet mappen |
| `mii-vs-mikrobio-positiv-negativ-snomed` | neu | - | Harmonisiertes Positiv/Negativ-ValueSet | Qualitative Profile nutzen neues Binding | Alt-ValueSet-Referenzen ersetzen |
| `mii-vs-mikrobio-resistenzmechanismen-determinanten-loinc` | neu | `mii-vs-mikrobio-resistenzgene-loinc`, `mii-vs-mikrobio-resistenzmutation-loinc` | Zusammengeführtes Tests-ValueSet für Determinanten | Zwei frühere Terminologiestränge werden konsolidiert | Mappingtabellen zusammenführen |
| `mii-vs-mikrobio-spezifische-bestimmung-methode-snomed` | neu | - | Methoden-ValueSet für spezifische Bestimmung | Neues Methoden-Binding | Methodencodes gegen neues ValueSet prüfen |
| `mii-vs-mikrobio-spezifische-bestimmung-tests-loinc` | neu | `mii-vs-mikrobio-molekulare-diagnostik-loinc`, `mii-vs-mikrobio-kulturtests-loinc` | Tests-ValueSet für spezifische Bestimmung (LOINC-Filter aktualisiert) | Testvalidierung und Filterlogik geändert | Lokale Testlisten auf neue LOINC-Filter abstimmen |
| `mii-vs-mikrobio-spezifische-bestimmung-ergebnis-snomed` | neu | - | Ergebnis-ValueSet für spezifische Bestimmung | Neues Ergebnis-Binding | Ergebniscodes auf neues ValueSet mappen |
| `mii-vs-mikrobio-susceptibility` | umbenannt | `mii-vs-mikrobio-clsi-hl7` | Vendor-/Norm-neutral benanntes Susceptibility-ValueSet | Referenzname und Canonical-URL haben sich geändert | Alt-ValueSet-URL konsequent auf neue URL umstellen |
| `mii-vs-mikrobio-titer-methode-snomed` | neu | - | Methoden-ValueSet für Titer | Neues Methoden-Binding | Methodencodes gegen neues ValueSet prüfen |
| `mii-vs-mikrobio-titer-tests-loinc` | neu | - | Tests-ValueSet für Titer | Neues Test-Binding | Testcodes gegen neues ValueSet prüfen |

###### Inhaltlich aktualisierte ValueSet-URLs (Canonicals)

| Artefakt (Canonical-URL) | Änderungstyp | Vorher (falls relevant) | Nachher | Implementierungsauswirkung | Migrationshinweis |
|-------------|--------------|--------------------------|---------|----------------------------|-------------------|
| `mii-vs-mikrobio-empfindlichkeit-einheiten-ucum` | inhaltlich aktualisiert | gleich | UCUM-Definitionen bereinigt (`{}`-freie Semantik) | Einheitencodes werden strikter geprüft | UCUM-Codes gemäß neuem ValueSet liefern |
| `mii-vs-mikrobio-keimzahl-einheiten-ucum` | inhaltlich aktualisiert | gleich | UCUM-Semantik bereinigt (`1` statt `{}`-Ausdrücke) | Einheitencodes/Parserverhalten kann sich ändern | Einheitenmapping und Beispielwerte prüfen |
| `mii-vs-mikrobio-keimzahl-loinc` | inhaltlich aktualisiert | gleich | 2027-konforme Testauswahl | Testvalidierung kann sich ändern | Keimzahl-Codes gegen aktualisierten Umfang prüfen |
| `mii-vs-mikrobio-molekulare-diagnostik-einheiten-ucum` | inhaltlich aktualisiert | gleich | UCUM-Semantik bereinigt (`{}`-freie Modellierung) | Einheitencodes werden strikter geprüft | Einheitenmapping in Pathogenlast-/Molekularbefunden prüfen |
| `mii-vs-mikrobio-virulenz-loinc` | inhaltlich aktualisiert | gleich | Virulenz-Testumfang aktualisiert | Testvalidierung kann sich ändern | Virulenzcodes gegen aktualisierten Umfang prüfen |

###### Entfernte/abgekündigte ValueSet-URLs (Canonicals)

| Artefakt (Canonical-URL) | Änderungstyp | Vorher (falls relevant) | Nachher | Implementierungsauswirkung | Migrationshinweis |
|-------------|--------------|--------------------------|---------|----------------------------|-------------------|
| `mii-vs-mikrobio-antigen-assay-einheiten-ucum` | entfernt/abgekündigt | aktiv bis Vorgängerversion | durch profilspezifische UCUM-ValueSets ersetzt | Alt-Referenzen ungültig | Auf `mii-vs-mikrobio-antigen-antikoerper-quantitativ-einheiten-ucum` umstellen |
| `mii-vs-mikrobio-aviditaet-snomedct` | entfernt/abgekündigt | aktiv bis Vorgängerversion | durch separates Tests-/Ergebnis-Set ersetzt | Alt-Referenz ungültig | Auf `...-aviditaet-tests-loinc` und `...-aviditaet-ergebnis-snomed` umstellen |
| `mii-vs-mikrobio-eucast-snomedct` | entfernt/abgekündigt | aktiv bis Vorgängerversion | durch Susceptibility-/Normmodell ersetzt | Alt-Referenz ungültig | Auf `mii-vs-mikrobio-susceptibility` plus Norm-Extension umstellen |
| `mii-vs-mikrobio-kultur-methode-snomedct` | entfernt/abgekündigt | aktiv bis Vorgängerversion | durch allgemeine/spezifische Kultur-Methodenstränge ersetzt | Alt-Referenz ungültig | Auf `...-allgemeine-kultur-methode-snomed` bzw. spezifische Profile umstellen |
| `mii-vs-mikrobio-kulturtests-loinc` | entfernt/abgekündigt | aktiv bis Vorgängerversion | durch spezifischere Test-ValueSets ersetzt | Alt-Referenz ungültig | Auf `mii-vs-mikrobio-spezifische-bestimmung-tests-loinc` umstellen |
| `mii-vs-mikrobio-mikroskopie-tests-loinc` | entfernt/abgekündigt | aktiv bis Vorgängerversion | Mikroskopie über neue Morphologie-Logik organisiert | Alt-Referenz ungültig | Auf aktuelle Mikroskopie-Bindungen wechseln |
| `mii-vs-mikrobio-mikroskopiemethoden-snomedct` | entfernt/abgekündigt | aktiv bis Vorgängerversion | durch `mii-vs-mikrobio-morphologie-methode-snomed` ersetzt | Alt-Referenz ungültig | Methodencodes auf neues ValueSet umstellen |
| `mii-vs-mikrobio-molekulare-diagnostik-loinc` | entfernt/abgekündigt | aktiv bis Vorgängerversion | durch spezifische Bestimmung/Pathogenlast-ValueSets ersetzt | Alt-Referenz ungültig | Auf `...-spezifische-bestimmung-tests-loinc` bzw. `...-molekulare-pathogenlast-tests-loinc` umstellen |
| `mii-vs-mikrobio-morphologie-snomedct` | entfernt/abgekündigt | aktiv bis Vorgängerversion | in Ergebnis-/Methoden-ValueSets getrennt | Alt-Referenz ungültig | Auf `...-morphologie-ergebnis-snomed` und `...-morphologie-methode-snomed` umstellen |
| `mii-vs-mikrobio-positiv-negativ-snomedct` | entfernt/abgekündigt | aktiv bis Vorgängerversion | durch harmonisierte Canonical-Bezeichnung ohne `-ct` ersetzt | Alt-Referenz ungültig | Auf `mii-vs-mikrobio-positiv-negativ-snomed` umstellen |
| `mii-vs-mikrobio-qualitative-labor-ergebnisse-snomedct` | entfernt/abgekündigt | aktiv bis Vorgängerversion | durch fachspezifische Ergebnis-ValueSets ersetzt | Alt-Referenz ungültig | Auf profilspezifische Ergebnis-ValueSets umstellen |
| `mii-vs-mikrobio-resistenzgene-loinc` | entfernt/abgekündigt | aktiv bis Vorgängerversion | in Determinanten-ValueSet aufgegangen | Alt-Referenz ungültig | Auf `mii-vs-mikrobio-resistenzmechanismen-determinanten-loinc` umstellen |
| `mii-vs-mikrobio-resistenzmutation-loinc` | entfernt/abgekündigt | aktiv bis Vorgängerversion | in Determinanten-ValueSet aufgegangen | Alt-Referenz ungültig | Auf `mii-vs-mikrobio-resistenzmechanismen-determinanten-loinc` umstellen |
| `mii-vs-mikrobio-serologie-immunologie-loinc` | entfernt/abgekündigt | aktiv bis Vorgängerversion | durch differenzierte Serologie-/Antigen-/Titer-Bindungen ersetzt | Alt-Referenz ungültig | Auf die neuen profilspezifischen Test-ValueSets umstellen |
| `mii-vs-mikrobio-serologischer-test-einheiten-ucum` | entfernt/abgekündigt | aktiv bis Vorgängerversion | durch konkrete profilspezifische UCUM-ValueSets ersetzt | Alt-Referenz ungültig | Einheiten je Zielprofil neu binden |

##### Extension / Logical Model / CapabilityStatement

| Artefakt (Canonical-URL) | Änderungstyp | Vorher (falls relevant) | Nachher | Implementierungsauswirkung | Migrationshinweis |
|-------------|--------------|--------------------------|---------|----------------------------|-------------------|
| `mii-ex-mikrobio-empfindlichkeit-norm` | neu | - | Lokale Extension zur Normabbildung (z. B. System/Version/Kategorie) im Empfindlichkeitskontext | Neue Extension muss bei Normbezug unterstützt werden | Empfindlichkeits-Pipelines um Extension-Mapping ergänzen |
| `extension-Observation.triggeredBy` | neu verwendet | bislang nicht im IG genutzt | R5-Extension zur Abbildung auslösender vorheriger Untersuchungsergebnisse in Observationen; die Auslöseart wird über `triggeredBy.type` modelliert (u. a. `reflex`) | Systeme müssen Triggerbeziehungen und die fachliche Auslöseart (`type`) verarbeiten können | Vorhandene Trigger-Informationen inkl. Auslöseart auf `triggeredBy`/`triggeredBy.type` mappen |
| `mii-lm-mikrobio-logical-model` | inhaltlich aktualisiert | flachere/ältere Struktur | Kategorieorientierte Neustruktur: Kultur, Bestimmung, Quantitative tests, Weitere Eigenschaften, Diagnostic Report | Mappingdokumente und Implementierungsleitfäden müssen neu zugeordnet werden | Logische Mappings auf neue Knotenstruktur umstellen |
| `mii-cps-mikrobio-metadata` | inhaltlich aktualisiert | älteres SupportedProfile-Set und IG-Referenz | SupportedProfile auf 2027-Profilset und `ImplementationGuide|2027.0.0-alpha.1` aktualisiert | Capability-basierte Clients prüfen ggf. anderes Profilset | Profil-Discovery/Conformance-Tests gegen neues Set revalidieren |

##### Beispiele & IG-Seitenstruktur

| Artefakt (Canonical-URL) | Änderungstyp | Vorher (falls relevant) | Nachher | Implementierungsauswirkung | Migrationshinweis |
|-------------|--------------|--------------------------|---------|----------------------------|-------------------|
| `mii-exa-mikrobio-allgemeine-kultur` | neu | - | Minimalbeispiel für neues Profil | Neues Referenzbeispiel für Implementierer | In Testdatenkatalog aufnehmen |
| `mii-exa-mikrobio-spezifische-kultur` | neu | - | Minimalbeispiel für kulturbasierten zielgerichteten Nachweis im Profil `mii-pr-mikrobio-spezifische-bestimmung` | Neues Referenzbeispiel für Implementierer | In Testdatenkatalog aufnehmen |
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
| `mii-exa-mikrobio-kultur-nachweis` | entfernt/abgekündigt | Altbeispiel vorhanden | entfällt zugunsten neuer Kultur-Beispiele | Altbeispiel nicht mehr passend zum 2027-Modell | Abgekündigt; nicht weiter verwenden |
| `mii-exa-mikrobio-molekulare-diagnostik` | entfernt/abgekündigt | Altbeispiel vorhanden | entfällt zugunsten spezifischer Bestimmung | Altbeispiel nicht mehr passend zum 2027-Modell | Abgekündigt; nicht weiter verwenden |
| `mii-exa-mikrobio-resistenzgene` | entfernt/abgekündigt | Altbeispiel vorhanden | entfällt zugunsten Determinanten-Profil | Altbeispiel nicht mehr passend zum 2027-Modell | Abgekündigt; nicht weiter verwenden |
| `mii-exa-mikrobio-resistenzmutation` | entfernt/abgekündigt | Altbeispiel vorhanden | entfällt zugunsten Determinanten-Profil | Altbeispiel nicht mehr passend zum 2027-Modell | Abgekündigt; nicht weiter verwenden |
