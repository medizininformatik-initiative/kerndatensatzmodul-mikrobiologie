# Probe - MII Implementation Guide Microbiology v2027.0.0-ballot2

* [**Inhaltsverzeichnis**](toc.md)
* [**Anleitung**](guidance.md)
* **Probe**

## Probe

Diese Seite enthält Übersetzungen aus der Originalsprache, in der der Leitfaden verfasst wurde. Informationen zu diesen Übersetzungen und Anweisungen zum Abgeben von Feedback zu den Übersetzungen finden Sie [hier](translationinfo.md).

### Befund - Probe

Proben werden über [Probe](StructureDefinition-mii-pr-mikrobio-probe.md) abgebildet, das von [MII_PR_Biobank_Specimen_Bioprobe_Core](https://simplifier.net/medizininformatikinitiative-modulbiobank/mii_pr_biobank_specimen_bioprobe_core) aus dem [MII Modul Biobank](https://simplifier.net/medizininformatikinitiative-modulbiobank) ableitet — einem Basisprofil, das genau dafür geschrieben ist, dass Module davon ableiten statt es direkt zu implementieren. `Observation.specimen` jedes Untersuchungsprofils verweist darauf.

Für die mikrobiologischen Anwendungsfälle sind dabei insbesondere folgende Elemente relevant:

* **`Specimen.type[sct]`**
 Soll mit dem Probentyp befüllt werden. Dies gilt auch dann, wenn die Materialangabe bereits im verwendeten LOINC-Code präkoordiniert enthalten ist, um den Probentyp strukturiert und unabhängig vom Observation-Code verfügbar zu machen.
* **`Specimen.container.type`**
 Wird befüllt, wenn Flasche oder Medium bekannt sind, z. B. `767385003 |Aerobic blood culture bottle|`. `Specimen.type` darf präkoordiniert sein, etwa `866033003 |Blood specimen in aerobic blood culture bottle|`, muss dann aber zu `container.type` passen.
* **`Specimen.collection.collected[x]`**
 Gibt den Zeitpunkt der Probenentnahme an. Ist dieser nicht bekannt, kann ersatzweise der Zeitpunkt des Probeneingangs dokumentiert werden.
* **`Specimen.parent`**
 Bildet die Beziehung zu dem Specimen ab, aus dem ein anderes Specimen abgeleitet oder entnommen wurde, z. B. bei weiterverarbeiteten oder aus Primärproben gewonnenen Materialien.

### Isolat als eigene Probe

Ein Isolat kann als eigene Probe abgebildet werden, wie im Modell der HL7 EU Lab Semantic Workgroup. Das ist optional.

* `type`: `119303007 |Microbial isolate|`
* `parent`: die Probe, aus der es gewonnen wurde
* `collection.collected[x]`: deren Entnahmezeitpunkt

Die Untersuchungen eines Erregers — Identifizierung, Empfindlichkeit, MRGN-Klasse, Resistenzkategorie-Status, Voraussichtliche Empfindlichkeit, am Isolat bestimmte Resistenzmechanismen und Virulenzfaktoren — referenzieren dann das Isolat. Kultur und Keimzahl bleiben an der Ursprungsprobe. So ist die Zuordnung zum Erreger auch ohne Verweise eindeutig; das [Urin-Beispiel](profilauswahl-und-abgrenzung.md#chain-general-culture) zeigt es.

### Specimen.processing: Färbung

Die Färbetechnik wird **nicht** unter `Specimen.processing.procedure` angegeben, wie die HL7 EU Lab Semantic Workgroup es vorschlägt, sondern in einer Extension an der Observation, [`extension[faerbung]`](StructureDefinition-mii-ex-mikrobio-faerbung.md), mit denselben Codes — siehe [Mikroskopie](StructureDefinition-mii-pr-mikrobio-mikroskopie.md#staining): Eine Probe wird oft mehrfach gefärbt, ohne dass das Labor Unterproben anlegt, und nur an der Observation bleibt erkennbar, welche Färbung zu welchem Befund gehört.

### Bebrütungsdauer und -temperatur

Beide sind optional. Liefert ein Standort sie, stehen sie in `Specimen.processing`:

* **Dauer** — `Specimen.processing.time[x]` als `Period`. `Specimen.processing` hat kein eigenes `Duration`-Element (`Specimen.collection.duration` meint die Entnahme), Start und Ende sind also die FHIR-eigene Form. Genau das verlangt das europäische Datenmodell, wenn es zu seinem Kandidaten-Code `80581-2` vermerkt „mandates for start/enddate" — mit einem `Period` ist die Anforderung erfüllt und kein neuer LOINC-Code nötig.
* **Temperatur** — die Extension `MII_EX_Biobank_Temperaturbedingungen`, deren Context `Specimen.processing` ist und deren Wert ein `Range` ist. Das richtige Element und der richtige Datentyp für „35–37 °C", und seit dem `2027.0.0-ballot` des Basisprofils optional.

