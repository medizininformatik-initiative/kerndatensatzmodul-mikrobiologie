<!-- MIGRATED verbatim from Simplifier page: MIIIGModulMikrobiologie/Technische-Implementierung/FHIR-Profile/Weitere-Eigenschaften/Resistenzkategorie-Status.page.md  -->
Resistenzkategorie-Status bildet die Bewertung eines nachgewiesenen Erregers hinsichtlich einer definierten Resistenzkategorie ab. Die bewertete Kategorie steht in `Observation.code`, das Ergebnis der Bewertung in `Observation.valueCodeableConcept`.

```
MRSA-Status: Positive
VRE-Status:  Negative
LRE-Status:  Positive
```

Das Profil löst `mii-pr-mikrobio-mre-klasse` ab. Dort war der Wert die konkrete resistente Organismusart, z. B. MRSA oder VRE. Diese Modellierung wiederholte Erreger- und Resistenzinformationen, die bereits über Identifikation, Empfindlichkeit und Resistenzmechanismen abgebildet sind, und war semantisch breiter als „MRE".

### Kategorien

| Code | Kategorie | Bewertungsgrundlage |
|---|---|---|
| `mrsa-status` | MRSA | Identifikation als *Staphylococcus aureus* und Nachweis der Methicillin-/Oxacillinresistenz, phänotypisch oder über `mecA`/`mecC` |
| `vre-status` | VRE | Identifikation als *Enterococcus* und Nachweis der Vancomycinresistenz, phänotypisch oder über `vanA`/`vanB` |
| `lre-status` | LRE | Identifikation als *Enterococcus* und Nachweis der Linezolidresistenz |
| `lvre-status` | LVRE | Identifikation als *Enterococcus* und Nachweis sowohl der Linezolid- als auch der Vancomycinresistenz |

Die Kategorien schließen sich nicht gegenseitig aus: Ein linezolid- und vancomycinresistenter *Enterococcus* kann zugleich `vre-status`, `lre-status` und `lvre-status` mit `Positive` erhalten.

### Terminologie

`Observation.code` verwendet MII-eigene Codes aus `mii-cs-mikrobio-resistenzkategorie`.

### Ergebnis

| Wert                  | Bedeutung |
|-----------------------|---|
| `10828004 - Positive` | Der bewertete Erreger erfüllt die Kriterien der in `code` angegebenen Kategorie. |
| `260385009- Negative` | Der Erreger wurde anhand der für diese Kategorie relevanten Untersuchungen ausreichend bewertet und erfüllt die Kriterien nicht. |

`Negative` bedeutet ausdrücklich **nicht**: negativer zielgerichteter Erregernachweis, keine Resistenz vorhanden, Erreger nicht nachgewiesen, oder keine ausreichende Diagnostik durchgeführt. War die Kategorie nicht ausreichend bewertbar, wird nicht `Negative` angegeben, sondern `dataAbsentReason` gesetzt.

### Ableitung

Die Kategorienbewertung ist eine abgeleitete fachliche Aussage. Die zugrunde liegenden Untersuchungen werden über `Observation.derivedFrom` referenziert. Als Eingangsgrößen kommen infrage: Erregeridentifikation, Empfindlichkeitstestung sowie Resistenzmechanismen bzw. Resistenzdeterminanten.

Diese Untersuchungen **sollten** angegeben werden, damit die Bewertungsgrundlage nachvollziehbar ist.

`triggeredBy` wird hierfür **nicht** verwendet: Die Bewertung entsteht durch fachliche Ableitung und nicht als ausgelöste Folgeuntersuchung.

### Abgrenzung zum direkten Nachweis

Der Kategorienstatus ersetzt keinen zielgerichteten Erregernachweis:

| Vorgang | Profil | Ergebnis |
|---|---|---|
| MRSA-PCR | [Spezifische Bestimmung](StructureDefinition-mii-pr-mikrobio-spezifische-bestimmung.html) | `Detected` / `Not detected` |
| MRSA-Kultur | [Spezifische Kultur](StructureDefinition-mii-pr-mikrobio-spezifische-kultur.html) | `Organism growth` / `No growth` |
| Bewertung eines vorliegenden *S. aureus* als MRSA | Resistenzkategorie-Status | `MRSA-Status` = `Positive` / `Negative` |

Dasselbe Prinzip gilt für VRE und die übrigen Kategorien.

### Beispiele

Die Beispiele zeigen das Muster an der Kategorie VRE. Für die übrigen Kategorien ist es identisch — es ändert sich allein der Code in `Observation.code`.

VRE-Status positiv, mit vollständiger Ableitung über `derivedFrom`:

[mii-exa-mikrobio-resistenzkategorie-vre-positiv](Observation-mii-exa-mikrobio-resistenzkategorie-vre-positiv.html)

VRE-Status negativ:

[mii-exa-mikrobio-resistenzkategorie-vre-negativ](Observation-mii-exa-mikrobio-resistenzkategorie-vre-negativ.html)

