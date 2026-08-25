<!-- markdownlint-disable MD041 -->
<!-- DERIVED:no-source source=MIIIGModulMikrobiologie/Anwendungsfaelle-Informationsmodell/Datensaetze-inkl-Beschreibungen.page.md gate=C -->
> **Während der Migration geschrieben — vor der Veröffentlichung prüfen.** TODO:REVIEW — die
> englische Standardfassung dieser Seite ist eine Maschinenübersetzung dieses deutschen Textes.
> Diese deutsche Fassung trägt den Originalwortlaut der Simplifier-Quellseite; zu prüfen ist die
> englische Entsprechung (Gate C).
{: .ig-highlight .ig-highlight-blue}

### Logische Modelle

Die logischen Datenmodelle des Moduls **Mikrobiologie** beschreiben den fachlichen Datensatz unabhängig von der konkreten FHIR-Repräsentation.

<!-- MIGRATED verbatim from Simplifier page: MIIIGModulMikrobiologie/Anwendungsfaelle-Informationsmodell/Datensaetze-inkl-Beschreibungen.page.md  -->
Die offizielle und abgenommene Version des Informationsmodells für das Modul Mikrobiologie findet sich auf [ART-DECOR](https://art-decor.org/art-decor/decor-datasets--mide-). Zur Vereinheitlichung der Repräsentation wurde das Informationsmodell zusätzlich als FHIR Logical Model abgebildet.

Das Informationsmodell ist auf drei Logical Models aufgeteilt:

| Logical Model | Inhalt |
|---|---|
| [Befund](#befund) | Der mikrobiologische Befundbericht, der die Untersuchungen zusammenfasst. |
| [Untersuchung](#untersuchung) | Abstrakte Basis mit den Angaben, die für jede mikrobiologische Untersuchung gelten. |
| [Untersuchungsarten](#untersuchungsarten) | Die fachlichen Ausprägungen, gegliedert nach Kultur, Bestimmung, Weitere Eigenschaften und Quantitative Tests. |

Es ist zu beachten, dass die Logical Models rein auf die Abbildung der Datenelemente und deren Beschreibung abzielen. Verwendete Datentypen und Kardinalitäten sind nicht als verpflichtend anzusehen. Dies wird abschließend durch die FHIR-Profile festgelegt. Für jedes Element innerhalb der Logical Models existiert ein 1:1 Mapping auf ein Element einer konkreten FHIR Ressource.

### Befund

Der mikrobiologische Befund, abgeleitet aus dem Profil `mii-pr-mikrobio-diagnostic-report`. Er verweist über `Untersuchung` auf die enthaltenen Einzeluntersuchungen.

{% include StructureDefinition-mii-lm-mikrobio-logical-model-snapshot.xhtml %}

{% include StructureDefinition-mii-lm-mikrobio-logical-model-dict.xhtml %}

### Untersuchung

Die abstrakte Basisklasse aller mikrobiologischen Untersuchungen. Sie enthält die Angaben, die das Profil `mii-pr-labor-laboruntersuchung` zusammen mit den mikrobiologiespezifischen Festlegungen für jede Untersuchung vorsieht: Identifikation, Status, Patient, Probenmaterial, Zeitpunkte, interpretationsbeeinflussende Eigenschaften und die auslösende Untersuchung.

{% include StructureDefinition-mii-lm-mikrobio-untersuchung-snapshot.xhtml %}

{% include StructureDefinition-mii-lm-mikrobio-untersuchung-dict.xhtml %}

### Untersuchungsarten

Die fachlichen Ausprägungen einer mikrobiologischen Untersuchung. Dieses Modell leitet von *Untersuchung* ab und erbt damit alle dort beschriebenen gemeinsamen Angaben; die folgende Tabelle listet nur die Attribute, die die jeweilige Ausprägung zusätzlich festlegt.

{% include StructureDefinition-mii-lm-mikrobio-untersuchungsarten-snapshot.xhtml %}

{% include StructureDefinition-mii-lm-mikrobio-untersuchungsarten-dict.xhtml %}
