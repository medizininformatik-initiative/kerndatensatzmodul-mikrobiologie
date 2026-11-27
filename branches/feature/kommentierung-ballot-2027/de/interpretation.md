# Interpretation - MII Implementation Guide Microbiology v2027.0.0-ballot2

* [**Inhaltsverzeichnis**](toc.md)
* [**Anleitung**](guidance.md)
* **Interpretation**

## Interpretation

Diese Seite enthält Übersetzungen aus der Originalsprache, in der der Leitfaden verfasst wurde. Informationen zu diesen Übersetzungen und Anweisungen zum Abgeben von Feedback zu den Übersetzungen finden Sie [hier](translationinfo.md).

Ein Empfindlichkeitsergebnis trägt zwei verschiedene Aussagen: was **gemessen** wurde und wie diese Messung **bewertet** wird. Das Modul hält beides auseinander.

### Messwert und Bewertung

`Observation.value[x]` trägt die Messung — eine minimale Hemmkonzentration in mg/L oder einen Hemmhofdurchmesser in mm.

`Observation.interpretation` trägt die Bewertung: die Kategorie, in die der Messwert fällt, zusammen mit der Norm, aus der sie abgeleitet wurde.

Nicht jedes Labor misst. Liegt nur die Kategorie vor, wird sie als `CodeableConcept` in `value[x]` angegeben — das europäische Datenmodell legt das ausdrücklich so fest, und eine Observation ganz ohne Wert wäre die unüblichere Gestalt. Die Norm hängt dann am Wert selbst (`valueCodeableConcept.extension[Norm]`, verpflichtend), denn eine Kategorie ohne ihre Norm sagt nichts aus. Sind Wert und `interpretation` beide angegeben, nennen sie dieselbe Kategorie. Ein Konsument liest die Kategorie deshalb aus `value[x]`, wenn dort ein CodeableConcept steht, sonst aus `interpretation`.

Der umgekehrte Fall — ein Messwert ohne Kategorie — wird von `empfindlichkeit-messwert-sollte-bewertet-sein` als **Warnung** gemeldet und nicht abgelehnt. Eine nackte MHK lässt die Bewertung beim Konsumenten, der dafür die Grenzwerttabellen bräuchte. Eine Pflicht wäre aber falsch: Für manche Erreger-Substanz-Kombinationen sind keine Grenzwerte definiert, und dann gibt es keine Kategorie, die man angeben könnte.

### Die Kategorien

In Deutschland wird überwiegend nach EUCAST bewertet.

| | |
| :--- | :--- |
| `S`(v3) | sensibel bei Standardexposition |
| `1306583007`(SNOMED CT) | sensibel bei erhöhter Exposition; das EUCAST-`I`seit 2019 |
| `R`(v3) | resistent |

EUCAST hat `I` 2019 neu definiert. Der v3-Code `I` kann das nicht ausdrücken, `1306583007` kann es.

Wird nach CLSI bewertet, sind zusätzlich zulässig:

| | |
| :--- | :--- |
| `I`(v3) | intermediär |
| `SDD`(v3) | sensibel, dosisabhängig |
| `NS`(v3) | nicht sensibel |

### Die Norm, auf der die Bewertung beruht

Eine Kategorie ist ohne die zugrunde liegenden Grenzwerte bedeutungslos: dieselbe MHK ist unter der einen Norm sensibel und unter der anderen resistent, und Grenzwerte ändern sich von Jahr zu Jahr.

Die Norm hängt deshalb an der **Bewertung**, nicht an der Observation — `Observation.interpretation.extension`, verpflichtend, bzw. am Wert, wenn die Kategorie dort steht. Da `interpretation` `0..*` ist, kann eine einzige gemessene MHK eine EUCAST- und eine CLSI-Kategorie nebeneinander tragen, jede mit ihrer eigenen Norm. An der Observation hängend wäre das nicht möglich.

Die Norm wird aus dem moduleigenen CodeSystem kodiert: `EUCAST`, `CLSI`, `Andere`.

### Die voraussichtliche Empfindlichkeit ist eine andere Aussage

Eine aus einem Resistenzmechanismus abgeleitete Empfindlichkeit — ein Gen, eine Mutation oder ein Protein wurde gefunden, also ist Resistenz zu erwarten — ist **nicht** dieses Profil. Sie hat keinen Messwert und gehört zur **Voraussichtlichen Empfindlichkeit**, deren Ergebnis die erwartete Kategorie selbst ist. Die Ableitung ist bewusst technologieoffen: ein per Lateral Flow nachgewiesenes PBP2a-Protein trägt sie ebenso wie ein per PCR gefundenes `mecA`-Gen. Siehe [Profilauswahl und Abgrenzung](profilauswahl-und-abgrenzung.md).

Dieselbe Grenze gilt für den zielgerichteten Nachweis eines resistenten Erregers: ein MRSA- oder VRE-Nachweis sagt, welcher Erreger gefunden wurde, nicht wie empfindlich er ist, und gehört zu den Bestimmungs- oder Kulturprofilen.

### Weitere Bewertungen in diesem Modul

`interpretation` ist nicht auf die Empfindlichkeit beschränkt. Die Keimzahl trägt eine semiquantitative Einordnung des Messwerts, die Aviditätsbestimmung trägt niedrig, grenzwertig oder hoch — `L` und `H` aus der Liste, die der Parent bindet, und für die Mitte derselbe SNOMED-Code, den dieser Leitfaden auch sonst für einen grenzwertigen Befund verwendet. Das Muster ist jedes Mal dasselbe: der Wert bleibt gemessen, die Bewertung bleibt getrennt.

