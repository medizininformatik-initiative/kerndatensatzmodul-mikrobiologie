<!-- MIGRATED verbatim from Simplifier page: MIIIGModulMikrobiologie/Technische-Implementierung/FHIR-Profile/Index.page.md  -->
<!-- DERIVED:no-source source=MIIIGModulMikrobiologie/Technische-Implementierung/FHIR-Profile/Index.page.md gate=C -->
> **Während der Migration geschrieben — vor der Veröffentlichung prüfen.** TODO:REVIEW — die
> englische Standardfassung dieser Seite ist eine Maschinenübersetzung dieses deutschen Textes.
> Diese deutsche Fassung trägt den Originalwortlaut der Simplifier-Quellseite; zu prüfen ist die
> englische Entsprechung (Gate C).
{: .ig-highlight .ig-highlight-blue}

Das Modell basiert auf fachlich abgestimmten Konventionen mit dem RKI, MIO42 und HL7 Europe und berücksichtigt Entwicklungen im europäischen Kontext, insbesondere im Rahmen des European Health Data Space (EHDS).

### Abbildung diagnostischer Ketten
Die Abbildung diagnostischer Ketten erfolgt in Abstimmung mit HL7 Europe (im Kontext des EHDS) über die R5-Backport-Extension `extension-Observation.triggeredBy`. Diese Modellierung ist fachlich geeigneter als `derivedFrom`, da sie eine auslösende bzw. prozessuale Beziehung zwischen Untersuchungen beschreibt (z. B. Reflexdiagnostik nach einem vorherigen Untersuchungsergebnis). `derivedFrom` impliziert semantisch eine direkte Ableitung eines Ergebnisses aus einer anderen Observation; dies ist für viele mikrobiologische Anwendungsfälle nicht korrekt.

| Hinweis | Verpflichtende / must-support Elemente |
|---------|---------------------|
| **!** | Für verpflichtende oder als must-support markierten Elemente sei an dieser Stelle auf die entsprechenden [Regeln der IPS](https://build.fhir.org/ig/HL7/fhir-ips/design.html#must-support) verwiesen, die auch für diesen ImplementationGuide gelten. |

<!-- DERIVED:bridge source=MIIIGModulMikrobiologie/Technische-Implementierung/FHIR-Profile/Index.page.md gate=B -->
> **Während der Migration geschrieben — vor der Veröffentlichung prüfen.** Die zehn Unterseiten dieses Abschnitts sind im migrierten Leitfaden verteilt: die vier Familienübersichten (Kultur, Bestimmung, Quantitative Tests, Weitere Eigenschaften) stehen als Abschnitte auf [Profile](profiles.html), die Beschreibung jedes einzelnen Profils steht als Intro-Note auf der jeweiligen Artefaktseite, und [Probe](probe.html) sowie [Profilauswahl und Abgrenzung](profilauswahl-und-abgrenzung.html) haben eigene Seiten.
{: .ig-highlight .ig-highlight-blue}
