# Profile - MII Implementation Guide Microbiology v2027.0.0-ballot.rc1

* [**Inhaltsverzeichnis**](toc.md)
* **Profile**

## Profile

Diese Seite listet die FHIR-Profile des Moduls **Mikrobiologie**. Sie folgen der MII-Namenskonvention `MII_PR_<Modul>_<Name>`. Die Extensions des Moduls stehen auf der Seite [Extensions](extensions.md).

Die 2027er Modellierung verwendet eigenständige Observation-Profile statt `component`-Abbildungen. Die Untersuchungsprofile sind in vier Familien gegliedert, daneben stehen der Befund und die Probe; die Modellierungshinweise stehen auf [FHIR-Profile – Modellierungshinweise](fhir-profile.md), die Abgrenzung zwischen ihnen auf [Profilauswahl und Abgrenzung](profilauswahl-und-abgrenzung.md).

### Kultur

In diesem Abschnitt werden kulturbezogene Beobachtungen dargestellt (allgemein, Mikroskopie inkl. Bartlett-/Nugent-Score, Keimzahl, Empfindlichkeit).

* [Allgemeine Kultur](StructureDefinition-mii-pr-mikrobio-allgemeine-kultur.md)
* [Spezifische Kultur](StructureDefinition-mii-pr-mikrobio-spezifische-kultur.md)
* [Allgemeine Mikroskopie](StructureDefinition-mii-pr-mikrobio-mikroskopie.md)
* [Spezifische Mikroskopie](StructureDefinition-mii-pr-mikrobio-spezifische-mikroskopie.md)
* [Bartlett-Score](StructureDefinition-mii-pr-mikrobio-bartlett-score.md)
* [Nugent-Score](StructureDefinition-mii-pr-mikrobio-nugent-score.md)
* [Keimzahl](StructureDefinition-mii-pr-mikrobio-keimzahl.md)
* [Empfindlichkeit](StructureDefinition-mii-pr-mikrobio-empfindlichkeit.md)

### Bestimmung

In diesem Abschnitt werden Bestimmungs-Beobachtungen beschrieben (allgemeine/spezifische Bestimmung, Ct-Wert).

* [Allgemeine Bestimmung (Identifizierung)](StructureDefinition-mii-pr-mikrobio-allgemeine-bestimmung.md)
* [Spezifische Bestimmung](StructureDefinition-mii-pr-mikrobio-spezifische-bestimmung.md)
* [Ct-Wert](StructureDefinition-mii-pr-mikrobio-ct-wert.md)

### Quantitative Tests

In diesem Abschnitt werden quantitative Tests beschrieben (Antigen/Antikoerper, Titer, molekulare Pathogenlast).

* [Antigen/Antikörper, quantitativ](StructureDefinition-mii-pr-mikrobio-antigen-antikoerper-quantitativ.md)
* [Titer](StructureDefinition-mii-pr-mikrobio-titer.md)
* [Molekulare Pathogenlast](StructureDefinition-mii-pr-mikrobio-molekulare-pathogenlast.md)

### Weitere Eigenschaften

In diesem Abschnitt werden weitere Eigenschaften als eigenständige Observationen beschrieben (Virulenz, Resistenzmechanismus, MRGN, voraussichtliche Empfindlichkeit, MRE Klasse, Aviditaet).

* [Virulenzfaktor](StructureDefinition-mii-pr-mikrobio-virulenzfaktor.md)
* [Resistenzmechanismen / Determinanten](StructureDefinition-mii-pr-mikrobio-resistenzmechanismen-determinanten.md)
* [MRGN-Klasse](StructureDefinition-mii-pr-mikrobio-mrgn-klasse.md)
* [Voraussichtliche Empfindlichkeit](StructureDefinition-mii-pr-mikrobio-voraussichtliche-empfindlichkeit.md)
* [Resistenzkategorie-Status](StructureDefinition-mii-pr-mikrobio-resistenzkategorie-status.md)
* [Avidität](StructureDefinition-mii-pr-mikrobio-aviditaet.md)

### Befund und Probe

Der Befund, der die Untersuchungen zusammenfasst, und die Probe, an der sie durchgeführt wurden.

* [Mikrobiologischer Befund (DiagnosticReport)](StructureDefinition-mii-pr-mikrobio-diagnostic-report.md)
* [Probe (Specimen)](StructureDefinition-mii-pr-mikrobio-probe.md)

