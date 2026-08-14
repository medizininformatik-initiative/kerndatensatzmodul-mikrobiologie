---
canonical: https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-diagnostic-report
capability: https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/CapabilityStatement/metadata
resType: DiagnosticReport
expand: 1
---
## {{link}}

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

### Metadaten

<fql output="table" headers="true">
from
	StructureDefinition
where
	url = %canonical
select
	Canonical: url, Status: status, Version: version, Basis: baseDefinition
</fql>

### Inhalt

<tabs>
  <tab title="Darstellung">{{tree, buttons}}</tab>
  <tab title="XML">{{xml}}</tab>
  <tab title="JSON">{{json}}</tab>
  <tab title="Link">{{link}}</tab>
</tabs>

</br>

### Beispiele

Beispiel (minimal):

{{json:mii-exa-mikrobio-diagnostic-report}}
