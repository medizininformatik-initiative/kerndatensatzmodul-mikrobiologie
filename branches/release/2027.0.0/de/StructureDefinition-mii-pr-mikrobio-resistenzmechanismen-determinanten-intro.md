<!-- MIGRATED verbatim from Simplifier page: MIIIGModulMikrobiologie/Technische-Implementierung/FHIR-Profile/Weitere-Eigenschaften/Resistenzmechanismen-Determinanten.page.md  -->
Resistenzmechanismen/Determinanten beschreibt den Nachweis von Resistenzgenen, Resistenzmutationen, Proteinen oder funktionalen Tests (z. B. CIM-Test) in einer Probe oder einem Isolat als Hinweis auf spezifische Resistenzmechanismen.

### Stellung in der diagnostischen Kette

Der Nachweis von Resistenzmechanismen steht an derselben Stelle der Kette wie die
Empfindlichkeitstestung: Beide bewerten einen bereits identifizierten Erreger. Er
verweist über die `triggeredBy`-Extension mit `type = reflex` auf die
Untersuchung zurück, die ihn ausgelöst hat — die Identifizierung, oder den
Nachweis, wenn die Identifizierung entfiel.

Der
[Resistenzkategorie-Status](StructureDefinition-mii-pr-mikrobio-resistenzkategorie-status.html)
kann aus diesem Ergebnis abgeleitet sein und verweist dann über `derivedFrom`
darauf, etwa ein nachgewiesenes `mecA` als Grundlage einer MRSA-Bewertung.
[Profilauswahl und Abgrenzung](profilauswahl-und-abgrenzung.html) zeigt die Kette
im Ganzen.

### Beispiele

Beispiel (minimal):

[mii-exa-mikrobio-resistenzmechanismen-determinanten](Observation-mii-exa-mikrobio-resistenzmechanismen-determinanten.html)

