<!-- MIGRATED verbatim from Simplifier page: MIIIGModulMikrobiologie/Technische-Implementierung/FHIR-Profile/Bestimmung/Spezifische-Bestimmung.page.md  -->
Spezifische Bestimmung beschreibt den gezielten qualitativen Nachweis eines vordefinierten mikrobiellen Ziels (z. B. Mikroorganismus, Nukleinsäure, Antigen, Antikörper oder biochemischer Marker) in einer Probe mittels direkter molekularer, immunologischer oder biochemischer Nachweismethoden sowie mittels methodenneutral kodierter Nachweistests. Der kulturbasierte zielgerichtete Nachweis liegt ebenfalls hier: Das Verfahren steht im Untersuchungscode und in `Observation.method`, nicht im Ergebnis.

Das Ergebnis ist die Aussage über den Nachweis des im Code benannten Ziels (`Detected` bzw. `Not detected`); ein unbestimmbares Ergebnis wird nicht über `value`, sondern über `dataAbsentReason` angegeben. Damit bildet dieses Profil auch das negative Ergebnis eines zielgerichteten Erregernachweises ab, etwa einen negativen VRE-Nachweis.

Die verwendete Methode soll grundsätzlich über `Observation.method` angegeben werden, sofern sie bekannt ist. Enthält der verwendete LOINC-Code bereits eine präkoordinierte Methode, kann `Observation.method` ergänzend befüllt werden. **Enthält der LOINC-Code keine Methodenangabe, MUSS `Observation.method` befüllt werden.** 

Zur Abgrenzung gegenüber Empfindlichkeitstestung und Klassifikation sowie zur Codeauswahl siehe [Profilauswahl und Abgrenzung](profilauswahl-und-abgrenzung.html).

Untersuchungen ohne vordefiniertes Ziel, bei denen das Ergebnis die Nennung des identifizierten Erregers ist, werden über [Allgemeine Bestimmung](StructureDefinition-mii-pr-mikrobio-allgemeine-bestimmung.html) abgebildet.

### Ein Profil oder zwei?

<a id="ballot-question-7"></a>

{:.bg-warning}
**Ballotfrage 7 — genügt `Detected` / `Not detected` für eine zielgerichtete
Kultur, oder brauchen Sie `Organism growth` / `No growth`?** Dieses Modul bildet
den zielgerichteten Nachweis unabhängig vom Verfahren in einem Profil ab:
Fragestellung und Ergebnistyp sind dieselben. Die HL7 EU Lab Semantic Workgroup
führt die zielgerichtete Kultur getrennt und bindet dort Wachstum; dieser
Leitfaden weicht davon ab. Die Kultur steht bereits im Untersuchungscode, dessen
Methodenachse `Organism specific culture` trägt.

Brauchen Sie die Wachstumscodes, kommt die Bindung zurück. Wir bitten um
Rückmeldung im Ballot.

### Stellung in der diagnostischen Kette

Ein positiver zielgerichteter Nachweis kann eine Kette eröffnen: Identifizierung
des Isolats, Empfindlichkeitstestung und abgeleitete Bewertungen können folgen
und verweisen jeweils über die `triggeredBy`-Extension mit `type = reflex`
hierher zurück.

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

