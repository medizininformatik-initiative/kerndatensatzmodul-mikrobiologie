# Startseite - MII Implementation Guide Microbiology v2027.0.0-ballot.rc1

* [**Inhaltsverzeichnis**](toc.md)
* **Startseite**

## Startseite

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/ImplementationGuide/mii-ig-mikrobiologie | *Version*:2027.0.0-ballot.rc1 |
| Active Stand: 2026-09-10 | *Maschinenlesbarer Name*:MII_IG_Mikrobiologie |

### Einleitung

Diese Spezifikation beschreibt die FHIR-Repräsentation des Kerndatensatz-(KDS-)Moduls **Mikrobiologie** der Medizininformatik-Initiative (MII). Sie beschreibt die Anwendungsfälle des Moduls sowie die zugehörigen FHIR-Profile, Extensions und Terminologie-Ressourcen in ihrer verbindlichen Form. Der MII-Kerndatensatz dient der standardisierten Nutzung klinischer Routinedaten für die medizinische Forschung.

Die vorliegende Spezifikation beschreibt die FHIR-Repräsentation des Kerndatensatz Moduls 'Mikrobiologie' der Medizininformatik-Initiative. Im Folgenden werden die Use-Case des Moduls sowie die dazuhegörigen FHIR-Profile und Terminologie-Ressourcen in ihrer verbindlichen Form beschrieben.

Das Modul beschreibt die Untersuchungen, die in Laboratorien zum Nachweis, zur Identifizierung und zur Charakterisierung von Mikroorganismen und deren Eigenschaften durchgeführt werden. Es ist von entscheidender Bedeutung, da es die Grundlage für eine gemeinsame Untersuchung von Infektionskrankheiten und Antibiotikaresistenzen bildet, die zu globalen Gesundheitsnotfällen führen und zu den Hauptprioritäten der [WHO](http://www.who.int) gehören.

**Hinweis zum Stand des zugrunde liegenden Modells.** Im Rahmen eines Harmonisierungsprozesses zwischen dem RKI, MIO42 und der MII wurde das Mikrobiologie-Datenmodell grundlegend überarbeitet; die Abstimmungen wurden auf den europäischen Kontext (EHDS) ausgeweitet.

Dieses europäische Modell ist **noch nicht final**. Der vorliegende Release bildet seinen aktuellen Stand so genau ab, wie es eine implementierbare Spezifikation zulässt: Wo die zugrunde liegenden Abstimmungen eine Frage offen lassen, benennt dieser Leitfaden die getroffene Entscheidung und ihre Begründung. Bewusst offen gelassene Punkte stehen unter [Ballotfragen](#ballotfragen), zu denen wir um Rückmeldung bitten. Implementierende sollten in den betroffenen Bereichen mit Änderungen rechnen.

### Zielgruppe

Dieser Implementierungsleitfaden richtet sich an:

##### Implementierende

Für Datenmanagement und Integration in Datenintegrationszentren (DIZ), Software-Entwickelnde und System-Architekt:innen, die FHIR-basierte Lösungen umsetzen.

* → [Profile](profiles.md) — die verbindlichen Einschränkungen
* → [Anleitung für Implementierende](implementer-guidance.md) — Konformität, Artefakte, Validierung
* → [Logische Modelle](logical-models.md) und [UML-Diagramme](uml-diagrams.md) — die konzeptuelle Sicht

##### Forschende

Für Wissenschaftler:innen, die mit MII-Daten arbeiten.

* → [Anleitung für Forschende](researcher-guidance.md) — wo die Auswertung beginnt
* → [Profilauswahl und Abgrenzung](profilauswahl-und-abgrenzung.md) — welches Profil welche Aussage trägt und was ein negatives Ergebnis bedeutet
* → [Beispiele](examples.md) — wie die Daten in der Praxis aussehen

Das Erweiterungsmodul Mikrobiologie 2027 modelliert mikrobiologische Befunde als eigenständige Observationen. Die wichtigsten Domänen sind:

* Kultur (allgemein, Mikroskopie inkl. Bartlett-/Nugent-Score, Keimzahl, Empfindlichkeit)
* Bestimmung (allgemein/spezifisch, Ct-Wert)
* Quantitative tests (Antigen/Antikoerper, Titer, molekulare Pathogenlast)
* Weitere Eigenschaften (Virulenz, Resistenzmechanismus, MRGN, voraussichtliche Empfindlichkeit, MRE Klasse, Aviditaet)

Komponenten aus Observationen wurden in dieser Version fachlich in separate Profile überführt.

| | |
| :--- | :--- |
| Datum | noch nicht veröffentlicht |
| Version | 2027.0.0-ballot.rc1 (CalVer`JJJJ.n.n`) |
| Status | active |
| Realm | DE |

### Ballotfragen

Dies ist ein Ballot-Kandidat. Die folgenden Punkte sind bewusst offen gelassen; wir bitten während des Ballots um Rückmeldung dazu. Jeder ist auf der Seite vollständig dargestellt, zu der er gehört.

1. **[Entsteht immer eine Specimen-Ressource?](probe.md#ballot-question-1)**— jedes Untersuchungsprofil dieses Moduls verlangt`Observation.specimen`.
1. **[Ist die Färbetechnik allein über `Specimen` darstellbar?](StructureDefinition-mii-pr-mikrobio-mikroskopie.md#ballot-question-2)**— das europäische Datenmodell legt sie nach`Specimen.processing`; wir fragen, ob das implementierbar ist.
1. **[Pflicht-Temperaturbedingungen an `Specimen.processing`](probe.md#ballot-question-3)**— aus dem Bioproben-Basisprofil geerbt, ohne Aussage für die mikrobiologische Aufarbeitung.
1. **[Sind Bebrütungsdauer und -temperatur über `Specimen.processing` darstellbar?](probe.md#ballot-question-4)**— FHIR und die MII liefern die Bausteine; die Frage ist, ob Standorte sie befüllen können.
1. **[Komponente oder `hasMember` für eine semiquantitative Menge?](StructureDefinition-mii-pr-mikrobio-mikroskopie.md#ballot-question-5)**— das europäische Datenmodell lässt es offen; eine Komponente dreht eine Entscheidung dieses Zyklus zurück.
1. **[Können Sie zu jedem Befund `Observation.method` liefern?](profilauswahl-und-abgrenzung.md#ballot-question-6)**— das Whitepaper verlangt es immer, dieser Leitfaden empfiehlt es nur, und Ihre Antwort entscheidet mehr als eine Frage.

### Inhalt dieses Leitfadens

* **[Anleitung](guidance.md)** — Einstieg und fachliche Hinweise.
* **Konformität** — die KDS-weiten Konformitätsregeln (Anforderungssprache, Must-Support, Umgang mit fehlenden Daten) pflegt zentral das [Meta-Modul](https://github.com/medizininformatik-initiative/kerndatensatz-meta/wiki/Conformance); die modul-spezifischen Aspekte zu [Sicherheit und Datenschutz](security-and-privacy.md) sind Teil dieses Leitfadens.
* **[Profile](profiles.md)** und die weiteren **[Artefakt-Seiten](artifacts.md)** — die technischen Artefakte.
* **[Beispiele](examples.md)** — Beispielinstanzen.
* **[Abhängigkeiten](ImplementationGuide-mii-ig-mikrobiologie.md)** — die ImplementationGuide-Ressource mit Abhängigkeitstabelle, versionsübergreifender Analyse und Urheberrechtshinweisen.

### Verwandte Leitfäden

Dieses Modul ist Teil des MII-Kerndatensatzes; die weiteren KDS-Module und ihre Abhängigkeiten sind unter [medizininformatik-initiative.de](https://www.medizininformatik-initiative.de/) beschrieben.

Dieses Modul baut auf dem [KDS-Modul Laborbefund](https://simplifier.net/medizininformatikinitiative-modullabor) auf; die formale Abhängigkeit steht als `de.medizininformatikinitiative.kerndatensatz.laborbefund` in `sushi-config.yaml`. Die Bezüge zu den Modulen Molekulargenetischer Befundbericht, Biobank, Fall und Strukturdaten beschreibt die Seite [Anleitung für Implementierende](implementer-guidance.md).

### Impressum

Dieser Leitfaden ist im Rahmen der Medizininformatik-Initiative erstellt worden und unterliegt per Governance-Prozess dem Abstimmungsverfahren des Interoperabilitätsforums und der Technischen Komitees von HL7 Deutschland e. V.

### Ansprechpartner

Fragen zu dieser Publikation können im HL7-FHIR-Zulip [chat.fhir.org](https://chat.fhir.org) im Stream `german/mi-initiative` oder im MII-Zulip [mii.zulipchat.com](https://mii.zulipchat.com/) im Stream `MII-Kerndatensatz` gestellt werden. Anmerkungen und Kritik werden als **Issues** auf [GitHub](https://github.com/medizininformatik-initiative/kerndatensatzmodul-mikrobiologie/issues) entgegengenommen.

* Eugenia Rinaldi, Charité
* Karoline Buckow, TMF – Technologie- und Methodenplattform für die vernetzte medizinische Forschung e. V.

### Autor:innen (in alphabetischer Reihenfolge)

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

### Urheberrecht und Lizenz

© 2019+ TMF e. V., Charlottenstraße 42, 10117 Berlin

Dieses Werk ist lizenziert unter der [Creative Commons Namensnennung 4.0 International Lizenz (CC BY 4.0)](https://creativecommons.org/licenses/by/4.0/deed.de).

Für die Nutzungsrechte der zugrunde liegenden FHIR-Technologie siehe die FHIR-Basisspezifikation.

Einige der verwendeten Codesysteme werden von anderen Organisationen veröffentlicht und gepflegt; es gilt das Urheberrecht der jeweiligen Herausgeber.

### Haftungsausschluss

Der Inhalt dieses Dokuments ist öffentlich. Bitte beachten Sie, dass Teile dieses Dokuments auf FHIR Version R4 basieren, dessen Urheberrecht bei HL7 International liegt.

Obwohl diese Publikation mit größter Sorgfalt erstellt wurde, können die Autor:innen keine Haftung für direkte oder indirekte Schäden übernehmen, die aus dem Inhalt dieser Spezifikation entstehen könnten.

