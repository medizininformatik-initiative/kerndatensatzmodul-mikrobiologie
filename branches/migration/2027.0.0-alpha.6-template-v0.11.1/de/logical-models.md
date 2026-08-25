# Logische Modelle - MII Implementation Guide Microbiology v2027.0.0-alpha.6

* [**Inhaltsverzeichnis**](toc.md)
* **Logische Modelle**

## Logische Modelle

> **Während der Migration geschrieben — vor der Veröffentlichung prüfen.** TODO:REVIEW — die englische Standardfassung dieser Seite ist eine Maschinenübersetzung dieses deutschen Textes. Diese deutsche Fassung trägt den Originalwortlaut der Simplifier-Quellseite; zu prüfen ist die englische Entsprechung (Gate C).

### Logische Modelle

Die logischen Datenmodelle des Moduls **Mikrobiologie** beschreiben den fachlichen Datensatz unabhängig von der konkreten FHIR-Repräsentation.

Die offizielle und abgenommene Version des Informationsmodells für das Modul Mikrobiologie findet sich auf [ART-DECOR](https://art-decor.org/art-decor/decor-datasets--mide-). Zur Vereinheitlichung der Repräsentation wurde das Informationsmodell zusätzlich als FHIR Logical Model abgebildet.

Das Informationsmodell ist auf drei Logical Models aufgeteilt:

| | |
| :--- | :--- |
| [Befund](#befund) | Der mikrobiologische Befundbericht, der die Untersuchungen zusammenfasst. |
| [Untersuchung](#untersuchung) | Abstrakte Basis mit den Angaben, die für jede mikrobiologische Untersuchung gelten. |
| [Untersuchungsarten](#untersuchungsarten) | Die fachlichen Ausprägungen, gegliedert nach Kultur, Bestimmung, Weitere Eigenschaften und Quantitative Tests. |

Es ist zu beachten, dass die Logical Models rein auf die Abbildung der Datenelemente und deren Beschreibung abzielen. Verwendete Datentypen und Kardinalitäten sind nicht als verpflichtend anzusehen. Dies wird abschließend durch die FHIR-Profile festgelegt. Für jedes Element innerhalb der Logical Models existiert ein 1:1 Mapping auf ein Element einer konkreten FHIR Ressource.

### Befund

Der mikrobiologische Befund, abgeleitet aus dem Profil `mii-pr-mikrobio-diagnostic-report`. Er verweist über `Untersuchung` auf die enthaltenen Einzeluntersuchungen.

Guidance on how to interpret the contents of this table can be found[here](https://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#data-dictionaries)

### Untersuchung

Die abstrakte Basisklasse aller mikrobiologischen Untersuchungen. Sie enthält die Angaben, die das Profil `mii-pr-labor-laboruntersuchung` zusammen mit den mikrobiologiespezifischen Festlegungen für jede Untersuchung vorsieht: Identifikation, Status, Patient, Probenmaterial, Zeitpunkte, interpretationsbeeinflussende Eigenschaften und die auslösende Untersuchung.

Guidance on how to interpret the contents of this table can be found[here](https://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#data-dictionaries)

### Untersuchungsarten

Die fachlichen Ausprägungen einer mikrobiologischen Untersuchung. Dieses Modell leitet von **Untersuchung** ab und erbt damit alle dort beschriebenen gemeinsamen Angaben; die folgende Tabelle listet nur die Attribute, die die jeweilige Ausprägung zusätzlich festlegt.

Guidance on how to interpret the contents of this table can be found[here](https://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#data-dictionaries)

