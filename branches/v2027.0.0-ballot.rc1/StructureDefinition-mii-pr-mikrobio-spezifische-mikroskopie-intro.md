Specific microscopy describes the microscopic detection of an object named in the
test code — acid-fast bacilli, leukocytes, clue cells. The result is whether it
was detected; how much of it was seen is stated alongside, in a component.

### How it differs from general microscopy

Both halves are microscopy; what separates them is the question and the type of
its answer, which is the rule this module applies throughout.

| | [General microscopy](StructureDefinition-mii-pr-mikrobio-mikroskopie.html) | Specific microscopy |
|---|---|---|
| The question | what is there to see? | is X there, and how much? |
| `Observation.code` | a code that names at most the stain | a code that names the object sought |
| `value[x]` | the morphology observed | detected or not detected |

LOINC usually mirrors that distinction in the scale — nominal where the answer is
the object, ordinal where it is a presence — but not reliably. For some stains
only the nominal form exists: rhodamine-auramine has no ordinal code at all. Such
a finding belongs in general microscopy even though the stain is targeted,
because the answer is then the object seen. The scale follows the distinction; it
does not define it.

Both profiles answer `Detected` / `Not detected`, and they stay apart for the
subject they speak about: [Specific
determination](StructureDefinition-mii-pr-mikrobio-spezifische-bestimmung.html)
names a pathogen species, this one a microscopically visible object — host cells,
a morphological form, a parasite — and carries the amount in which it was seen.

### Staining

The codes of this profile usually name the stain themselves, and it is given in
`extension[faerbung]` all the same — that is where a consumer reads it, whichever
code the laboratory chose, and where the concrete variant appears when the code
names only the class ("Acid fast stain" against Kinyoun). Where it belongs is
[ballot question 2](StructureDefinition-mii-pr-mikrobio-mikroskopie.html#ballot-question-2).

### The amount

The amount goes into `component[menge]`, not into `value[x]`: the test code asks
whether the object is there — `72357-7` and `87243-2` are `PrThr` codes,
"presence or threshold" — and the grade qualifies that answer rather than
replacing it. It is not an `Observation.interpretation` either, which carries a
clinical assessment and not a quantity.

The component takes three answer forms, because a laboratory reports the same
analyte in two of them: the semiquantitative grade, a count per high power field
as `Quantity`, and such a count as an interval in a `Range`. Its code and its
value set are shared with [General
microscopy](StructureDefinition-mii-pr-mikrobio-mikroskopie.html), where [ballot
question 5](StructureDefinition-mii-pr-mikrobio-mikroskopie.html#ballot-question-5)
asks whether sites can process it.

The grades come from a German laboratory's real result catalogue and span two
SNOMED axes: `441614007` / `441517005` / `441521003` are presence findings below
`52101004 |Present|`, while `Few`, `Moderate number`, `Numerous` and `Scanty` are
degree and number descriptors. Which of the two families should be preferred is
still open with the European working group.

### Examples

Acid-fast bacilli not detected:

[mii-exa-mikrobio-spezifische-mikroskopie-auramin-negativ](Observation-mii-exa-mikrobio-spezifische-mikroskopie-auramin-negativ.html)

Acid-fast bacilli detected, at grade two of three:

[mii-exa-mikrobio-spezifische-mikroskopie-kinyoun-zweiplus](Observation-mii-exa-mikrobio-spezifische-mikroskopie-kinyoun-zweiplus.html)
