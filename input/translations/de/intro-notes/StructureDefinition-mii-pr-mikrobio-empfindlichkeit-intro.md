<!-- MIGRATED verbatim from Simplifier page: MIIIGModulMikrobiologie/Technische-Implementierung/FHIR-Profile/Kultur/Empfindlichkeit.page.md  -->
<!-- DERIVED:no-source source=MIIIGModulMikrobiologie/Technische-Implementierung/FHIR-Profile/Kultur/Empfindlichkeit.page.md gate=C -->
> **Während der Migration geschrieben — vor der Veröffentlichung prüfen.** TODO:REVIEW — die
> englische Standardfassung dieser Seite ist eine Maschinenübersetzung dieses deutschen Textes.
> Diese deutsche Fassung trägt den Originalwortlaut der Simplifier-Quellseite; zu prüfen ist die
> englische Entsprechung (Gate C).
{: .ig-highlight .ig-highlight-blue}

Empfindlichkeit beschreibt das Ergebnis der phänotypischen Resistenztestung eines Erregers gegenüber antimikrobiellen Substanzen unter Bezug auf ein Normsystem.

Die Resistenz eines bereits identifizierten Erregers gegen eine einzelne Substanz wird hier abgebildet, etwa ein linezolidresistenter Enterococcus über `29258-1 |Linezolid [Susceptibility]|` mit `interpretation` R; der Negativfall ist `interpretation` S. Der zielgerichtete Nachweis eines resistenten Erregers als solchen gehört dagegen in die Nachweisprofile — siehe [Profilauswahl und Abgrenzung](profilauswahl-und-abgrenzung.html).

### Beispiele

Beispiel (minimal):

[mii-exa-mikrobio-empfindlichkeit](Observation-mii-exa-mikrobio-empfindlichkeit.html)

