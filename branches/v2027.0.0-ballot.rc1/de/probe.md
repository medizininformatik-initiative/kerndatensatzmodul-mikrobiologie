# Probe - MII Implementation Guide Microbiology v2027.0.0-ballot.rc1

* [**Inhaltsverzeichnis**](toc.md)
* [**Anleitung**](guidance.md)
* **Probe**

## Probe

### Befund - Probe

**Ballotfrage 1 — können Sie zu jedem Befund eine Specimen-Ressource liefern?** Jedes Untersuchungsprofil dieses Moduls verlangt `Observation.specimen`, wie die HL7 EU Lab Semantic Workgroup es auch tut — sie verlangt eine ausdrückliche Specimen-Ressource selbst dann, wenn der LOINC-Code das Material bereits trägt.

Aus der deutschen Laborpraxis kommt die Rückmeldung, dass eine Specimen-Ressource häufig nicht erzeugt wird. Trifft das breit zu, weisen die beiden Auswege in entgegengesetzte Richtungen: `Observation.specimen` auf `0..1` lockern und präkoordinierte LOINC-Codes das Material tragen lassen, oder die Pflicht beibehalten und hinnehmen, dass manche Sender nicht konform sein können.

Proben werden über [Probe](StructureDefinition-mii-pr-mikrobio-probe.md) abgebildet, das von [MII_PR_Biobank_Specimen_Bioprobe_Core](https://simplifier.net/medizininformatikinitiative-modulbiobank/mii_pr_biobank_specimen_bioprobe_core) aus dem [MII Modul Biobank](https://simplifier.net/medizininformatikinitiative-modulbiobank) ableitet — einem Basisprofil, das genau dafür geschrieben ist, dass Module davon ableiten statt es direkt zu implementieren. `Observation.specimen` jedes Untersuchungsprofils verweist darauf.

Für die mikrobiologischen Anwendungsfälle sind dabei insbesondere folgende Elemente relevant:

* **`Specimen.type[sct]`**
 Soll mit dem Probentyp befüllt werden. Dies gilt auch dann, wenn die Materialangabe bereits im verwendeten LOINC-Code präkoordiniert enthalten ist, um den Probentyp strukturiert und unabhängig vom Observation-Code verfügbar zu machen.
* **`Specimen.collection.collected[x]`**
 Gibt den Zeitpunkt der Probenentnahme an. Ist dieser nicht bekannt, kann ersatzweise der Zeitpunkt des Probeneingangs dokumentiert werden.
* **`Specimen.parent`**
 Bildet die Beziehung zu dem Specimen ab, aus dem ein anderes Specimen abgeleitet oder entnommen wurde, z. B. bei weiterverarbeiteten oder aus Primärproben gewonnenen Materialien.

### Specimen.processing: Temperaturbedingungen und Färbung

**Ballotfrage 3 — blockiert Sie die Pflicht-Lagertemperatur?** Das Basisprofil verlangt die Extension `temperaturbedingungen` an jedem `Specimen.processing`-Element, und ein abgeleitetes Profil darf nur verengen und nie lockern — dieses Modul kann die Pflicht also nicht auflösen.

Sie stammt aus der Biobank, wo `Specimen.processing` den Lagerprozess einer Bioprobe beschreibt und die Temperatur zur Kernaussage gehört; sie gilt in `2026.0.1` wie in `2027.0.0-ballot.rc2`. In der Mikrobiologie beschreibt dasselbe Element die Aufarbeitung: Färbung, Anreicherung, Bebrütung, wo eine Lagertemperatur entweder unbekannt oder ohne Aussage ist. Wir halten sie in diesem Zusammenhang für fehlplatziert und bringen sie beim Biobank-Modul ein, mit dem Ziel, sie auf den Lagerprozess-Slice `processing:lagerprozess` zu begrenzen.

Die Färbetechnik wird deshalb **nicht** unter `Specimen.processing.procedure` angegeben, wie die HL7 EU Lab Semantic Workgroup es vorschlägt, sondern in einer Extension an der Observation, [`extension[faerbung]`](StructureDefinition-mii-ex-mikrobio-faerbung.md), mit denselben Codes — siehe [Mikroskopie](StructureDefinition-mii-pr-mikrobio-mikroskopie.md), wo Ballotfrage 2 die Begründung enthält.

### Bebrütungsdauer und -temperatur

**Ballotfrage 4 — ist die Bebrütung über `Specimen.processing` darstellbar?** FHIR sieht sie dort vor und die MII hat die Bausteine, die Modellierung ist also geklärt; wir fragen, ob sie an Ihrem Standort umsetzbar ist. Die Elemente, gemessen an R4 Core und am Biobank-Modul am 2026-09-10:

* **Dauer** — `Specimen.processing.time[x]` als `Period`. `Specimen.processing` hat kein eigenes `Duration`-Element (`Specimen.collection.duration` meint die Entnahme), Start und Ende sind also die FHIR-eigene Form. Genau das verlangt das europäische Datenmodell, wenn es zu seinem Kandidaten-Code `80581-2` vermerkt „mandates for start/enddate" — mit einem `Period` ist die Anforderung erfüllt und kein neuer LOINC-Code nötig.
* **Temperatur** — die Extension `MII_EX_Biobank_Temperaturbedingungen`, deren Context `Specimen.processing` ist und deren Wert ein `Range` ist. Das richtige Element und der richtige Datentyp für „35–37 °C".

**Wir erbitten Rückmeldung, ob das bei Ihnen implementierbar ist.** Die Modellierung ist geklärt, die Umsetzbarkeit nicht. Wird keine Specimen-Ressource erzeugt (Ballotfrage 1), ist `Specimen.processing` unerreichbar, und die Alternative wären Extensions auf `Observation.method`, die das Verfahren in der Ressource qualifizieren, die das Ergebnis berichtet. Dieses Modul bildet die Bebrütung nicht ab, solange die Antwort fehlt.

