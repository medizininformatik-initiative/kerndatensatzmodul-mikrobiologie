Susceptibility describes the result of phenotypic resistance testing of a pathogen against antimicrobial substances with reference to a norm system.

The resistance of an already identified pathogen against a single substance is represented here, for example a linezolid-resistant Enterococcus via `29258-1 |Linezolid [Susceptibility]|` with `interpretation` R; the negative case is `interpretation` S. Targeted detection of a resistant pathogen as such belongs in the detection profiles instead - see [Profile selection and delimitation](profilauswahl-und-abgrenzung.html).

### Position in the diagnostic chain

Susceptibility testing follows the identification of the pathogen it assesses and
points back at it through the `triggeredBy` extension with `type = reflex`. Where
no separate identification took place because the detection was already
pathogen-specific, it points at that detection directly.

[Resistance category status](StructureDefinition-mii-pr-mikrobio-resistenzkategorie-status.html)
and [MRGN class](StructureDefinition-mii-pr-mikrobio-mrgn-klasse.html) stand at
the end of the chain and reference the susceptibility findings they were derived
from through `derivedFrom`, not through `triggeredBy`: they are clinical
derivations, not triggered follow-up investigations.

### Grouping an antibiogram

An antibiogram is not one result but many — one Observation of this profile per
substance tested. The HL7 EU Lab Semantic Workgroup binds them together with an
**organizer Observation**: one Observation carrying the panel code
`29576-6 |Bacterial susceptibility panel|` and no `value[x]` of its own, which
points at the individual results through `Observation.hasMember` and at the
identification it followed through `triggeredBy`.

The organizer is not profiled in this module. `Observation.hasMember` is
available unconstrained from the laboratory base profile, and an organizer
profile would create a canonical of its own for something FHIR already settles.
There is accordingly no profile for it among the targets that
`DiagnosticReport.result` accepts; the individual results are referenced there
directly.
[Profile Selection and Delimitation](profilauswahl-und-abgrenzung.html) sets out
the pattern and the division of labour between `hasMember`, `triggeredBy` and
`derivedFrom`.

### Examples

Example (minimal):

[mii-exa-mikrobio-empfindlichkeit](Observation-mii-exa-mikrobio-empfindlichkeit.html)
