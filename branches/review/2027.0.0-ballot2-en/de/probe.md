# Probe - MII Implementation Guide Microbiology v2027.0.0-ballot2

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

### Specimen.processing: Färbung

Bis `2027.0.0-ballot.rc2` verlangte das Bioproben-Basisprofil die Extension `temperaturbedingungen` an jedem `Specimen.processing`-Element — eine Pflicht aus der Lagerung von Bioproben, ohne Aussage für die Aufarbeitung im Labor, und eine, die ein abgeleitetes Profil nicht lockern konnte. Dieser Leitfaden hat sie als Ballotfrage aufgeworfen; das Basisprofil hat sie in seinem `2027.0.0-ballot`, von dem dieses Modul jetzt abhängt, auf `0..1` gelockert, und damit ist die Frage erledigt.

Die Färbetechnik wird dennoch **nicht** unter `Specimen.processing.procedure` angegeben, wie die HL7 EU Lab Semantic Workgroup es vorschlägt, sondern in einer Extension an der Observation, [`extension[faerbung]`](StructureDefinition-mii-ex-mikrobio-faerbung.md), mit denselben Codes — siehe [Mikroskopie](StructureDefinition-mii-pr-mikrobio-mikroskopie.md), wo Ballotfrage 2 die Begründung enthält.

### Bebrütungsdauer und -temperatur

**Ballotfrage 3 — ist die Bebrütung über `Specimen.processing` darstellbar?** FHIR sieht sie dort vor und die MII hat die Bausteine, die Modellierung ist also geklärt. Wir fragen, ob sie an Ihrem Standort umsetzbar ist.

Die Elemente, gemessen an R4 Core und am Biobank-Modul am 2026-09-10:

* **Dauer** — `Specimen.processing.time[x]` als `Period`. `Specimen.processing` hat kein eigenes `Duration`-Element (`Specimen.collection.duration` meint die Entnahme), Start und Ende sind also die FHIR-eigene Form. Genau das verlangt das europäische Datenmodell, wenn es zu seinem Kandidaten-Code `80581-2` vermerkt „mandates for start/enddate" — mit einem `Period` ist die Anforderung erfüllt und kein neuer LOINC-Code nötig.
* **Temperatur** — die Extension `MII_EX_Biobank_Temperaturbedingungen`, deren Context `Specimen.processing` ist und deren Wert ein `Range` ist. Das richtige Element und der richtige Datentyp für „35–37 °C", und seit dem `2027.0.0-ballot` des Basisprofils optional.

Wird keine Specimen-Ressource erzeugt (Ballotfrage 1), ist `Specimen.processing` unerreichbar, und die Alternative wären Extensions auf `Observation.method`, die das Verfahren in der Ressource qualifizieren, die das Ergebnis berichtet. Dieses Modul bildet die Bebrütung nicht ab, solange die Antwort fehlt.

