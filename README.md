## Medizininformatik Initiative - Kerndatensatz - Erweiterungsmodul Mikrobiologie

### Übersicht

[![FHIR Project on GitHub.com](https://img.shields.io/badge/FHIR_project_on_GitHub.com-kerndatensatzmodul--mikrobiologie-green)](https://github.com/medizininformatik-initiative/kerndatensatzmodul-mikrobiologie)

[![IG Build](https://github.com/medizininformatik-initiative/kerndatensatzmodul-mikrobiologie/actions/workflows/ig-publisher.yml/badge.svg)](https://github.com/medizininformatik-initiative/kerndatensatzmodul-mikrobiologie/actions/workflows/ig-publisher.yml)

Das vorliegende Projekt beschreibt die FHIR-Spezifikation des Erweiterungsmoduls 'Mikrobiologie', welches den Kerndatensatz der Medizininformatik-Initiative um die mikrobiologische Diagnostik ergänzt. Die hier veröffentlichten FHIR-Profile und ImplementationGuides dienen als zentrale und verbindliche Spezifikation für die syntaktische und semantische Kodierung der Modulinhalte.

### Status:

**Aktuelle stabile Version: 2025.0.2**
[Package](https://simplifier.net/packages/de.medizininformatikinitiative.kerndatensatz.mikrobiologie/2025.0.2)

**Aktuelle Ballot-Fassung: 2027.0.0-ballot** — eingefroren am 2026-09-14
[Gerenderter Leitfaden](https://medizininformatik-initiative.github.io/kerndatensatzmodul-mikrobiologie/branches/v2027.0.0-ballot.rc1/de/index.html) · [Änderungen](https://medizininformatik-initiative.github.io/kerndatensatzmodul-mikrobiologie/branches/v2027.0.0-ballot.rc1/de/changes.html) · [Tag](https://github.com/medizininformatik-initiative/kerndatensatzmodul-mikrobiologie/releases/tag/v2027.0.0-ballot)

Das Simplifier-Paket folgt mit der Veröffentlichung des Release-Entwurfs;
publiziert ist bislang [2027.0.0-alpha.5](https://simplifier.net/packages/de.medizininformatikinitiative.kerndatensatz.mikrobiologie/2027.0.0-alpha.5).

**Entwicklungsstand**
[Gerenderter Leitfaden aus main](https://medizininformatik-initiative.github.io/kerndatensatzmodul-mikrobiologie/) · [CI-Builds von main](https://github.com/medizininformatik-initiative/kerndatensatzmodul-mikrobiologie/actions/workflows/ig-publisher.yml?query=branch%3Amain)

Hier erscheinen Änderungen, bevor sie in einer Version publiziert sind.

<!-- Reifegrad: -->

Alle veröffentlichten FHIR-Artefakte innerhalb des Projektes verfügen über einen Status, durch welchen der jeweilige Reifegrad abgeleitet werden kann.
Profile mit dem Status 'Draft' wurden noch nicht ballotiert und können noch diversen und substantiellen Änderungen unterliegen. Verpflichtende und ballotierte Ergebnisse sind unter dem Tab 'Packages' zu finden.

Im Zuge eines Harmonisierungsprozesses zwischen RKI, MIO42 und MII wurde das mikrobiologische Datenmodell grundlegend überarbeitet und die Abstimmung auf den europäischen Kontext (EHDS) ausgeweitet. Sechs Punkte sind im Leitfaden bewusst offengelassen und als Ballotfragen zur Kommentierung gestellt; das ballotierte Release 2027.0.0 folgt nach deren Auswertung.

### Mitwirkungs- und Kommentierungsmöglichkeiten

* Kommentareinreichung via [GitHub](https://github.com/medizininformatik-initiative/kerndatensatzmodul-mikrobiologie)
* Diskussionsforum im int. [FHIR-Chat](https://chat.fhir.org/#narrow/stream/179307-german.2Fmi-initiative)
* Teilnahme am [Interoperabilitätsforum](https://wiki.hl7.de/index.php?title=Interoperabilitätsforum)

### Kurzzusammenfassung

Das Modul beschreibt die im Labor durchgeführten Untersuchungen zum Nachweis, zur Identifizierung und zur Charakterisierung von Mikroorganismen und ihren Eigenschaften. Es bildet damit die Grundlage für eine gemeinsame Betrachtung von Infektionskrankheiten und Antibiotikaresistenzen. Die Befunde werden als eigenständige Observations modelliert; die Hauptbereiche sind Kultur (allgemein, Mikroskopie einschließlich Bartlett- und Nugent-Score, Keimzahl, Empfindlichkeit), Bestimmung (allgemein/spezifisch, Ct-Wert), quantitative Tests (Antigen/Antikörper, Titer, molekulare Pathogenlast) sowie weitere Eigenschaften als eigenständige Observations (Virulenz, Resistenzmechanismen, MRGN, voraussichtliche Empfindlichkeit, Resistenzkategorie-Status, Avidität). Klinische Chemie und Hämatologie sind Gegenstand des Basismoduls Labor.

### Wichtige Dokumente und Links
* [Beschreibung des MII-Kerndatensatzes in der Version 1.0 vom 10.3.2017 (PDF)](https://www.medizininformatik-initiative.de/sites/default/files/inline-files/MII_04_Kerndatensatz_1-0.pdf)
* [Datenmodellbeschreibung des MII-Kerndatensatzes in ART-DECOR](https://art-decor.org/art-decor/decor-project--mide-)
* [Basismodul Labor](https://github.com/medizininformatik-initiative/kerndatensatzmodul-labor)
* [GitHub Repository](https://github.com/medizininformatik-initiative/kerndatensatzmodul-mikrobiologie)

### Autoren und Ansprechpartner

In alphabetischer Reihenfolge:

* Claas Baier (Medizinische Hochschule Hannover)
* Martin Boeker (TU München)
* Karoline Buckow (MII-Koordinationsstelle)
* Cora Drenkhahn (Universität zu Lübeck)
* Benjamin Gebel (Universitätsklinikum Schleswig-Holstein)
* Ludwig Christian Hinske (Universitätsklinikum Augsburg)
* Franziska Klepka (MII-Koordinationsstelle)
* Eugenia Rinaldi (Charité Berlin / BIH)
* Norbert Thoma (Charité Berlin / Institut für Hygiene und Umweltmedizin)
* Kutaiba Saleh (Universitätsklinikum Jena)
* Hauke Tönnies (Universitätsklinikum Münster)
* Patrick Werner (HL7 Deutschland)
* Alexander Zautke (HL7 Deutschland)
