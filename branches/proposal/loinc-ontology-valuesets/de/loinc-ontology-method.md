# LOINC Ontology – Wie die ValueSets gebaut werden - MII Implementation Guide Microbiology v2027.0.0-ballot2

* [**Inhaltsverzeichnis**](toc.md)
* [**ValueSets**](value-sets.md)
* [**LOINC-Ontology-ValueSets (Vorschlag)**](loinc-ontology-valuesets.md)
* **LOINC Ontology – Wie die ValueSets gebaut werden**

## LOINC Ontology – Wie die ValueSets gebaut werden

Diese Seite erklärt, wie jedes ValueSet des [LOINC-Ontology-Vorschlags](loinc-ontology-valuesets.md) konstruiert ist, damit eine Leserin eine Regel prüfen, ein ValueSet auf einem Terminologieserver expandieren und die Artefakte für ein neues Release neu erzeugen kann. Sie ist das mikrobiologische Gegenstück zum gleichen Vorschlag für das Labormodul.

### Die LOINC Ontology in einem Absatz

Die [LOINC Ontology](https://loincsnomed.org) wird gemeinsam vom Regenstrief Institute und SNOMED International veröffentlicht. Sie bildet LOINC-Laborterme als SNOMED-CT-Konzepte in einem Extension-Modul ab (Modul-ID `11010000107`), eingehängt unter **Observable entity**. Jedes Konzept trägt seinen LOINC-Code als alternativen Identifikator und ist mit den Attributen modelliert, aus denen ein LOINC-Term besteht. Weil die Konzepte in SNOMED CT liegen, kann die SNOMED Expression Constraint Language (ECL) sie über Attributwerte selektieren, einschließlich der Subtyp-Hierarchien des Werts, was für die Mikrobiologie die Erregerhierarchie, die Substanzhierarchie von Antikörpern, Antigenen und Nukleinsäuren und die Technikhierarchie bedeutet.

| | | | |
| :--- | :--- | :--- | :--- |
| Property | `370130000` | Property | Susceptibility |
| Scale type | `370132008` | Scale | (keine ausgewiesen) |
| Direct site | `704327008` | System | Microbial isolate specimen |
| Technique | `246501002` | Method | (keine) |
| Inheres in | `704319004` | – | Organism |
| Towards | `704320005` | Component (das Antibiotikum) | Delafloxacin |
| Component | `246093002` | Component | (keine bei Empfindlichkeit) |
| Time aspect | `370134009` | Time | Single point in time |

Die Mikrobiologie nutzt zwei Attribute, die die Laboranalyte nicht haben: **Inheres in** trägt den Erreger, um den es bei einem Identitäts-, Typ- oder Empfindlichkeits-Observable **geht**; **Towards** trägt die antimikrobielle Substanz eines Empfindlichkeitstests. Der Erreger steht stattdessen in **Component**, wenn er das Gezählte oder Nachgewiesene ist (Keimzahlen, Threshold-Presence eines benannten Erregers durch Kultur). Nukleinsäuren, Antigene und Antikörper sind Substanzen in Component. Eine Regel über „einen Erreger“ prüft deshalb Inheres in und Component zusammen.

### Aufbau einer Regel

Die Regel für die Anforderung **phänotypische Empfindlichkeit** lautet:

```
<< 363787002 |Observable entity| :
    370130000 |Property|    = 118588007 |Susceptibility|,
    704327008 |Direct site| = << 119303007 |Microbial isolate specimen|,
    [0..0] 246501002 |Technique| = << 708060009 |Genotype determination technique|

```

Zu lesen als: jedes Observable, dessen Property Susceptibility ist, dessen Material ein mikrobielles Isolat oder ein Subtyp davon ist und das **keine** Technique hat, die eine Genotypisierungstechnik ist. `<<` bedeutet „dieses Konzept und alle seine Nachfahren“; ohne es muss der Wert exakt passen. Die Kardinalität `[0..0]` ist die Art der ECL, einen Attributwert auszuschließen: Sie behält Observables ohne jede Technik und Observables mit einer phänotypischen Technik und entfernt nur die genotypischen. Dieselbe Zerlegung steht als Tabelle auf jeder Anforderungsseite:

| | |
| :--- | :--- |
| Property | Susceptibility |
| Direct site | `<< Microbial isolate specimen` |
| Technique | keines,`[0..0]`:`<< Genotype determination technique` |

### Warum die Technique-Klausel Sorgfalt braucht

LOINC nennt in vielen mikrobiologischen Termen eine Methode (`by Culture`, `by Gram stain`, `by NAA with probe detection`, `by Molgen`). Die LOINC Ontology weist nicht für alle eine Technique aus: Im Release 2026-10-21 tragen mehrere hundert Nukleinsäurenachweis-Observables, der bevorzugte Code der allgemeinen Mikroskopie 105059-0 und fast alle quantitativen Serologie-Observables gar keine Technique. Eine Regel mit verpflichtender Technique-Klausel verliert sie stillschweigend. Die Anforderungsseiten zeigen deshalb neben jeder Regel mit Technik eine zweite ohne sie oder mit `[0..0]`, damit der Verlust als Zahl sichtbar wird statt verborgen zu bleiben.

### Die drei Teile jedes ValueSets

Jedes ValueSet dieses Vorschlags hat dasselbe `compose`:

1. **LOINC-Aufzählung.**Die LOINC-Codes aller Konzepte, die die Regel selektiert, als`include`auf`http://loinc.org`mit Version 2.83, dem LOINC-Release, auf dem die LOINC Ontology 2026-10-21 gebaut ist. Diesen Teil kann jeder FHIR-Validator und jeder Terminologieserver heute nutzen.
1. **Observables ohne LOINC-Code.**Die LOINC Ontology enthält auch Observables, für die noch kein LOINC-Code existiert. Sie sind als SNOMED-CT-Codes aufgeführt, damit das ValueSet vollständig ist und ein Standort sieht, wo ein LOINC-Antrag aussteht.
1. **Die Regel.**Die ECL als intensionales`include`auf`http://snomed.info/sct`mit`filter.property = constraint`, gepinnt auf das Release`http://snomed.info/sct/11010000107/version/20261021`. Sie dokumentiert, warum die Codes aus Teil 1 enthalten sind, und sie ist der Teil, der sich neu erzeugt.

Teil 1 und 2 sind die Aufzählung von Teil 3 zum genannten Release. Sie sind keine unabhängigen Quellen. Wo ein Modulprofil mehrere Regeln braucht (spezifische Bestimmung: Nukleinsäure, gezielte Kultur und Antigennachweis), vereinigt eine vierte Art von ValueSet die Regel-ValueSets mit `include codes from valueset`, und das abgeleitete Profil bindet diese Vereinigung.

### Expandieren und Validieren

* Auf einem Terminologieserver, der das LOINC-Ontology-Release hält (zum Beispiel Snowstorm mit geladener LOINC-Extension oder der LOINC-Ontology-Browser), expandieren alle drei Teile, und die Expansion gleicht der Aufzählung.
* Auf einem Server ohne die LOINC Ontology lassen sich die SNOMED-CT-Includes nicht auflösen; der QA-Bericht des Builds zeigt das als Warnung je ECL-Include und als Fehler je aufgezähltem SNOMED-CT-Code ohne LOINC-Code. Die LOINC-Aufzählung expandiert weiterhin, und die Validierung eines `Observation.code` mit LOINC-Code funktioniert wie gewohnt.
* Die LOINC-Aufzählung ist absichtlich auf LOINC 2.83 und nicht auf den 2.82-Pin des Moduls gepinnt: Der öffentliche HL7-Terminologieserver hält 2.83 und nicht 2.82, und 2026-10-21 hat Observables für Codes eingeführt, die erst ab 2.83 existieren. Ein Validator, der `Observation.code` gegen ein abgeleitetes Profil prüft, braucht nur diese Aufzählung.
* **Der QA-Bericht des IG-Builds sieht diesen Pin nicht.** Das Expansions-Manifest des Moduls (`input/resources/Parameters-expansion-manifest.json`) setzt `force-system-version` auf LOINC 2.82 für den ganzen Leitfaden, der Publisher validiert also jeden aufgezählten Code gegen 2.82, was immer das ValueSet sagt. Gegen den öffentlichen HL7-Server, der 2.82 nicht mehr hält, ergibt das zwei Fehler je aufgezähltem Code („Version 2.82 nicht gefunden“, „Code in 2.83 nicht gültig“); jeder dieser Codes validiert einzeln in LOINC 2.83 auf demselben Server. Ein Build des Moduls ohne diesen Vorschlag zeigt dieselbe Art Fehler für seine eigenen filterbasierten ValueSets und Beispiele, in kleinerer Zahl.
* Die eigene CI des Moduls validiert über einen Proxy gegen den MII-Terminologieserver. In den aktuellen Läufen meldet dieser Server jeden aufgezählten Code eines ValueSet-Includes als ungültig, aus einem Grund, der nichts mit den Codes zu tun hat (der Batch-Request des Validators enthält nicht die ValueSet-Referenz, die der Server verlangt), auch bei den modul­eigenen ValueSets. Fehlerzahlen auf der Branch-Vorschau messen daher den Terminologie-Aufbau, nicht die ValueSets.

### Versionen und Neuerzeugung

Die Artefakte sind auf **LOINC Ontology 2026-10-21** gepinnt. Für ein neues Release lässt der Generator jede Regel neu laufen, listet die Konzepte, die in jedes ValueSet eingetreten oder aus ihm ausgeschieden sind, und schreibt diese Seiten neu; das aktuelle Delta steht auf der Seite [Release-Delta](loinc-ontology-release-delta.md). Ein Release kann auch die Attribute selbst umbauen. Zwischen 2026-03-21 und 2026-10-21 hat die LOINC Ontology die qualitativen Presence-Observables von Property `Presence` (705057003) auf `Threshold (property)` (118589004) verschoben und sie in „Threshold presence of …“ umbenannt; die Regeln auf diesem Branch prüfen beide Werte, damit altes und neues Release vergleichbar bleiben. Im selben Release hat ein Gram-Färbungs-Code seine Technique verloren (107527-4, jetzt **Threshold presence of clue cell in vagina** ohne Färbung) und ist so aus der Menge der spezifischen Mikroskopie gefallen, ohne dass sich sein LOINC-Term geändert hätte. Das ist die Art Bewegung, die eine Neuerzeugung sichtbar macht und eine handgepflegte Liste nicht bemerken würde.

