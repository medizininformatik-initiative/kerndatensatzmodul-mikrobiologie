<!-- markdownlint-disable MD041 -->
<!-- Deutsche Übersetzung von input/pagecontent/code-systems.md (aufgeteilt aus
     der früheren Seite terminology.md gemäß der TF-KDS-abgestimmten Menüstruktur).
     Der IG-Publisher listet die CodeSystems auf den Artefakt-Seiten
     automatisch; hier stehen die MII-Hinweise dazu. -->
### CodeSystems

Diese Seite beschreibt die CodeSystems des Moduls **Mikrobiologie**
(Namenskonvention `MII_CS_<Modul>_<Name>`). Die darauf aufbauenden ValueSets
beschreibt die Seite [ValueSets](value-sets.html).

{:.bg-info}
**Wichtig:** CodeSystem-Ressourcen externer Terminologien (z. B. ICD-10-GM, OPS,
SNOMED CT) werden in diesem Modul **nicht** publiziert, sondern über den
zentralen KDS-Terminologieserver (SU-TermServ) bezogen:
[https://mii-termserv.de/](https://mii-termserv.de/).

<!-- MIGRATED verbatim from Simplifier page: MIIIGModulMikrobiologie/Technische-Implementierung/Terminologien.page.md  -->
In deutschen Laboratorien werden häufig standortspezifische Wertelisten und Regelwerke verwendet. Dieser ImplementationGuide zielt darauf ab, die Kodierung durch die Nutzung international etablierter Terminologien wie SNOMED CT und LOINC zu harmonisieren. LOINC stellt Codes zur Beschreibung von Untersuchungselementen (z. B. Fragestellungen) bereit, während SNOMED CT zur Kodierung der zugehörigen nominalen und ordinalen Werte (z. B. Ergebnisse) dient.

LOINC-Codes beschreiben, was untersucht wird (Observation.code), wobei die „Component“ den Test möglichst spezifisch abbildet (z. B. einen Organismus). Grundsätzlich sind alle LOINC-Codes zulässig; bevorzugt werden jedoch Codes ohne präkoordinierte Angaben zu „System“ und „Method“. Stattdessen wird empfohlen, Material (Specimen) und Methode separat in den entsprechenden FHIR-Elementen zu erfassen, auch wenn diese Informationen bereits im LOINC-Code enthalten sind. Für diese Angaben wird SNOMED CT verwendet: das Material über Specimen.type und die Methode über Observation.method. Das qualitative Testergebnis wird ebenfalls mit SNOMED CT über Observation.valueCodeableConcept kodiert.

Die Interpretation soll grundsätzlich mit HL7-Terminologie über Observation.interpretation kodiert werden; ist diese nicht ausreichend, kann alternativ SNOMED CT verwendet werden.
