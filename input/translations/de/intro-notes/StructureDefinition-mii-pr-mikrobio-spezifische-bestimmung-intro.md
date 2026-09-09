<!-- MIGRATED verbatim from Simplifier page: MIIIGModulMikrobiologie/Technische-Implementierung/FHIR-Profile/Bestimmung/Spezifische-Bestimmung.page.md  -->
Spezifische Bestimmung beschreibt den gezielten qualitativen Nachweis eines vordefinierten mikrobiellen Ziels (z. B. Mikroorganismus, Nukleinsäure, Antigen, Antikörper oder biochemischer Marker) in einer Probe mittels direkter molekularer, immunologischer oder biochemischer Nachweismethoden sowie mittels methodenneutral kodierter Nachweistests. Der kulturbasierte zielgerichtete Nachweis wird über [Spezifische Kultur](StructureDefinition-mii-pr-mikrobio-spezifische-kultur.html) abgebildet.

Das Ergebnis ist die Aussage über den Nachweis des im Code benannten Ziels (`Detected` bzw. `Not detected`); ein unbestimmbares Ergebnis wird nicht über `value`, sondern über `dataAbsentReason` angegeben. Damit bildet dieses Profil auch das negative Ergebnis eines zielgerichteten Erregernachweises ab, etwa einen negativen VRE-Nachweis.

Die verwendete Methode soll grundsätzlich über `Observation.method` angegeben werden, sofern sie bekannt ist. Enthält der verwendete LOINC-Code bereits eine präkoordinierte Methode, kann `Observation.method` ergänzend befüllt werden. **Enthält der LOINC-Code keine Methodenangabe, MUSS `Observation.method` befüllt werden.** 

Zur Abgrenzung gegenüber Empfindlichkeitstestung und Klassifikation sowie zur Codeauswahl siehe [Profilauswahl und Abgrenzung](profilauswahl-und-abgrenzung.html).

Untersuchungen ohne vordefiniertes Ziel, bei denen das Ergebnis die Nennung des identifizierten Erregers ist, werden über [Allgemeine Bestimmung](StructureDefinition-mii-pr-mikrobio-allgemeine-bestimmung.html) abgebildet.

### Beispiele

Beispiel (minimal):

[mii-exa-mikrobio-spezifische-bestimmung](Observation-mii-exa-mikrobio-spezifische-bestimmung.html)

