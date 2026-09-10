# Anleitung für Forschende - MII Implementation Guide Microbiology v2027.0.0-ballot.rc1

* [**Inhaltsverzeichnis**](toc.md)
* [**Anleitung**](guidance.md)
* **Anleitung für Forschende**

## Anleitung für Forschende

 Diese Seite enthält Übersetzungen aus der Originalsprache, in der der Leitfaden verfasst wurde. Informationen zu diesen Übersetzungen und Anweisungen zum Abgeben von Feedback zu den Übersetzungen finden Sie [hier](translationinfo.md). 

Mikrobiologische Befunde sind die Grundlage der Infektionsdiagnostik und jeder Aussage über antimikrobielle Resistenzen. Das zentrale Dokument, das dieses Modul abbildet, ist der mikrobiologische Befund eines medizinischen Labors: der Nachweis, die Identifizierung und die Charakterisierung von Mikroorganismen und ihren Eigenschaften. Da das Modul breit anwendbar ist, gibt es keine konsortienspezifischen Szenarien vor.

### Erste Schritte

Wenn Sie neu im MII-Kerndatensatz sind, empfehlen wir folgende Einstiegspunkte:

**1. Logische Modelle — Modulinhalte verstehen**

Die [Logischen Modelle](logical-models.md) beschreiben die Daten dieses Moduls technikunabhängig auf fachlicher Ebene, verteilt über drei Modelle:

* **Befund** — der mikrobiologische Befund, der die enthaltenen Untersuchungen zusammenfasst
* **Untersuchung** — die abstrakte Basis mit dem, was für jede Untersuchung gilt: Identifikation, Status, Patient:in, Probe, Zeitpunkte und die auslösende Untersuchung
* **Untersuchungsarten** — die fachlichen Varianten, gruppiert nach Kultur, Bestimmung, quantitativen Tests und weiteren Eigenschaften

So erschließen sich Umfang und Struktur der verfügbaren Daten, ohne die FHIR-Details zu kennen. Die verwendeten Datentypen und Kardinalitäten sind nicht verbindlich; das regeln die Profile.

**2. UML-Diagramme — Datenbeziehungen sichtbar machen**

Die [UML-Diagramme](uml-diagrams.md) zeigen, wie die Elemente zueinander stehen. Sie helfen besonders dabei,

* zu erkennen, wie ein Befund, seine Untersuchungen und deren Proben zusammenhängen,
* die für eine Forschungsfrage relevanten Elemente zu identifizieren.

**3. Beispiele — FHIR-Daten in der Praxis**

Die [Beispiele](examples.md) zeigen Musterressourcen, darunter eine dreistufige diagnostische Kette von der Kultur über die Identifizierung bis zur Empfindlichkeitstestung, eine Keimzahl von einer Katheterspitze, eine Grammorphologie zusammen mit ihrer Menge und einen positiven molekularen Nachweis neben dem Ct-Wert, aus dem er abgelesen wurde. Sie zeigen,

* wie mikrobiologische Daten in FHIR abgebildet werden,
* wie ein vollständiger Befund aussieht,
* wie die Ressourcen einander referenzieren.

**4. Fachliche Hinweise — worauf bei einer Auswertung zu achten ist**

Vier Themen entscheiden darüber, ob mikrobiologische Daten richtig gelesen werden:

* [Profilauswahl und Abgrenzung](profilauswahl-und-abgrenzung.md) — welches Profil welche Aussage trägt. Das wiegt bei negativen Befunden am schwersten, denn „negativ" sind hier vier verschiedene Aussagen: kein Wachstum in der Kultur, ein gesuchtes und nicht gefundenes Ziel, ein bewerteter Erreger, der die Kriterien einer Resistenzkategorie nicht erfüllt, und eine Untersuchung, die überhaupt kein verwertbares Ergebnis lieferte. Wer sie zusammenzählt, erhält einen falschen Nenner.
* [Interpretation](interpretation.md) — wie ein Empfindlichkeitsergebnis bewertet wird und auf welcher Norm die Bewertung beruht. S, I und R sind zwischen Standorten nur vergleichbar, wenn das zugrunde liegende Regelwerk bekannt ist; deshalb wird es am Ergebnis mitgeführt.
* [FHIR-Profile – Hinweise zur Modellierung](fhir-profile.md) — wie die Schritte eines diagnostischen Ablaufs verknüpft sind. Jede Abfrage, die ein Isolat von der Kultur bis zur Empfindlichkeit verfolgt, hängt an diesen Beziehungen, und die drei bedeuten Verschiedenes: `triggeredBy` eine ausgelöste Folgeuntersuchung, `derivedFrom` ein abgeleitetes Ergebnis, `hasMember` ein Panel.
* [Probe](probe.md) — woraus gemessen wurde und welches Modul diese Beschreibung führt.

Eine Falle sei hier ausdrücklich genannt, weil sie an der einzelnen Ressource nicht zu sehen ist: Eine grobe mikroskopische Morphologie wie **grampositives Kokkus** ist in SNOMED CT ein Organismus-Code und damit auch Mitglied des Organismus-ValueSets, das die Identifizierung verwendet. Eine Abfrage „welche Organismen wurden identifiziert" muss deshalb über Profil oder Untersuchungscode filtern und nicht über `value[x]` allein, sonst zählt sie morphologische Gruppen als Spezies. Die Untersuchungscodes selbst sind disjunkt; mit dem richtigen Filter bleibt also keine Mehrdeutigkeit.

