<!-- markdownlint-disable MD041 -->
<!-- DERIVED:no-source source=MIIIGModulMikrobiologie/Technische-Implementierung/FHIR-Profile/Kultur/Index.page.md gate=C -->
> **Während der Migration geschrieben — vor der Veröffentlichung prüfen.** TODO:REVIEW — die
> englische Standardfassung dieser Seite ist eine Maschinenübersetzung dieses deutschen Textes.
> Diese deutsche Fassung trägt den Originalwortlaut der Simplifier-Quellseite; zu prüfen ist die
> englische Entsprechung (Gate C).
{: .ig-highlight .ig-highlight-blue}

<!-- Deutsche Übersetzung von input/pagecontent/profiles.md (aufgeteilt aus der
     früheren Kombi-Seite profiles-and-extensions.md gemäß der abgestimmten
     TF-KDS-Menüstruktur — eine Seite je Artefakt-Typ). -->
Diese Seite listet die FHIR-Profile des Moduls **Mikrobiologie**. Als
Ausgangspunkt liefert die Vorlage ein minimales Beispielprofil,
die unten aufgeführten Profile — ersetzen Sie es
durch die Profile Ihres Moduls (Namenskonvention `MII_PR_<Modul>_<Name>`, siehe
[`docs/recipes/add-a-profile.md`](https://github.com/medizininformatik-initiative/kerndatensatzmodul-mikrobiologie/blob/main/docs/recipes/add-a-profile.md) in diesem Repository sowie die
MII-Namenskonventionen). Die Extensions des Moduls stehen auf der Seite
[Extensions](extensions.html).

<!-- MIGRATED verbatim from Simplifier page: MIIIGModulMikrobiologie/Technische-Implementierung/FHIR-Profile/Kultur/Index.page.md  -->
In diesem Abschnitt werden kulturbezogene Beobachtungen dargestellt (allgemein, Mikroskopie inkl. Barlett-/Nugent-Score, Keimzahl, Empfindlichkeit).

Die neue 2027-Modellierung verwendet eigenständige Observation-Profile statt `component`-Abbildungen.

<!-- MIGRATED verbatim from Simplifier page: MIIIGModulMikrobiologie/Technische-Implementierung/FHIR-Profile/Bestimmung/Index.page.md  -->
In diesem Abschnitt werden Bestimmungs-Beobachtungen beschrieben (allgemeine/spezifische Bestimmung, Ct-Wert).

<!-- MIGRATED verbatim from Simplifier page: MIIIGModulMikrobiologie/Technische-Implementierung/FHIR-Profile/Quantitative-tests/Index.page.md  -->
In diesem Abschnitt werden quantitative Tests beschrieben (Antigen/Antikoerper, Titer, molekulare Pathogenlast).

<!-- MIGRATED verbatim from Simplifier page: MIIIGModulMikrobiologie/Technische-Implementierung/FHIR-Profile/Weitere-Eigenschaften/Index.page.md  -->
In diesem Abschnitt werden weitere Eigenschaften als eigenständige Observationen beschrieben (Virulenz, Resistenzmechanismus, MRGN, voraussichtliche Empfindlichkeit, MRE Klasse, Aviditaet).
