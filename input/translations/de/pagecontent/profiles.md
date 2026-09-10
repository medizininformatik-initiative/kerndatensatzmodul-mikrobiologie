<!-- markdownlint-disable MD041 -->
<!-- Deutsche Übersetzung von input/pagecontent/profiles.md (aufgeteilt aus der
     früheren Kombi-Seite profiles-and-extensions.md gemäß der abgestimmten
     TF-KDS-Menüstruktur — eine Seite je Artefakt-Typ). -->
Diese Seite listet die FHIR-Profile des Moduls **Mikrobiologie**. Sie folgen der
MII-Namenskonvention `MII_PR_<Modul>_<Name>`. Die Extensions des Moduls stehen
auf der Seite [Extensions](extensions.html).

Die 2027er Modellierung verwendet eigenständige Observation-Profile statt `component`-Abbildungen. Die Untersuchungsprofile sind in vier Familien gegliedert, daneben stehen der Befund und die Probe; die Modellierungshinweise stehen auf [FHIR-Profile – Modellierungshinweise](fhir-profile.html), die Abgrenzung zwischen ihnen auf [Profilauswahl und Abgrenzung](profilauswahl-und-abgrenzung.html).

### Kultur

<!-- MIGRATED verbatim from Simplifier page: MIIIGModulMikrobiologie/Technische-Implementierung/FHIR-Profile/Kultur/Index.page.md  -->
In diesem Abschnitt werden kulturbezogene Beobachtungen dargestellt (allgemein, Mikroskopie inkl. Bartlett-/Nugent-Score, Keimzahl, Empfindlichkeit).

- [Allgemeine Kultur](StructureDefinition-mii-pr-mikrobio-allgemeine-kultur.html)
- [Spezifische Kultur](StructureDefinition-mii-pr-mikrobio-spezifische-kultur.html)
- [Allgemeine Mikroskopie](StructureDefinition-mii-pr-mikrobio-mikroskopie.html)
- [Spezifische Mikroskopie](StructureDefinition-mii-pr-mikrobio-spezifische-mikroskopie.html)
- [Bartlett-Score](StructureDefinition-mii-pr-mikrobio-bartlett-score.html)
- [Nugent-Score](StructureDefinition-mii-pr-mikrobio-nugent-score.html)
- [Keimzahl](StructureDefinition-mii-pr-mikrobio-keimzahl.html)
- [Empfindlichkeit](StructureDefinition-mii-pr-mikrobio-empfindlichkeit.html)

### Bestimmung

<!-- MIGRATED verbatim from Simplifier page: MIIIGModulMikrobiologie/Technische-Implementierung/FHIR-Profile/Bestimmung/Index.page.md  -->
In diesem Abschnitt werden Bestimmungs-Beobachtungen beschrieben (allgemeine/spezifische Bestimmung, Ct-Wert).

- [Allgemeine Bestimmung (Identifizierung)](StructureDefinition-mii-pr-mikrobio-allgemeine-bestimmung.html)
- [Spezifische Bestimmung](StructureDefinition-mii-pr-mikrobio-spezifische-bestimmung.html)
- [Ct-Wert](StructureDefinition-mii-pr-mikrobio-ct-wert.html)

### Quantitative Tests

<!-- MIGRATED verbatim from Simplifier page: MIIIGModulMikrobiologie/Technische-Implementierung/FHIR-Profile/Quantitative-tests/Index.page.md  -->
In diesem Abschnitt werden quantitative Tests beschrieben (Antigen/Antikoerper, Titer, molekulare Pathogenlast).

- [Antigen/Antikörper, quantitativ](StructureDefinition-mii-pr-mikrobio-antigen-antikoerper-quantitativ.html)
- [Titer](StructureDefinition-mii-pr-mikrobio-titer.html)
- [Molekulare Pathogenlast](StructureDefinition-mii-pr-mikrobio-molekulare-pathogenlast.html)

### Weitere Eigenschaften

<!-- MIGRATED verbatim from Simplifier page: MIIIGModulMikrobiologie/Technische-Implementierung/FHIR-Profile/Weitere-Eigenschaften/Index.page.md  -->
In diesem Abschnitt werden weitere Eigenschaften als eigenständige Observationen beschrieben (Virulenz, Resistenzmechanismus, MRGN, voraussichtliche Empfindlichkeit, MRE Klasse, Aviditaet).

- [Virulenzfaktor](StructureDefinition-mii-pr-mikrobio-virulenzfaktor.html)
- [Resistenzmechanismen / Determinanten](StructureDefinition-mii-pr-mikrobio-resistenzmechanismen-determinanten.html)
- [MRGN-Klasse](StructureDefinition-mii-pr-mikrobio-mrgn-klasse.html)
- [Voraussichtliche Empfindlichkeit](StructureDefinition-mii-pr-mikrobio-voraussichtliche-empfindlichkeit.html)
- [Resistenzkategorie-Status](StructureDefinition-mii-pr-mikrobio-resistenzkategorie-status.html)
- [Avidität](StructureDefinition-mii-pr-mikrobio-aviditaet.html)

### Befund und Probe

Der Befund, der die Untersuchungen zusammenfasst, und die Probe, an der sie durchgeführt wurden.

- [Mikrobiologischer Befund (DiagnosticReport)](StructureDefinition-mii-pr-mikrobio-diagnostic-report.html)
- [Probe (Specimen)](StructureDefinition-mii-pr-mikrobio-probe.html)
