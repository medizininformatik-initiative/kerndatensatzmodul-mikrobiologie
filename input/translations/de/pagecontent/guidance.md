<!-- markdownlint-disable MD041 -->
<!-- Nabe des Abschnitts "Anleitung", nach dem Muster von kerndatensatzmodul-labor:
     zuerst die Substanz, dann eine Zeile je Unterseite. Das Template-Gerüst stellte
     seine zwei Überschriften und Linklisten voran und den modul-eigenen Text ans
     Ende, wo ihn niemand liest.
     HINWEIS zu "Datensätze und Beschreibungen": der Eintrag zielt auf
     logical-models.html, dieselbe Seite wie Artefakte → Logische Modelle. Keiner
     der Anker der Artefakt-Übersicht ist als Linkziel nutzbar — siehe
     docs/page-structure.md. Das ist ein Bau-Detail und gehört hierher, nicht in
     den gerenderten Text. -->

<!-- MIGRATED verbatim from Simplifier page: MIIIGModulMikrobiologie/Anwendungsfaelle-Informationsmodell/Beschreibung-von-Szenarien-fuer-die-Anwendung-der-Module.page.md  -->
Das Modul **Mikrobiologie** fokussiert den Nachweis, die Charakterisierung und
Beschreibung von Mikroorganismen (z. B. Bakterien, Viren, Pilzen, Prionen und
Protozoen). Das Informationsmodell ermöglicht eine gemeinsame und standardisierte
Beschreibung verschiedener Untersuchungen in Form von FHIR Observations. Ziel ist
die Abdeckung der häufigsten mikrobiologischen Laborverfahren.

Die Ergebnisse von Empfindlichkeitstests können sowohl gemäß den Definitionen des
European Committee on Antimicrobial Susceptibility Testing
([EUCAST](https://www.eucast.org/ "EUCAST")) als auch des Clinical & Laboratory
Standards Institute ([CLSI](https://clsi.org/ "CLSI")) angegeben werden. Ein
eigener DiagnosticReport fasst die Ergebnisse zusammen, die zu einem
mikrobiologischen Befund gehören.

Für alle Untersuchungen, die dieses Informationsmodell nicht abdeckt, kann das
[KDS-Modul Labor](https://simplifier.net/medizininformatikinitiative-modullabor "KDS-Modul Labor")
verwendet werden.

Die ausführlich behandelten Themen haben eigene Seiten:

* **[Profilauswahl und Abgrenzung](profilauswahl-und-abgrenzung.html)** — welches
  Profil welche Aussage trägt und wie ein negatives Ergebnis ausgedrückt wird
* **[Interpretation](interpretation.html)** — die Empfindlichkeitskategorien, die
  zugrunde liegende Norm und das Verhältnis von Messwert und Bewertung
* **[FHIR-Profile – Modellierungshinweise](fhir-profile.html)** — die Konventionen
  hinter den Profilen, einschließlich der Abbildung diagnostischer Ketten
* **[Probe](probe.html)** — wie das Probenmaterial abgebildet wird und welches
  Modul es verantwortet
* **[Datensätze und Beschreibungen](logical-models.html)** — die Datenelemente des
  Moduls als logische Modelle
* **[UML-Diagramme](uml-diagrams.html)** — die Datenmodelle und ihre Beziehungen
* **[Anleitung für Implementierende](implementer-guidance.html)** — technische
  Hinweise für DIZ-Implementierende und die Bezüge zu anderen KDS-Modulen

---
Für die KDS-weiten Konformitätsanforderungen siehe die
[Konformitätsregeln des Meta-Moduls](https://github.com/medizininformatik-initiative/kerndatensatz-meta/wiki/Conformance);
für die technischen Artefakte siehe [Profile](profiles.html).
