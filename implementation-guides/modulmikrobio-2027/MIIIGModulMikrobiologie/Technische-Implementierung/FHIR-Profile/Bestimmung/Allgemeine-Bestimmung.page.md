---
canonical: https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-allgemeine-bestimmung
capability: https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/CapabilityStatement/metadata
resType: Observation
expand: 1
---
## {{link}}

Allgemeine Bestimmung beschreibt die Identifikation eines Mikroorganismus oder infektiösen Agens in einer Probe, ohne Einschränkung auf ein vordefiniertes Ziel.

### Ergebnis

Das Ergebnis ist der identifizierte Mikroorganismus aus `mii-vs-mikrobio-organismen-snomedct`. Wurde untersucht, aber kein Erreger identifiziert, wird `260415000 |Not detected|` angegeben — nicht das Weglassen der Observation.

Abzugrenzen von den benachbarten Negativfällen:

| Aussage | Profil | Wert |
|---|---|---|
| Kein Erreger identifiziert | Allgemeine Bestimmung | `260415000 \|Not detected\|` |
| Kein Wachstum in der Kultur | [Allgemeine Kultur](../Kultur/Allgemeine-Kultur.page.md) | `264868006 \|No growth\|` |
| Ein bestimmter Erreger wurde gesucht und nicht gefunden | [Spezifische Bestimmung](Spezifische-Bestimmung.page.md) | `260415000 \|Not detected\|` |

`264868006 |No growth|` ist an das Wachstum in der Kultur gebunden und bleibt deshalb den Kulturprofilen vorbehalten. Ein unbestimmbares Ergebnis wird über `dataAbsentReason` abgebildet, nicht über `Not detected`.

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

{{json:mii-exa-mikrobio-allgemeine-bestimmung}}
