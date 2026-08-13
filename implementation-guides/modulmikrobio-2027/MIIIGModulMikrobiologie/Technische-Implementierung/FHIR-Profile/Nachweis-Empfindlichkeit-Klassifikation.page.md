## {{page-title}}

Nachweis, Empfindlichkeitstestung und Klassifikation sind unterschiedliche diagnostische Aussagen und werden in diesem Modul über unterschiedliche Profile abgebildet. Diese Seite beschreibt die Abgrenzung, die Darstellung negativer Ergebnisse und die Verknüpfung der Untersuchungen zu einer diagnostischen Kette.

> **Kernsatz:** Ein negatives Ergebnis eines zielgerichteten Erregernachweises wird über Spezifische Bestimmung bzw. Spezifische Kultur abgebildet. MRGN-Klassifikation und MRE-Status setzen dagegen ein bereits identifiziertes Isolat voraus und ersetzen keinen Nachweistest.

### Abgrenzung der drei Aussagetypen

| Fragestellung | Profil | `Observation.code` | `Observation.value` |
|---|---|---|---|
| Ist ein vordefiniertes Ziel nachweisbar? (nicht kulturell) | Spezifische Bestimmung | LOINC-Nachweistest, z. B. `105904-7` | `Detected` / `Not detected` |
| Wächst ein vordefinierter Mikroorganismus? | Spezifische Kultur | LOINC-Kulturtest, z. B. `13316-5` | `Organism growth` / `No growth` |
| Ist ein Resistenzgen nachweisbar? | Resistenzmechanismen / Determinanten | LOINC-Determinante, z. B. `48813-0` | `Detected` / `Not detected` |
| Wie empfindlich ist ein identifiziertes Isolat gegen eine Substanz? | Empfindlichkeit | LOINC `[Susceptibility]`, z. B. `29258-1` | MHK als `Quantity`, Bewertung in `interpretation` (S / I / R) |
| Welcher MRGN-Klasse ist ein identifiziertes gramnegatives Isolat zuzuordnen? | MRGN-Klasse | `99780-9` | Klassifikationswert, z. B. `3MRGN`, oder `keine-mrgn-klasse` |
| Ist ein identifiziertes Isolat als MRE einzustufen? | MRE-Status | `mre-status` (MII) | `Yes` / `No` |

### Negative Ergebnisse

#### Negativer zielgerichteter Erregernachweis

Der Befund ist das negative Ergebnis des konkret durchgeführten Nachweistests.

VRE-Nachweis mittels Kultur, negativ:

{{json:mii-exa-mikrobio-spezifische-kultur-vre-negativ}}

VRE-Nachweis molekular bzw. methodenneutral kodiert, negativ:

{{json:mii-exa-mikrobio-spezifische-bestimmung-vre-negativ}}


#### Keine MRGN-Klasse

Davon zu unterscheiden ist der Fall, dass ein gramnegatives Isolat identifiziert und dessen Empfindlichkeitsbefunde bewertet wurden, es aber keiner MRGN-Klasse zuzuordnen ist. Dies ist eine **negative Klassifikation** und wird über den Wert `keine-mrgn-klasse` des CodeSystems `mii-cs-mikrobio-mrgn-ergebnis` abgebildet:

{{json:mii-exa-mikrobio-mrgn-klasse-negativ}}

Die LOINC-AnswerList zu `99780-9` enthält ausschließlich 2MRGN, 3MRGN und 4MRGN und damit keinen Negativwert; der MII-eigene Code schließt diese Lücke.

#### MRE-Status 

{{json:mii-exa-mikrobio-mre-status}}

`MRE-Status = No` bedeutet: Ein vorhandenes, bewertbares Isolat erfüllt nach Bewertung der relevanten Resistenzbefunde keine definierte MRE-Kategorie.

Ein negatives Ergebnis eines zielgerichteten Erregernachweises wird dagegen über das Profil Spezifische Bestimmung oder Spezifische Kultur abgebildet. Es ist nicht mit `MRE-Status = No` gleichzusetzen: Dort liegt kein bewertbares Isolat vor, und eine MRE-Status-Observation entfällt.

### Kriterien für den MRE-Status

Ob der MRE-Status `Yes` oder `No` lautet, ergibt sich ausschließlich aus der folgenden Festlegung. Sie wird weder aus dem SNOMED-Unterbaum „antimicrobial resistant organism" abgeleitet noch folgt sie allein aus dem Vorhandensein irgendeiner antimikrobiellen Resistenz.

MRE bezeichnet in diesem Implementierungsleitfaden ein Isolat, das anhand der vorliegenden mikrobiologischen Befunde einer der hier aufgeführten Kategorien zugeordnet wurde — multiresistent oder aufgrund besonderer antimikrobieller Resistenzen als MRE definiert. Die Aussage ist nicht auf Bakterien beschränkt; multiresistente Pilze und antiviral resistente Viren können als weitere Kategorien aufgenommen werden. Die derzeit festgelegten Kategorien sind bakteriell.

| Kategorie | Bewertungsgrundlage |
|---|---|
| MRSA | Identifikation als *Staphylococcus aureus* und Nachweis der Methicillinresistenz (phänotypisch oder über `mecA`/`mecC`) |
| VRE | Identifikation als *Enterococcus* und Nachweis der Vancomycinresistenz (phänotypisch oder über `vanA`/`vanB`) |
| 3MRGN | MRGN-Klassifikation mit dem Wert `3MRGN` |
| 4MRGN | MRGN-Klassifikation mit dem Wert `4MRGN` |

Die Bewertung nimmt das **sendende System** vor; der MRE-Status ist dessen Aussage und keine Regel, die ein Empfänger nachrechnet. Konkret:

- Trifft mindestens eine Kategorie der Tabelle zu, wird eine MRE-Status-Observation mit `value = Yes` erzeugt.
- Trifft keine zu und liegen die für die Bewertung erforderlichen Befunde vor, wird sie mit `value = No` erzeugt.
- Fehlen Befunde für eine belastbare Bewertung, wird `value` weggelassen und `dataAbsentReason` gesetzt.

In allen drei Fällen verweist `derivedFrom` auf die herangezogenen Befunde.

Isolate, die ausschließlich einem der folgenden Fälle entsprechen, erhalten nach aktuellem Stand `MRE-Status = No`:

| Fall | Stand |
|---|---|
| 2MRGN | Ein Isolat mit MRGN-Klassifikation `2MRGN` und ohne weitere zutreffende Kategorie erhält `value = No`. Zu bestätigen. |
| Linezolid-resistant Enterococcus (LRE) | Ein *Enterococcus* mit Linezolidresistenz und ohne Vancomycinresistenz erhält `value = No`. `838510005 \|Linezolid resistant Enterococcus\|` beschreibt eine Einzelsubstanzresistenz und nicht automatisch Multiresistenz. Ob LRE in diesem IG als MRE gilt, ist **zu entscheiden und zu dokumentieren**. |
| Multiresistente Pilze, z. B. *Candida auris* | Keine Kategorie festgelegt, daher `value = No`. Bei Bedarf zu ergänzen. |
| Antiviral resistente Viren | Keine Kategorie festgelegt, daher `value = No`. Bei Bedarf zu ergänzen. |

Die letzten beiden Zeilen sind fachlich unbefriedigend: `No` bedeutet dort nicht „nicht multiresistent", sondern „von diesem IG nicht als Kategorie erfasst". Solange keine Kategorien festgelegt sind, ist für diese Fälle im Zweifel `dataAbsentReason` die ehrlichere Angabe.

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
        ├── ggf. MRGN-Klassifikation
        │
        │ derivedFrom
        ▼
    MRE-Status
     Yes / No
```

Bei einem bereits erregerspezifischen Nachweis ist das Ziel im Testcode definiert. Nach `MRSA detected` oder `VRE detected` muss keine separate Identifikation folgen. Entfällt sie, verweist die Empfindlichkeit direkt auf den Nachweis und der MRE-Status führt sie nicht in `derivedFrom`.

Für die auslösende Beziehung wird die R5-Backport-Extension `extension-Observation.triggeredBy` mit `type = reflex` verwendet, wie unter [FHIR-Profile](Index.page.md) beschrieben. Der letzte Schritt bildet die dort genannte Ausnahme: Der MRE-Status wird aus mehreren Befunden **abgeleitet** und ist keine ausgelöste Folgeuntersuchung — hier trifft `derivedFrom` die Semantik. Mindestens ein Eingangsbefund ist verpflichtend, damit die Bewertungsgrundlage nachvollziehbar bleibt.

Vollständiges Beispiel einer Kette:

Schritt 1 — positiver VRE-Nachweis mittels erregerspezifischer Kultur:

{{json:mii-exa-mikrobio-workflow-vre-01-kultur}}

Schritt 2 — weiterführende Identifikation des Isolats (optional):

{{json:mii-exa-mikrobio-workflow-vre-02-identifikation}}

Schritt 3 — Empfindlichkeitstestung:

{{json:mii-exa-mikrobio-workflow-vre-03-empfindlichkeit}}

Schritt 4 — abgeleiteter MRE-Status:

{{json:mii-exa-mikrobio-workflow-vre-04-mre-status}}

### Bekannte Lücken

| Thema | Stand |
|---|---|
| Zielgerichteter Nachweis linezolidresistenter Enterokokken | Es existiert kein LOINC-Presence-Code für die Fragestellung „Linezolid-resistant Enterococcus present?". Bis zur Ergänzung ist nur der Weg über die Empfindlichkeitstestung eines identifizierten Isolats möglich (`29258-1` mit `interpretation` R bzw. S). Ein SNOMED-Organism-Code ist kein Ersatz. |
| Umfang der MRE-Kategorien | Festgelegt sind MRSA, VRE, 3MRGN und 4MRGN. Offen: 2MRGN, LRE sowie mögliche Kategorien für multiresistente Pilze und antiviral resistente Viren. Siehe Abschnitt „Kriterien für den MRE-Status". |
| MRGN-Trägerscreening | Für den kulturellen Carbapenemase-Nachweis existieren LOINC-Codes (z. B. `100901-8`), jedoch nur mit präkoordiniertem Specimentype. Ein Code mit `System = XXX` fehlt. |
