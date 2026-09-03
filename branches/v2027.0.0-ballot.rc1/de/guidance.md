# Anleitung - MII Implementation Guide Microbiology v2027.0.0-alpha.6

* [**Inhaltsverzeichnis**](toc.md)
* **Anleitung**

## Anleitung

 Diese Seite enthält Übersetzungen aus der Originalsprache, in der der Leitfaden verfasst wurde. Informationen zu diesen Übersetzungen und Anweisungen zum Abgeben von Feedback zu den Übersetzungen finden Sie [hier](translationinfo.md). 

Das Modul **Mikrobiologie** fokussiert den Nachweis, die Charakterisierung und Beschreibung von Mikroorganismen (z. B. Bakterien, Viren, Pilzen, Prionen und Protozoen). Das Informationsmodell ermöglicht eine gemeinsame und standardisierte Beschreibung verschiedener Untersuchungen in Form von FHIR Observations. Ziel ist die Abdeckung der häufigsten mikrobiologischen Laborverfahren.

Die Ergebnisse von Empfindlichkeitstests können sowohl gemäß den Definitionen des European Committee on Antimicrobial Susceptibility Testing ([EUCAST](https://www.eucast.org/)) als auch des Clinical & Laboratory Standards Institute ([CLSI](https://clsi.org/)) angegeben werden. Ein eigener DiagnosticReport fasst die Ergebnisse zusammen, die zu einem mikrobiologischen Befund gehören.

Für alle Untersuchungen, die dieses Informationsmodell nicht abdeckt, kann das [KDS-Modul Labor](https://simplifier.net/medizininformatikinitiative-modullabor) verwendet werden.

Die ausführlich behandelten Themen haben eigene Seiten:

* **[Profilauswahl und Abgrenzung](profilauswahl-und-abgrenzung.md)** — welches Profil welche Aussage trägt und wie ein negatives Ergebnis ausgedrückt wird
* **[Interpretation](interpretation.md)** — die Empfindlichkeitskategorien, die zugrunde liegende Norm und das Verhältnis von Messwert und Bewertung
* **[FHIR-Profile – Modellierungshinweise](fhir-profile.md)** — die Konventionen hinter den Profilen, einschließlich der Abbildung diagnostischer Ketten
* **[Probe](probe.md)** — wie das Probenmaterial abgebildet wird und welches Modul es verantwortet
* **[Datensätze und Beschreibungen](logical-models.md)** — die Datenelemente des Moduls als logische Modelle
* **[UML-Diagramme](uml-diagrams.md)** — die Datenmodelle und ihre Beziehungen
* **[Anleitung für Implementierende](implementer-guidance.md)** — technische Hinweise für DIZ-Implementierende und die Bezüge zu anderen KDS-Modulen

-------

Für die KDS-weiten Konformitätsanforderungen siehe die [Konformitätsregeln des Meta-Moduls](https://github.com/medizininformatik-initiative/kerndatensatz-meta/wiki/Conformance); für die technischen Artefakte siehe [Profile](profiles.md).

