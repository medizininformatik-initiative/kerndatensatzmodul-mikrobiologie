<!-- MIGRATED verbatim from Simplifier page: MIIIGModulMikrobiologie/Technische-Implementierung/FHIR-Profile/Bestimmung/Allgemeine-Bestimmung.page.md  -->
Allgemeine Bestimmung beschreibt die Identifikation eines Mikroorganismus oder infektiösen Agens in einer Probe, ohne Einschränkung auf ein vordefiniertes Ziel.

### Testcode

Bevorzugt wird `41852-5 |Microorganism or agent identified in Specimen|`. Derselbe Code ist auch in der [Allgemeinen Kultur](StructureDefinition-mii-pr-mikrobio-allgemeine-kultur.html) zulässig, benennt also für sich genommen nicht, welche der beiden Aussagen gemeint ist; wie die Profile unterscheidbar bleiben, steht unter [Profilauswahl und Abgrenzung](profilauswahl-und-abgrenzung.html).

### Ergebnis

Das Ergebnis ist der identifizierte Mikroorganismus aus `mii-vs-mikrobio-organismen-snomedct`. Wurde untersucht, aber kein Erreger identifiziert, wird `260415000 |Not detected|` angegeben — nicht das Weglassen der Observation.

Abzugrenzen von den benachbarten Negativfällen:

| Aussage | Profil | Wert |
|---|---|---|
| Kein Erreger identifiziert | Allgemeine Bestimmung | `260415000 \|Not detected\|` |
| Kein Wachstum in der Kultur | [Allgemeine Kultur](StructureDefinition-mii-pr-mikrobio-allgemeine-kultur.html) | `264868006 \|No growth\|` |
| Ein bestimmter Erreger wurde gesucht und nicht gefunden | [Spezifische Bestimmung](StructureDefinition-mii-pr-mikrobio-spezifische-bestimmung.html) | `260415000 \|Not detected\|` |

`264868006 |No growth|` ist an das Wachstum in der Kultur gebunden und bleibt deshalb den Kulturprofilen vorbehalten. Ein unbestimmbares Ergebnis wird über `dataAbsentReason` abgebildet, nicht über `Not detected`.

### Stellung in der diagnostischen Kette

Die allgemeine Bestimmung folgt in der Regel einer Kultur, deren Wachstum sie
benennt, und verweist über die `triggeredBy`-Extension mit `type = reflex` auf
sie zurück; das
[Beispiel](Observation-mii-exa-mikrobio-allgemeine-bestimmung.html) zeigt das.
Die Empfindlichkeitstestung folgt ihrerseits der Identifizierung und verweist
auf dieselbe Weise hierher zurück.
[Profilauswahl und Abgrenzung](profilauswahl-und-abgrenzung.html) zeigt die Kette
im Ganzen.

### Beispiele

Beispiel (minimal):

[mii-exa-mikrobio-allgemeine-bestimmung](Observation-mii-exa-mikrobio-allgemeine-bestimmung.html)

