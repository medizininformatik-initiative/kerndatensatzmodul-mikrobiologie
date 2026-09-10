<!-- MIGRATED verbatim from Simplifier page: MIIIGModulMikrobiologie/Technische-Implementierung/FHIR-Profile/Kultur/Mikroskopie.page.md  -->
Allgemeine Mikroskopie beschreibt die morphologische Beobachtung von Mikroorganismen in einer Probe mittels mikroskopischer Untersuchung, optional mit Färbetechniken (z. B. Gramfärbung). Das Ergebnis ist eine morphologische Gruppe, keine Spezies.

Sie ist die offene Hälfte der Mikroskopie: Der Code fragt, was zu sehen ist, und
die Antwort ist die beobachtete Morphologie. Steht das gesuchte Objekt bereits im
Untersuchungscode und ist die Antwort, wie viel davon gesehen wurde, ist
[Spezifische Mikroskopie](StructureDefinition-mii-pr-mikrobio-spezifische-mikroskopie.html)
das richtige Profil.

### Färbung

<a id="ballot-question-2"></a>

{:.bg-warning}
**Ballotfrage 2 — ist die Färbetechnik allein über `Specimen` darstellbar?**
Das europäische Datenmodell legt die Färbetechnik nach
`Specimen.processing.procedure`. Wir bitten um Rückmeldung, ob eine Abbildung allein über `Specimen` an Ihrem
Standort umsetzbar ist. Die Antwort entscheidet, ob dieses Modul die Färbung
weiterhin in `Observation.method` führt.

Zwei Dinge sprechen dagegen, dass `Specimen` der einzige Ort ist. Es setzt eine
Specimen-Ressource voraus, und die stellt Ballotfrage 1 in Zweifel. Und der
Parent von [Probe](StructureDefinition-mii-pr-mikrobio-probe.html) macht unter
`processing` derzeit Lagertemperaturbedingungen verpflichtend (Ballotfrage 3),
die eine Färbung nicht liefern kann.

Dieses Modul führt die Färbung deshalb vorläufig in `Observation.method`.
`Observation.method` ist im Labor-Basisprofil `0..1`, eine Decke, die ein Profil
nicht anheben darf, und in SNOMED CT sind Färbung und Mikroskopie
Geschwisterzweige — `278289002 |Microscopy techniques|` subsumiert
`708061008 |Gram stain|` nicht, dessen Elternkonzept ist
`703857004 |Staining technique|`. Es passt also nur eines von beiden hinein, und
die Färbung ist die informative Wahl, weil `105059-0` mit „Microscopic
observation" das Verfahren schon nennt. Wer stattdessen `664-3` wählt, hat die
Färbung im Code und den Methodenplatz ganz frei.

Bitte teilen Sie uns im Ballot mit, welchen dieser Wege Sie tatsächlich
umsetzen können.

Bei nativer Mikroskopie ohne Färbung wird stattdessen das Mikroskopieverfahren
angegeben.

## Morphologie zusammen mit ihrer Menge

Der häufigste Grambefund braucht zwei Aussagen auf einmal — *wenig* grampositive
Kokken —, und `value[x]` kann nur eine davon tragen. Die Morphologie ist der Wert,
die Menge eine Komponente: `component[menge]`, aus derselben semiquantitativen
Liste, die die
[Spezifische Mikroskopie](StructureDefinition-mii-pr-mikrobio-spezifische-mikroskopie.html)
als Wert verwendet.

Ihr Code stammt aus einem Interims-CodeSystem dieses Moduls. Das europäische
Datenmodell fordert dafür einen LOINC-Code an (Blatt „Microscopy", Zeile 13, „new
LOINC — Semiquantitive value for microscopy finding"); solange es ihn nicht gibt,
steht der Interimscode dafür und wird durch ihn ersetzt.

<a id="ballot-question-5"></a>

{:.bg-warning}
**Ballotfrage 5 — Komponente oder `hasMember` für die Menge?**
Das europäische Datenmodell lässt das selbst offen und fragt „Component Procedure
**or has member?**". Eine Komponente hält eine Untersuchung als eine Ressource
zusammen, so wie ein Labor sie berichtet. `hasMember` machte die Menge zu einer
eigenen, referenzierbaren Observation — die Richtung, die dieses Modul in
`2027.0.0-alpha.1` eingeschlagen hat, als die Komponenten aus genau diesem Profil
entfernt und in eigenständige Observations überführt wurden. Die Komponente dreht
hier also eine Entscheidung dieses Zyklus zurück, bewusst und für einen einzelnen
engen Fall. Bitte teilen Sie uns im Ballot mit, welche der beiden Formen Sie
verarbeiten können.

Ein zusammenfassendes Urteil über das Präparat — „unauffällig" — ist weder der
Wert noch die Komponente, sondern `Observation.interpretation` mit `N` „Normal".
Es ist die eine Stelle in diesem Modul, an der `interpretation` das richtige
Element ist: Sie trägt eine Beurteilung, niemals eine Menge.

### Beispiele

Beispiel (minimal):

[mii-exa-mikrobio-mikroskopie](Observation-mii-exa-mikrobio-mikroskopie.html)
