# LOINC-Ontology-ValueSets (Vorschlag) - MII Implementation Guide Microbiology v2027.0.0-ballot2

* [**Inhaltsverzeichnis**](toc.md)
* [**ValueSets**](value-sets.md)
* **LOINC-Ontology-ValueSets (Vorschlag)**

## LOINC-Ontology-ValueSets (Vorschlag)

Dieser Abschnitt ist ein **Vorschlag**, kein normativer Inhalt des Moduls. Er begleitet Ballot-Kommentare zu 2027.0.0-ballot2 und zeigt mit funktionierenden Artefakten, wie die LOINC-ValueSets der mikrobiologischen Anforderungsprofile aus der LOINC Ontology **berechnet** werden können, statt als LOINC-Property-Filter und handgepflegte Listen gewartet zu werden. Alles in diesem Abschnitt ist aus einem veröffentlichten Regelsatz erzeugt; nichts wurde nach der Erzeugung von Hand bearbeitet.

### Das Problem, das er adressiert

Das Modul 2027 postkoordiniert: ein generischer Anforderungscode je Profil, Erreger, Material und Methode in eigenen Elementen. Seine LOINC-ValueSets sind daher entweder kurze Aufzählungen der generischen Codes oder LOINC-Property-Filter (`CLASS`, `PROPERTY`, `METHOD_TYP`, `SCALE_TYP`). Property-Filter selektieren über die flachen Part-Werte von LOINC. Sie können nicht sagen „jeder Erreger unter **Enterobacterales**“, „jeder Antikörper gegen ein Virus“ oder „eine Kulturtechnik gleich welcher Art“, und sie können einen Erreger, der als **Gegenstand** einer Identifizierung genannt ist, nicht von einem unterscheiden, der als **Component** einer Zählung genannt ist.

Die LOINC Ontology macht die Regel selbst zum Artefakt. Jeder mikrobiologische LOINC-Term ist dort als SNOMED-CT-Observable mit expliziten Attributen abgebildet (was nachgewiesen wird, in welchem Erreger oder Material, welche Property, auf welcher Skala, mit welcher Technik, gegenüber welchem Antibiotikum), und diese Attributwerte sind SNOMED-CT-Konzepte mit Hierarchien. Ein ValueSet ist dann ein Ausdruck über diese Attribute, und seine LOINC-Aufzählung ist ein abgeleitetes Produkt, das sich für jedes Release neu erzeugen lässt.

### Was dieser Abschnitt bietet

| | | |
| :--- | :--- | :--- |
| [Wie die ValueSets gebaut werden](loinc-ontology-method.md) | Das Attributmodell der LOINC Ontology für die Mikrobiologie, der Aufbau einer Regel, die drei Teile jedes ValueSets, Expansion und Versionierung | Implementierende, Terminologinnen und Terminologen |
| [ValueSets je Anforderung](loinc-ontology-requests.md) | 29 Regeln in 11 Anforderungsfamilien, 31 ValueSets, 13 abgeleitete Observation-Profile, und wie weit die aufgezählten Codes des Moduls abgedeckt sind | Implementierende, die einen lokalen Katalog mappen, Validierer |
| [Release-Delta 2026-03-21 → 2026-10-21](loinc-ontology-release-delta.md) | Was das jüngste Release der LOINC Ontology jeder Regel hinzugefügt oder entzogen hat, mit den Codes | Terminologinnen und Terminologen, Modulredaktion |

Je Anforderungsfamilie eine Review-Seite:

* [Allgemeine Kultur](loinc-ontology-request-allgemeine-kultur.md) — 3 Regeln
* [Allgemeine Bestimmung](loinc-ontology-request-allgemeine-bestimmung.md) — 3 Regeln
* [Spezifische Bestimmung](loinc-ontology-request-spezifische-bestimmung.md) — 5 Regeln
* [Mikroskopie](loinc-ontology-request-mikroskopie.md) — 3 Regeln
* [Keimzahl](loinc-ontology-request-keimzahl.md) — 2 Regeln
* [Empfindlichkeit](loinc-ontology-request-empfindlichkeit.md) — 3 Regeln
* [Ct-Wert](loinc-ontology-request-ct-wert.md) — 2 Regeln
* [Molekulare Pathogenlast](loinc-ontology-request-molekulare-pathogenlast.md) — 2 Regeln
* [Antigen/Antikörper quantitativ](loinc-ontology-request-antigen-antikoerper-quantitativ.md) — 2 Regeln
* [Titer](loinc-ontology-request-titer.md) — 2 Regeln
* [Resistente Erreger und Resistenzmechanismen](loinc-ontology-request-resistenzmechanismen.md) — 2 Regeln

### Auf einen Blick

* Verwendetes Release: **LOINC Ontology 2026-10-21** (`http://snomed.info/sct/11010000107/version/20261021`), gebaut auf LOINC 2.83; der LOINC-Pin des Moduls ist 2.82, mehrere hundert der aufgezählten Codes sind also jünger als der Pin des Moduls.
* Jedes ValueSet trägt die LOINC-Aufzählung, die Observables der LOINC Ontology ohne LOINC-Code und die Regel selbst als intensionales SNOMED-CT-Include.
* Die abgeleiteten Profile verengen nur `Observation.code` der Modulprofile auf die berechnete Menge; alles andere ist geerbt.
* Alle Artefakte sind `draft` und `experimental`. Ihre kanonischen URLs folgen dem Modulmuster und wären stabil, wenn das Modul sie übernähme.
* Generator, Regelsatz und Release-Berichte: [loincsnomed-lab-concepts](https://github.com/medizininformatik-initiative/loincsnomed-lab-concepts) (Verzeichnis `config/micro`).

### Was ein Reviewer beurteilen soll

1. Ist eine berechnete, regelbasierte Definition der richtige Weg für das Modul, um zu sagen, welche LOINC-Codes zu einer Anforderung gehören, neben oder statt der LOINC-Property-Filter?
1. Das Modul bevorzugt methodenneutrale generische Codes (41852-5, 105059-0, die Keimzahlcodes). Mehrere davon sind gar nicht in der LOINC Ontology, und die Ontology weist bei vielen Codes keine Technik aus, obwohl LOINC eine Methode nennt. Welche Seite soll sich bewegen: die Präferenz des Moduls, die Ontology oder beide?
1. Die Resistenzdeterminanten des Moduls (Resistenzgene, Carbapenemasen) haben in der LOINC Ontology keinen Grouper; ausdrückbar ist nur der resistente**Erreger**. Ist das für das Profil Resistenzmechanismen tragbar, oder ist ein Änderungsantrag an die LOINC Ontology der richtige nächste Schritt?
1. Welche der Regeln auf den folgenden Seiten sollte das Modul anders entscheiden? Jede Entscheidung ist als Regel sichtbar und durch Ändern dieser Regel änderbar.

