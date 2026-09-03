Microbiological diagnostic report for summarising and contextualising related microbiological investigation results.

### Category and report type

`DiagnosticReport.category` carries two slices with different jobs:

| Slice | Cardinality | Content |
|---|---|---|
| `mibi-category` | 1..1 | Marks the report as microbiological: `v2-0074#MB \|Microbiology\|`, mandatory, plus optionally `18725-2 \|Microbiology studies\|` |
| `mibi-sub-category` | 0..* | Clinical report type from `mii-vs-mikrobio-befundtyp-loinc`, e.g. `92894-5 \|Microbiology - bacterial studies\|` |

The report type is optional. A report that cannot be assigned to any of the study types, or that is to be classified only generally, is represented via `mibi-category` alone - a general report-type code is not needed for that and does not exist in this LOINC family either.

If a report covers several study types, for instance detection of bacteria **and** fungi, several sub-types are given:

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

### Examples

Example (minimal):

[mii-exa-mikrobio-diagnostic-report](DiagnosticReport-mii-exa-mikrobio-diagnostic-report.html)
