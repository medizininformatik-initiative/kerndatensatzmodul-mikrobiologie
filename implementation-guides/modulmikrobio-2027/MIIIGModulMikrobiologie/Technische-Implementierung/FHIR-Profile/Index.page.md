## {{page-title}}

Das Modell basiert auf fachlich abgestimmten Konventionen mit dem RKI, MIO42 und HL7 Europe und berücksichtigt Entwicklungen im europäischen Kontext, insbesondere im Rahmen des European Health Data Space (EHDS).

### Abbildung diagnostischer Ketten
Die Abbildung diagnostischer Ketten erfolgt in Abstimmung mit HL7 Europe (im Kontext des EHDS) über die R5-Backport-Extension `extension-Observation.triggeredBy`. Diese Modellierung ist fachlich geeigneter als `derivedFrom`, da sie eine auslösende bzw. prozessuale Beziehung zwischen Untersuchungen beschreibt (z. B. Reflexdiagnostik nach einem vorherigen Untersuchungsergebnis). `derivedFrom` impliziert semantisch eine direkte Ableitung eines Ergebnisses aus einer anderen Observation; dies ist für viele mikrobiologische Anwendungsfälle nicht korrekt.

| Hinweis | Verpflichtende / must-support Elemente |
|---------|---------------------|
| {{render:Warning}} | Für verpflichtende oder als must-support markierten Elemente sei an dieser Stelle auf die entsprechenden [Regeln der IPS](https://build.fhir.org/ig/HL7/fhir-ips/design.html#must-support) verwiesen, die auch für diesen ImplementationGuide gelten. |

<br><br>
