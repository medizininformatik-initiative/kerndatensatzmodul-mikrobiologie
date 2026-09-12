Spezifische Mikroskopie beschreibt den mikroskopischen Nachweis eines im
Untersuchungscode benannten Objekts — säurefeste Stäbchen, Leukozyten, Clue
Cells. Das Ergebnis ist, ob es nachgewiesen wurde; wie viel davon gesehen wurde,
steht daneben in einer Komponente.

### Unterschied zur Allgemeinen Mikroskopie

Beide Hälften sind Mikroskopie; getrennt sind sie durch die Fragestellung und den
Typ ihrer Antwort — die Regel, die dieses Modul durchgängig anwendet.

| | [Allgemeine Mikroskopie](StructureDefinition-mii-pr-mikrobio-mikroskopie.html) | Spezifische Mikroskopie |
|---|---|---|
| Die Fragestellung | was ist zu sehen? | ist X da, und wie viel? |
| `Observation.code` | ein Code, der höchstens die Färbung nennt | ein Code, der das gesuchte Objekt nennt |
| `value[x]` | die beobachtete Morphologie | nachgewiesen oder nicht nachgewiesen |

LOINC spiegelt diese Unterscheidung meist in der Skala — nominal, wo die Antwort
das Objekt ist, ordinal, wo sie ein Nachweis ist —, aber nicht zuverlässig. Für
manche Färbungen existiert nur die nominale Form: Rhodamin-Auramin hat gar keinen
ordinalen Code. Ein solcher Befund gehört in die allgemeine Mikroskopie, obwohl
die Färbung zielgerichtet ist, denn die Antwort ist dann das gesehene Objekt. Die
Skala folgt der Unterscheidung, sie begründet sie nicht.

Beide Profile antworten `Detected` / `Not detected`, und getrennt bleiben sie
durch das Subjekt, über das sie sprechen: Die
[Spezifische Bestimmung](StructureDefinition-mii-pr-mikrobio-spezifische-bestimmung.html)
benennt eine Erregerspezies, dieses Profil ein mikroskopisch sichtbares Objekt —
Wirtszellen, eine morphologische Form, einen Parasiten — und führt die Menge mit,
in der es gesehen wurde.

### Färbung

Die Codes dieses Profils nennen die Färbung meist selbst, und sie wird trotzdem
in `extension[faerbung]` angegeben — dort liest sie ein Verarbeitender,
unabhängig davon, welchen Code das Labor gewählt hat, und dort steht die konkrete
Variante, wo der Code nur die Klasse nennt („Acid fast stain" gegenüber Kinyoun).
Wohin sie gehört, ist
[Ballotfrage 2](StructureDefinition-mii-pr-mikrobio-mikroskopie.html#ballot-question-2).

### Die Menge

Die Menge steht in `component[menge]` und nicht in `value[x]`: Der
Untersuchungscode fragt, ob das Objekt da ist — `72357-7` und `87243-2` sind
`PrThr`-Codes, „presence or threshold" —, und die Stufe qualifiziert diese
Antwort, statt sie zu ersetzen. Eine `Observation.interpretation` ist sie
ebenfalls nicht: Die trägt eine klinische Bewertung und keine Menge.

Die Komponente nimmt drei Antwortformate, weil ein Labor dasselbe Analyt in zwei
davon berichtet: die semiquantitative Stufe, eine Zählung je Gesichtsfeld als
`Quantity` und eine solche Zählung als Intervall in einer `Range`. Code und
Antwortliste teilt sie mit der
[Allgemeinen Mikroskopie](StructureDefinition-mii-pr-mikrobio-mikroskopie.html),
wo [Ballotfrage 5](StructureDefinition-mii-pr-mikrobio-mikroskopie.html#ballot-question-5)
fragt, ob Standorte sie verarbeiten können.

Die Stufen stammen aus dem realen Ergebniskatalog eines deutschen Labors und
liegen auf zwei SNOMED-Achsen: `441614007` / `441517005` / `441521003` sind
Präsenzbefunde unter `52101004 |Present|`, während `Few`, `Moderate number`,
`Numerous` und `Scanty` Grad- und Zahl-Deskriptoren sind. Welche der beiden
Familien zu bevorzugen ist, ist mit der europäischen Arbeitsgruppe noch offen.

### Beispiele

Säurefeste Stäbchen nicht nachgewiesen:

[mii-exa-mikrobio-spezifische-mikroskopie-auramin-negativ](Observation-mii-exa-mikrobio-spezifische-mikroskopie-auramin-negativ.html)

Säurefeste Stäbchen nachgewiesen, in Stufe zwei von drei:

[mii-exa-mikrobio-spezifische-mikroskopie-kinyoun-zweiplus](Observation-mii-exa-mikrobio-spezifische-mikroskopie-kinyoun-zweiplus.html)
