<!-- MIGRATED verbatim from Simplifier page: MIIIGModulMikrobiologie/Technische-Implementierung/FHIR-Profile/Quantitative-tests/Titer.page.md  -->
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

### Beispiele

Beispiel (minimal):

[mii-exa-mikrobio-titer](Observation-mii-exa-mikrobio-titer.html)

