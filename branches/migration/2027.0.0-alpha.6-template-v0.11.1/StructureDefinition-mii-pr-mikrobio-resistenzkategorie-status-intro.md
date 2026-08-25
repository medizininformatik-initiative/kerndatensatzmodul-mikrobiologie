<!-- DERIVED:no-source source=MIIIGModulMikrobiologie/Technische-Implementierung/FHIR-Profile/Weitere-Eigenschaften/Resistenzkategorie-Status.page.md gate=C -->
> **Written during migration - review before release.** TODO:REVIEW - this English page is a
> machine translation of the German source page named above, produced because the target
> template renders English as the default language and the source guide is German-only.
> The German mirror carries the original wording verbatim.
{: .ig-highlight .ig-highlight-blue}

Resistance category status represents the assessment of a detected pathogen with respect to a defined resistance category. The category assessed is in `Observation.code`, the result of the assessment in `Observation.valueCodeableConcept`.

```
MRSA status: Positive
VRE status:  Negative
LRE status:  Positive
```

The profile supersedes `mii-pr-mikrobio-mre-klasse`. There, the value was the concrete resistant organism species, e.g. MRSA or VRE. That modelling repeated pathogen and resistance information already represented via identification, susceptibility and resistance mechanisms, and was semantically broader than "MRE".

### Categories

| Code | Category | Basis of assessment |
|---|---|---|
| `mrsa-status` | MRSA | Identification as *Staphylococcus aureus* and detection of methicillin/oxacillin resistance, phenotypic or via `mecA`/`mecC` |
| `vre-status` | VRE | Identification as *Enterococcus* and detection of vancomycin resistance, phenotypic or via `vanA`/`vanB` |
| `lre-status` | LRE | Identification as *Enterococcus* and detection of linezolid resistance |
| `lvre-status` | LVRE | Identification as *Enterococcus* and detection of both linezolid and vancomycin resistance |

The categories are not mutually exclusive: a linezolid- and vancomycin-resistant *Enterococcus* may carry `vre-status`, `lre-status` and `lvre-status` with `Positive` at the same time.

### Terminology

`Observation.code` uses MII-specific codes from `mii-cs-mikrobio-resistenzkategorie`.

### Result

| Value                 | Meaning |
|-----------------------|---|
| `10828004 - Positive` | The assessed pathogen meets the criteria of the category given in `code`. |
| `260385009- Negative` | The pathogen was sufficiently assessed on the basis of the investigations relevant to this category and does not meet the criteria. |

`Negative` explicitly does **not** mean: negative targeted pathogen detection, no resistance present, pathogen not detected, or insufficient diagnostics performed. If the category could not be assessed sufficiently, `Negative` is not given; `dataAbsentReason` is set instead.

### Derivation

The category assessment is a derived clinical statement. The underlying investigations are referenced via `Observation.derivedFrom`. Possible inputs are: pathogen identification, susceptibility testing, and resistance mechanisms or resistance determinants.

These investigations **should** be given so that the basis of the assessment remains traceable.

`triggeredBy` is **not** used for this: the assessment arises by clinical derivation and not as a triggered follow-up investigation.

### Delimitation against direct detection

The category status does not replace a targeted pathogen detection:

| Procedure | Profile | Result |
|---|---|---|
| MRSA PCR | [Specific determination](StructureDefinition-mii-pr-mikrobio-spezifische-bestimmung.html) | `Detected` / `Not detected` |
| MRSA culture | [Specific culture](StructureDefinition-mii-pr-mikrobio-spezifische-kultur.html) | `Organism growth` / `No growth` |
| Assessment of a present *S. aureus* as MRSA | Resistance category status | `MRSA status` = `Positive` / `Negative` |

The same principle applies to VRE and the remaining categories.

### Examples

The examples show the pattern for the VRE category. It is identical for the remaining categories - only the code in `Observation.code` changes.

VRE status positive, with full derivation via `derivedFrom`:

[mii-exa-mikrobio-resistenzkategorie-vre-positiv](Observation-mii-exa-mikrobio-resistenzkategorie-vre-positiv.html)

VRE status negative:

[mii-exa-mikrobio-resistenzkategorie-vre-negativ](Observation-mii-exa-mikrobio-resistenzkategorie-vre-negativ.html)
