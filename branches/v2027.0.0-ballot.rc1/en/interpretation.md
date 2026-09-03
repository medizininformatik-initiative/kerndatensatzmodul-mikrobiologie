# Interpretation - MII Implementation Guide Microbiology v2027.0.0-alpha.6

* [**Table of Contents**](toc.md)
* [**Guidance**](guidance.md)
* **Interpretation**

## Interpretation

A susceptibility result carries two different statements: what was **measured**, and how that measurement is **assessed**. The module keeps them apart.

### Measured value and assessment

`Observation.value[x]` carries the measurement — a minimum inhibitory concentration in mg/L, or an inhibition zone diameter in mm. It is a `Quantity` and nothing else; a bare S/I/R without a measurement does not belong here.

`Observation.interpretation` carries the assessment: the category the measurement falls into. Consumers therefore have exactly one place to read the category, and the measured value stays comparable across laboratories.

### The categories

| | |
| :--- | :--- |
| `S` | Susceptible |
| `I` | Intermediate |
| `SDD` | Susceptible-dose dependent |
| `R` | Resistant |
| `NS` | Non-susceptible |

EUCAST redefined `I` in 2019 as **susceptible, increased exposure**. Where that reading is meant, SNOMED CT `1306583007` states it explicitly rather than leaving `I` ambiguous.

### The norm the assessment rests on

A category is meaningless without the breakpoints it was derived from: the same MIC is susceptible under one norm and resistant under another, and breakpoints change from year to year.

The norm therefore hangs on the **interpretation**, not on the Observation — `Observation.interpretation.extension`, mandatory. Because `interpretation` is `0..*`, one measured MIC can carry a EUCAST and a CLSI category side by side, each with its own norm. Hanging the norm on the Observation would make that impossible.

The norm is coded from the module's own CodeSystem: `EUCAST`, `CLSI`, `Andere`.

**Open point.** The norm's **version** cannot yet be expressed, although breakpoints change annually. Without a year, a stored MIC cannot be re-interpreted later. See the decision queue in the migration report.

### Predicted susceptibility is a different statement

Susceptibility inferred from a resistance mechanism — a gene, a mutation or a protein found, therefore an expected resistance — is **not** this profile. It has no measured value and belongs to **Predicted Susceptibility**, whose result is the expected category itself. The inference is deliberately technology-open: a PBP2a protein detected by lateral flow supports it exactly as a `mecA` gene found by PCR does. See [Profile Selection and Delimitation](profilauswahl-und-abgrenzung.md).

The same boundary applies to the targeted detection of a resistant organism: an MRSA or VRE detection states which organism was found, not how susceptible it is, and belongs to the determination or culture profiles.

### Other assessments in this module

`interpretation` is not limited to susceptibility. Colony counts carry a semiquantitative assessment of the measured value, and the avidity test carries low, intermediate or high. The pattern is the same in each case: the value stays measured, the assessment stays separate.

