Specific microscopy describes the microscopic detection of an object named in the
test code — acid-fast bacilli, leukocytes, clue cells — where the result is the
semiquantitative grade in which it was seen.

### How it differs from general microscopy

Both halves are microscopy; what separates them is the question and the type of
its answer, which is the rule this module applies throughout.

| | [General microscopy](StructureDefinition-mii-pr-mikrobio-mikroskopie.html) | Specific microscopy |
|---|---|---|
| The question | what is there to see? | is X there, and how much? |
| `Observation.code` | a code that names at most the stain | a code that names the object sought |
| `value[x]` | the morphology observed | the semiquantitative grade |

LOINC usually mirrors that distinction in the scale — nominal where the answer is
the object, ordinal where it is a grade — but not reliably. For some stains only
the nominal form exists: rhodamine-auramine has no ordinal code at all. Such a
finding belongs in general microscopy even though the stain is targeted, because
the answer is then the object seen and not a grade. The scale follows the
distinction; it does not define it.

This is therefore not the same statement as
[Specific determination](StructureDefinition-mii-pr-mikrobio-spezifische-bestimmung.html),
even though both are targeted: that profile answers `Detected` / `Not detected`,
this one answers a grade. The same reason keeps colony count out of the culture
profile.

### Staining

The codes of this profile usually name the stain themselves, and it is given in
`extension[faerbung]` all the same — that is where a consumer reads it, whichever
code the laboratory chose, and where the concrete variant appears when the code
names only the class ("Acid fast stain" against Kinyoun). Where it belongs is
[ballot question 2](StructureDefinition-mii-pr-mikrobio-mikroskopie.html#ballot-question-2).

### Why the grade is the value

Because the test code is ordinal, the grade **is** the answer to the question the
code asks. It is therefore neither an `Observation.interpretation` — which
carries clinical significance, not a quantity — nor a component, nor a member
observation. Where LOINC offers such an ordinal code, the European data model's
open question about a component and a new LOINC code does not arise.

The grades come from a German laboratory's real result catalogue and span two
SNOMED axes: `441614007` / `441517005` / `441521003` are presence findings below
`52101004 |Present|`, while `Few`, `Moderate number`, `Numerous` and `Scanty` are
degree and number descriptors. Which of the two families should be preferred is
still open with the European working group.

### Examples

Acid-fast bacilli not detected:

[mii-exa-mikrobio-spezifische-mikroskopie-auramin-negativ](Observation-mii-exa-mikrobio-spezifische-mikroskopie-auramin-negativ.html)

Acid-fast bacilli at grade two of three:

[mii-exa-mikrobio-spezifische-mikroskopie-kinyoun-zweiplus](Observation-mii-exa-mikrobio-spezifische-mikroskopie-kinyoun-zweiplus.html)
