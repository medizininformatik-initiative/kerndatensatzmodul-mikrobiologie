Detection, susceptibility testing and classification are different diagnostic statements and are represented in this module by different profiles. This page describes the delimitation, the representation of negative results, and the linking of investigations into a diagnostic chain.

> **Key statement:** a negative result of a targeted pathogen detection is represented via Specific determination or Specific culture. MRGN classification and resistance category status, by contrast, presuppose an already detected pathogen and do not replace a detection test.

### Which profiles belong to my laboratory area

A profile appears under more than one area on purpose. The model is
method-neutral: how an investigation was performed is stated in
`Observation.method`, not by choosing a different profile. Specific determination
therefore serves the molecular bench and the serology bench alike.

**Culture**

* [Microscopy](StructureDefinition-mii-pr-mikrobio-mikroskopie.html) — morphology without taxonomic assignment
  * [Barlett score](StructureDefinition-mii-pr-mikrobio-barlett-score.html) — is a sputum specimen fit for culture?
  * [Nugent score](StructureDefinition-mii-pr-mikrobio-nugent-score.html) — Gram-stain score for bacterial vaginosis
* [General culture](StructureDefinition-mii-pr-mikrobio-allgemeine-kultur.html) — growth or no growth, untargeted
* [Specific culture](StructureDefinition-mii-pr-mikrobio-spezifische-kultur.html) — growth or no growth, targeted, e.g. MRSA screening
* [Colony count](StructureDefinition-mii-pr-mikrobio-keimzahl.html) — viable count per volume or mass
* [General determination](StructureDefinition-mii-pr-mikrobio-allgemeine-bestimmung.html) — species identification, typically MALDI-TOF MS
* [Susceptibility](StructureDefinition-mii-pr-mikrobio-empfindlichkeit.html) — phenotypic testing, S/I/R with MIC or zone diameter
* Further properties, **of an organism grown in culture**:
  * [Virulence factor](StructureDefinition-mii-pr-mikrobio-virulenzfaktor.html)
  * [Resistance mechanisms](StructureDefinition-mii-pr-mikrobio-resistenzmechanismen-determinanten.html)
  * [MRGN class](StructureDefinition-mii-pr-mikrobio-mrgn-klasse.html)
  * [MRE class](StructureDefinition-mii-pr-mikrobio-resistenzkategorie-status.html) — MRSA, VRE, LRE and LVRE status; the profile is named *Resistance category status*
  * [Predicted susceptibility](StructureDefinition-mii-pr-mikrobio-voraussichtliche-empfindlichkeit.html)

**Molecular**

* [Specific determination](StructureDefinition-mii-pr-mikrobio-spezifische-bestimmung.html) — single and multiplex PCR against defined targets, qualitative
* [General determination](StructureDefinition-mii-pr-mikrobio-allgemeine-bestimmung.html) — panbacterial or panfungal PCR, sequencing, NGS
* [Molecular pathogen load](StructureDefinition-mii-pr-mikrobio-molekulare-pathogenlast.html) — quantitative molecular results
* Further properties, **direct from the material**, without a culture step:
  * [Virulence factor](StructureDefinition-mii-pr-mikrobio-virulenzfaktor.html)
  * [Resistance mechanisms](StructureDefinition-mii-pr-mikrobio-resistenzmechanismen-determinanten.html)
  * [Predicted susceptibility](StructureDefinition-mii-pr-mikrobio-voraussichtliche-empfindlichkeit.html)

**Serology**

* [Specific determination](StructureDefinition-mii-pr-mikrobio-spezifische-bestimmung.html) — antigen or antibody, qualitative
* [Antigen/antibody quantitative](StructureDefinition-mii-pr-mikrobio-antigen-antikoerper-quantitativ.html) — quantitative results
* [Titre](StructureDefinition-mii-pr-mikrobio-titer.html) — serial dilution, reported as a ratio
* [Avidity](StructureDefinition-mii-pr-mikrobio-aviditaet.html) — fresh versus past infection

**Across all areas**

* [Diagnostic report](StructureDefinition-mii-pr-mikrobio-diagnostic-report.html) — gathers the investigations belonging to one microbiological report
* [Ct value](StructureDefinition-mii-pr-mikrobio-ct-wert.html) — the cycle threshold itself. What normally leaves the laboratory is the result derived from it, so this profile is the exception rather than the rule.

### Why some techniques get their own profile and others do not

A profile is defined by the **question asked and the type of its result**, not by
the technique. That is why the answer differs between qualitative and
quantitative results, which can look inconsistent at first sight:

* **Qualitative detection** has one result space — `Detected` / `Not detected` —
  whether the target was found by PCR or by immunoassay. One profile suffices,
  and `Observation.method` says which technique produced it.
* **Quantitative measurement** does not. Copies per millilitre, a concentration
  and a dilution step are different result spaces with different units, so
  molecular pathogen load, quantitative antigen/antibody testing and titre are
  separate profiles.
* **Culture** is separate again for the same reason: its result is neither an
  organism nor detected/not-detected, but growth or no growth.

So the rule is the same in each case; only the number of distinct result spaces
differs.

### Delimitation of the three statement types

| Question | Profile | `Observation.code` | `Observation.value` |
|---|---|---|---|
| Is a predefined target detectable? (non-culture) | Specific determination | LOINC detection test, e.g. `105904-7` | `Detected` / `Not detected` |
| Does a predefined microorganism grow? | Specific culture | LOINC culture test, e.g. `13316-5` | `Organism growth` / `No growth` |
| Is a resistance gene detectable? | Resistance mechanisms / determinants | LOINC determinant, e.g. `48813-0` | `Detected` / `Not detected` |
| How susceptible is an identified isolate to a substance? | Susceptibility | LOINC `[Susceptibility]`, e.g. `29258-1` | MIC as `Quantity`, assessment in `interpretation` (S / I / R) |
| Which MRGN class does an identified Gram-negative isolate belong to? | MRGN class | `99780-9` | Classification value, e.g. `3MRGN`, or `keine-mrgn-klasse` |
| Does a detected pathogen meet the criteria of a defined resistance category? | Resistance category status | `mrsa-status`, `vre-status`, `lre-status`, `lvre-status` (MII) | `Positive` / `Negative` |

### Negative results

#### Negative targeted pathogen detection

The investigation delivers the negative result of the detection test actually performed.

VRE detection by culture, negative:

[mii-exa-mikrobio-spezifische-kultur-vre-negativ](Observation-mii-exa-mikrobio-spezifische-kultur-vre-negativ.html)

VRE detection molecular or method-neutrally coded, negative:

[mii-exa-mikrobio-spezifische-bestimmung-vre-negativ](Observation-mii-exa-mikrobio-spezifische-bestimmung-vre-negativ.html)

#### No MRGN class

To be distinguished from this is the case in which a Gram-negative isolate was identified and its susceptibility testing assessed, but it cannot be assigned to any MRGN class. This is a **negative classification** and is represented via the value `keine-mrgn-klasse` of the CodeSystem `mii-cs-mikrobio-mrgn-ergebnis`:

[mii-exa-mikrobio-mrgn-klasse-negativ](Observation-mii-exa-mikrobio-mrgn-klasse-negativ.html)

The LOINC answer list for `99780-9` contains only 2MRGN, 3MRGN and 4MRGN and therefore no negative value; the MII-specific code closes that gap.

#### Resistance category status = Negative

Different again is the assessment of a pathogen already present with respect to a resistance category:

[mii-exa-mikrobio-resistenzkategorie-vre-negativ](Observation-mii-exa-mikrobio-resistenzkategorie-vre-negativ.html)

`Negative` means: a detected pathogen was sufficiently assessed on the basis of the investigations relevant to the category named in `code` and does not meet its criteria. It explicitly does **not** mean that no pathogen was detected, that no resistance is present, or that no sufficient diagnostics were performed.

If the category cannot be assessed sufficiently, `Negative` is not given; instead `dataAbsentReason` is set or no status Observation is created at all.

The three cases in direct comparison, each for VRE:

| Statement | Profile | `code` | `value` |
|---|---|---|---|
| VRE was sought and not found | Specific culture | `13316-5` | `No growth` |
| VRE was sought and not found (molecular) | Specific determination | `105904-7` | `Not detected` |
| An *Enterococcus* present is not a VRE | Resistance category status | `vre-status` | `Negative` |

### Resistance categories

The resistance category status always assesses **one** named category. Including a category must be justified on domain grounds; not every individual antimicrobial resistance is a resistance category. In particular, no implicit derivation from the SNOMED subtree "antimicrobial resistant organism" takes place.

| Code | Category | Basis of assessment |
|---|---|---|
| `mrsa-status` | MRSA | *Staphylococcus aureus* + methicillin/oxacillin resistance (phenotypic or `mecA`/`mecC`) |
| `vre-status` | VRE | *Enterococcus* + vancomycin resistance (phenotypic or `vanA`/`vanB`) |
| `lre-status` | LRE | *Enterococcus* + linezolid resistance |
| `lvre-status` | LVRE | *Enterococcus* + linezolid **and** vancomycin resistance |

For Gram-negative pathogens with an MRGN classification, the representation is via [MRGN class](StructureDefinition-mii-pr-mikrobio-mrgn-klasse.html). There, the result of the MRGN assessment is given as `2MRGN`, `3MRGN`, `4MRGN` or `keine-mrgn-klasse`.

### Diagnostic chain on positive detection

A positive targeted detection can trigger follow-up diagnostics:

```
Positive targeted detection
(Specific determination or Specific culture)
        │
        │ triggeredBy (reflex)
        ▼
possibly further identification
        │
        │ triggeredBy (reflex)
        ▼
Susceptibility
        │
        ├── possibly resistance mechanisms / determinants
        │
        │ derivedFrom
        ▼
Resistance category status
  e.g. VRE status
  Positive / Negative
```

Where the detection is already pathogen-specific, the target is defined in the test code. After `MRSA detected` or `VRE detected`, no separate identification need follow. If it is omitted, the susceptibility refers directly to the detection and the resistance category status does not list it in `derivedFrom`.

For the triggering relationship, the R5 backport extension `extension-Observation.triggeredBy` with `type = reflex` is used, as described under [FHIR Profiles - Modelling Notes](fhir-profile.html). The last step is the exception named there: the resistance category status is **derived** from several investigations and is not a triggered follow-up investigation - here `derivedFrom` captures the semantics. Those investigations SHOULD be given so that the basis of the assessment remains traceable.

Complete example of a chain:

Step 1 - positive VRE detection by pathogen-specific culture:

[mii-exa-mikrobio-workflow-vre-01-kultur](Observation-mii-exa-mikrobio-workflow-vre-01-kultur.html)

Step 2 - further identification of the isolate (optional):

[mii-exa-mikrobio-workflow-vre-02-identifikation](Observation-mii-exa-mikrobio-workflow-vre-02-identifikation.html)

Step 3 - susceptibility testing:

[mii-exa-mikrobio-workflow-vre-03-empfindlichkeit](Observation-mii-exa-mikrobio-workflow-vre-03-empfindlichkeit.html)

Step 4 - derived resistance category status:

[mii-exa-mikrobio-resistenzkategorie-vre-positiv](Observation-mii-exa-mikrobio-resistenzkategorie-vre-positiv.html)
