# LOINC Ontology - How the ValueSets are built - MII Implementation Guide Microbiology v2027.0.0-ballot2

* [**Table of Contents**](toc.md)
* [**Value Sets**](value-sets.md)
* [**LOINC Ontology ValueSets (Proposal)**](loinc-ontology-valuesets.md)
* **LOINC Ontology - How the ValueSets are built**

## LOINC Ontology - How the ValueSets are built

This page explains how every ValueSet in the [LOINC Ontology proposal](loinc-ontology-valuesets.md) is constructed, so that a reader can check a rule, expand a ValueSet on a terminology server, and regenerate the artifacts for a new release. It is the microbiology counterpart of the same proposal for the Laboratory module.

### The LOINC Ontology in one paragraph

The [LOINC Ontology](https://loincsnomed.org) is published jointly by the Regenstrief Institute and SNOMED International. It represents LOINC laboratory terms as SNOMED CT concepts in an extension module (module id `11010000107`), placed under **Observable entity**. Each concept carries its LOINC code as an alternate identifier and is modelled with the attributes that make up a LOINC term. Because the concepts live in SNOMED CT, the SNOMED Expression Constraint Language (ECL) can select them by attribute value, including subtype hierarchies of the value, which for microbiology means the organism hierarchy, the substance hierarchy of antibodies, antigens and nucleic acids, and the technique hierarchy.

| | | | |
| :--- | :--- | :--- | :--- |
| Property | `370130000` | Property | Susceptibility |
| Scale type | `370132008` | Scale | (none asserted) |
| Direct site | `704327008` | System | Microbial isolate specimen |
| Technique | `246501002` | Method | (none) |
| Inheres in | `704319004` | – | Organism |
| Towards | `704320005` | Component (the drug) | Delafloxacin |
| Component | `246093002` | Component | (none for susceptibility) |
| Time aspect | `370134009` | Time | Single point in time |

Microbiology uses two attributes the laboratory analytes do not: **Inheres in** carries the organism an identity, type or susceptibility observable is **about**; **Towards** carries the antimicrobial substance of a susceptibility test. The organism appears in **Component** instead when it is the thing counted or detected (colony counts, threshold presence of a named organism by culture). Nucleic acids, antigens and antibodies are substances in Component. A rule about "an organism" therefore tests Inheres in and Component together.

### Anatomy of a rule

The rule for the request **phenotypic susceptibility** reads:

```
<< 363787002 |Observable entity| :
    370130000 |Property|    = 118588007 |Susceptibility|,
    704327008 |Direct site| = << 119303007 |Microbial isolate specimen|,
    [0..0] 246501002 |Technique| = << 708060009 |Genotype determination technique|

```

Read it as: any observable entity whose Property is Susceptibility, whose specimen is a microbial isolate or a subtype of it, and which has **no** Technique that is a genotype determination technique. `<<` means "this concept and all its descendants"; without it the value must match exactly. The cardinality `[0..0]` is ECL's way of excluding an attribute value: it keeps observables without any technique, and observables with a phenotypic technique, and removes only the genotypic ones. The same decomposition is shown as a table on every request page:

| | |
| :--- | :--- |
| Property | Susceptibility |
| Direct site | `<< Microbial isolate specimen` |
| Technique | none,`[0..0]`:`<< Genotype determination technique` |

### Why the technique clause needs care

LOINC names a method in many microbiology terms (`by Culture`, `by Gram stain`, `by NAA with probe detection`, `by Molgen`). The LOINC Ontology does not assert a Technique for all of them: in release 2026-10-21 several hundred nucleic-acid detection observables, the preferred general microscopy code 105059-0 and almost all quantitative serology observables carry no Technique at all. A rule with a mandatory Technique clause silently drops them. The request pages therefore show, next to each rule with a technique, a second rule without it or with `[0..0]`, so that the loss is visible as a number rather than hidden.

### The three parts of every ValueSet

Each ValueSet of this proposal has the same `compose`:

1. **LOINC enumeration.**The LOINC codes of all concepts the rule selects, as`include`on`http://loinc.org`with version 2.83, the LOINC release the LOINC Ontology 2026-10-21 is built on. This is the part any FHIR validator and any terminology server can use today.
1. **Observables without a LOINC code.**The LOINC Ontology also contains observables for which no LOINC code exists yet. They are listed as SNOMED CT codes, so that the ValueSet is complete and a site can see where a LOINC request is pending.
1. **The rule.**The ECL as an intensional`include`on`http://snomed.info/sct`with`filter.property = constraint`, pinned to the release`http://snomed.info/sct/11010000107/version/20261021`. It documents why the codes in part 1 are there, and it is the part that regenerates.

Parts 1 and 2 are the enumeration of part 3 at the stated release. They are not independent sources. Where a module profile needs several rules (specific determination: nucleic acid, targeted culture and antigen detection), a fourth kind of ValueSet unions the rule ValueSets with `include codes from valueset`, and the derived profile binds that union.

### Expanding and validating

* On a terminology server that holds the LOINC Ontology release (for example Snowstorm with the LOINC extension loaded, or the LOINC Ontology browser), all three parts expand and the expansion equals the enumeration.
* On a server without the LOINC Ontology, the SNOMED CT includes cannot be resolved; the build's QA report shows this as a warning per ECL include and as an error per enumerated SNOMED CT code without a LOINC code. The LOINC enumeration still expands, and validation of an `Observation.code` carrying a LOINC code works as usual.
* The LOINC enumeration is pinned to LOINC 2.83 and not to the module's 2.82 pin on purpose: the public HL7 terminology server holds 2.83 and not 2.82, and 2026-10-21 introduced observables for codes that only exist from 2.83 on. A validator checking `Observation.code` against a derived profile only needs this enumeration.
* **The QA report of the IG build does not see that pin.** The module's expansion manifest (`input/resources/Parameters-expansion-manifest.json`) sets `force-system-version` to LOINC 2.82 for the whole guide, so the publisher validates every enumerated code against 2.82 whatever the ValueSet says. Against the public HL7 server, which no longer holds 2.82, that yields two errors per enumerated code ("version 2.82 could not be found", "code not valid in 2.83"); every one of these codes validates individually in LOINC 2.83 on the same server. A build of the module without this proposal shows the same kind of error for its own filter-based ValueSets and examples, in smaller numbers.
* The module's own CI validates against the MII terminology server through a proxy. In the current runs that server reports every enumerated code of a ValueSet include as invalid for a reason unrelated to the codes (the validator's batch request lacks the ValueSet reference the server requires), on the module's own ValueSets as well. Error counts on the branch preview therefore measure the terminology setup, not the ValueSets.

### Versions and regeneration

The artifacts are pinned to **LOINC Ontology 2026-10-21**. For a new release the generator re-runs every rule, lists the concepts that entered or left each ValueSet, and rewrites these pages; the current delta is on the [release delta](loinc-ontology-release-delta.md) page. A release can also remodel the attributes themselves. Between 2026-03-21 and 2026-10-21 the LOINC Ontology moved the qualitative presence observables from Property `Presence` (705057003) to `Threshold (property)` (118589004) and renamed them to "Threshold presence of …"; the rules on this branch test both values so that old and new release can be compared. In the same release one Gram-stain code lost its Technique (107527-4, now **Threshold presence of clue cell in vagina** without a stain) and so left the specific-microscopy set without any change to its LOINC term. That is the kind of movement a regeneration makes visible and a hand-curated list would not notice.

