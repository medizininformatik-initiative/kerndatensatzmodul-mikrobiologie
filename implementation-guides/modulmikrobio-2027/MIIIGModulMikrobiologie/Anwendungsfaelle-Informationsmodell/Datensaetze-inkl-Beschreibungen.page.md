## {{page-title}}

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

{{tree:https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-lm-mikrobio-logical-model-de, snapshot}}

@``` from StructureDefinition where url =  'https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-lm-mikrobio-logical-model-de' for differential.element select Logischer_Datensatz: id, Beschreibung: short```

### Untersuchung

Die abstrakte Basisklasse aller mikrobiologischen Untersuchungen. Sie enthält die Angaben, die das Profil `mii-pr-labor-laboruntersuchung` zusammen mit den mikrobiologiespezifischen Festlegungen für jede Untersuchung vorsieht: Identifikation, Status, Patient, Probenmaterial, Zeitpunkte, interpretationsbeeinflussende Eigenschaften und die auslösende Untersuchung.

{{tree:https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-lm-mikrobio-untersuchung, snapshot}}

@``` from StructureDefinition where url =  'https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-lm-mikrobio-untersuchung' for differential.element select Logischer_Datensatz: id, Beschreibung: short```

### Untersuchungsarten

Die fachlichen Ausprägungen einer mikrobiologischen Untersuchung. Dieses Modell leitet von *Untersuchung* ab und erbt damit alle dort beschriebenen gemeinsamen Angaben; die folgende Tabelle listet nur die Attribute, die die jeweilige Ausprägung zusätzlich festlegt.

{{tree:https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-lm-mikrobio-untersuchungsarten, snapshot}}

@``` from StructureDefinition where url =  'https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-lm-mikrobio-untersuchungsarten' for differential.element select Logischer_Datensatz: id, Beschreibung: short```
