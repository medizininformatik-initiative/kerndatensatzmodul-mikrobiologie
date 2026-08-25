# CodeSystems - MII Implementation Guide Microbiology v2027.0.0-alpha.6

* [**Inhaltsverzeichnis**](toc.md)
* **CodeSystems**

## CodeSystems

 Diese Seite enthält Übersetzungen aus der Originalsprache, in der der Leitfaden verfasst wurde. Informationen zu diesen Übersetzungen und Anweisungen zum Abgeben von Feedback zu den Übersetzungen finden Sie [hier](translationinfo.md). 

> **Während der Migration geschrieben — vor der Veröffentlichung prüfen.** TODO:REVIEW — die englische Standardfassung dieser Seite ist eine Maschinenübersetzung dieses deutschen Textes. Diese deutsche Fassung trägt den Originalwortlaut der Simplifier-Quellseite; zu prüfen ist die englische Entsprechung (Gate C).

### CodeSystems

Diese Seite beschreibt die CodeSystems des Moduls **Mikrobiologie** (Namenskonvention `MII_CS_<Modul>_<Name>`). Die darauf aufbauenden ValueSets beschreibt die Seite [ValueSets](value-sets.md).

**Wichtig:** CodeSystem-Ressourcen externer Terminologien (z. B. ICD-10-GM, OPS, SNOMED CT) werden in diesem Modul **nicht** publiziert, sondern über den zentralen KDS-Terminologieserver (SU-TermServ) bezogen: [https://mii-termserv.de/](https://mii-termserv.de/).

In deutschen Laboratorien werden häufig standortspezifische Wertelisten und Regelwerke verwendet. Dieser ImplementationGuide zielt darauf ab, die Kodierung durch die Nutzung international etablierter Terminologien wie SNOMED CT und LOINC zu harmonisieren. LOINC stellt Codes zur Beschreibung von Untersuchungselementen (z. B. Fragestellungen) bereit, während SNOMED CT zur Kodierung der zugehörigen nominalen und ordinalen Werte (z. B. Ergebnisse) dient.

LOINC-Codes beschreiben, was untersucht wird (Observation.code), wobei die „Component“ den Test möglichst spezifisch abbildet (z. B. einen Organismus). Grundsätzlich sind alle LOINC-Codes zulässig; bevorzugt werden jedoch Codes ohne präkoordinierte Angaben zu „System“ und „Method“. Stattdessen wird empfohlen, Material (Specimen) und Methode separat in den entsprechenden FHIR-Elementen zu erfassen, auch wenn diese Informationen bereits im LOINC-Code enthalten sind. Für diese Angaben wird SNOMED CT verwendet: das Material über Specimen.type und die Methode über Observation.method. Das qualitative Testergebnis wird ebenfalls mit SNOMED CT über Observation.valueCodeableConcept kodiert.

Die Interpretation soll grundsätzlich mit HL7-Terminologie über Observation.interpretation kodiert werden; ist diese nicht ausreichend, kann alternativ SNOMED CT verwendet werden.

