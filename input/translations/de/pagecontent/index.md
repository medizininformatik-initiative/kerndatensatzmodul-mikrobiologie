<!-- markdownlint-disable MD041 -->
<!--
  HOME PAGE — GERMAN TRANSLATION of the source page input/pagecontent/index.md
  (English is the IG's default language). The structure follows the standard MII
  module IG page set (MII IG template and kerndatensatz-basis). Replace the
  {{...}} placeholders and the bracketed [TODO ...] prompts with your module's
  real content, then delete these HTML comments. Keep the section headings — a
  reviewer expects them. See docs/recipes/add-translation.md; keep this file in
  step with the English source.
-->

### Einleitung

Diese Spezifikation beschreibt die FHIR-Repräsentation des
Kerndatensatz-(KDS-)Moduls **Mikrobiologie** der Medizininformatik-Initiative
(MII). Sie beschreibt die Anwendungsfälle des Moduls sowie die zugehörigen
FHIR-Profile, Extensions und Terminologie-Ressourcen in ihrer verbindlichen
Form. Der MII-Kerndatensatz dient der standardisierten Nutzung klinischer
Routinedaten für die medizinische Forschung.

<!-- MIGRATED verbatim from Simplifier page: MIIIGModulMikrobiologie/Index.page.md  -->
Die vorliegende Spezifikation beschreibt die FHIR-Repräsentation des Kerndatensatz Moduls 'Mikrobiologie' der Medizininformatik-Initiative.
Im Folgenden werden die Use-Case des Moduls sowie die dazuhegörigen FHIR-Profile und Terminologie-Ressourcen in ihrer verbindlichen Form beschrieben.

Das Modul beschreibt die Untersuchungen, die in Laboratorien zum Nachweis, zur
Identifizierung und zur Charakterisierung von Mikroorganismen und deren
Eigenschaften durchgeführt werden. Es ist von entscheidender Bedeutung, da es die
Grundlage für eine gemeinsame Untersuchung von Infektionskrankheiten und
Antibiotikaresistenzen bildet, die zu globalen Gesundheitsnotfällen führen und zu
den Hauptprioritäten der [WHO](http://www.who.int "WHO") gehören.

<div class="ig-highlight ig-highlight-orange" markdown="1">
**Hinweis.** Im Rahmen eines Harmonisierungsprozesses zwischen dem RKI, MIO42 und
der MII wurde das Mikrobiologie-Datenmodell grundlegend überarbeitet. Die
Abstimmungen wurden zusätzlich auf den europäischen Kontext (EHDS) ausgeweitet.
Der vorliegende Alpha-Release bildet den aktuellen Stand der erzielten
Abstimmungsergebnisse ab. Ein offiziell ballotiertes Release ist für Ende des
Jahres vorgesehen.
</div>

<!-- MIGRATED verbatim from Simplifier page: MIIIGModulMikrobiologie/Beschreibung-Modul-Mikrobiologie.page.md  -->
Das Erweiterungsmodul Mikrobiologie 2027 modelliert mikrobiologische Befunde als
eigenständige Observationen. Die wichtigsten Domänen sind:

- Kultur (allgemein, Mikroskopie inkl. Barlett-/Nugent-Score, Keimzahl, Empfindlichkeit)
- Bestimmung (allgemein/spezifisch, Ct-Wert)
- Quantitative tests (Antigen/Antikoerper, Titer, molekulare Pathogenlast)
- Weitere Eigenschaften (Virulenz, Resistenzmechanismus, MRGN, voraussichtliche Empfindlichkeit, MRE Klasse, Aviditaet)

Komponenten aus Observationen wurden in dieser Version fachlich in separate
Profile überführt.

| Veröffentlichung |               |
|------------------|---------------|
| Datum            | TODO:REVIEW (Releasedatum — wird zu Gate D gesetzt) |
| Version          | 2027.0.0-alpha.6 (CalVer `JJJJ.n.n`) |
| Status           | active        |
| Realm            | DE            |

### Zielgruppe

Dieser Implementierungsleitfaden richtet sich an:

<div class="ig-highlight ig-highlight-blue">
<h5>Implementierende</h5>
<p>Datenintegrationszentren (DIZ), Software-Entwickelnde und System-Architekt:innen, die FHIR-basierte Lösungen umsetzen.<br/>
→ siehe <a href="profiles.html">Profile</a> und <a href="logical-models.html">Logische Modelle</a>.</p>
</div>

<div class="ig-highlight ig-highlight-green">
<h5>Forschende</h5>
<p>Wissenschaftler:innen, die KDS-Daten für die medizinische Forschung nutzen.<br/>
→ siehe <a href="guidance.html">Anleitung</a>.</p>
</div>

### Inhalt dieses Leitfadens

- **[Anleitung](guidance.html)** — Einstieg und fachliche Hinweise.
- **Konformität** — die KDS-weiten Konformitätsregeln (Anforderungssprache,
  Must-Support, Umgang mit fehlenden Daten) pflegt zentral das
  [Meta-Modul](https://github.com/medizininformatik-initiative/kerndatensatz-meta/wiki/Conformance);
  die modul-spezifischen Aspekte zu
  [Sicherheit und Datenschutz](security-and-privacy.html) sind Teil dieses
  Leitfadens.
- **[Profile](profiles.html)** und die weiteren
  **[Artefakt-Seiten](artifacts.html)** — die technischen Artefakte.
- **[Beispiele](examples.html)** — Beispielinstanzen.
- **[Abhängigkeiten](ImplementationGuide-mii-ig-mikrobiologie.html)** — die
  ImplementationGuide-Ressource mit Abhängigkeitstabelle, versionsübergreifender
  Analyse und Urheberrechtshinweisen.

### Verwandte Leitfäden

Dieses Modul ist Teil des MII-Kerndatensatzes; die weiteren KDS-Module und ihre
Abhängigkeiten sind unter
[medizininformatik-initiative.de](https://www.medizininformatik-initiative.de/)
beschrieben.

Dieses Modul baut auf dem
[KDS-Modul Laborbefund](https://simplifier.net/medizininformatikinitiative-modullabor)
auf; die formale Abhängigkeit steht als `de.medizininformatikinitiative.kerndatensatz.laborbefund`
in `sushi-config.yaml`. Die Bezüge zu den Modulen Molekulargenetischer
Befundbericht, Biobank, Fall und Strukturdaten beschreibt die Seite
[Anleitung für Implementierende](implementer-guidance.html).

Weitere FHIR-Implementierungsleitfäden finden Sie im offiziellen
**[FHIR IG Registry](https://fhir.org/guides/registry/)** (Quelle:
[`FHIR/ig-registry`](https://github.com/FHIR/ig-registry)).

### Impressum

Dieser Leitfaden ist im Rahmen der Medizininformatik-Initiative erstellt worden
und unterliegt per Governance-Prozess dem Abstimmungsverfahren des
Interoperabilitätsforums und der Technischen Komitees von HL7 Deutschland e. V.

### Ansprechpartner

Fragen zu dieser Publikation können im HL7-FHIR-Zulip
[chat.fhir.org](https://chat.fhir.org) im Stream `german/mi-initiative` oder im
MII-Zulip [mii.zulipchat.com](https://mii.zulipchat.com/) im Stream
`MII-Kerndatensatz` gestellt werden.
Anmerkungen und Kritik werden als *Issues* auf
[GitHub](https://github.com/medizininformatik-initiative/kerndatensatzmodul-mikrobiologie/issues) entgegengenommen.

<!-- MIGRATED verbatim from Simplifier page: MIIIGModulMikrobiologie/Index.page.md  -->
- Eugenia Rinaldi, Charité
- Karoline Buckow, TMF – Technologie- und Methodenplattform für die vernetzte
  medizinische Forschung e. V.

### Autor:innen (in alphabetischer Reihenfolge)

<!-- MIGRATED verbatim from Simplifier page: MIIIGModulMikrobiologie/Index.page.md  -->
- Claas Baier (Medizinische Hochschule Hannover)
- Martin Boeker (TU München)
- Karoline Buckow (MII-Koordinationsstelle)
- Cora Drenkhahn (Universität zu Lübeck)
- Benjamin Gebel (Universitätsklinikum Schleswig-Holstein)
- Ludwig Christian Hinske (Universitätsklinikum Augsburg)
- Franziska Klepka (MII-Koordinationsstelle)
- Eugenia Rinaldi (Charité Berlin / BIH)
- Norbert Thoma (Charité Berlin / Institut für Hygiene und Umweltmedizin)
- Kutaiba Saleh (Universitätsklinikum Jena)
- Hauke Tönnies (Universitätsklinikum Münster)
- Patrick Werner (HL7 Deutschland)
- Alexander Zautke (HL7 Deutschland)

### Urheberrecht und Lizenz

© 2019 TMF e. V., Charlottenstraße 42, 10117 Berlin

TODO:REVIEW — die Simplifier-Quellseite nennt 2019 als Copyright-Jahr, die
`copyrightYear` in `sushi-config.yaml` dagegen 2026. Beide Werte stammen aus der
Quelle und widersprechen sich; die Migration hat keinen davon geändert (Gate A).

Dieses Werk ist lizenziert unter der
[Creative Commons Namensnennung 4.0 International Lizenz (CC BY 4.0)](https://creativecommons.org/licenses/by/4.0/deed.de).

Für die Nutzungsrechte der zugrunde liegenden FHIR-Technologie siehe die
FHIR-Basisspezifikation.

Einige der verwendeten Codesysteme werden von anderen Organisationen
veröffentlicht und gepflegt; es gilt das Urheberrecht der jeweiligen Herausgeber.

### Haftungsausschluss

Der Inhalt dieses Dokuments ist öffentlich. Bitte beachten Sie, dass Teile
dieses Dokuments auf FHIR Version R4 basieren, dessen Urheberrecht bei
HL7 International liegt.

Obwohl diese Publikation mit größter Sorgfalt erstellt wurde, können die
Autor:innen keine Haftung für direkte oder indirekte Schäden übernehmen, die
aus dem Inhalt dieser Spezifikation entstehen könnten.
