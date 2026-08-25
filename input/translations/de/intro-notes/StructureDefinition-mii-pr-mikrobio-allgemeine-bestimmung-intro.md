<!-- MIGRATED verbatim from Simplifier page: MIIIGModulMikrobiologie/Technische-Implementierung/FHIR-Profile/Bestimmung/Allgemeine-Bestimmung.page.md  -->
<!-- DERIVED:no-source source=MIIIGModulMikrobiologie/Technische-Implementierung/FHIR-Profile/Bestimmung/Allgemeine-Bestimmung.page.md gate=C -->
> **Während der Migration geschrieben — vor der Veröffentlichung prüfen.** TODO:REVIEW — die
> englische Standardfassung dieser Seite ist eine Maschinenübersetzung dieses deutschen Textes.
> Diese deutsche Fassung trägt den Originalwortlaut der Simplifier-Quellseite; zu prüfen ist die
> englische Entsprechung (Gate C).
{: .ig-highlight .ig-highlight-blue}

Allgemeine Bestimmung beschreibt die Identifikation eines Mikroorganismus oder infektiösen Agens in einer Probe, ohne Einschränkung auf ein vordefiniertes Ziel.

### Ergebnis

Das Ergebnis ist der identifizierte Mikroorganismus aus `mii-vs-mikrobio-organismen-snomedct`. Wurde untersucht, aber kein Erreger identifiziert, wird `260415000 |Not detected|` angegeben — nicht das Weglassen der Observation.

Abzugrenzen von den benachbarten Negativfällen:

| Aussage | Profil | Wert |
|---|---|---|
| Kein Erreger identifiziert | Allgemeine Bestimmung | `260415000 \|Not detected\|` |
| Kein Wachstum in der Kultur | [Allgemeine Kultur](StructureDefinition-mii-pr-mikrobio-allgemeine-kultur.html) | `264868006 \|No growth\|` |
| Ein bestimmter Erreger wurde gesucht und nicht gefunden | [Spezifische Bestimmung](StructureDefinition-mii-pr-mikrobio-spezifische-bestimmung.html) | `260415000 \|Not detected\|` |

`264868006 |No growth|` ist an das Wachstum in der Kultur gebunden und bleibt deshalb den Kulturprofilen vorbehalten. Ein unbestimmbares Ergebnis wird über `dataAbsentReason` abgebildet, nicht über `Not detected`.

### Beispiele

Beispiel (minimal):

[mii-exa-mikrobio-allgemeine-bestimmung](Observation-mii-exa-mikrobio-allgemeine-bestimmung.html)

