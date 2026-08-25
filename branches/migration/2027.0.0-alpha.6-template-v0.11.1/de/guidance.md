# Anleitung - MII Implementation Guide Microbiology v2027.0.0-alpha.6

* [**Inhaltsverzeichnis**](toc.md)
* **Anleitung**

## Anleitung

> **Während der Migration geschrieben — vor der Veröffentlichung prüfen.** TODO:REVIEW — die englische Standardfassung dieser Seite ist eine Maschinenübersetzung dieses deutschen Textes. Diese deutsche Fassung trägt den Originalwortlaut der Simplifier-Quellseite; zu prüfen ist die englische Entsprechung (Gate C).

Dieser Abschnitt bündelt die fachlichen Hinweise zur Umsetzung und Nutzung des Moduls **Mikrobiologie**.

### Allgemeine Umsetzungshinweise

* **[Datensätze und Beschreibungen](logical-models.md)** — die Datenelemente des Moduls, beschrieben als logische Modelle. (Dieser Eintrag teilt sein Ziel mit **Artefakte → Logische Modelle**; keiner der Anker der Artefakt-Übersicht ist als Linkziel nutzbar — siehe [`docs/page-structure.md`](https://github.com/medizininformatik-initiative/kerndatensatzmodul-mikrobiologie/blob/main/docs/page-structure.md) in diesem Repository.)
* **[UML-Diagramme](uml-diagrams.md)** — visuelle Darstellung der Datenmodelle und ihrer Beziehungen.

### Zielgruppenspezifische Hinweise

* **[Anleitung für Implementierende](implementer-guidance.md)** — technische Hinweise für DIZ-Implementierende.

Das Modul fokussiert den Nachweis, die Charakterisierung und Beschreibung von Mikroorganismen (z. B. Bakterien, Viren, Pilzen, Prionen und Protozoen). Das Informationsmodell ermöglicht eine gemeinsame und standardisierte Beschreibung verschiedener Untersuchungen in Form von FHIR Observations. Ziel ist die Abdeckung der häufigsten mikrobiologischen Laborverfahren.

Die Ergebnisse von Empfindlichkeitstests können sowohl gemäß den Definitionen des European Committee on Antimicrobial Susceptibility Testing ([EUCAST](https://www.eucast.org/)) als auch des Clinical & Laboratory Standards Institute ([CLSI](https://clsi.org/)) angegeben werden. Relevante Ergebnisse können in einem speziellen DiagnosticReport für mikrobiologische Studien gemeldet werden.

Für alle Untersuchungen, die nicht in diesem Informationsmodell enthalten sind, kann das [KDS-Modul Labor](https://simplifier.net/medizininformatikinitiative-modullabor) verwendet werden.

-------

Für die KDS-weiten Konformitätsanforderungen siehe die [Konformitätsregeln des Meta-Moduls](https://github.com/medizininformatik-initiative/kerndatensatz-meta/wiki/Conformance); für die technischen Artefakte siehe [Profile](profiles.md).

