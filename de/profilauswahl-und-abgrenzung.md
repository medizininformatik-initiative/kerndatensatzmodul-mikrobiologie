# Profilauswahl und Abgrenzung - MII Implementation Guide Microbiology v2027.0.0-ballot.rc1

* [**Inhaltsverzeichnis**](toc.md)
* [**Anleitung**](guidance.md)
* **Profilauswahl und Abgrenzung**

## Profilauswahl und Abgrenzung

Nachweis, Empfindlichkeitstestung und Klassifikation sind unterschiedliche diagnostische Aussagen und werden in diesem Modul über unterschiedliche Profile abgebildet. Diese Seite beschreibt die Abgrenzung, die Darstellung negativer Ergebnisse und die Verknüpfung der Untersuchungen zu einer diagnostischen Kette.

> **Kernsatz:** Ein negatives Ergebnis eines zielgerichteten Erregernachweises wird unabhängig vom Verfahren über Spezifische Bestimmung bzw. Spezifische Kultur abgebildet. MRGN-Klassifikation und Resistenzkategorie-Status setzen dagegen einen bereits nachgewiesenen Erreger voraus und ersetzen keinen Nachweistest.

### Welche Profile gehören zu meinem Laborbereich?

Dass ein Profil unter mehreren Bereichen auftaucht, ist Absicht. Das Modell ist methodenneutral: **wie** eine Untersuchung durchgeführt wurde, steht in `Observation.method` und nicht in der Wahl eines anderen Profils. Die Spezifische Bestimmung bedient deshalb die molekulare Bank und die Serologie gleichermaßen.

**Kultur**

* [Allgemeine Mikroskopie](StructureDefinition-mii-pr-mikrobio-mikroskopie.md) — die gesehene morphologische Gruppe, keine Spezies 
* [Bartlett-Score](StructureDefinition-mii-pr-mikrobio-bartlett-score.md) — ist eine Sputumprobe für die Kultur geeignet?
* [Nugent-Score](StructureDefinition-mii-pr-mikrobio-nugent-score.md) — Gramfärbungs-Score für die bakterielle Vaginose
 
* [Spezifische Mikroskopie](StructureDefinition-mii-pr-mikrobio-spezifische-mikroskopie.md) — das Objekt steht im Code, das Ergebnis ist sein Nachweis, die Menge steht daneben
* [Allgemeine Kultur](StructureDefinition-mii-pr-mikrobio-allgemeine-kultur.md) — Wachstum oder kein Wachstum, ungerichtet
* [Keimzahl](StructureDefinition-mii-pr-mikrobio-keimzahl.md) — lebensfähige Keime je Volumen oder Masse
* [Allgemeine Bestimmung](StructureDefinition-mii-pr-mikrobio-allgemeine-bestimmung.md) — Speziesidentifizierung, typischerweise MALDI-TOF-MS
* [Empfindlichkeit](StructureDefinition-mii-pr-mikrobio-empfindlichkeit.md) — phänotypische Testung, S/I/R mit MHK oder Hemmhofdurchmesser
* Weitere Eigenschaften, **auf Ebene eines kulturell nachgewiesenen Erregers**: 
* [Virulenzfaktor](StructureDefinition-mii-pr-mikrobio-virulenzfaktor.md)
* [Resistenzmechanismen](StructureDefinition-mii-pr-mikrobio-resistenzmechanismen-determinanten.md)
* [MRGN-Klasse](StructureDefinition-mii-pr-mikrobio-mrgn-klasse.md)
* [MRE-Klasse](StructureDefinition-mii-pr-mikrobio-resistenzkategorie-status.md) — MRSA-, VRE-, LRE- und LVRE-Status; das Profil heißt **Resistenzkategorie-Status**
* [Voraussichtliche Empfindlichkeit](StructureDefinition-mii-pr-mikrobio-voraussichtliche-empfindlichkeit.md)
 

**Molekular**

* [Spezifische Bestimmung](StructureDefinition-mii-pr-mikrobio-spezifische-bestimmung.md) — Einzel- und Multiplex-PCR auf definierte Ziele, qualitativ
* [Allgemeine Bestimmung](StructureDefinition-mii-pr-mikrobio-allgemeine-bestimmung.md) — panbakterielle oder panfungale PCR, Sequenzierung, NGS
* [Molekulare Pathogenlast](StructureDefinition-mii-pr-mikrobio-molekulare-pathogenlast.md) — quantitative molekulare Ergebnisse
* Weitere Eigenschaften, **direkt aus dem Material**, ohne kulturellen Zwischenschritt: 
* [Virulenzfaktor](StructureDefinition-mii-pr-mikrobio-virulenzfaktor.md)
* [Resistenzmechanismen](StructureDefinition-mii-pr-mikrobio-resistenzmechanismen-determinanten.md)
* [Voraussichtliche Empfindlichkeit](StructureDefinition-mii-pr-mikrobio-voraussichtliche-empfindlichkeit.md)
 

**Serologie**

* [Spezifische Bestimmung](StructureDefinition-mii-pr-mikrobio-spezifische-bestimmung.md) — Antigen oder Antikörper, qualitativ
* [Antigen/Antikörper quantitativ](StructureDefinition-mii-pr-mikrobio-antigen-antikoerper-quantitativ.md) — quantitative Ergebnisse
* [Titer](StructureDefinition-mii-pr-mikrobio-titer.md) — Verdünnungsreihe, berichtet als Verhältnis
* [Avidität](StructureDefinition-mii-pr-mikrobio-aviditaet.md) — frische gegenüber zurückliegender Infektion

**Bereichsübergreifend**

* [Befundbericht](StructureDefinition-mii-pr-mikrobio-diagnostic-report.md) — fasst die Untersuchungen eines mikrobiologischen Befunds zusammen
* [Ct-Wert](StructureDefinition-mii-pr-mikrobio-ct-wert.md) — der Zyklusschwellenwert selbst. Das Labor übermittelt üblicherweise das daraus abgeleitete Ergebnis, dieses Profil ist daher der Ausnahmefall.

### Warum manche Verfahren ein eigenes Profil haben und andere nicht

Ein Profil wird durch die **Fragestellung und den Ergebnistyp** bestimmt, nicht durch das Verfahren. Deshalb fällt die Antwort bei qualitativen und quantitativen Ergebnissen unterschiedlich aus, was auf den ersten Blick inkonsequent wirkt:

* **Qualitativer Nachweis** hat einen einzigen Ergebnisraum — `Detected` / `Not detected` —, gleich ob das Ziel per PCR oder per Immunoassay gefunden wurde. Ein Profil genügt; `Observation.method` nennt das Verfahren.
* **Quantitative Messung** nicht. Kopien pro Milliliter, eine Konzentration und eine Verdünnungsstufe sind verschiedene Ergebnisräume mit verschiedenen Einheiten — molekulare Pathogenlast, quantitative Antigen-/Antikörpertests und Titer sind deshalb eigene Profile.
* **Kultur** ist aus demselben Grund eigenständig: ihr Ergebnis ist weder ein Organismus noch nachgewiesen/nicht nachgewiesen, sondern Wachstum oder kein Wachstum.

Die Regel ist also jedes Mal dieselbe; nur die Zahl der unterscheidbaren Ergebnisräume ist verschieden.

### Ein Testcode, zwei Profile

`41852-5 |Microorganism or agent identified in Specimen|` ist in der [Allgemeinen Kultur](StructureDefinition-mii-pr-mikrobio-allgemeine-kultur.md) ebenso zulässig wie in der [Allgemeinen Bestimmung](StructureDefinition-mii-pr-mikrobio-allgemeine-bestimmung.md), und das europäische Datenmodell führt ihn für beide als **preferred**. Das ist kein Versehen, sondern folgt aus dessen Grundsatz: Das Verfahren gehört nach `Observation.method`, ein Testcode sagt daher, wonach gesucht wurde, und schweigt darüber, wie. Ein methodenneutraler Code passt dann auf den kulturellen und den nicht kulturellen Weg gleichermaßen.

Unterscheidbar bleiben die beiden Profile über zwei voneinander unabhängige Achsen, von denen keine einen einzigen Code mit der anderen teilt:

| | | |
| :--- | :--- | :--- |
| Die Fragestellung | wächst überhaupt etwas? | welcher Organismus ist es? |
| `value[x]` | `365698005 Organism growth`,`264868006 No growth`,`280414007 Equivocal result`,`required`gebunden | ein Organismus aus dem Organismen-ValueSet oder`260415000 Not detected` |
| `Observation.method` | `703750006`aerobe,`703751005`anaerobe,`702658000`nicht näher bestimmte Kultur | `278289002`Mikroskopie,`83581000052107`MALDI-TOF,`258083009`visuelle Einschätzung,`1304162005`Sequenzierung |

Beide Elemente sind im Labor-Basisprofil optional. Die Allgemeine Kultur macht die Methode deshalb genau für den Code zur Pflicht, der sie braucht: Das Invariant `allgemeine-kultur-method-with-neutral-code` verlangt `Observation.method`, sobald `code` gleich `41852-5` ist. Die Pflicht hängt am Code, der die Mehrdeutigkeit auslöst, und nicht am Element — bei `11475-1` nennt der Code das Verfahren selbst, die Methode fügt nichts hinzu. Die Allgemeine Bestimmung braucht kein Gegenstück, weil die Asymmetrie bereits entscheidet: Eine Untersuchung mit `41852-5` und ohne Methode kann keine gültige Kultur sein, also ist sie eine Bestimmung.

Darüber hinaus empfiehlt dieses Modul den Code, der seine Methode mitführt, wo es einen gibt: `11475-1 |Microorganism identified in Specimen by Culture|` für die Kultur, `41852-5` für die Bestimmung. Ein Empfänger liest die Art der Aussage dann am Code ab und muss nicht erst Ergebnis oder Methode auswerten. Diese Empfehlung steht am `code`-Element des jeweiligen Profils und wird, anders als das Invariant, nicht erzwungen.

### Die Serologie ist die Ausnahme von der Specimen-Postkoordination

Überall sonst bevorzugt dieses Modul Untersuchungscodes, die das Material weglassen, und lässt es von `Specimen.type` tragen. Die Serologie ist davon bewusst ausgenommen. Die HL7 EU Lab Semantic Workgroup nennt den Grund:

> In comparison with culture techniques, far fewer specimen types are involved in serology. The majority of specimens are serum-based. Therefore, we allow pre-coordination of the specimen in the code.

Das Argument gegen Präkoordination ist die Codeexplosion — ein Kulturcode multipliziert mit jeder Körperstelle. In der Serologie fehlt dieser Multiplikator, der Preis entfällt also, und die Konvention kauft nichts mehr ein.

Die Ausnahme gilt für [Titer](StructureDefinition-mii-pr-mikrobio-titer.md), [Avidität](StructureDefinition-mii-pr-mikrobio-aviditaet.md), [Antigen/Antikörper quantitativ](StructureDefinition-mii-pr-mikrobio-antigen-antikoerper-quantitativ.md) und die **serologische Anwendung** der [Spezifischen Bestimmung](StructureDefinition-mii-pr-mikrobio-spezifische-bestimmung.md) — jenes Profil bedient auch die molekulare Bank, wo die Konvention weiter gilt, die Ausnahme hängt dort also an der Anwendung und nicht am Profil.

Eine Specimen-Ressource wird trotzdem in jedem Fall erwartet; Ballotfrage 1 bleibt davon unberührt. Die Ausnahme erlaubt einen Untersuchungscode, der Serum benennt — sie erlaubt nicht, `Observation.specimen` leer zu lassen.

Eine weitere Eigenheit der serologischen Befundung ist zu kennen: Die Diagnose ergibt sich häufig erst aus mehreren Ergebnissen zusammen und nicht aus einem einzelnen. Diese Aussage gehört in `DiagnosticReport.conclusion` — siehe [Befundbericht](StructureDefinition-mii-pr-mikrobio-diagnostic-report.md).

### Die Methode gehört in Observation.method

Die HL7 EU Lab Semantic Workgroup führt das als Grundsatz und formuliert es schärfer, als man erwarten würde:

> The LOINC-axis "method" should be omitted completely. […] Even if the method is pre-coordinated in the LOINC-Code the recommendation is to **always** represent the method consistently in `Observation.method` using SNOMED CT.

Die Methode ist also auch dann anzugeben, wenn der Untersuchungscode sie bereits trägt — eine Kultur unter `11475-1 |… by Culture|` soll trotzdem sagen, ob aerob oder anaerob bebrütet wurde. In der Mikroskopie ist die Färbung nicht Teil der Methode: Sie steht in [`extension[faerbung]`](StructureDefinition-mii-ex-mikrobio-faerbung.md), auch wenn der Untersuchungscode sie nennt, und `Observation.method` trägt das Mikroskopieverfahren.

Dieser Leitfaden hält das als **Empfehlung** fest, nicht als Pflicht. `Observation.method` ist im Labor-Basisprofil `0..1` Must Support, und eine modulweite Pflicht würde heute konforme Daten ungültig machen. Erzwungen wird sie an der einen Stelle, an der die Aussage sonst mehrdeutig ist: bei der Allgemeinen Kultur mit dem methodenneutralen Code `41852-5`.

**Ballotfrage 6 — können Sie zu jedem Befund `Observation.method` liefern?** Die HL7 EU Lab Semantic Workgroup verlangt es immer, dieser Leitfaden empfiehlt es nur. Wäre eine Pflicht an Ihrem Standort erfüllbar?

Aus einem Ja folgt zweierlei. Eine spätere Version kann `Observation.method` auf `1..1` heben, und das Sonderinvariant der Allgemeinen Kultur wird überflüssig — `41852-5` samt Methode ist dann überall eindeutig, und die Empfehlung, den methodentragenden `11475-1` zu bevorzugen, entfällt weitgehend.

### Zwei Granularitätsstufen auf derselben Achse

Mikroskopie und Bestimmung beantworten beide „welcher Organismus", kreisen ihn aber unterschiedlich eng ein. „Grampositive Kokken gesehen" **ist** eine taxonomische Aussage — sie schränkt den Organismus auf eine Klasse ein, statt ihn zu benennen. Was [Allgemeine Mikroskopie](StructureDefinition-mii-pr-mikrobio-mikroskopie.md) und [Allgemeine Bestimmung](StructureDefinition-mii-pr-mikrobio-allgemeine-bestimmung.md) trennt, ist deshalb die Granularität und nicht die Achse.

Das ist kein Bild. In SNOMED CT ist die Antwort der Mikroskopie buchstäblich ein Vorfahre der Antwort der Bestimmung — am 2026-09-10 nachgemessen:

```
59206002 |Gram-positive coccus|  subsumiert  3092008 |Staphylococcus aureus|

```

Daraus folgt eine Konsequenz, die man kennen sollte. SNOMED führt `(finding)`-Codes nur für die **angeordneten** Formen — in chains, in clusters, in pairs —, während die nackten Morphologien nur als `(organism)` existieren: `59206002`, `18383003 |Gram-negative coccus|`, `83514008`, `87172008`. Diese vier sind Nachkommen von `409822003 |Bacteria domain|` und damit auch Mitglieder des Organismen-ValueSets — sie sind also **ebenso gültige Werte der Allgemeinen Bestimmung**.

Für einen Konsumenten folgt daraus eine Regel: **Die Granularität steht im Profil oder im Untersuchungscode, nie in `value[x]` allein.** Eine Abfrage nach identifizierten Organismen, die nur den Wert filtert, bekommt auch Morphologiegruppen aus der Mikroskopie. Die Untersuchungscodes sind disjunkt — die Mikroskopiecodes gegen `41852-5` —, eine Mehrdeutigkeit entsteht also nicht; nur eine nachlässig geschriebene Abfrage bekommt mehr, als sie erfragt hat.

Eine Speziesidentifizierung gehört nie in die Mikroskopie, auch wenn sie am Mikroskop gestellt wurde.

### Abgrenzung der drei Aussagetypen

| | | | |
| :--- | :--- | :--- | :--- |
| Ist ein vordefiniertes Ziel nachweisbar? (nicht kulturell) | Spezifische Bestimmung | LOINC-Nachweistest, z. B.`105904-7` | `Detected`/`Not detected` |
| Ist ein vordefinierter Mikroorganismus da, kulturell gesucht? | Spezifische Bestimmung | LOINC-Kulturtest, z. B.`13316-5` | `Organism growth`/`No growth` |
| Ist ein Resistenzgen nachweisbar? | Resistenzmechanismen / Determinanten | LOINC-Determinante, z. B.`48813-0` | `Detected`/`Not detected` |
| Wie empfindlich ist ein identifiziertes Isolat gegen eine Substanz? | Empfindlichkeit | LOINC`[Susceptibility]`, z. B.`29258-1` | MHK als`Quantity`, Bewertung in`interpretation`(S / I / R) |
| Welcher MRGN-Klasse ist ein identifiziertes gramnegatives Isolat zuzuordnen? | MRGN-Klasse | `99780-9` | Klassifikationswert, z. B.`3MRGN`, oder`keine-mrgn-klasse` |
| Erfüllt ein nachgewiesener Erreger die Kriterien einer definierten Resistenzkategorie? | Resistenzkategorie-Status | `mrsa-status`,`vre-status`,`lre-status`,`lvre-status`(MII) | `Positive`/`Negative` |

### Negative Ergebnisse

#### Negativer zielgerichteter Erregernachweis

Die Untersuchung liefert das negative Ergebnis des konkret durchgeführten Nachweistests.

VRE-Nachweis mittels Kultur, negativ:

[mii-exa-mikrobio-spezifische-kultur-vre-negativ](Observation-mii-exa-mikrobio-spezifische-kultur-vre-negativ.md)

VRE-Nachweis molekular bzw. methodenneutral kodiert, negativ:

[mii-exa-mikrobio-spezifische-bestimmung-vre-negativ](Observation-mii-exa-mikrobio-spezifische-bestimmung-vre-negativ.md)

#### Keine MRGN-Klasse

Davon zu unterscheiden ist der Fall, dass ein gramnegatives Isolat identifiziert und dessen Empfindlichkeitstestung bewertet wurde, es aber keiner MRGN-Klasse zuzuordnen ist. Dies ist eine **negative Klassifikation** und wird über den Wert `keine-mrgn-klasse` des CodeSystems `mii-cs-mikrobio-mrgn-ergebnis` abgebildet:

[mii-exa-mikrobio-mrgn-klasse-negativ](Observation-mii-exa-mikrobio-mrgn-klasse-negativ.md)

Die LOINC-AnswerList zu `99780-9` enthält ausschließlich 2MRGN, 3MRGN und 4MRGN und damit keinen Negativwert; der MII-eigene Code schließt diese Lücke.

#### Resistenzkategorie-Status = Negative

Wieder anders gelagert ist die Bewertung eines vorliegenden Erregers hinsichtlich einer Resistenzkategorie:

[mii-exa-mikrobio-resistenzkategorie-vre-negativ](Observation-mii-exa-mikrobio-resistenzkategorie-vre-negativ.md)

`Negative` bedeutet: Ein nachgewiesener Erreger wurde anhand der für die in `code` genannte Kategorie relevanten Untersuchungen ausreichend bewertet und erfüllt deren Kriterien nicht. Es bedeutet ausdrücklich **nicht**, dass kein Erreger nachgewiesen wurde, dass keine Resistenz vorliegt oder dass keine ausreichende Diagnostik erfolgte.

Kann die Kategorie nicht ausreichend bewertet werden, wird nicht `Negative` angegeben, sondern `dataAbsentReason` gesetzt oder gar keine Status-Observation erzeugt.

Die drei Fälle im direkten Vergleich, jeweils für VRE:

| | | | |
| :--- | :--- | :--- | :--- |
| VRE wurde kulturell gesucht und nicht gefunden | Spezifische Bestimmung | `13316-5` | `Not detected` |
| VRE wurde gesucht und nicht gefunden (molekular) | Spezifische Bestimmung | `105904-7` | `Not detected` |
| Ein vorliegender**Enterococcus**ist kein VRE | Resistenzkategorie-Status | `vre-status` | `Negative` |

### Resistenzkategorien

Der Resistenzkategorie-Status bewertet immer **eine** benannte Kategorie. Die Aufnahme einer Kategorie ist fachlich zu begründen; nicht jede einzelne antimikrobielle Resistenz ist eine Resistenzkategorie. Insbesondere erfolgt keine implizite Ableitung aus dem SNOMED-Unterbaum „antimicrobial resistant organism".

| | | |
| :--- | :--- | :--- |
| `mrsa-status` | MRSA | **Staphylococcus aureus**+ Methicillin-/Oxacillinresistenz (phänotypisch oder`mecA`/`mecC`) |
| `vre-status` | VRE | **Enterococcus**+ Vancomycinresistenz (phänotypisch oder`vanA`/`vanB`) |
| `lre-status` | LRE | **Enterococcus**+ Linezolidresistenz |
| `lvre-status` | LVRE | **Enterococcus**+ Linezolid-**und**Vancomycinresistenz |

Für gramnegative Erreger mit einer MRGN-Klassifikation erfolgt die Abbildung über die [MRGN-Klasse](StructureDefinition-mii-pr-mikrobio-mrgn-klasse.md). Dort wird das Ergebnis der MRGN-Bewertung als `2MRGN`, `3MRGN`, `4MRGN` oder `keine-mrgn-klasse` angegeben.

### Mehrere Ergebnisse zusammenfassen: das Panel

Ein Antibiogramm ist kein Ergebnis, sondern viele — je getestete Substanz eine Observation. Die HL7 EU Lab Semantic Workgroup empfiehlt, sie über eine **Organizer-Observation** zusammenzuhalten: eine Observation, die den Panel-Code `29576-6 |Bacterial susceptibility panel|` trägt und selbst kein `value[x]` hat und die über `Observation.hasMember` auf die Einzelergebnisse zeigt. Der Organizer verweist seinerseits über die `triggeredBy`-Extension auf die Identifizierung, der er gefolgt ist.

```
Observation: Bacterial susceptibility panel (29576-6), ohne Wert
  triggeredBy → Observation: Erreger identifiziert
  hasMember   → Observation: Meropenem [Susceptibility], MHK 0,5 mg/L, S
  hasMember   → Observation: Ciprofloxacin [Susceptibility], MHK 4 mg/L, R

```

Die drei Mechanismen haben verschiedene Aufgaben und sind nicht gegeneinander austauschbar:

| | |
| :--- | :--- |
| `hasMember` | Gruppierung — ein Panel, das ein Organizer zusammenhält |
| `triggeredBy` | Reflex — die spätere Untersuchung verweist zurück auf ihren Auslöser |
| `derivedFrom` | Ableitung — ein Ergebnis, das aus einem anderen berechnet oder interpretiert wurde |

`triggeredBy` ist insbesondere **kein** Gruppierungsmechanismus. Und `derivedFrom` läuft vom abgeleiteten Ergebnis zu seiner Grundlage, nicht umgekehrt: Ein qualitativer Nachweis trägt `derivedFrom` auf den [Ct-Wert](StructureDefinition-mii-pr-mikrobio-ct-wert.md), aus dem er abgelesen wurde, niemals andersherum.

Dieser Leitfaden beschreibt das Muster, profiliert es aber nicht. `Observation.hasMember` steht unbeschränkt aus dem Labor-Basisprofil zur Verfügung, und ein Organizer-Profil erzeugte ein eigenes Canonical für etwas, das FHIR bereits regelt.

### Diagnostische Kette bei positivem Nachweis

Ein positiver zielgerichteter Nachweis kann Folgediagnostik auslösen:

```
Positiver zielgerichteter Nachweis
(Spezifische Bestimmung, jedes Verfahren)
        │
        │ triggeredBy (reflex)
        ▼
ggf. weiterführende Identifikation
        │
        │ triggeredBy (reflex)
        ▼
Empfindlichkeit
        │
        ├── ggf. Resistenzmechanismen / Determinanten
        │
        │ derivedFrom
        ▼
Resistenzkategorie-Status
  z. B. VRE-Status
  Positive / Negative

```

Bei einem bereits erregerspezifischen Nachweis ist das Ziel im Testcode definiert. Nach `MRSA detected` oder `VRE detected` muss keine separate Identifikation folgen. Entfällt sie, verweist die Empfindlichkeit direkt auf den Nachweis und der Resistenzkategorie-Status führt sie nicht in `derivedFrom`.

Für die auslösende Beziehung wird die R5-Backport-Extension `extension-Observation.triggeredBy` mit `type = reflex` verwendet, wie unter [FHIR-Profile](fhir-profile.md) beschrieben. Der letzte Schritt bildet die dort genannte Ausnahme: Der Resistenzkategorie-Status wird aus mehreren Untersuchungen **abgeleitet** und ist keine ausgelöste Folgeuntersuchung — hier trifft `derivedFrom` die Semantik. Diese Untersuchungen SOLLTEN angegeben werden, damit die Bewertungsgrundlage nachvollziehbar bleibt.

Vollständiges Beispiel einer Kette:

Schritt 1 — positiver VRE-Nachweis mittels erregerspezifischer Kultur:

[mii-exa-mikrobio-workflow-vre-01-kultur](Observation-mii-exa-mikrobio-workflow-vre-01-kultur.md)

Schritt 2 — weiterführende Identifikation des Isolats (optional):

[mii-exa-mikrobio-workflow-vre-02-identifikation](Observation-mii-exa-mikrobio-workflow-vre-02-identifikation.md)

Schritt 3 — Empfindlichkeitstestung:

[mii-exa-mikrobio-workflow-vre-03-empfindlichkeit](Observation-mii-exa-mikrobio-workflow-vre-03-empfindlichkeit.md)

Schritt 4 — abgeleiteter Resistenzkategorie-Status:

[mii-exa-mikrobio-resistenzkategorie-vre-positiv](Observation-mii-exa-mikrobio-resistenzkategorie-vre-positiv.md)

