General microscopy describes the morphological observation of microorganisms in a specimen by microscopic examination, optionally with staining techniques (e.g. Gram stain). The result is a morphological group, not a species.

It is the open half of microscopy: the code asks what is there to see, and the
answer is the morphology observed. Where the object sought is already named in
the test code and the answer is how much of it was seen, the profile is
[Specific microscopy](StructureDefinition-mii-pr-mikrobio-spezifische-mikroskopie.html).

### Staining

<a id="ballot-question-2"></a>

{:.bg-warning}
**Ballot question 2 — can the staining technique be represented via `Specimen` alone?**
The European data model places the staining technique in
`Specimen.processing.procedure`. We ask whether a Specimen-only representation is implementable at your site.
The answer determines whether this module continues to carry the stain in
`Observation.method`.

Two things speak against `Specimen` being the only place. It presupposes a
Specimen resource, which ballot question 1 puts in doubt. And the parent of
[Specimen](StructureDefinition-mii-pr-mikrobio-probe.html) currently makes
storage temperature conditions mandatory below `processing` (ballot question 3),
which a stain has no way of supplying.

This module therefore carries the stain in `Observation.method` for now.
`Observation.method` is `0..1` in the laboratory base profile, a ceiling a
profile cannot raise, and SNOMED CT holds staining and microscopy in sibling
branches — `278289002 |Microscopy techniques|` does not subsume
`708061008 |Gram stain|`, whose parent is `703857004 |Staining technique|`. So
only one of the two fits, and the stain is the informative one, since `105059-0`
already says "Microscopic observation". Selecting `664-3` instead puts the stain
in the code and frees the method slot altogether.

Please tell us during the ballot which of these routes you can actually
implement.

For native microscopy without a stain, the microscopy technique is given instead.

### Morphology together with its amount

The most common Gram finding needs two statements at once — *few* Gram-positive
cocci — and `value[x]` can carry only one of them. The morphology is the value
and the amount is a component, `component[menge]`, taken from the semiquantitative
set that [Specific microscopy](StructureDefinition-mii-pr-mikrobio-spezifische-mikroskopie.html)
uses as its value.

Its code comes from an interim CodeSystem of this module. The European data model
requests a LOINC code for it ("Microscopy" sheet, row 13, "new LOINC —
Semiquantitive value for microscopy finding"); until that exists, the interim code
stands in and will be replaced by it.

<a id="ballot-question-5"></a>

{:.bg-warning}
**Ballot question 5 — component or `hasMember` for the amount?**
The European data model leaves this open itself, asking "Component Procedure **or
has member?**". A component keeps one investigation as one resource, which is how
a laboratory reports it. `hasMember` would make the amount a referenceable
Observation of its own, which is the direction this module took in
`2027.0.0-alpha.1`, when components were removed from this very profile and moved
into standalone Observations. So the component here reverses a decision of this
release cycle, deliberately and for one narrow case. Please tell us during the
ballot which of the two you can process.

A summary judgement about the preparation — "unremarkable" — is neither the value
nor the component but `Observation.interpretation` with `N` "Normal". It is the
one place in this module where `interpretation` is the right element: it carries a
judgement, never an amount.

### Examples

Example (minimal):

[mii-exa-mikrobio-mikroskopie](Observation-mii-exa-mikrobio-mikroskopie.html)
