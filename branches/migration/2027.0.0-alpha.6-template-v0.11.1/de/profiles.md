# Profile - MII Implementation Guide Microbiology v2027.0.0-alpha.6

* [**Inhaltsverzeichnis**](toc.md)
* **Profile**

## Profile

 Diese Seite enthält Übersetzungen aus der Originalsprache, in der der Leitfaden verfasst wurde. Informationen zu diesen Übersetzungen und Anweisungen zum Abgeben von Feedback zu den Übersetzungen finden Sie [hier](translationinfo.md). 

> **Während der Migration geschrieben — vor der Veröffentlichung prüfen.** TODO:REVIEW — die englische Standardfassung dieser Seite ist eine Maschinenübersetzung dieses deutschen Textes. Diese deutsche Fassung trägt den Originalwortlaut der Simplifier-Quellseite; zu prüfen ist die englische Entsprechung (Gate C).

Diese Seite listet die FHIR-Profile des Moduls **Mikrobiologie**. Als Ausgangspunkt liefert die Vorlage ein minimales Beispielprofil, die unten aufgeführten Profile — ersetzen Sie es durch die Profile Ihres Moduls (Namenskonvention `MII_PR_<Modul>_<Name>`, siehe [`docs/recipes/add-a-profile.md`](https://github.com/medizininformatik-initiative/kerndatensatzmodul-mikrobiologie/blob/main/docs/recipes/add-a-profile.md) in diesem Repository sowie die MII-Namenskonventionen). Die Extensions des Moduls stehen auf der Seite [Extensions](extensions.md).

In diesem Abschnitt werden kulturbezogene Beobachtungen dargestellt (allgemein, Mikroskopie inkl. Barlett-/Nugent-Score, Keimzahl, Empfindlichkeit).

Die neue 2027-Modellierung verwendet eigenständige Observation-Profile statt `component`-Abbildungen.

In diesem Abschnitt werden Bestimmungs-Beobachtungen beschrieben (allgemeine/spezifische Bestimmung, Ct-Wert).

In diesem Abschnitt werden quantitative Tests beschrieben (Antigen/Antikoerper, Titer, molekulare Pathogenlast).

In diesem Abschnitt werden weitere Eigenschaften als eigenständige Observationen beschrieben (Virulenz, Resistenzmechanismus, MRGN, voraussichtliche Empfindlichkeit, MRE Klasse, Aviditaet).

