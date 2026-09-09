<!-- markdownlint-disable MD041 -->
<!-- Deutsche Übersetzung der Standardsprachseite input/pagecontent/downloads.md
     — beide Dateien müssen dasselbe aussagen. Quelle: kerndatensatz-basis
     input/pagecontent/downloads.md (Branch main).

     Die `../<datei>`-Links unten zeigen auf die Artefakte, die der IG-Publisher
     NEBEN die gerenderten Seiten schreibt. Der Publisher trägt sie NICHT von
     selbst in eine Fließtext-Seite ein — diese Seite IST die Download-Liste.
     Halten Sie sie deshalb mit dem in Einklang, was der Build tatsächlich
     erzeugt (z. B. entfiele examples.xml.zip bei `excludexml: true` in
     sushi-config.yaml). Die Links funktionieren nur in der veröffentlichten
     Ausgabe, nicht in einer lokalen Vorschau dieser Markdown-Datei. -->


Diese Seite verlinkt die herunterladbaren Artefakte des Moduls
**Mikrobiologie**.

#### Paketdatei

Die Paketdatei ist ein FHIR-Paket im NPM-Format, wie es die meisten
FHIR-Werkzeuge verwenden. Sie enthält alle ValueSets, Profile, Extensions sowie
die Liste der Seiten und URLs dieses Leitfadens in dieser Version. Sie SOLLTE die
erste Wahl sein, wann immer Implementierungsartefakte erzeugt werden, denn sie
trägt alle Regeln, die die Profile gültig machen. Implementierende müssen
darüber hinaus den Inhalt der Spezifikation und die einschlägigen Profile kennen,
um eine konforme Umsetzung zu bauen — siehe die FHIR-Dokumentation zur
[Validierung von Profilen und Ressourcen](http://hl7.org/fhir/R4/validation.html).

* [Paket (komprimierter Ordner)](../package.tgz){::download="true"}

Der Leitfaden ist zweisprachig, deshalb erzeugt der Publisher zusätzlich je ein
Paket pro Sprache mit den Ressourcentexten dieser Sprache:

* [Paket, Englisch](../de.medizininformatikinitiative.kerndatensatz.mikrobiologie.en.tgz){::download="true"}
* [Paket, Deutsch](../de.medizininformatikinitiative.kerndatensatz.mikrobiologie.de.tgz){::download="true"}

#### Herunterladbare Kopie dieses Leitfadens

Eine herunterladbare Fassung des gerenderten Leitfadens für den lokalen Betrieb:

* [Herunterladbare Kopie (komprimierter Ordner)](../full-ig.zip)

#### Beispiele

Alle Beispiele dieses Leitfadens:

* [XML (komprimierter Ordner)](../examples.xml.zip)
* [JSON (komprimierter Ordner)](../examples.json.zip)

#### Konsolidierte CSV- und Excel-Darstellungen der Profile

Die Profilinformationen des gesamten Leitfadens in einer einzigen CSV- oder
Excel-Datei — nützlich für Testende und Analysierende, die Element-Eigenschaften
profilübergreifend in einer Tabelle sichten wollen:

* [CSV (komprimierter Ordner)](../csvs.zip)
* [Excel (komprimierter Ordner)](../excels.zip)

#### Schematrons

* [Schematrons (komprimierter Ordner)](../schematrons.zip)

#### ImplementationGuide-Ressource

Die `ImplementationGuide`-Ressource trägt die technischen Details dieser
Veröffentlichung einschließlich ihrer Abhängigkeiten und
Veröffentlichungsparameter.

* [ImplementationGuide-Ressource](ImplementationGuide-mii-ig-mikrobiologie.html)

#### Definitionen und Expansionen

Die Konformitätsressourcen für sich genommen, und die ValueSets mit bereits
aufgelösten Codes:

* [Definitionen, XML](../definitions.xml.zip) · [JSON](../definitions.json.zip)
* [Expansionen, XML](../expansions.xml.zip) · [JSON](../expansions.json.zip)

#### Versionshistorie

Frühere Versionen und die ausführliche Änderungshistorie stehen auf den Seiten
[Versionierung](version-history.html) und
[Änderungshistorie](changes.html).

Darüber hinaus bietet das Modul keine eigenen Downloads über die vom Publisher
erzeugten hinaus.
