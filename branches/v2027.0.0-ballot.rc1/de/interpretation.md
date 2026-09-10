# Interpretation - MII Implementation Guide Microbiology v2027.0.0-ballot.rc1

* [**Inhaltsverzeichnis**](toc.md)
* [**Anleitung**](guidance.md)
* **Interpretation**

## Interpretation

Ein Empfindlichkeitsergebnis trägt zwei verschiedene Aussagen: was **gemessen** wurde und wie diese Messung **bewertet** wird. Das Modul hält beides auseinander.

### Messwert und Bewertung

`Observation.value[x]` trägt die Messung — eine minimale Hemmkonzentration in mg/L oder einen Hemmhofdurchmesser in mm.

`Observation.interpretation` trägt die Bewertung: die Kategorie, in die der Messwert fällt, zusammen mit der Norm, aus der sie abgeleitet wurde.

Nicht jedes Labor misst. Liegt nur die Kategorie vor, wird sie als `CodeableConcept` in `value[x]` angegeben — das europäische Datenmodell legt das ausdrücklich so fest, und eine Observation ganz ohne Wert wäre die unüblichere Gestalt. Zwei Invarianten halten das eindeutig:

* `empfindlichkeit-kategorie-braucht-interpretation` — eine Kategorie in `value[x]` verlangt eine `interpretation`, weil die Norm dort hängt und eine Kategorie ohne ihre Norm nichts aussagt.
* `empfindlichkeit-kategorie-stimmt-mit-interpretation` — sind beide angegeben, muss jeder Code des Werts auch unter den Interpretations-Codes vorkommen.

Ein Konsument liest die Kategorie damit in jedem Fall aus `interpretation`, und `value[x]` sagt ihm, ob ein Messwert dahintersteht.

Der umgekehrte Fall — ein Messwert ohne Kategorie — wird von `empfindlichkeit-messwert-sollte-bewertet-sein` als **Warnung** gemeldet und nicht abgelehnt. Eine nackte MHK lässt die Bewertung beim Konsumenten, der dafür die Grenzwerttabellen bräuchte. Eine Pflicht wäre aber falsch: Für manche Erreger-Substanz-Kombinationen sind keine Grenzwerte definiert, und dann gibt es keine Kategorie, die man angeben könnte.

### Die Kategorien

| | |
| :--- | :--- |
| `S` | sensibel |
| `I` | intermediär |
| `SDD` | sensibel, dosisabhängig |
| `R` | resistent |
| `NS` | nicht sensibel |

EUCAST hat `I` im Jahr 2019 neu definiert als **sensibel bei erhöhter Exposition**. Wo diese Lesart gemeint ist, drückt SNOMED CT `1306583007` sie ausdrücklich aus, statt `I` mehrdeutig zu lassen.

### Die Norm, auf der die Bewertung beruht

Eine Kategorie ist ohne die zugrunde liegenden Grenzwerte bedeutungslos: dieselbe MHK ist unter der einen Norm sensibel und unter der anderen resistent, und Grenzwerte ändern sich von Jahr zu Jahr.

Die Norm hängt deshalb an der **Bewertung**, nicht an der Observation — `Observation.interpretation.extension`, verpflichtend. Da `interpretation` `0..*` ist, kann eine einzige gemessene MHK eine EUCAST- und eine CLSI-Kategorie nebeneinander tragen, jede mit ihrer eigenen Norm. An der Observation hängend wäre das nicht möglich.

Die Norm wird aus dem moduleigenen CodeSystem kodiert: `EUCAST`, `CLSI`, `Andere`.

### Die voraussichtliche Empfindlichkeit ist eine andere Aussage

Eine aus einem Resistenzmechanismus abgeleitete Empfindlichkeit — ein Gen, eine Mutation oder ein Protein wurde gefunden, also ist Resistenz zu erwarten — ist **nicht** dieses Profil. Sie hat keinen Messwert und gehört zur **Voraussichtlichen Empfindlichkeit**, deren Ergebnis die erwartete Kategorie selbst ist. Die Ableitung ist bewusst technologieoffen: ein per Lateral Flow nachgewiesenes PBP2a-Protein trägt sie ebenso wie ein per PCR gefundenes `mecA`-Gen. Siehe [Profilauswahl und Abgrenzung](profilauswahl-und-abgrenzung.md).

Dieselbe Grenze gilt für den zielgerichteten Nachweis eines resistenten Erregers: ein MRSA- oder VRE-Nachweis sagt, welcher Erreger gefunden wurde, nicht wie empfindlich er ist, und gehört zu den Bestimmungs- oder Kulturprofilen.

### Weitere Bewertungen in diesem Modul

`interpretation` ist nicht auf die Empfindlichkeit beschränkt. Die Keimzahl trägt eine semiquantitative Einordnung des Messwerts, die Aviditätsbestimmung trägt niedrig, intermediär oder hoch. Das Muster ist jedes Mal dasselbe: der Wert bleibt gemessen, die Bewertung bleibt getrennt.

