Titre describes a semi-quantitative measurement from serial dilution series, reported as a ratio (e.g. 1:160).

### Search

The value is a `Ratio` with the numerator fixed at `1`; the dilution level is in the denominator. The base search parameter `value-quantity` does not apply here - its definition is `(Observation.value as Quantity) | (Observation.value as SampledData)` and does not include `Ratio`. The module-specific search parameter `titer` is therefore available for searching:

| | |
|---|---|
| Canonical | `https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/SearchParameter/Observation-titer` |
| Type | `quantity` |
| Expression | `Observation.value.ofType(Ratio).denominator` |

Since the numerator is fixed at `1`, a larger denominator corresponds to a higher titre:

```
GET Observation?code=http://loinc.org|22497-2&titer=gt160
```

returns all findings with a titre above 1:160.

### Examples

Example (minimal):

[mii-exa-mikrobio-titer](Observation-mii-exa-mikrobio-titer.html)
