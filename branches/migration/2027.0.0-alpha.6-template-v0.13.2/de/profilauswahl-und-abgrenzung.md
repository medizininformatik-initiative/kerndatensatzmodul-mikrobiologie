# Profilauswahl und Abgrenzung - MII Implementation Guide Microbiology v2027.0.0-alpha.6

* [**Inhaltsverzeichnis**](toc.md)
* [**Startseite**](index.md)
* [**Technische Implementierung**](technische-implementierung.md)
* **Profilauswahl und Abgrenzung**

## Profilauswahl und Abgrenzung

Nachweis, Empfindlichkeitstestung und Klassifikation sind unterschiedliche diagnostische Aussagen und werden in diesem Modul über unterschiedliche Profile abgebildet. Diese Seite beschreibt die Abgrenzung, die Darstellung negativer Ergebnisse und die Verknüpfung der Untersuchungen zu einer diagnostischen Kette.

> **Kernsatz:** Ein negatives Ergebnis eines zielgerichteten Erregernachweises wird über Spezifische Bestimmung bzw. Spezifische Kultur abgebildet. MRGN-Klassifikation und Resistenzkategorie-Status setzen dagegen einen bereits nachgewiesenen Erreger voraus und ersetzen keinen Nachweistest.

### Abgrenzung der drei Aussagetypen

| | | | |
| :--- | :--- | :--- | :--- |
| Ist ein vordefiniertes Ziel nachweisbar? (nicht kulturell) | Spezifische Bestimmung | LOINC-Nachweistest, z. B.`105904-7` | `Detected`/`Not detected` |
| Wächst ein vordefinierter Mikroorganismus? | Spezifische Kultur | LOINC-Kulturtest, z. B.`13316-5` | `Organism growth`/`No growth` |
| Ist ein Resistenzgen nachweisbar? | Resistenzmechanismen / Determinanten | LOINC-Determinante, z. B.`48813-0` | `Detected`/`Not detected` |
| Wie empfindlich ist ein identifiziertes Isolat gegen eine Substanz? | Empfindlichkeit | LOINC`[Susceptibility]`, z. B.`29258-1` | MHK als`Quantity`, Bewertung in`interpretation`(S / I / R) |
| Welcher MRGN-Klasse ist ein identifiziertes gramnegatives Isolat zuzuordnen? | MRGN-Klasse | `99780-9` | Klassifikationswert, z. B.`3MRGN`, oder`keine-mrgn-klasse` |
| Erfüllt ein nachgewiesener Erreger die Kriterien einer definierten Resistenzkategorie? | Resistenzkategorie-Status | `mrsa-status`,`vre-status`,`lre-status`,`lvre-status`(MII) | `Positive`/`Negative` |

### Negative Ergebnisse

#### Negativer zielgerichteter Erregernachweis

Die Untersuchung liefert das negative Ergebnis des konkret durchgeführten Nachweistests.

VRE-Nachweis mittels Kultur, negativ:

[mii-exa-mikrobio-spezifische-kultur-vre-negativ](Observation-mii-exa-mikrobio-spezifische-kultur-vre-negativ.md)

VRE-Nachweis molekular bzw. methodenneutral kodiert, negativ:

[mii-exa-mikrobio-spezifische-bestimmung-vre-negativ](Observation-mii-exa-mikrobio-spezifische-bestimmung-vre-negativ.md)

#### Keine MRGN-Klasse

Davon zu unterscheiden ist der Fall, dass ein gramnegatives Isolat identifiziert und dessen Empfindlichkeitstestung bewertet wurde, es aber keiner MRGN-Klasse zuzuordnen ist. Dies ist eine **negative Klassifikation** und wird über den Wert `keine-mrgn-klasse` des CodeSystems `mii-cs-mikrobio-mrgn-ergebnis` abgebildet:

[mii-exa-mikrobio-mrgn-klasse-negativ](Observation-mii-exa-mikrobio-mrgn-klasse-negativ.md)

Die LOINC-AnswerList zu `99780-9` enthält ausschließlich 2MRGN, 3MRGN und 4MRGN und damit keinen Negativwert; der MII-eigene Code schließt diese Lücke.

#### Resistenzkategorie-Status = Negative

Wieder anders gelagert ist die Bewertung eines vorliegenden Erregers hinsichtlich einer Resistenzkategorie:

[mii-exa-mikrobio-resistenzkategorie-vre-negativ](Observation-mii-exa-mikrobio-resistenzkategorie-vre-negativ.md)

`Negative` bedeutet: Ein nachgewiesener Erreger wurde anhand der für die in `code` genannte Kategorie relevanten Untersuchungen ausreichend bewertet und erfüllt deren Kriterien nicht. Es bedeutet ausdrücklich **nicht**, dass kein Erreger nachgewiesen wurde, dass keine Resistenz vorliegt oder dass keine ausreichende Diagnostik erfolgte.

Kann die Kategorie nicht ausreichend bewertet werden, wird nicht `Negative` angegeben, sondern `dataAbsentReason` gesetzt oder gar keine Status-Observation erzeugt.

Die drei Fälle im direkten Vergleich, jeweils für VRE:

| | | | |
| :--- | :--- | :--- | :--- |
| VRE wurde gesucht und nicht gefunden | Spezifische Kultur | `13316-5` | `No growth` |
| VRE wurde gesucht und nicht gefunden (molekular) | Spezifische Bestimmung | `105904-7` | `Not detected` |
| Ein vorliegender**Enterococcus**ist kein VRE | Resistenzkategorie-Status | `vre-status` | `Negative` |

### Resistenzkategorien

Der Resistenzkategorie-Status bewertet immer **eine** benannte Kategorie. Die Aufnahme einer Kategorie ist fachlich zu begründen; nicht jede einzelne antimikrobielle Resistenz ist eine Resistenzkategorie. Insbesondere erfolgt keine implizite Ableitung aus dem SNOMED-Unterbaum „antimicrobial resistant organism".

| | | |
| :--- | :--- | :--- |
| `mrsa-status` | MRSA | **Staphylococcus aureus**+ Methicillin-/Oxacillinresistenz (phänotypisch oder`mecA`/`mecC`) |
| `vre-status` | VRE | **Enterococcus**+ Vancomycinresistenz (phänotypisch oder`vanA`/`vanB`) |
| `lre-status` | LRE | **Enterococcus**+ Linezolidresistenz |
| `lvre-status` | LVRE | **Enterococcus**+ Linezolid-**und**Vancomycinresistenz |

Für gramnegative Erreger mit einer MRGN-Klassifikation erfolgt die Abbildung über die [MRGN-Klasse](StructureDefinition-mii-pr-mikrobio-mrgn-klasse.md). Dort wird das Ergebnis der MRGN-Bewertung als `2MRGN`, `3MRGN`, `4MRGN` oder `keine-mrgn-klasse` angegeben.

### Diagnostische Kette bei positivem Nachweis

Ein positiver zielgerichteter Nachweis kann Folgediagnostik auslösen:

```
Positiver zielgerichteter Nachweis
(Spezifische Bestimmung oder Spezifische Kultur)
        │
        │ triggeredBy (reflex)
        ▼
ggf. weiterführende Identifikation
        │
        │ triggeredBy (reflex)
        ▼
Empfindlichkeit
        │
        ├── ggf. Resistenzmechanismen / Determinanten
        │
        │ derivedFrom
        ▼
Resistenzkategorie-Status
  z. B. VRE-Status
  Positive / Negative

```

Bei einem bereits erregerspezifischen Nachweis ist das Ziel im Testcode definiert. Nach `MRSA detected` oder `VRE detected` muss keine separate Identifikation folgen. Entfällt sie, verweist die Empfindlichkeit direkt auf den Nachweis und der Resistenzkategorie-Status führt sie nicht in `derivedFrom`.

Für die auslösende Beziehung wird die R5-Backport-Extension `extension-Observation.triggeredBy` mit `type = reflex` verwendet, wie unter [FHIR-Profile](fhir-profile.md) beschrieben. Der letzte Schritt bildet die dort genannte Ausnahme: Der Resistenzkategorie-Status wird aus mehreren Untersuchungen **abgeleitet** und ist keine ausgelöste Folgeuntersuchung — hier trifft `derivedFrom` die Semantik. Diese Untersuchungen SOLLTEN angegeben werden, damit die Bewertungsgrundlage nachvollziehbar bleibt.

Vollständiges Beispiel einer Kette:

Schritt 1 — positiver VRE-Nachweis mittels erregerspezifischer Kultur:

[mii-exa-mikrobio-workflow-vre-01-kultur](Observation-mii-exa-mikrobio-workflow-vre-01-kultur.md)

Schritt 2 — weiterführende Identifikation des Isolats (optional):

[mii-exa-mikrobio-workflow-vre-02-identifikation](Observation-mii-exa-mikrobio-workflow-vre-02-identifikation.md)

Schritt 3 — Empfindlichkeitstestung:

[mii-exa-mikrobio-workflow-vre-03-empfindlichkeit](Observation-mii-exa-mikrobio-workflow-vre-03-empfindlichkeit.md)

Schritt 4 — abgeleiteter Resistenzkategorie-Status:

[mii-exa-mikrobio-resistenzkategorie-vre-positiv](Observation-mii-exa-mikrobio-resistenzkategorie-vre-positiv.md)

