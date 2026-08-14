---
canonical: https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-titer
capability: https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/CapabilityStatement/metadata
resType: Observation
expand: 1
---
## {{link}}

Titer beschreibt eine semiquantitative Messung aus seriellen Verdünnungsreihen, berichtet als Verhältnis (z. B. 1:160).

### Suche

Der Wert ist ein `Ratio` mit fest auf `1` gesetztem Zähler; die Verdünnungsstufe steht im Nenner. Der Basis-Suchparameter `value-quantity` greift hier nicht — seine Definition lautet `(Observation.value as Quantity) | (Observation.value as SampledData)` und schließt `Ratio` nicht ein. Für die Suche steht daher der modulspezifische Suchparameter `titer` zur Verfügung:

| | |
|---|---|
| Canonical | `https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/SearchParameter/Observation-titer` |
| Typ | `quantity` |
| Ausdruck | `Observation.value.ofType(Ratio).denominator` |

Da der Zähler fest `1` ist, entspricht ein größerer Nenner einem höheren Titer:

```
GET Observation?code=http://loinc.org|22497-2&titer=gt160
```

liefert alle Befunde mit einem Titer oberhalb von 1:160.

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

{{json:mii-exa-mikrobio-titer}}
