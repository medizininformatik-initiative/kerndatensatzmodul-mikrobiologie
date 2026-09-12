Spezifische Mikroskopie beschreibt den mikroskopischen Nachweis eines im
Untersuchungscode benannten Objekts — säurefeste Stäbchen, Leukozyten, Clue Cells
— mit der semiquantitativen Stufe, in der es gesehen wurde, als Ergebnis.

### Unterschied zur Allgemeinen Mikroskopie

Beide Hälften sind Mikroskopie; getrennt sind sie durch die Fragestellung und den
Typ ihrer Antwort — die Regel, die dieses Modul durchgängig anwendet.

| | [Allgemeine Mikroskopie](StructureDefinition-mii-pr-mikrobio-mikroskopie.html) | Spezifische Mikroskopie |
|---|---|---|
| Die Fragestellung | was ist zu sehen? | ist X da, und wie viel? |
| `Observation.code` | ein Code, der höchstens die Färbung nennt | ein Code, der das gesuchte Objekt nennt |
| `value[x]` | die beobachtete Morphologie | die semiquantitative Stufe |

LOINC spiegelt diese Unterscheidung meist in der Skala — nominal, wo die Antwort
das Objekt ist, ordinal, wo sie eine Stufe ist —, aber nicht zuverlässig. Für
manche Färbungen existiert nur die nominale Form: Rhodamin-Auramin hat gar keinen
ordinalen Code. Ein solcher Befund gehört in die allgemeine Mikroskopie, obwohl
die Färbung zielgerichtet ist, denn die Antwort ist dann das gesehene Objekt und
keine Stufe. Die Skala folgt der Unterscheidung, sie begründet sie nicht.

Es ist deshalb nicht dieselbe Aussage wie die
[Spezifische Bestimmung](StructureDefinition-mii-pr-mikrobio-spezifische-bestimmung.html),
obwohl beide zielgerichtet sind: Jene antwortet `Detected` / `Not detected`,
diese eine Stufe. Aus demselben Grund steckt die Keimzahl nicht im Kulturprofil.

### Färbung

Die Codes dieses Profils nennen die Färbung meist selbst, und sie wird trotzdem
in `extension[faerbung]` angegeben — dort liest sie ein Verarbeitender,
unabhängig davon, welchen Code das Labor gewählt hat, und dort steht die konkrete
Variante, wo der Code nur die Klasse nennt („Acid fast stain" gegenüber Kinyoun).
Wohin sie gehört, ist
[Ballotfrage 2](StructureDefinition-mii-pr-mikrobio-mikroskopie.html#ballot-question-2).

### Warum die Stufe der Wert ist

Weil der Untersuchungscode ordinal ist, **ist** die Stufe die Antwort auf die
Frage, die der Code stellt. Sie ist damit weder eine
`Observation.interpretation` — die trägt die klinische Bewertung, keine Menge —
noch eine Komponente noch eine Mitglieds-Observation. Wo LOINC einen solchen
ordinalen Code anbietet, stellt sich die offene Frage des europäischen
Datenmodells nach einer Komponente und einem neuen LOINC-Code nicht.

Die Stufen stammen aus dem realen Ergebniskatalog eines deutschen Labors und
liegen auf zwei SNOMED-Achsen: `441614007` / `441517005` / `441521003` sind
Präsenzbefunde unter `52101004 |Present|`, während `Few`, `Moderate number`,
`Numerous` und `Scanty` Grad- und Zahl-Deskriptoren sind. Welche der beiden
Familien zu bevorzugen ist, ist mit der europäischen Arbeitsgruppe noch offen.

### Beispiele

Säurefeste Stäbchen nicht nachgewiesen:

[mii-exa-mikrobio-spezifische-mikroskopie-auramin-negativ](Observation-mii-exa-mikrobio-spezifische-mikroskopie-auramin-negativ.html)

Säurefeste Stäbchen in Stufe zwei von drei:

[mii-exa-mikrobio-spezifische-mikroskopie-kinyoun-zweiplus](Observation-mii-exa-mikrobio-spezifische-mikroskopie-kinyoun-zweiplus.html)
