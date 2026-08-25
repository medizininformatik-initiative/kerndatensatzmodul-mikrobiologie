# Profile Selection and Delimitation - MII Implementation Guide Microbiology v2027.0.0-alpha.6

* [**Table of Contents**](toc.md)
* [**Home**](index.md)
* [**Technical Implementation**](technische-implementierung.md)
* **Profile Selection and Delimitation**

## Profile Selection and Delimitation

> **Written during migration - review before release.** TODO:REVIEW - this English page is a machine translation of the German source page named above; the German mirror carries the original wording verbatim.

Detection, susceptibility testing and classification are different diagnostic statements and are represented in this module by different profiles. This page describes the delimitation, the representation of negative results, and the linking of investigations into a diagnostic chain.

> **Key statement:** a negative result of a targeted pathogen detection is represented via Specific determination or Specific culture. MRGN classification and resistance category status, by contrast, presuppose an already detected pathogen and do not replace a detection test.

### Delimitation of the three statement types

| | | | |
| :--- | :--- | :--- | :--- |
| Is a predefined target detectable? (non-culture) | Specific determination | LOINC detection test, e.g.`105904-7` | `Detected`/`Not detected` |
| Does a predefined microorganism grow? | Specific culture | LOINC culture test, e.g.`13316-5` | `Organism growth`/`No growth` |
| Is a resistance gene detectable? | Resistance mechanisms / determinants | LOINC determinant, e.g.`48813-0` | `Detected`/`Not detected` |
| How susceptible is an identified isolate to a substance? | Susceptibility | LOINC`[Susceptibility]`, e.g.`29258-1` | MIC as`Quantity`, assessment in`interpretation`(S / I / R) |
| Which MRGN class does an identified Gram-negative isolate belong to? | MRGN class | `99780-9` | Classification value, e.g.`3MRGN`, or`keine-mrgn-klasse` |
| Does a detected pathogen meet the criteria of a defined resistance category? | Resistance category status | `mrsa-status`,`vre-status`,`lre-status`,`lvre-status`(MII) | `Positive`/`Negative` |

### Negative results

#### Negative targeted pathogen detection

The investigation delivers the negative result of the detection test actually performed.

VRE detection by culture, negative:

[mii-exa-mikrobio-spezifische-kultur-vre-negativ](Observation-mii-exa-mikrobio-spezifische-kultur-vre-negativ.md)

VRE detection molecular or method-neutrally coded, negative:

[mii-exa-mikrobio-spezifische-bestimmung-vre-negativ](Observation-mii-exa-mikrobio-spezifische-bestimmung-vre-negativ.md)

#### No MRGN class

To be distinguished from this is the case in which a Gram-negative isolate was identified and its susceptibility testing assessed, but it cannot be assigned to any MRGN class. This is a **negative classification** and is represented via the value `keine-mrgn-klasse` of the CodeSystem `mii-cs-mikrobio-mrgn-ergebnis`:

[mii-exa-mikrobio-mrgn-klasse-negativ](Observation-mii-exa-mikrobio-mrgn-klasse-negativ.md)

The LOINC answer list for `99780-9` contains only 2MRGN, 3MRGN and 4MRGN and therefore no negative value; the MII-specific code closes that gap.

#### Resistance category status = Negative

Different again is the assessment of a pathogen already present with respect to a resistance category:

[mii-exa-mikrobio-resistenzkategorie-vre-negativ](Observation-mii-exa-mikrobio-resistenzkategorie-vre-negativ.md)

`Negative` means: a detected pathogen was sufficiently assessed on the basis of the investigations relevant to the category named in `code` and does not meet its criteria. It explicitly does **not** mean that no pathogen was detected, that no resistance is present, or that no sufficient diagnostics were performed.

If the category cannot be assessed sufficiently, `Negative` is not given; instead `dataAbsentReason` is set or no status Observation is created at all.

The three cases in direct comparison, each for VRE:

| | | | |
| :--- | :--- | :--- | :--- |
| VRE was sought and not found | Specific culture | `13316-5` | `No growth` |
| VRE was sought and not found (molecular) | Specific determination | `105904-7` | `Not detected` |
| An**Enterococcus**present is not a VRE | Resistance category status | `vre-status` | `Negative` |

### Resistance categories

The resistance category status always assesses **one** named category. Including a category must be justified on domain grounds; not every individual antimicrobial resistance is a resistance category. In particular, no implicit derivation from the SNOMED subtree "antimicrobial resistant organism" takes place.

| | | |
| :--- | :--- | :--- |
| `mrsa-status` | MRSA | **Staphylococcus aureus**+ methicillin/oxacillin resistance (phenotypic or`mecA`/`mecC`) |
| `vre-status` | VRE | **Enterococcus**+ vancomycin resistance (phenotypic or`vanA`/`vanB`) |
| `lre-status` | LRE | **Enterococcus**+ linezolid resistance |
| `lvre-status` | LVRE | **Enterococcus**+ linezolid**and**vancomycin resistance |

For Gram-negative pathogens with an MRGN classification, the representation is via [MRGN class](StructureDefinition-mii-pr-mikrobio-mrgn-klasse.md). There, the result of the MRGN assessment is given as `2MRGN`, `3MRGN`, `4MRGN` or `keine-mrgn-klasse`.

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

For the triggering relationship, the R5 backport extension `extension-Observation.triggeredBy` with `type = reflex` is used, as described under [FHIR Profiles - Modelling Notes](fhir-profile.md). The last step is the exception named there: the resistance category status is **derived** from several investigations and is not a triggered follow-up investigation - here `derivedFrom` captures the semantics. Those investigations SHOULD be given so that the basis of the assessment remains traceable.

Complete example of a chain:

Step 1 - positive VRE detection by pathogen-specific culture:

[mii-exa-mikrobio-workflow-vre-01-kultur](Observation-mii-exa-mikrobio-workflow-vre-01-kultur.md)

Step 2 - further identification of the isolate (optional):

[mii-exa-mikrobio-workflow-vre-02-identifikation](Observation-mii-exa-mikrobio-workflow-vre-02-identifikation.md)

Step 3 - susceptibility testing:

[mii-exa-mikrobio-workflow-vre-03-empfindlichkeit](Observation-mii-exa-mikrobio-workflow-vre-03-empfindlichkeit.md)

Step 4 - derived resistance category status:

[mii-exa-mikrobio-resistenzkategorie-vre-positiv](Observation-mii-exa-mikrobio-resistenzkategorie-vre-positiv.md)

