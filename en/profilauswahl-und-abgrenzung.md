# Profile Selection and Delimitation - MII Implementation Guide Microbiology v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* [**Guidance**](guidance.md)
* **Profile Selection and Delimitation**

## Profile Selection and Delimitation

Detection, susceptibility testing and classification are different diagnostic statements and are represented in this module by different profiles. This page describes the delimitation, the representation of negative results, and the linking of investigations into a diagnostic chain.

> **Key statement:** a negative result of a targeted pathogen detection is represented via Specific determination or Specific culture. MRGN classification and resistance category status, by contrast, presuppose an already detected pathogen and do not replace a detection test.

### Which profiles belong to my laboratory area

A profile appears under more than one area on purpose. The model is method-neutral: how an investigation was performed is stated in `Observation.method`, not by choosing a different profile. Specific determination therefore serves the molecular bench and the serology bench alike.

**Culture**

* [General microscopy](StructureDefinition-mii-pr-mikrobio-mikroskopie.md) — the morphological group seen, not a species 
* [Bartlett score](StructureDefinition-mii-pr-mikrobio-bartlett-score.md) — is a sputum specimen fit for culture?
* [Nugent score](StructureDefinition-mii-pr-mikrobio-nugent-score.md) — Gram-stain score for bacterial vaginosis
 
* [Specific microscopy](StructureDefinition-mii-pr-mikrobio-spezifische-mikroskopie.md) — the object is named in the code, the result is its semiquantitative grade
* [General culture](StructureDefinition-mii-pr-mikrobio-allgemeine-kultur.md) — growth or no growth, untargeted
* [Specific culture](StructureDefinition-mii-pr-mikrobio-spezifische-kultur.md) — growth or no growth, targeted, e.g. MRSA screening
* [Colony count](StructureDefinition-mii-pr-mikrobio-keimzahl.md) — viable count per volume or mass
* [General determination](StructureDefinition-mii-pr-mikrobio-allgemeine-bestimmung.md) — species identification, typically MALDI-TOF MS
* [Susceptibility](StructureDefinition-mii-pr-mikrobio-empfindlichkeit.md) — phenotypic testing, S/I/R with MIC or zone diameter
* Further properties, **of an organism grown in culture**: 
* [Virulence factor](StructureDefinition-mii-pr-mikrobio-virulenzfaktor.md)
* [Resistance mechanisms](StructureDefinition-mii-pr-mikrobio-resistenzmechanismen-determinanten.md)
* [MRGN class](StructureDefinition-mii-pr-mikrobio-mrgn-klasse.md)
* [MRE class](StructureDefinition-mii-pr-mikrobio-resistenzkategorie-status.md) — MRSA, VRE, LRE and LVRE status; the profile is named **Resistance category status**
* [Predicted susceptibility](StructureDefinition-mii-pr-mikrobio-voraussichtliche-empfindlichkeit.md)
 

**Molecular**

* [Specific determination](StructureDefinition-mii-pr-mikrobio-spezifische-bestimmung.md) — single and multiplex PCR against defined targets, qualitative
* [General determination](StructureDefinition-mii-pr-mikrobio-allgemeine-bestimmung.md) — panbacterial or panfungal PCR, sequencing, NGS
* [Molecular pathogen load](StructureDefinition-mii-pr-mikrobio-molekulare-pathogenlast.md) — quantitative molecular results
* Further properties, **direct from the material**, without a culture step: 
* [Virulence factor](StructureDefinition-mii-pr-mikrobio-virulenzfaktor.md)
* [Resistance mechanisms](StructureDefinition-mii-pr-mikrobio-resistenzmechanismen-determinanten.md)
* [Predicted susceptibility](StructureDefinition-mii-pr-mikrobio-voraussichtliche-empfindlichkeit.md)
 

**Serology**

* [Specific determination](StructureDefinition-mii-pr-mikrobio-spezifische-bestimmung.md) — antigen or antibody, qualitative
* [Antigen/antibody quantitative](StructureDefinition-mii-pr-mikrobio-antigen-antikoerper-quantitativ.md) — quantitative results
* [Titre](StructureDefinition-mii-pr-mikrobio-titer.md) — serial dilution, reported as a ratio
* [Avidity](StructureDefinition-mii-pr-mikrobio-aviditaet.md) — fresh versus past infection

**Across all areas**

* [Diagnostic report](StructureDefinition-mii-pr-mikrobio-diagnostic-report.md) — gathers the investigations belonging to one microbiological report
* [Ct value](StructureDefinition-mii-pr-mikrobio-ct-wert.md) — the cycle threshold itself. What normally leaves the laboratory is the result derived from it, so this profile is the exception rather than the rule.

### Why some techniques get their own profile and others do not

A profile is defined by the **question asked and the type of its result**, not by the technique. That is why the answer differs between qualitative and quantitative results, which can look inconsistent at first sight:

* **Qualitative detection** has one result space — `Detected` / `Not detected` — whether the target was found by PCR or by immunoassay. One profile suffices, and `Observation.method` says which technique produced it.
* **Quantitative measurement** does not. Copies per millilitre, a concentration and a dilution step are different result spaces with different units, so molecular pathogen load, quantitative antigen/antibody testing and titre are separate profiles.
* **Culture** is separate again for the same reason: its result is neither an organism nor detected/not-detected, but growth or no growth.

So the rule is the same in each case; only the number of distinct result spaces differs.

### One test code, two profiles

`41852-5 |Microorganism or agent identified in Specimen|` is valid in [General culture](StructureDefinition-mii-pr-mikrobio-allgemeine-kultur.md) and in [General determination](StructureDefinition-mii-pr-mikrobio-allgemeine-bestimmung.md) alike, and the European data model marks it **preferred** for both. That follows from its core principle rather than being an oversight: the technique belongs in `Observation.method`, so a test code says what was looked for and stays silent about how. A method-neutral code then fits the cultural and the non-cultural route equally.

The two profiles remain distinguishable on two independent axes, and neither axis shares a single code between them:

| | | |
| :--- | :--- | :--- |
| The question | does anything grow? | which organism is it? |
| `value[x]` | `365698005 Organism growth`,`264868006 No growth`,`280414007 Equivocal result`, bound`required` | an organism from the organism ValueSet, or`260415000 Not detected` |
| `Observation.method` | `703750006`aerobic,`703751005`anaerobic,`702658000`unspecified culture | `278289002`microscopy,`83581000052107`MALDI-TOF,`258083009`visual estimation,`1304162005`sequencing |

Both elements are optional in the laboratory base profile, so General culture makes the method mandatory for exactly the code that needs it: the invariant `allgemeine-kultur-method-with-neutral-code` requires `Observation.method` whenever `code` is `41852-5`. The obligation is tied to the code that creates the ambiguity rather than to the element - with `11475-1` the code names the technique itself and the method adds nothing. General determination needs no counterpart, because the asymmetry already decides: an investigation carrying `41852-5` without a method cannot be a valid culture, so it is a determination.

Beyond that, this module recommends the code that carries its method wherever one exists: `11475-1 |Microorganism identified in Specimen by Culture|` for culture, `41852-5` for determination. A receiver then reads what kind of statement it is looking at from the code and does not have to evaluate result or method first. That recommendation is stated on the `code` element of each profile and, unlike the invariant, is not enforced.

### Serology is the exception to post-coordinating the specimen

Everywhere else this module prefers test codes that leave the specimen out, with `Specimen.type` carrying it instead. Serology is deliberately exempt. The European white paper states the reason:

> In comparison with culture techniques, far fewer specimen types are involved in serology. The majority of specimens are serum-based. Therefore, we allow pre-coordination of the specimen in the code.

The argument against pre-coordination is code explosion — a culture code multiplied by every body site. In serology that multiplier does not exist, so the cost is absent and the convention has nothing to buy.

The exemption covers [Titre](StructureDefinition-mii-pr-mikrobio-titer.md), [Avidity](StructureDefinition-mii-pr-mikrobio-aviditaet.md), [Antigen/antibody quantitative](StructureDefinition-mii-pr-mikrobio-antigen-antikoerper-quantitativ.md) and the **serological use** of [Specific determination](StructureDefinition-mii-pr-mikrobio-spezifische-bestimmung.md) — that last profile serves the molecular bench as well, where the convention continues to apply, so the exemption there attaches to the use and not to the profile.

A Specimen resource is still expected in every case: ballot question 1 is unaffected. What the exemption permits is a test code that names serum; it does not permit leaving `Observation.specimen` empty.

One further trait of serological reporting is worth knowing: the diagnosis often follows from several results read together rather than from any one of them. That statement belongs in `DiagnosticReport.conclusion` — see [Diagnostic report](StructureDefinition-mii-pr-mikrobio-diagnostic-report.md).

### The method belongs in Observation.method

The European white paper puts this as a core principle and states it more strongly than one might expect:

> The LOINC-axis "method" should be omitted completely. […] Even if the method is pre-coordinated in the LOINC-Code the recommendation is to **always** represent the method consistently in `Observation.method` using SNOMED CT.

So the method is to be given even where the test code already carries it — a culture reported under `11475-1 |… by Culture|` should still name whether it was aerobic or anaerobic, and a Gram preparation under `664-3 |… by Gram stain|` should still name the stain.

This guide states that as a **recommendation**, not as a requirement. `Observation.method` is `0..1` Must Support in the laboratory base profile, and making it mandatory across every investigation profile would invalidate conformant data that exists today. The one place it is enforced is where the statement is otherwise ambiguous: General culture with the method-neutral code `41852-5`.

**Ballot question 6 — can you supply `Observation.method` for every result?** The white paper asks for it always, this guide only recommends it. We ask whether making it mandatory would be deliverable at your site. If it would, a later version can raise `Observation.method` to `1..1` and the special-case invariant on General culture becomes unnecessary. A second consequence follows: if the method is always present, `41852-5` plus a method is unambiguous everywhere, and the reason this guide recommends the method-bearing codes `11475-1` and `664-3` largely falls away. The answer therefore bears on both questions. Please comment during the ballot.

### Two granularities on the same axis

Microscopy and identification both answer "which organism", but they pin it down to different degrees. "Gram-positive cocci seen" **is** a taxonomic statement — it narrows the organism to a class rather than naming it. What separates [General microscopy](StructureDefinition-mii-pr-mikrobio-mikroskopie.md) from [General determination](StructureDefinition-mii-pr-mikrobio-allgemeine-bestimmung.md) is therefore the granularity, not the axis.

That is not a metaphor. In SNOMED CT the microscopy answer is literally an ancestor of the identification answer — measured on 2026-09-10:

```
59206002 |Gram-positive coccus|  subsumes  3092008 |Staphylococcus aureus|

```

From that follows a consequence worth knowing. SNOMED holds `(finding)` codes only for the **arranged** forms — in chains, in clusters, in pairs — while the bare morphologies exist only as `(organism)`: `59206002`, `18383003 |Gram-negative coccus|`, `83514008`, `87172008`. Those four are descendants of `409822003 |Bacteria domain|` and therefore also members of the organism ValueSet, which means **they are valid values of General determination as well**.

For a consumer that means one rule: **read the granularity from the profile or the test code, never from `value[x]` alone.** A query for identified organisms that filters only on the value will also return morphological groups from microscopy. The test codes are disjoint — `105059-0` and `664-3` against `41852-5` — so no ambiguity arises; only a query written carelessly gets more than it asked for.

A species identification never belongs in microscopy, even when it was made down a microscope.

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

### Grouping several results: the panel

An antibiogram is not one result but many — one Observation per antimicrobial tested. The European white paper recommends binding them together with an **organizer Observation**: one Observation carrying the panel code `29576-6 |Bacterial susceptibility panel|` and no `value[x]` of its own, which points at the individual results through `Observation.hasMember`. The organizer in turn references the identification it followed through the `triggeredBy` extension.

```
Observation: Bacterial susceptibility panel (29576-6), no value
  triggeredBy → Observation: Organism identified
  hasMember   → Observation: Meropenem [Susceptibility], MIC 0.5 mg/L, S
  hasMember   → Observation: Ciprofloxacin [Susceptibility], MIC 4 mg/L, R

```

The three mechanisms have distinct jobs and should not be substituted for one another:

| | |
| :--- | :--- |
| `hasMember` | grouping — a panel or battery held together by an organizer |
| `triggeredBy` | reflex — the later investigation points back at what caused it |
| `derivedFrom` | derivation — a result computed or interpreted from another result |

`triggeredBy` in particular is not a grouping mechanism. And `derivedFrom` runs from the derived result to its basis, not the other way round: a qualitative detection carries `derivedFrom` pointing at the [Ct value](StructureDefinition-mii-pr-mikrobio-ct-wert.md) it was read from, never the reverse.

This guide describes the pattern but does not profile it. `Observation.hasMember` is available unconstrained from the laboratory base profile, and an organizer profile would create a canonical of its own for something FHIR already settles.

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

