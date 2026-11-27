<!-- MIGRATED verbatim from Simplifier page: MIIIGModulMikrobiologie/Technische-Implementierung/FHIR-Profile/Bestimmung/Spezifische-Bestimmung.page.md  -->
Spezifische Bestimmung beschreibt den gezielten qualitativen Nachweis eines vordefinierten mikrobiellen Ziels (z. B. Mikroorganismus, Nukleinsäure, Antigen, Antikörper oder biochemischer Marker) in einer Probe mittels direkter molekularer, immunologischer oder biochemischer Nachweismethoden sowie mittels methodenneutral kodierter Nachweistests. Der kulturbasierte zielgerichtete Nachweis liegt ebenfalls hier: Das Verfahren steht im Untersuchungscode und in `Observation.method`, nicht im Ergebnis.

Das Ergebnis ist die Aussage über den Nachweis des im Code benannten Ziels (`Detected`, `Not detected` oder `Equivocal result`); ein unbestimmbares Ergebnis wird nicht über `value`, sondern über `dataAbsentReason` angegeben. Damit bildet dieses Profil auch das negative Ergebnis eines zielgerichteten Erregernachweises ab, etwa einen negativen VRE-Nachweis. Ein schwach positives Ergebnis ist `Detected` mit der Menge in `component[menge]`, auf der Skala gering, mäßig, hoch: `441614007` (+ von +++).

Die verwendete Methode soll grundsätzlich über `Observation.method` angegeben werden, sofern sie bekannt ist. Enthält der verwendete LOINC-Code bereits eine präkoordinierte Methode, kann `Observation.method` ergänzend befüllt werden. **Enthält der LOINC-Code keine Methodenangabe, MUSS `Observation.method` befüllt werden.** 

Zur Abgrenzung gegenüber Empfindlichkeitstestung und Klassifikation sowie zur Codeauswahl siehe [Profilauswahl und Abgrenzung](profilauswahl-und-abgrenzung.html).

Untersuchungen ohne vordefiniertes Ziel, bei denen das Ergebnis die Nennung des identifizierten Erregers ist, werden über [Allgemeine Bestimmung](StructureDefinition-mii-pr-mikrobio-allgemeine-bestimmung.html) abgebildet.

### Stellung in der diagnostischen Kette

Identifizierung und Empfindlichkeit verweisen über `triggeredBy` hierher,
abgeleitete Bewertungen über `derivedFrom`. Beim direkten Nachweis liegt das
Ergebnis zuerst vor; bei der zielgerichteten Kultur steht `Detected` erst nach
Identifizierung und Testung fest.

Wird neben dem Nachweis ein Ct-Wert berichtet, läuft die Beziehung in die andere
Richtung und über ein anderes Element: Dieser Nachweis trägt `derivedFrom` auf
den [Ct-Wert](StructureDefinition-mii-pr-mikrobio-ct-wert.html), aus dem er
abgelesen wurde, nicht der Ct-Wert auf den Nachweis.
[Profilauswahl und Abgrenzung](profilauswahl-und-abgrenzung.html) zeigt die Kette
im Ganzen.

### Beispiele

Beispiel (minimal):

[mii-exa-mikrobio-spezifische-bestimmung](Observation-mii-exa-mikrobio-spezifische-bestimmung.html)

Positiver Nachweis mit dem Ct-Wert, aus dem er abgelesen wurde — zeigt die
Richtung von `derivedFrom`:

[mii-exa-mikrobio-spezifische-bestimmung-influenza-positiv](Observation-mii-exa-mikrobio-spezifische-bestimmung-influenza-positiv.html)

