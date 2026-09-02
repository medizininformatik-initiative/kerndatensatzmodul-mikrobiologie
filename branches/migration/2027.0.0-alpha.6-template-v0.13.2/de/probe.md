# Probe - MII Implementation Guide Microbiology v2027.0.0-alpha.6

* [**Inhaltsverzeichnis**](toc.md)
* [**Startseite**](index.md)
* [**Technische Implementierung**](technische-implementierung.md)
* [**FHIR-Profile – Modellierungshinweise**](fhir-profile.md)
* **Probe**

## Probe

 Diese Seite enthält Übersetzungen aus der Originalsprache, in der der Leitfaden verfasst wurde. Informationen zu diesen Übersetzungen und Anweisungen zum Abgeben von Feedback zu den Übersetzungen finden Sie [hier](translationinfo.md). 

> **Während der Migration geschrieben — vor der Veröffentlichung prüfen.** TODO:REVIEW — die englische Standardfassung dieser Seite ist eine Maschinenübersetzung dieses deutschen Textes. Diese deutsche Fassung trägt den Originalwortlaut der Simplifier-Quellseite; zu prüfen ist die englische Entsprechung (Gate C).

## Befund - Probe

Für die Abbildung von Proben wird auf das Profil [MII_PR_Biobank_Specimen_Bioprobe_Core](https://simplifier.net/medizininformatikinitiative-modulbiobank/mii_pr_biobank_specimen_bioprobe_core) aus dem [MII Modul Biobank](https://simplifier.net/medizininformatikinitiative-modulbiobank) verwiesen.

Für die mikrobiologischen Anwendungsfälle sind dabei insbesondere folgende Elemente relevant:

* **`Specimen.type[sct]`**
 Soll mit dem Probentyp befüllt werden. Dies gilt auch dann, wenn die Materialangabe bereits im verwendeten LOINC-Code präkoordiniert enthalten ist, um den Probentyp strukturiert und unabhängig vom Observation-Code verfügbar zu machen.
* **`Specimen.collection.collected[x]`**
 Gibt den Zeitpunkt der Probenentnahme an. Ist dieser nicht bekannt, kann ersatzweise der Zeitpunkt des Probeneingangs dokumentiert werden.
* **`Specimen.parent`**
 Bildet die Beziehung zu dem Specimen ab, aus dem ein anderes Specimen abgeleitet oder entnommen wurde, z. B. bei weiterverarbeiteten oder aus Primärproben gewonnenen Materialien.

