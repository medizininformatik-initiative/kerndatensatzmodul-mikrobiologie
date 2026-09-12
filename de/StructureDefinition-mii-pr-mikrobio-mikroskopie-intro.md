<!-- MIGRATED verbatim from Simplifier page: MIIIGModulMikrobiologie/Technische-Implementierung/FHIR-Profile/Kultur/Mikroskopie.page.md  -->
Allgemeine Mikroskopie beschreibt die morphologische Beobachtung von Mikroorganismen in einer Probe mittels mikroskopischer Untersuchung, optional mit Färbetechniken (z. B. Gramfärbung). Das Ergebnis ist eine morphologische Gruppe, keine Spezies.

Sie ist die offene Hälfte der Mikroskopie: Der Code fragt, was zu sehen ist, und
die Antwort ist die beobachtete Morphologie. Steht das gesuchte Objekt bereits im
Untersuchungscode und ist die Antwort, wie viel davon gesehen wurde, ist
[Spezifische Mikroskopie](StructureDefinition-mii-pr-mikrobio-spezifische-mikroskopie.html)
das richtige Profil.

### Färbung

Die Färbung steht in `extension[faerbung]`, codiert mit den Nachkommen von
`37926009 |Microbial stain method (procedure)|` — denselben Codes, die die HL7 EU
Lab Semantic Workgroup verwendet. Sie wird immer angegeben, wenn gefärbt wurde,
auch dann, wenn der Untersuchungscode sie schon nennt: Sie ist damit an einer
Stelle auswertbar, unabhängig davon, welchen Code ein Labor wählt.
`Observation.method` trägt nur noch das Mikroskopieverfahren — bei nativer
Mikroskopie ohne Färbung die einzige Angabe, die zu machen ist.

<a id="ballot-question-2"></a>

{:.bg-warning}
**Ballotfrage 2 — wohin gehört die Färbetechnik?**
Dieses Modul weicht von dem Modell ab, das in der HL7 EU Lab Semantic Workgroup
diskutiert wird: Es führt die Färbung in `extension[faerbung]` an der
Observation, nicht in `Specimen.processing.procedure`. Die Codes sind dieselben.
Können Sie die Färbung an der Probe liefern, oder brauchen Sie die Extension?

Zwei Dinge sprechen dagegen, dass `Specimen` der einzige Ort ist. Es setzt eine
Specimen-Ressource voraus, und die stellt Ballotfrage 1 in Zweifel; und der
Parent von [Probe](StructureDefinition-mii-pr-mikrobio-probe.html) macht unter
`processing` Lagertemperaturbedingungen verpflichtend (Ballotfrage 3), die eine
Färbung nicht liefern kann. Weil die Terminologie auf beiden Wegen dieselbe ist,
ändert ein späterer Umzug das Element und nichts weiter.

## Morphologie zusammen mit ihrer Menge

Der häufigste Grambefund braucht zwei Aussagen auf einmal — *wenig* grampositive
Kokken —, und `value[x]` kann nur eine davon tragen. Die Morphologie ist der Wert,
die Menge eine Komponente: `component[menge]`, aus derselben semiquantitativen
Liste, die die
[Spezifische Mikroskopie](StructureDefinition-mii-pr-mikrobio-spezifische-mikroskopie.html)
als Wert verwendet.

Ihr Code ist `103392008 |Semi-quantitative value|`, das Konzept, das die HL7 EU
Lab Semantic Workgroup für diese Komponente vorschlägt. Für denselben Zweck ist
ein LOINC-Code angefordert; er tritt an diese Stelle, sobald er existiert.

<a id="ballot-question-5"></a>

{:.bg-warning}
**Ballotfrage 5 — können Sie eine Komponente für die Menge verarbeiten?**
Die HL7 EU Lab Semantic Workgroup führt die Menge eines einzelnen Befunds in
einer Komponente und gruppiert mehrere Befunde einer Untersuchung mit
`hasMember`; dieses Modul folgt dem. Die Komponente dreht dabei eine
Entscheidung dieses Zyklus zurück: `2027.0.0-alpha.1` hat die Komponenten aus
genau diesem Profil entfernt und in eigenständige Observations überführt.

### Beispiele

Beispiel (minimal):

[mii-exa-mikrobio-mikroskopie](Observation-mii-exa-mikrobio-mikroskopie.html)
