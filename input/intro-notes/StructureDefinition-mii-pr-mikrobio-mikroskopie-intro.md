General microscopy describes the morphological observation of microorganisms in a specimen by microscopic examination, optionally with staining techniques (e.g. Gram stain). The result is a morphological group, not a species.

It is the open half of microscopy: the code asks what is there to see, and the
answer is the morphology observed. Where the object sought is already named in
the test code and the answer is how much of it was seen, the profile is
[Specific microscopy](StructureDefinition-mii-pr-mikrobio-spezifische-mikroskopie.html).

### Staining

The stain is carried in `extension[faerbung]`, coded with the descendants of
`37926009 |Microbial stain method (procedure)|` — the same codes the HL7 EU Lab
Semantic Workgroup uses. Give it whenever a stain was used, including where the
test code already names it: it is then readable in one place, whichever code a
laboratory chooses. `Observation.method` carries the microscopy technique only,
which for native microscopy without a stain is the one statement to be made.

<a id="ballot-question-2"></a>

{:.bg-warning}
**Ballot question 2 — where does the staining technique belong?**
This module deviates from the model under discussion in the HL7 EU Lab Semantic
Workgroup: it carries the stain in `extension[faerbung]` on the Observation, not
in `Specimen.processing.procedure`. The codes are the same. Can your site supply
the stain on the Specimen, or do you need the extension?

Two things keep this module from relying on the Specimen alone. It presupposes a
Specimen resource, which ballot question 1 puts in doubt, and the parent of
[Specimen](StructureDefinition-mii-pr-mikrobio-probe.html) makes storage
temperature conditions mandatory below `processing` (ballot question 3), which a
stain cannot supply. Because the terminology is the same on either route, a later
move changes the element and nothing else.

### Morphology together with its amount

The most common Gram finding needs two statements at once — *few* Gram-positive
cocci — and `value[x]` can carry only one of them. The morphology is the value
and the amount is a component, `component[menge]`. The same component, with the
same code and the same answers, carries the amount in [Specific
microscopy](StructureDefinition-mii-pr-mikrobio-spezifische-mikroskopie.html).

Its code is `103392008 |Semi-quantitative value|`, the concept the HL7 EU Lab
Semantic Workgroup proposes for this component. A LOINC code has been requested
for the same purpose and will take its place once it exists. Besides the
semiquantitative grade the component takes a count per high power field, as a
`Quantity` or as a `Range`.

<a id="ballot-question-5"></a>

{:.bg-warning}
**Ballot question 5 — can you process a component for the amount?**
Both microscopy profiles carry the amount in `component[menge]`, following the
HL7 EU Lab Semantic Workgroup, which uses a component for the amount of a single
finding and `hasMember` to group several findings of one examination.

The component reverses a decision of this release cycle: `2027.0.0-alpha.1`
removed components from this very profile and moved them into standalone
Observations.

### Examples

Example (minimal):

[mii-exa-mikrobio-mikroskopie](Observation-mii-exa-mikrobio-mikroskopie.html)
