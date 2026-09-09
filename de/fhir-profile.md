# FHIR-Profile – Modellierungshinweise - MII Implementation Guide Microbiology v2027.0.0-ballot.rc1

* [**Inhaltsverzeichnis**](toc.md)
* [**Anleitung**](guidance.md)
* **FHIR-Profile – Modellierungshinweise**

## FHIR-Profile – Modellierungshinweise

 Diese Seite enthält Übersetzungen aus der Originalsprache, in der der Leitfaden verfasst wurde. Informationen zu diesen Übersetzungen und Anweisungen zum Abgeben von Feedback zu den Übersetzungen finden Sie [hier](translationinfo.md). 

Das Modell basiert auf fachlich abgestimmten Konventionen mit dem RKI, MIO42 und HL7 Europe und berücksichtigt Entwicklungen im europäischen Kontext, insbesondere im Rahmen des European Health Data Space (EHDS).

### Abbildung diagnostischer Ketten

Die Abbildung diagnostischer Ketten erfolgt in Abstimmung mit HL7 Europe (im Kontext des EHDS) über die R5-Backport-Extension `extension-Observation.triggeredBy`. Diese Modellierung ist fachlich geeigneter als `derivedFrom`, da sie eine auslösende bzw. prozessuale Beziehung zwischen Untersuchungen beschreibt (z. B. Reflexdiagnostik nach einem vorherigen Untersuchungsergebnis). `derivedFrom` impliziert semantisch eine direkte Ableitung eines Ergebnisses aus einer anderen Observation; dies ist für viele mikrobiologische Anwendungsfälle nicht korrekt.

| | |
| :--- | :--- |
| **!** | Für verpflichtende oder als must-support markierten Elemente sei an dieser Stelle auf die entsprechenden[Regeln der IPS](https://build.fhir.org/ig/HL7/fhir-ips/design.html#must-support)verwiesen, die auch für diesen ImplementationGuide gelten. |

