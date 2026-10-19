<!-- MIGRATED verbatim from Simplifier page: MIIIGModulMikrobiologie/Technische-Implementierung/FHIR-Profile/Kultur/Allgemeine-Kultur.page.md  -->
Allgemeine Kultur beschreibt das Ergebnis einer nicht zielgerichteten mikrobiologischen Kultur, die prüft, ob in der Probe irgendein Mikroorganismus wächst, ohne die Analyse auf einen vordefinierten Erreger zu beschränken.

### Testcode

Bevorzugt wird `11475-1 |Microorganism identified in Specimen by Culture|`, weil der Code das Verfahren selbst benennt. `41852-5 |Microorganism or agent identified in Specimen|` ist gleichwertig zulässig: Das europäische Datenmodell bevorzugt ihn hier, weil er das Verfahren aus dem Testcode heraushält und nach `Observation.method` verlagert. Es ist derselbe Code, den auch die [Allgemeine Bestimmung](StructureDefinition-mii-pr-mikrobio-allgemeine-bestimmung.html) bevorzugt; eine Untersuchung, die ihn verwendet, ist deshalb allein an ihrer Methode als Kultur erkennbar — die das Invariant `allgemeine-kultur-method-with-neutral-code` für genau diesen Code daher zur Pflicht macht. Wird aerobe und anaerobe Bebrütung nicht unterschieden, steht `702658000 |Microbial culture technique|` zur Verfügung. Wie die beiden Profile unterscheidbar bleiben, steht unter [Profilauswahl und Abgrenzung](profilauswahl-und-abgrenzung.html).

### Stellung in der diagnostischen Kette

Die allgemeine Kultur ist in der Regel der erste Schritt: Sie stellt fest, dass
etwas wächst, nicht was es ist. Die Benennung des Erregers ist eine eigene
Untersuchung —
[Allgemeine Bestimmung](StructureDefinition-mii-pr-mikrobio-allgemeine-bestimmung.html)
—, die über die `triggeredBy`-Extension mit `type = reflex` auf diese Kultur
zurückverweist. Die Kultur selbst trägt keinen Verweis auf das, was ihr folgt;
die Beziehung wird immer an der späteren Untersuchung angegeben.
[Profilauswahl und Abgrenzung](profilauswahl-und-abgrenzung.html) zeigt die Kette
im Ganzen.

### Beispiele

Beispiel (minimal):

[mii-exa-mikrobio-allgemeine-kultur](Observation-mii-exa-mikrobio-allgemeine-kultur.html)

