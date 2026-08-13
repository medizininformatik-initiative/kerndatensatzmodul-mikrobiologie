## {{page-title}}

Dieses Dokument beschreibt die wesentlichen Änderungen je Release des IGs.

| Version | Datum | Typ | Inhalt                                                                                                                                                                                                                                                                                                                                |
|---------|-------|-----|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| 2027.0.0 | tbd | Inhaltliche Aktualisierung | Das Informationsmodell wurde verbessert und verwendet FHIR-Datentypen statt Verweisen auf Profil-Canonicals. Es ist auf drei Logical Models aufgeteilt: Befund, abstrakte Untersuchung und Untersuchungsarten. Neues Profil für die spezifische Kultur, das aus der spezifischen Bestimmung herausgelöst wurde; Kulturergebnisse einheitlich als Wachstum / kein Wachstum, unbestimmbare Ergebnisse über `dataAbsentReason`. Der MRE-Klassenbezug wurde durch einen kategorienbezogenen Resistenzkategorie-Status (MRSA/VRE/LRE/LVRE, Positive/Negative) ersetzt; MRGN bleibt eine eigenständige Klassifikation.                    |
| 2027.0.0-alpha.5 | 18.06.2026 | Inhaltliche/technische Aktualisierung (Preview) | CapabilityStatement erweitert: `DiagnosticReport` mit Mikrobio-Profil aufgenommen, unterstützte Suchparameter für `Observation` und `DiagnosticReport` vervollständigt, an die SearchParameter des Labor-Moduls angeglichen sowie lokale SearchParameter für `Observation.interpretation` und `triggeredBy` ergänzt.                  |
| 2027.0.0-alpha.4 | 11.06.2026 | Technische Korrektur (Preview) | Technische Korrekturen ohne inhaltliche Änderungen am IG; insbesondere Vereinheitlichung der Versionskennzeichnung in den Packages.                                                                                                                                                                                                   |
| 2027.0.0-alpha.3 | 13.05.2026 | Technische Korrektur (Preview) | Re-Release von Packages mit technischen Korrekturen; keine inhaltlichen Änderungen am IG.                                                                                                                                                                                                                                             |
| 2027.0.0-alpha.2 | 16.04.2026 | Inhaltliche Aktualisierung (Preview) | Bindings in mehreren Profilen von `required` auf `extensible` gelockert, Methodenbindung für Resistenzmechanismen auf neues ValueSet umgestellt, DiagnosticReport-Kategorie auf MB inkl. Coding-Slice und optionalen LOINC-Befundtyp (`mibi-sub-category`) ausgerichtet sowie Terminologieinhalte für Avidität/Morphologie erweitert. |
| 2027.0.0-alpha.1 | 14.04.2026 | Breaking (Preview) | National und europäisch abgestimmte Neuausrichtung der Mikrobiologie-Modellierung mit neuen/ersetzten Profil-URLs (Canonicals), Observation-orientierter Struktur ohne `Observation.component`, aktualisierten Terminologiebindungen sowie überarbeiteter IG-Navigation.                                                              |

### 2027.0.0

Datum: tbd

#### High-Level (Was hat sich fachlich geändert?)

- Das Logical Model war bisher ein Verzeichnis der FHIR-Profile: seine Blattelemente waren mit den Canonical-URLs der Profile typisiert und enthielten keine fachlichen Datenelemente. Das Informationsmodell beschreibt jetzt die Datenelemente mit FHIR-Datentypen (`CodeableConcept`, `Quantity`, `Ratio`, `dateTime`, `Coding`, `Reference`).
- Das Modell ist auf drei Logical Models aufgeteilt. Dadurch lassen sich Bezüge zwischen den Klassen als `Reference` ausdrücken, und die für jede Untersuchung geltenden Angaben werden einmal an einer abstrakten Basisklasse definiert und vererbt, statt bei jeder Untersuchungsart wiederholt zu werden.
- Rein FHIR-technische Angaben ohne fachlichen Inhalt sind nicht Teil des Informationsmodells; dazu zählen die Kategorie-Slices sowie die Extensions zur alternativen Einheitendarstellung und zur Zahlengenauigkeit.
- Der zielgerichtete kulturbasierte Nachweis hat ein eigenes Profil erhalten und ist nicht mehr Teil der spezifischen Bestimmung. Grundlage ist die Abstimmung in HL7 Europe zur einheitlichen Mikrobiologie-Abbildung im Kontext EHDS, in der die Trennung von Kultur und Bestimmung beschlossen wurde. Damit wird zugleich eine Trennung wiederhergestellt, die bis 2025.0.2 bestand: Dort deckte `mii-pr-mikrobio-kultur-nachweis` über das extensible Binding auf `mii-vs-mikrobio-kulturtests-loinc` auch erregerspezifische Kulturcodes ab. In 2027.0.0-alpha.1 waren diese Codes vorübergehend der spezifischen Bestimmung zugeordnet. Abgegrenzt wird über die Methode: erregerspezifische Kultur (LOINC `METHOD_TYP` `LP6429-7`, SNOMED `703752003`) gehört zur spezifischen Kultur, die direkten molekularen, immunologischen und biochemischen Verfahren zur spezifischen Bestimmung.
- Damit verlaufen die beiden Achsen sauber getrennt: die Kultur beantwortet, ob etwas wächst, die Bestimmung, um welchen Erreger es sich handelt. Kulturergebnisse sind einheitlich Wachstum oder kein Wachstum, Bestimmungsergebnisse Nachweis oder Ausschluss.
- Ein unbestimmbares Ergebnis wird nicht mehr über `value[x]` kodiert, sondern über `Observation.dataAbsentReason`.
- Die MRE-Modellierung wurde von einer Organismus-Klassifikation auf einen kategorienbezogenen Status umgestellt. Bisher trug `valueCodeableConcept` den konkreten resistenten Organismus (z. B. MRSA, VRE) und duplizierte damit Informationen aus Identifikation, Empfindlichkeit und Resistenzmechanismen. Zudem war der zugrunde liegende SNOMED-Unterbaum breiter als „MRE": Einzelsubstanzresistenzen wie `838510005 Linezolid resistant Enterococcus` sind nicht automatisch Multiresistenz.
- Jede Observation drückt nun den Status **einer** benannten Resistenzkategorie aus: `MRSA-Status = Positive`, `VRE-Status = Negative` usw.
- `Negative` bedeutet, dass ein vorliegender Erreger anhand der relevanten Untersuchungen bewertet wurde und die Kriterien der Kategorie nicht erfüllt. Es ist nicht mit einem negativen Erregernachweis gleichzusetzen; ist keine ausreichende Bewertung möglich, wird `dataAbsentReason` verwendet.
- Die Ableitung erfolgt über `Observation.derivedFrom` und nicht über die `triggeredBy`-Extension. Die zugrunde liegenden Untersuchungen sollten angegeben werden, dürfen aber entfallen, wenn der Status unmittelbar aus einem bereits kategorisierten Laborbefund übernommen wird.
- MRGN bleibt eine eigenständige Klassifikation und wird nicht in Einzelstatus-Aussagen umgebaut. Für den Fall, dass ein bewertetes Isolat keiner MRGN-Klasse zuzuordnen ist, wurde ein Negativwert ergänzt, den die LOINC-AnswerList nicht enthält.

#### Detaillierte Änderungen für Implementierer (pro Artefakt-URL / Canonical)

##### Profile (StructureDefinitions)

| Artefakt (Canonical-URL) | Änderungstyp | Vorher (falls relevant) | Nachher | Implementierungsauswirkung | Migrationshinweis |
|-------------|--------------|--------------------------|---------|----------------------------|-------------------|
| `mii-pr-mikrobio-spezifische-kultur` | neu | seit 2027.0.0-alpha.1 über `mii-pr-mikrobio-spezifische-bestimmung` abgebildet; bis 2025.0.2 Teil von `mii-pr-mikrobio-kultur-nachweis` (Binding `mii-vs-mikrobio-kulturtests-loinc`) | Eigenes Profil für den erregerspezifischen Kulturnachweis; `code` aus `mii-vs-mikrobio-spezifische-kultur-tests-loinc` (extensible), `value[x]` als `CodeableConcept` aus `mii-vs-mikrobio-kultur-ergebnis-snomed` (required), `method` aus `mii-vs-mikrobio-spezifische-kultur-methode-snomed` (extensible) | Kulturbasierte zielgerichtete Nachweise müssen auf das neue Profil umgestellt werden | Bestehende Ressourcen mit Methode `703752003` bzw. LOINC-Kulturcodes auf das neue Profil umhängen und das Ergebnis von `Positive` auf `365698005 Organism growth` umstellen. Wer direkt von 2025.0.2 migriert, überführt erregerspezifische Kulturnachweise aus `mii-pr-mikrobio-kultur-nachweis` unmittelbar hierher und nicht über die spezifische Bestimmung |
| `mii-pr-mikrobio-spezifische-bestimmung` | inhaltlich aktualisiert | deckte laut Description auch kulturbasierte Verfahren ab; Ergebnis-ValueSet enthielt zusätzlich `Positive`, `No growth` und das vollständige Organismen-ValueSet | Beschränkt auf direkte molekulare, immunologische und biochemische Nachweisverfahren; Ergebnis nur noch Nachweis oder Ausschluss | Kulturbasierte Instanzen und Ergebnisse mit Organismus- oder Wachstumscodes sind nicht mehr konform | Kulturfälle auf `mii-pr-mikrobio-spezifische-kultur` umstellen; Organismusangaben über `mii-pr-mikrobio-allgemeine-bestimmung` abbilden |
| `mii-pr-mikrobio-allgemeine-kultur` | inhaltlich aktualisiert | `value[x]` gebunden an `mii-vs-mikrobio-allgemeine-kultur-ergebnis-snomed` | `value[x]` gebunden an das für beide Kulturen gemeinsame `mii-vs-mikrobio-kultur-ergebnis-snomed` (required); der nachgewiesene Organismus wird nicht mehr hier, sondern über die Bestimmung abgebildet | Ergebniscodes `Positive` und `Indeterminate` sind nicht mehr gültig | Ergebnisse auf `365698005` bzw. `264868006` umstellen, Unbestimmbarkeit über `dataAbsentReason` |
| `mii-pr-mikrobio-nugent-score` | inhaltlich aktualisiert | `valueQuantity.unit` war fest auf `1` gesetzt; keine Wertebereichsprüfung | feste `unit` entfällt zugunsten eines `^comment`; neue Invariante `nugent-score-0-to-10` (`value >= 0 and value <= 10`, Severity `error`) | Instanzen mit Score außerhalb 0–10 werden abgelehnt; `Quantity.unit` ist frei wählbar, z. B. `Nugent score`, bei unverändertem UCUM-`code` `1` | Bestehende Instanzen gegen den Wertebereich prüfen; `unit` bei Bedarf sprechend befüllen |
| `mii-pr-mikrobio-resistenzmechanismen-determinanten` | inhaltlich aktualisiert | Description: Nachweis von Resistenzgenen oder Resistenzmutationen in einer Probe | Description zusätzlich mit Proteinen und funktionalen Tests (z. B. CIM-Test) sowie Isolaten als Untersuchungsmaterial | Fachlicher Anwendungsbereich ist breiter als bisher dokumentiert | Bisher anderweitig abgebildete funktionale Resistenztests auf dieses Profil prüfen |
| `mii-pr-mikrobio-voraussichtliche-empfindlichkeit` | inhaltlich aktualisiert | Description: aus genotypischen Nachweisen abgeleitete erwartete Suszeptibilität | Description: aus dem Nachweis von Resistenzmechanismen, Genen oder Proteinen abgeleitet | Nicht mehr auf genotypische Nachweise beschränkt | - |
| `mii-pr-mikrobio-virulenzfaktor` | inhaltlich aktualisiert | Description: Nachweis in einer Probe | Description: Nachweis in einer Probe oder einem Isolat | Klarstellung des Untersuchungsmaterials | - |
| `mii-pr-mikrobio-mrgn-klasse` | inhaltlich aktualisiert | `valueCodeableConcept` nur mit den LOINC-Klassen; keine Aussage zur Abgrenzung gegenüber dem Erregernachweis | `valueCodeableConcept` zusätzlich mit `keine-mrgn-klasse`; `^purpose` und `valueCodeableConcept ^short` stellen klar, dass das Profil ein bereits identifiziertes Isolat klassifiziert und keinen Nachweistest ersetzt | Bewertete Isolate ohne MRGN-Zuordnung sind darstellbar; das `required`-Binding bleibt bestehen | Negativfälle, die bisher als fehlende Observation oder über `dataAbsentReason` übermittelt wurden, auf `keine-mrgn-klasse` umstellen |
| `mii-pr-mikrobio-empfindlichkeit` | inhaltlich aktualisiert | `^purpose` ohne Abgrenzungshinweis | `^purpose` benennt, dass Einzelsubstanzresistenzen eines identifizierten Erregers hier abgebildet werden (z. B. `29258-1` mit `interpretation` R bzw. S) und der zielgerichtete Nachweis eines resistenten Erregers nach Spezifische Bestimmung bzw. Spezifische Kultur gehört | Nur Dokumentation, keine Constraint-Änderung | - |
| `mii-pr-mikrobio-diagnostic-report` | inhaltlich aktualisiert | `result` verwies auf 18 Untersuchungsprofile | `mii-pr-mikrobio-spezifische-kultur` als zulässiges Ziel ergänzt | Befunde können auf spezifische Kulturen verweisen | keine Migration nötig |
| alle Observation-Profile des Moduls | inhaltlich aktualisiert | `dataAbsentReason` ungebunden aus der Labor-Basis geerbt | über den gemeinsamen RuleSet an `mii-vs-mikrobio-data-absent-reason` gebunden (extensible) | Unbestimmbare Ergebnisse werden hier statt über `value[x]` abgebildet | Vorkommen von `82334004` in `value[x]` nach `dataAbsentReason` verschieben |

##### Terminologien (ValueSets)

| Artefakt (Canonical-URL) | Änderungstyp | Vorher (falls relevant) | Nachher | Implementierungsauswirkung | Migrationshinweis |
|-------------|--------------|--------------------------|---------|----------------------------|-------------------|
| `mii-vs-mikrobio-kultur-ergebnis-snomed` | neu | - | Gemeinsames Ergebnis-ValueSet für allgemeine und spezifische Kultur mit `365698005 Organism growth` und `264868006 No growth` | Einheitliche Ergebniscodierung beider Kulturprofile | siehe `mii-vs-mikrobio-allgemeine-kultur-ergebnis-snomed` |
| `mii-vs-mikrobio-allgemeine-kultur-ergebnis-snomed` | entfernt/abgekündigt | `Positive`, `No growth`, `Indeterminate`; nur für die allgemeine Kultur | durch `mii-vs-mikrobio-kultur-ergebnis-snomed` ersetzt | Alt-Referenz ungültig | Auf das neue Canonical umstellen; `Positive` auf `365698005`, `Indeterminate` nach `dataAbsentReason` |
| `mii-vs-mikrobio-spezifische-kultur-tests-loinc` | neu | Kulturcodes waren Teil von `mii-vs-mikrobio-spezifische-bestimmung-tests-loinc` | LOINC-Codes mit `METHOD_TYP` `LP6429-7` (erregerspezifische Kultur), sowohl mit `PROPERTY` `LP6850-4` (Prid, „[Identifier]") als auch `LP217195-9` (PrThr, „[Presence]") | Testcodes der Kultur werden separat gebunden. Die PrThr-Terme enthalten die erregerspezifischen Nachweiscodes, u. a. `13316-5` (VRE) und `13317-3` (MRSA), und sind Voraussetzung für negative Nachweisergebnisse | keine Migration nötig, sofern das Profil gewechselt wird |
| `mii-vs-mikrobio-spezifische-kultur-methode-snomed` | neu | - | `703752003 Mikroorganismusspezifische Kulturtechnik` | Methodencodierung der spezifischen Kultur | keine Migration nötig |
| `mii-vs-mikrobio-data-absent-reason` | neu | - | FHIR-Basiscodes für fehlende Daten, ergänzt um `82334004 Indeterminate` | Zielterminologie für unbestimmbare Ergebnisse | Unbestimmbare Ergebnisse aus `value[x]` hierher überführen |
| `mii-vs-mikrobio-spezifische-bestimmung-tests-loinc` | inhaltlich aktualisiert | zehn LOINC-Methodentypen inkl. `LP6429-7`, jeweils nur mit `PROPERTY` `LP6850-4` (Prid) | neun Methodentypen ohne `LP6429-7`, jeweils zusätzlich mit `PROPERTY` `LP217195-9` (PrThr); ergänzt um die Einzelcodes `105904-7` (methodenneutraler VRE-Nachweis, `METHOD_TYP` leer) und `35492-8` (MRSA-PCR, von LOINC unter `CLASS` `LP7755-4` geführt) | Kulturcodes sind hier nicht mehr enthalten. Die PrThr-Terme sind Voraussetzung für negative Nachweisergebnisse; die Einzelcodes werden von den Filtern nicht erfasst und sind deshalb explizit aufgenommen | Kulturfälle auf das neue Profil und Test-ValueSet umstellen |
| `mii-vs-mikrobio-spezifische-bestimmung-methode-snomed` | inhaltlich aktualisiert | enthielt `703752003` | ohne Kulturmethode | Methode `703752003` ist hier nicht mehr gültig | siehe oben |
| `mii-vs-mikrobio-spezifische-bestimmung-ergebnis-snomed` | inhaltlich aktualisiert | `Detected`/`Not detected` plus `Positive`, `No growth`, `Indeterminate` und das vollständige Organismen-ValueSet | nur noch `Detected` / `Not detected` | Organismus- und Wachstumscodes sowie `Indeterminate` sind nicht mehr gültig | Organismusangaben über die allgemeine Bestimmung, Wachstum über die Kultur, Unbestimmbarkeit über `dataAbsentReason` |
| `mii-cs-mikrobio-resistenzkategorie` | neu | - | MII-CodeSystem mit den Untersuchungscodes `mrsa-status`, `vre-status`, `lre-status`, `lvre-status` | Notwendig, weil weder SNOMED CT (Hierarchie *Observable entity*) noch LOINC geeignete Konzepte enthalten | Recherchestand und verworfene Kandidaten sind im CodeSystem dokumentiert; bei Verfügbarkeit eines Standardcodes ist dieser vorrangig aufzunehmen |
| `mii-vs-mikrobio-resistenzkategorie-status` | neu | - | Untersuchungscodes für den Resistenzkategorie-Status, `required` gebunden | Bindet `Observation.code` des neuen Profils | - |
| `mii-vs-mikrobio-resistenzkategorie-status-ergebnis` | neu | - | `10828004 Positive` / `260385009 Negative`, `required` gebunden | Bindet `Observation.value` des neuen Profils | - |
| `mii-vs-mikrobio-mre-klasse-snomedct` | entfernt/abgekündigt | SNOMED-Unterbaum `Resistant bacteria` / `fungi` / `virus` als Wert der MRE-Klasse | ersatzlos entfallen | Alt-Referenz ungültig; der Wert ist keine Organismusart mehr | Auf `mii-vs-mikrobio-resistenzkategorie-status-ergebnis` umstellen, Organismusangabe in die Erregeridentifikation überführen |
| `mii-cs-mikrobio-mrgn-ergebnis` | neu | - | MII-CodeSystem mit `keine-mrgn-klasse` | Die LOINC-AnswerList `LL6195-3` zu `99780-9` enthält nur 2MRGN/3MRGN/4MRGN und damit keinen Negativwert | - |
| `mii-vs-mikrobio-mrgn-klasse-loinc` | inhaltlich aktualisiert | nur `LA33214-0`, `LA33215-7`, `LA33216-5` | zusätzlich `keine-mrgn-klasse` | Bewertete Isolate ohne MRGN-Zuordnung sind darstellbar; das `required`-Binding bleibt bestehen | - |
| `mii-vs-mikrobio-resistenzmechanismen-determinanten-loinc` | inhaltlich aktualisiert | alle LOINC-Codes mit `CLASS` `LP7755-4` und `PROPERTY` `LP217195-9` | zusätzlich `exclude` von `35492-8` | Der CLASS-Filter erfasste neben Resistenzdeterminanten auch den Erregernachweis `35492-8`. Die Profilzuordnung richtet sich nach der Semantik: Der Code weist einen Erreger nach, keine Determinante, und ist deshalb in `mii-vs-mikrobio-spezifische-bestimmung-tests-loinc` aufgenommen | Instanzen mit `35492-8` von `mii-pr-mikrobio-resistenzmechanismen-determinanten` auf `mii-pr-mikrobio-spezifische-bestimmung` umstellen |
| `mii-vs-mikrobio-detected-not-detected-snomed` | inhaltlich aktualisiert | `Detected`, `Not detected`, `Indeterminate` | ohne `Indeterminate` | Betrifft Virulenzfaktor und Resistenzmechanismen | `82334004` nach `dataAbsentReason` verschieben |

##### Logical Model

| Artefakt (Canonical-URL) | Änderungstyp | Vorher (falls relevant) | Nachher | Implementierungsauswirkung | Migrationshinweis |
|-------------|--------------|--------------------------|---------|----------------------------|-------------------|
| `mii-lm-mikrobio-logical-model` | inhaltlich aktualisiert | Sammelmodell, dessen Blattelemente mit den Profil-Canonicals typisiert waren | Beschreibt nur noch den mikrobiologischen Befund und verweist über `Untersuchung` auf `mii-lm-mikrobio-untersuchung`; Canonical und Id bleiben unverändert | Mappings auf das bisherige Sammelmodell greifen nicht mehr | Mappings auf die drei Knotenstrukturen aufteilen |
| `mii-lm-mikrobio-untersuchung` | neu | - | Abstrakte Basisklasse aller mikrobiologischen Untersuchungen; Ziel der modellinternen Referenzen | Neues Artefakt im Informationsmodell | Die für jede Untersuchung geltenden Angaben hiergegen mappen |
| `mii-lm-mikrobio-untersuchungsarten` | neu | - | Die fachlichen Ausprägungen inklusive der spezifischen Kultur, abgeleitet von `mii-lm-mikrobio-untersuchung` | Neues Artefakt im Informationsmodell | Ausprägungsspezifische Elemente hiergegen mappen |

##### CapabilityStatement

| Artefakt (Canonical-URL) | Änderungstyp | Vorher (falls relevant) | Nachher | Implementierungsauswirkung | Migrationshinweis |
|-------------|--------------|--------------------------|---------|----------------------------|-------------------|
| `mii-cps-mikrobio-metadata` | inhaltlich aktualisiert | 18 unterstützte Observation-Profile | `mii-pr-mikrobio-spezifische-kultur` in `supportedProfile` ergänzt; `mii-pr-mikrobio-mre-klasse` durch `mii-pr-mikrobio-resistenzkategorie-status` ersetzt | Server deklarieren das neue Profil mit; die Canonical der MRE-Klasse wird nicht mehr geführt | `/metadata`-Ausgabe und Conformance-Tests gegen das geänderte Profilset prüfen |

##### Beispiele & IG-Seitenstruktur

- `mii-exa-mikrobio-spezifische-kultur` liegt jetzt auf `mii-pr-mikrobio-spezifische-kultur` statt auf `mii-pr-mikrobio-spezifische-bestimmung`; Code und Ergebnis wurden auf einen erregerspezifischen Kulturcode und `365698005 Organism growth` umgestellt.
- Neue Seite *Technische Implementierung → Profilauswahl und Abgrenzung* grenzt zielgerichteten Erregernachweis, Empfindlichkeitstestung, MRGN-Klassifikation und Resistenzkategorie-Status voneinander ab und beschreibt die diagnostische Kette.
- Neue Profilseite *Kultur → Spezifische Kultur*; die Seite *MRE Klasse* wurde durch *Resistenzkategorie Status* ersetzt.
- `mii-exa-mikrobio-mre-klasse` entfällt. Neu sind sieben Beispiele für den Resistenzkategorie-Status (MRSA/VRE/LRE jeweils positiv und negativ, LVRE positiv), Negativbeispiele für spezifische Bestimmung und spezifische Kultur, ein Beispiel für `keine-mrgn-klasse` sowie eine dreiteilige Beispielkette (Kultur → Identifikation → Empfindlichkeit) als Grundlage der Ableitung.
- Die Seite *Anwendungsfälle / Informationsmodell → Datensätze inkl. Beschreibungen* zeigt alle drei Logical Models mit eigenem Strukturbaum und eigener Elementtabelle.

### 2027.0.0-alpha.5

#### High-Level (Was hat sich fachlich geändert?)

- Das CapabilityStatement der Metadaten-Schnittstelle wurde vervollständigt, damit Server ihre Unterstützung für mikrobiologische `Observation`- und `DiagnosticReport`-Ressourcen präziser deklarieren können.
- `DiagnosticReport` wird nun im CapabilityStatement als eigener Resource-Block mit dem Profil `mii-pr-mikrobio-diagnostic-report` ausgewiesen.
- Die verpflichtend zu unterstützenden Suchparameter wurden für `Observation` und `DiagnosticReport` erweitert, an die genutzten Profilinhalte angepasst und mit den SearchParametern des Labor-Moduls abgeglichen.
- Für die Mikrobio-spezifische Suche auf `Observation.interpretation` und die R5-Extension `Observation.triggeredBy` wurden lokale SearchParameter ergänzt.

#### Detaillierte Änderungen für Implementierer (pro Artefakt-URL / Canonical)

##### CapabilityStatement

| Artefakt (Canonical-URL) | Änderungstyp | Vorher (falls relevant) | Nachher | Implementierungsauswirkung | Migrationshinweis |
|-------------|--------------|--------------------------|---------|----------------------------|-------------------|
| `mii-cps-mikrobio-metadata` | inhaltlich aktualisiert | CapabilityStatement deklarierte ausschließlich `Observation`; Suchparameterliste war unvollständig | zusätzlicher Resource-Block für `DiagnosticReport` mit `mii-pr-mikrobio-diagnostic-report`; erweiterte und am Labor-Modul ausgerichtete Suchparameter für `Observation` und `DiagnosticReport` | Server müssen die deklarierte Suche für beide Ressourcentypen entsprechend unterstützen | `/metadata`-Ausgabe und Conformance-Tests gegen die aktualisierte SearchParam-Liste prüfen |

##### SearchParameter

| Artefakt (Canonical-URL) | Änderungstyp | Vorher (falls relevant) | Nachher | Implementierungsauswirkung | Migrationshinweis |
|-------------|--------------|--------------------------|---------|----------------------------|-------------------|
| `Observation-interpretation` | neu | keine lokale Deklaration im CPS | lokaler SearchParameter für `Observation.interpretation` (`token`) und Aufnahme in das CapabilityStatement | Suche nach Interpretation, z. B. Susceptibility-/Aviditätsinterpretationen, kann capability-basiert deklariert werden | Serverindexierung für `Observation.interpretation` prüfen |
| `Observation-triggered-by` | neu | `triggeredBy` wurde profiliert, aber nicht als Suchparameter deklariert | lokaler SearchParameter für die auslösende Observation innerhalb der R5-Cross-Version-Extension `Observation.triggeredBy` (`reference`) und Aufnahme in das CapabilityStatement | Triggerbeziehungen zwischen mikrobiologischen Observationen können gezielt gesucht werden | Serverindexierung für `extension-Observation.triggeredBy.extension('observation').valueReference` ergänzen |

##### Unterstützte Suchparameter

- `Observation`: Neu hinzugekommen sind `_lastUpdated`, `based-on`, `data-absent-reason`, `device`, `derived-from`, `encounter`, `identifier`, `interpretation`, `method`, `specimen`, `status`, `triggered-by`, `value-concept` und `value-quantity`.
- `DiagnosticReport`: Der Resource-Block ist neu hinzugekommen und deklariert die Suchparameter `_id`, `_profile`, `_lastUpdated`, `status`, `based-on`, `category`, `code`, `subject`, `encounter`, `date`, `issued`, `performer`, `specimen`, `result` und `conclusion`.
- Die Auswahl der Standard-SearchParameter wurde dabei bewusst an das CapabilityStatement des Labor-Moduls angeglichen; Mikrobio-spezifisch ergänzt wurden die lokalen SearchParameter `interpretation` und `triggered-by`.

### 2027.0.0-alpha.4

#### High-Level (Was hat sich fachlich geändert?)

- Keine fachlichen Änderungen. Für dieses Release wurden ausschließlich Packages mit technischen Korrekturen neu veröffentlicht.

#### Detaillierte Änderungen für Implementierer (pro Artefakt-URL / Canonical)

##### Generell

- `fix:` Vereinheitlichung der Versionskennzeichnung der 2027er Artefakte auf `2027.0.0-alpha.4`; Versionsangaben in den Packages waren zuvor nicht durchgängig konsistent.
- Technische Korrekturen im Package-Release ohne inhaltliche Änderungen an Profilen, ValueSets, Extensions, CapabilityStatement oder Beispielen.


### 2027.0.0-alpha.3

#### High-Level (Was hat sich fachlich geändert?)

- Keine fachlichen Änderungen. Für dieses Release wurden ausschließlich Packages mit technischen Korrekturen neu veröffentlicht.

#### Detaillierte Änderungen für Implementierer (pro Artefakt-URL / Canonical)

##### Generell

- Keine inhaltlichen Änderungen an Profilen, ValueSets oder Beispielen.
- Das Release dient ausschließlich der Bereitstellung technisch korrigierter Packages.

### 2027.0.0-alpha.2

#### High-Level (Was hat sich fachlich geändert?)

- Mehrere bislang als `required` definierte Terminologie-Bindings wurden auf `extensible` umgestellt, um fachlich valide lokale Kodierungen weiterhin regelkonform zuzulassen.
- Für `mii-pr-mikrobio-resistenzmechanismen-determinanten` wurde die Methodenbindung auf ein eigenes Methoden-ValueSet für Resistenzmechanismen umgestellt.
- Für `mii-pr-mikrobio-diagnostic-report` wurde die Kategoriebelegung auf `v2-0074#MB` (Microbiology) plus optionalen LOINC-Befundtyp geändert; dabei wird `MB` zusätzlich als Coding-Slice (`v2-microbiology`) geführt und der Befundtyp über `mibi-sub-category` abgebildet. Ein SNOMED-Category-Code ist hierfür nicht mehr erforderlich.
- Die gemeinsamen `category`-Regeln der mikrobiologischen Observation-Profile wurden so angepasst, dass Mikrobiologie explizit über einen eigenen `mibi-category`-Slice modelliert wird; aufgrund der aktuellen Vererbung aus dem Labor-Parent verbleiben die Labor-Kodes dabei vorerst im selben Slice.
- Das Ergebnis-ValueSet für Avidität wurde um `Intermediate` ergänzt.
- Das Morphologie-Ergebnis-ValueSet wurde um zusätzliche Pilzhyphen-Befunde erweitert.

#### Detaillierte Änderungen für Implementierer (pro Artefakt-URL / Canonical)

##### Profile (StructureDefinitions)

Gemeinsame Anpassung für mikrobiologische Observation-Profile:
Die `category`-Abbildung wurde vereinheitlicht. Mikrobiologie wird nun über einen eigenen `mibi-category`-Slice modelliert, inkl. Coding-Slice `v2-microbiology` (`v2-0074#MB`, `1..1`) sowie optional `loinc-microbiology-studies` (`loinc#18725-2`, `0..1`). Aufgrund der aktuellen Constraints aus `ObservationLab` verbleiben die geerbten Labor-Kodes (`loinc-observation`, `observation-category`) vorerst im selben Slice; eine weitere Trennung ist für ein Folge-Release vorgesehen, sobald der Labor-Parent entsprechend angepasst ist. Diese zukünftige Anpassung wird voll kompatibel sein, es wird nur die Darstellung des Profils verbessert.

Ebenfalls für alle mikrobiologischen Observation-Profile gilt: `dataAbsentReason` ist neu an `mii-vs-mikrobio-data-absent-reason` gebunden (`extensible`). Unbestimmbare Ergebnisse werden dorthin überführt und nicht mehr über `value[x]` kodiert.

| Artefakt (Canonical-URL) | Änderungstyp | Vorher (falls relevant) | Nachher | Implementierungsauswirkung | Migrationshinweis |
|-------------|--------------|--------------------------|---------|----------------------------|-------------------|
| `mii-pr-mikrobio-empfindlichkeit` | inhaltlich aktualisiert | `code` und `valueQuantity.code` waren `required` gebunden | beide Bindings sind `extensible` | Größere Flexibilität bei Testcode- und Einheitencodierung | Primär ValueSet-Codes verwenden; lokale Codes nur bei fachlicher Notwendigkeit |
| `mii-pr-mikrobio-keimzahl` | inhaltlich aktualisiert | `code`, `valueQuantity.code`, `interpretation` waren `required` gebunden | diese Bindings sind `extensible` | Reduzierte Ablehnungsrate bei terminologischen Randfällen | Bestehende Mappings beibehalten, Abweichungen auf Konformität prüfen |
| `mii-pr-mikrobio-resistenzkategorie-status` | ersetzt | `mii-pr-mikrobio-mre-klasse` | Kategorienbezogener Status: `code` benennt die bewertete Resistenzkategorie (MII-CodeSystem `mii-cs-mikrobio-resistenzkategorie`), `valueCodeableConcept` ist `10828004 Positive` / `260385009 Negative` (`required`), `derivedFrom` ist `0..* MS` (SHOULD) | Profil-URL-Wechsel (Canonical); die frühere Organismusangabe im Wert entfällt ersatzlos; pro bewerteter Kategorie ist eine eigene Observation zu erzeugen | Alt-Instanzen auflösen: Der bisherige Wert (z. B. `115329001 MRSA`) wird zur Kategorie im `code` (`mrsa-status`) mit `value = Positive`; der Erreger selbst bleibt in der Erregeridentifikation. Zugrunde liegende Untersuchungen in `derivedFrom` ergänzen |
| `mii-pr-mikrobio-mikroskopie` | inhaltlich aktualisiert | Ergebnis- und Methodenbindung waren `required` | Ergebnis- und Methodenbindung sind `extensible` | Höhere Interoperabilität bei heterogenen Methodenkatalogen | Vorrangig ValueSet-Codes liefern; lokale Ergänzungen sauber kennzeichnen |
| `mii-pr-mikrobio-molekulare-pathogenlast` | inhaltlich aktualisiert | Einheitenbindung (`valueQuantity.code`) war `required` | Einheitenbindung ist `extensible` | Mehr Spielraum bei spezialisierten Einheitencodes | UCUM-Standardcodes weiter bevorzugen |
| `mii-pr-mikrobio-spezifische-bestimmung` | inhaltlich aktualisiert | Ergebnisbindung war `required` | Ergebnisbindung ist `extensible` | Qualitative Ergebniscodierung wird weniger restriktiv validiert | Mapping auf Ziel-ValueSet weiterhin als Primärpfad nutzen |
| `mii-pr-mikrobio-voraussichtliche-empfindlichkeit` | inhaltlich aktualisiert | Testcode-Binding war `required` | Testcode-Binding ist `extensible` | Bessere Abdeckung lokaler genotypischer Testkodierungen | Lokale Testcodes gegen Ziel-ValueSet prüfen und dokumentieren |
| `mii-pr-mikrobio-resistenzmechanismen-determinanten` | inhaltlich aktualisiert | Methodenbindung auf `MII_VS_Mikrobio_Spezifische_Bestimmung_Methode_SNOMED` | Methodenbindung auf `MII_VS_Mikrobio_Resistenzmechanismen_Methode_SNOMED` | Fachlich präzisere Methodenvalidierung für Resistenzmechanismen | Methodencodes auf neues ValueSet umstellen |
| `mii-pr-mikrobio-diagnostic-report` | inhaltlich aktualisiert | mikrobiologische Kategorie über SCT-Code im Category-Coding und zusätzliche Invariante abgesichert | mikrobiologische Kategorie über `mibi-category` (`v2-0074#MB`) mit Coding-Slice `v2-microbiology` (`1..1`) sowie optionalem Coding-Slice `loinc-microbiology-studies` (`loinc#18725-2`, `0..1`) modelliert; zusätzlicher optionaler Kategorie-Slice `mibi-sub-category` (`mii-vs-mikrobio-befundtyp-loinc`) | Category-Befüllung ist konsistenter zum Parent-Profil; keine zusätzliche SCT-Category-Kodierung erforderlich; optionale LOINC-Abbildung ist sowohl auf Coding-Ebene als auch über Sub-Category möglich | Producer/Mapper auf verpflichtend `mibi-category` inkl. `v2-microbiology` umstellen; `loinc-microbiology-studies` und `mibi-sub-category` nur bei Bedarf befüllen |

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
| `mii-vs-mikrobio-empfindlichkeit-phenotyp-loinc` | inhaltlich aktualisiert | `CLASS` `LP7755-4`, `PROPERTY` `LP6870-2`, `STATUS` `ACTIVE`, zusätzlich `ORDER_OBS` `Observation` sowie `exclude` von `METHOD_TYP` `LP28723-2` (genotypische Methode) | `ORDER_OBS`-Einschränkung und `exclude` entfallen; verbleibende Filter `CLASS`, `PROPERTY`, `STATUS` | Das ValueSet ist dadurch eine Obermenge von `mii-vs-mikrobio-empfaenglichkeit-genotyp-loinc`; `mii-pr-mikrobio-empfindlichkeit` und `mii-pr-mikrobio-voraussichtliche-empfindlichkeit` sind terminologisch nicht mehr über den Testcode unterscheidbar. Zusätzlich sind Codes ohne `ORDER_OBS` `Observation` jetzt enthalten | Die Zuordnung zum phänotypischen bzw. genotypischen Profil kann nicht mehr aus dem Testcode abgeleitet werden und muss über das verwendete Profil erfolgen |

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
