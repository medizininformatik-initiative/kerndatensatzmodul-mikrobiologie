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

<a id="staining"></a>

### Staining on the Observation

The stain is carried in `extension[faerbung]`, not in `Specimen.processing` as in
the model of the HL7 EU Lab Semantic Workgroup; the codes are the same. The
reason: a specimen is often stained several times without the LIS creating
sub-specimens. Only on the Observation does it stay clear which stain belongs to
which finding. For the EU model, one derived specimen is created per stain.

### Morphology together with its amount

The most common Gram finding needs two statements at once — *few* Gram-positive
cocci — and `value[x]` can carry only one of them. The morphology is the value
and the amount is a component, `component[menge]`. The same component, with the
same code and the same answers, carries the amount in [Specific
microscopy](StructureDefinition-mii-pr-mikrobio-spezifische-mikroskopie.html).

Its code is `103392008 |Semi-quantitative value|`, the concept the HL7 EU Lab
Semantic Workgroup proposes for this component. A LOINC code has been requested
for the same purpose and will take its place once it exists. Besides the
semi-quantitative value the component takes a count per high power field, as a
`Quantity` or as a `Range`.

### Examples

Example (minimal):

[mii-exa-mikrobio-mikroskopie](Observation-mii-exa-mikrobio-mikroskopie.html)
