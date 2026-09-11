<!-- MIGRATED verbatim from Simplifier page: MIIIGModulMikrobiologie/Technische-Implementierung/FHIR-Profile/Kultur/Spezifische-Kultur.page.md  -->
Spezifische Kultur beschreibt das Ergebnis einer zielgerichteten kulturbasierten Untersuchung, die prüft, ob ein vordefinierter Mikroorganismus in der Probe wächst. Das gesuchte Ziel ist bereits im Untersuchungscode benannt; das Ergebnis ist die Aussage über Wachstum (`Organism growth` bzw. `No growth`).

Damit bildet dieses Profil auch das negative Ergebnis eines kulturell durchgeführten zielgerichteten Erregernachweises ab, etwa einen negativen VRE- oder MRSA-Nachweis. Ein unbestimmbares Ergebnis wird nicht über `value`, sondern über `dataAbsentReason` angegeben. Zur Abgrenzung gegenüber Empfindlichkeitstestung und Klassifikation siehe [Profilauswahl und Abgrenzung](profilauswahl-und-abgrenzung.html).

Der nicht kulturbasierte zielgerichtete Nachweis wird über [Spezifische Bestimmung](StructureDefinition-mii-pr-mikrobio-spezifische-bestimmung.html) abgebildet.

### Ein Profil oder zwei?

<a id="ballot-question-7"></a>

{:.bg-warning}
**Ballotfrage 7 — sollten spezifische Kultur und spezifische Bestimmung ein
Profil sein?** Bis `2027.0.0-alpha.5` waren sie es, und die europäische
Diskussion dazu ist nicht abgeschlossen. Dieser Leitfaden trennt sie, weil die
Ergebnisräume disjunkt sind — `365698005 Organism growth` und `264868006 No
growth` gegen `260373001 Detected` und `260415000 Not detected` — und weil dieses
Modul ein Profil aus der Fragestellung und dem Typ ihrer Antwort ableitet, nicht
aus dem Verfahren.

Ein vereintes Profil könnte die `required`-Bindung am Ergebnis nicht halten: Ein
Nukleinsäurenachweis dürfte dann „No growth" berichten. Die Unterscheidung
zwischen kulturell und nicht kulturell fiele auf `Observation.method`, deren
Verfügbarkeit Ballotfrage 6 ist — und hier gibt es keinen methodenneutralen Code,
an dem eine Invariante hängen könnte, wie die
[Allgemeine Kultur](StructureDefinition-mii-pr-mikrobio-allgemeine-kultur.html)
ihn hat.

Wir bitten um Rückmeldung, ob ein Profil für Sie praktikabler wäre. Die Antwort
kann das Modell noch ändern: Dieses Profil ist in keinem Release erschienen, ein
Zusammenlegen ist also bis zur Veröffentlichung kostenlos, ein Rückzug einer
veröffentlichten Canonical danach nicht. Wir bitten um Rückmeldung im Ballot.

### Stellung in der diagnostischen Kette

Eine positive zielgerichtete Kultur kann eine Kette eröffnen: eine weitere
Identifizierung des Isolats, eine Empfindlichkeitstestung und eine abgeleitete
Bewertung wie ein Resistenzkategorie-Status können folgen. Jede davon verweist
über die `triggeredBy`-Extension mit `type = reflex` hierher zurück — der Verweis
sitzt an der späteren Untersuchung, nicht an dieser. Ein negatives Ergebnis
beendet die Kette.
[Profilauswahl und Abgrenzung](profilauswahl-und-abgrenzung.html) zeigt die Kette
im Ganzen.

### Beispiele

Beispiel (minimal):

[mii-exa-mikrobio-spezifische-kultur](Observation-mii-exa-mikrobio-spezifische-kultur.html)

Negativer VRE-Nachweis:

[mii-exa-mikrobio-spezifische-kultur-vre-negativ](Observation-mii-exa-mikrobio-spezifische-kultur-vre-negativ.html)

