<!-- markdownlint-disable MD041 -->
<!-- Neue Seite 2026-09-03, nach dem Muster der Interpretation-Seite von
     kerndatensatzmodul-labor. Das Material ist nicht neu: es lag im ^purpose des
     Empfindlichkeits-Profils, in der Norm-Extension und unter "Resistance
     categories" auf profilauswahl-und-abgrenzung. Die Seite ordnet es, sie
     ergänzt nichts — jede Aussage geht auf eine dieser Stellen zurück. -->

Ein Empfindlichkeitsergebnis trägt zwei verschiedene Aussagen: was **gemessen**
wurde und wie diese Messung **bewertet** wird. Das Modul hält beides auseinander.

### Messwert und Bewertung

`Observation.value[x]` trägt die Messung — eine minimale Hemmkonzentration in
mg/L oder einen Hemmhofdurchmesser in mm. Es ist eine `Quantity` und nichts
sonst; ein bloßes S/I/R ohne Messwert gehört nicht hierher.

`Observation.interpretation` trägt die Bewertung: die Kategorie, in die der
Messwert fällt. Konsumenten haben damit genau eine Stelle, an der die Kategorie
steht, und der Messwert bleibt laborübergreifend vergleichbar.

### Die Kategorien

| Code | Bedeutung |
|---|---|
| `S` | sensibel |
| `I` | intermediär |
| `SDD` | sensibel, dosisabhängig |
| `R` | resistent |
| `NS` | nicht sensibel |

EUCAST hat `I` im Jahr 2019 neu definiert als *sensibel bei erhöhter Exposition*.
Wo diese Lesart gemeint ist, drückt SNOMED CT `1306583007` sie ausdrücklich aus,
statt `I` mehrdeutig zu lassen.

### Die Norm, auf der die Bewertung beruht

Eine Kategorie ist ohne die zugrunde liegenden Grenzwerte bedeutungslos: dieselbe
MHK ist unter der einen Norm sensibel und unter der anderen resistent, und
Grenzwerte ändern sich von Jahr zu Jahr.

Die Norm hängt deshalb an der **Bewertung**, nicht an der Observation —
`Observation.interpretation.extension`, verpflichtend. Da `interpretation`
`0..*` ist, kann eine einzige gemessene MHK eine EUCAST- und eine CLSI-Kategorie
nebeneinander tragen, jede mit ihrer eigenen Norm. An der Observation hängend
wäre das nicht möglich.

Die Norm wird aus dem moduleigenen CodeSystem kodiert: `EUCAST`, `CLSI`,
`Andere`.

{:.bg-warning}
**Offener Punkt.** Die *Version* der Norm ist bisher nicht ausdrückbar, obwohl
sich Grenzwerte jährlich ändern. Ohne Jahresangabe lässt sich eine gespeicherte
MHK später nicht reinterpretieren. Siehe die Entscheidungsliste im
Migrationsreport.

### Die voraussichtliche Empfindlichkeit ist eine andere Aussage

Eine aus einem Resistenzmechanismus abgeleitete Empfindlichkeit — ein Gen, eine
Mutation oder ein Protein wurde gefunden, also ist Resistenz zu erwarten — ist
**nicht** dieses Profil. Sie hat keinen Messwert und gehört zur
*Voraussichtlichen Empfindlichkeit*, deren Ergebnis die erwartete Kategorie
selbst ist. Die Ableitung ist bewusst technologieoffen: ein per Lateral Flow
nachgewiesenes PBP2a-Protein trägt sie ebenso wie ein per PCR gefundenes
`mecA`-Gen. Siehe
[Profilauswahl und Abgrenzung](profilauswahl-und-abgrenzung.html).

Dieselbe Grenze gilt für den zielgerichteten Nachweis eines resistenten
Erregers: ein MRSA- oder VRE-Nachweis sagt, welcher Erreger gefunden wurde, nicht
wie empfindlich er ist, und gehört zu den Bestimmungs- oder Kulturprofilen.

### Weitere Bewertungen in diesem Modul

`interpretation` ist nicht auf die Empfindlichkeit beschränkt. Die Keimzahl trägt
eine semiquantitative Einordnung des Messwerts, die Aviditätsbestimmung trägt
niedrig, intermediär oder hoch. Das Muster ist jedes Mal dasselbe: der Wert
bleibt gemessen, die Bewertung bleibt getrennt.
