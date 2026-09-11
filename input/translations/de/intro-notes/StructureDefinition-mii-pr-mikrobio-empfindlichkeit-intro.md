<!-- MIGRATED verbatim from Simplifier page: MIIIGModulMikrobiologie/Technische-Implementierung/FHIR-Profile/Kultur/Empfindlichkeit.page.md  -->
Empfindlichkeit beschreibt das Ergebnis der phänotypischen Resistenztestung eines Erregers gegenüber antimikrobiellen Substanzen unter Bezug auf ein Normsystem.

Die Resistenz eines bereits identifizierten Erregers gegen eine einzelne Substanz wird hier abgebildet, etwa ein linezolidresistenter Enterococcus über `29258-1 |Linezolid [Susceptibility]|` mit `interpretation` R; der Negativfall ist `interpretation` S. Der zielgerichtete Nachweis eines resistenten Erregers als solchen gehört dagegen in die Nachweisprofile — siehe [Profilauswahl und Abgrenzung](profilauswahl-und-abgrenzung.html).

### Stellung in der diagnostischen Kette

Die Empfindlichkeitstestung folgt der Identifizierung des Erregers, den sie
bewertet, und verweist über die `triggeredBy`-Extension mit `type = reflex` auf
sie zurück. Fand keine eigene Identifizierung statt, weil der Nachweis bereits
erregerspezifisch war, verweist sie unmittelbar auf diesen Nachweis.

[Resistenzkategorie-Status](StructureDefinition-mii-pr-mikrobio-resistenzkategorie-status.html)
und [MRGN-Klasse](StructureDefinition-mii-pr-mikrobio-mrgn-klasse.html) stehen am
Ende der Kette und verweisen über `derivedFrom` auf die Empfindlichkeitsbefunde,
aus denen sie abgeleitet wurden, nicht über `triggeredBy`: Sie sind fachliche
Ableitungen und keine ausgelöste Folgediagnostik.

### Ein Antibiogramm zusammenfassen

Ein Antibiogramm ist nicht ein Ergebnis, sondern viele — je getestete Substanz
eine Observation dieses Profils. Die HL7 EU Lab Semantic Workgroup bindet sie über eine
**Organizer-Observation** zusammen: eine Observation, die den Panel-Code
`29576-6 |Bacterial susceptibility panel|` trägt und selbst kein `value[x]`, und
die über `Observation.hasMember` auf die Einzelergebnisse und über `triggeredBy`
auf die Identifizierung verweist, der sie folgte.

Der Organizer ist in diesem Modul nicht profiliert. `Observation.hasMember` steht
unbeschränkt aus dem Laborbefund-Basisprofil zur Verfügung, und ein
Organizer-Profil erzeugte eine eigene Canonical für etwas, das FHIR bereits
regelt. Für ihn gibt es entsprechend kein Profil unter den Zielen, die
`DiagnosticReport.result` zulässt; dort werden die Einzelergebnisse unmittelbar
referenziert.
[Profilauswahl und Abgrenzung](profilauswahl-und-abgrenzung.html) beschreibt das
Muster und die Arbeitsteilung zwischen `hasMember`, `triggeredBy` und
`derivedFrom`.

### Beispiele

Beispiel (minimal):

[mii-exa-mikrobio-empfindlichkeit](Observation-mii-exa-mikrobio-empfindlichkeit.html)

