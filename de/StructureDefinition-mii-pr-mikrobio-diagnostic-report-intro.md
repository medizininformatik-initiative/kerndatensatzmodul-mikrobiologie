<!-- MIGRATED verbatim from Simplifier page: MIIIGModulMikrobiologie/Technische-Implementierung/FHIR-Profile/Diagnostic-Report.page.md  -->
Mikrobiologischer Befundbericht zur Zusammenfassung und Kontextualisierung zugehöriger mikrobiologischer Untersuchungsergebnisse.

### Kategorie und Befundtyp

`DiagnosticReport.category` trägt zwei Slices mit unterschiedlicher Aufgabe:

| Slice | Kardinalität | Inhalt |
|---|---|---|
| `mibi-category` | 1..1 | Kennzeichnet den Befund als mikrobiologisch: `v2-0074#MB \|Microbiology\|`, verpflichtend, dazu optional `18725-2 \|Microbiology studies\|` |
| `mibi-sub-category` | 0..* | Fachlicher Befundtyp aus `mii-vs-mikrobio-befundtyp-loinc`, z. B. `92894-5 \|Microbiology - bacterial studies\|` |

Der Befundtyp ist optional. Ein Befund, der sich keinem der Studientypen zuordnen lässt oder nur allgemein eingeordnet werden soll, wird über `mibi-category` allein abgebildet — ein allgemeiner Befundtyp-Code ist dafür nicht nötig und existiert in dieser LOINC-Familie auch nicht.

Umfasst ein Befund mehrere Studientypen, etwa den Nachweis von Bakterien **und** Pilzen, werden mehrere Subtypen angegeben:

```json
"category": [
  { "coding": [
      { "system": "http://terminology.hl7.org/CodeSystem/v2-0074", "code": "MB", "display": "Microbiology" },
      { "system": "http://loinc.org", "code": "18725-2", "display": "Mikrobiologie" } ] },
  { "coding": [ { "system": "http://loinc.org", "code": "92894-5",
                  "display": "Microbiology - bacterial studies" } ] },
  { "coding": [ { "system": "http://loinc.org", "code": "96398-3",
                  "display": "Microbiology - mycology studies" } ] }
]
```

### Die zusammenfassende Beurteilung

`DiagnosticReport.conclusion` trägt die zusammenfassende Beurteilung des Labors
als Freitext. Das Element ist Must Support, geerbt aus dem Labor-Basisprofil, und
in der Serologie ist es der tragende Teil des Befunds und nicht Beigabe.

Der Grund: Eine serologische Diagnose ist oft keine ihrer Einzelmessungen. Bei
akuter EBV-Infektion erscheint zuerst IgM gegen das Viruskapsid-Antigen, dann
VCA-IgG, und EBNA-IgG entsteht erst nach sechs bis zwölf Wochen. Jedes der drei
Ergebnisse ist eine eigene Observation; die Aussage „frische Infektion" oder
„durchgemachte Infektion" ergibt sich erst aus der Zusammenschau und ist keine von
ihnen. Das europäische Whitepaper formuliert es als „a serological report is often
more than the sum of its parts" und verlangt, dass die Beurteilung austauschbar
ist — „free text to begin with".

`conclusionCode` wird hier bewusst nicht eingeschränkt. Das Whitepaper schlägt für
den Anfang Freitext vor, und dieses Modul hat kein ValueSet für kodierte
Gesamtaussagen.

### Was der Befund bündelt und was die Observations tragen

`DiagnosticReport.result` referenziert die Untersuchungen, die der Befund umfasst,
darunter jeden Schritt einer diagnostischen Kette von der Kultur bis zu einer
abgeleiteten Resistenzkategorie. Die Liste ist flach und trägt keine Ordnung: Sie
sagt, welche Untersuchungen zu diesem Befund gehören, nicht, wie sie
zusammenhängen.

Diese Zusammenhänge werden an den Observations selbst angegeben — `triggeredBy`
für eine ausgelöste Folgediagnostik, `derivedFrom` für ein abgeleitetes Ergebnis,
`hasMember` für ein über einen Organizer zusammengefasstes Panel. Ein Konsument
liest also den Befund für den Umfang einer Untersuchungsfolge und die Observations
für ihre Struktur.
[Profilauswahl und Abgrenzung](profilauswahl-und-abgrenzung.html) beschreibt die
Arbeitsteilung zwischen den drei Elementen.

### Beispiele

Beispiel (minimal):

[mii-exa-mikrobio-diagnostic-report](DiagnosticReport-mii-exa-mikrobio-diagnostic-report.html)

