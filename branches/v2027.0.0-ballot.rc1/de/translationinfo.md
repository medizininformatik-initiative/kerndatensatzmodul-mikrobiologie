# Hinweise zur Übersetzung - MII Implementation Guide Microbiology v2027.0.0-ballot.rc1

* [**Inhaltsverzeichnis**](toc.md)
* **Hinweise zur Übersetzung**

## Hinweise zur Übersetzung

 Diese Seite enthält Übersetzungen aus der Originalsprache, in der der Leitfaden verfasst wurde. Informationen zu diesen Übersetzungen und Anweisungen zum Abgeben von Feedback zu den Übersetzungen finden Sie [hier](translationinfo.md). 

Dieser Leitfaden ist **englischsprachig** (Standardsprache); **Deutsch** ist die Übersetzung. Englisch ist damit sowohl die Basis-Darstellung des Leitfadens als auch die `/en/`-Darstellung; über den Sprachumschalter oben rechts wechseln Sie zwischen `/en/` und `/de/`.

Übersetzte Seiten liegen unter `input/translations/de/pagecontent/` (gleicher Dateiname wie die englische Seite); Ressourcen-Übersetzungen als `.po`-Dateien unter `input/translations/de/`. Details: [`docs/recipes/add-translation.md`](https://github.com/medizininformatik-initiative/kerndatensatzmodul-mikrobiologie/blob/main/docs/recipes/add-translation.md) in diesem Repository.

### Was übersetzt ist

| | |
| :--- | :--- |
| Narrativseiten | **23 von 23**gespiegelt unter`input/translations/de/pagecontent/` |
| IG-Seitentitel, Guide-Titel, Publisher | **26 von 26**Einheiten übersetzt in`ImplementationGuide-mii-ig-mikrobiologie.po` |
| Beschreibungen der Konformitätsressourcen | **nicht übersetzt — sie sind deutsch verfasst** |

Die letzte Zeile ist die, die man kennen muss. Die MII-Namenskonventionen verlangen Deutsch in `description`, `name` und `title` einer Konformitätsressource, weshalb der Leitfaden sie in **beiden** Darstellungen auf Deutsch führt: 22 Profile, 42 ValueSets, 3 CodeSystems, 4 Suchparameter und das CapabilityStatement. Drei Artefakte weichen ab — die beiden Extensions sind englisch beschrieben, und das Logical Model `mii-lm-mikrobio-untersuchung` kennzeichnet seine deutsche Beschreibung mit `[DE]`.

Englische Beschreibungen über den `.po`-Weg nachzureichen, geht nur teilweise: Übersetzungseinheiten greifen für `StructureDefinition`- und `CodeSystem`-Beschreibungen, werden für `ValueSet`-Texte aber **stillschweigend ignoriert**. Die 42 ValueSets liessen sich so also nicht übersetzen, selbst wenn die Texte vorlägen.

