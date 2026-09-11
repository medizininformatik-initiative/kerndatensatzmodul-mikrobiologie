Specific culture describes the result of a targeted culture-based investigation that tests whether a predefined microorganism grows in the specimen. The target sought is already named in the test code; the result is the statement about growth (`Organism growth` or `No growth`).

This profile therefore also represents the negative result of a culture-based targeted pathogen detection, for example a negative VRE or MRSA test. An indeterminate result is not given via `value` but via `dataAbsentReason`. For the delimitation against susceptibility testing and classification see [Profile selection and delimitation](profilauswahl-und-abgrenzung.html).

Non-culture-based targeted detection is represented via [Specific determination](StructureDefinition-mii-pr-mikrobio-spezifische-bestimmung.html).

### One profile or two?

<a id="ballot-question-7"></a>

{:.bg-warning}
**Ballot question 7 — should specific culture and specific determination be one
profile?** Up to `2027.0.0-alpha.5` they were, and the European discussion on the
point is not settled. This guide separates them because the result spaces are
disjoint — `365698005 Organism growth` and `264868006 No growth` against
`260373001 Detected` and `260415000 Not detected` — and this module derives a
profile from the question asked and the type of its answer, not from the
technique.

A merged profile could not keep the `required` binding on the result: a nucleic
acid test would then be free to report `No growth`. Telling culture from
non-culture would fall to `Observation.method`, whose availability is ballot
question 6, and there is no method-neutral code here to anchor an invariant on, as
[General culture](StructureDefinition-mii-pr-mikrobio-allgemeine-kultur.html) has.

We ask whether one profile would serve you better. The answer can still change the
model: this profile has appeared in no release, so merging is free until
publication, while withdrawing a published canonical afterwards is not. Please
comment during the ballot.

### Position in the diagnostic chain

A positive targeted culture can start a chain: further identification of the
isolate, susceptibility testing and a derived assessment such as a resistance
category may follow. Each of those points back here through the `triggeredBy`
extension with `type = reflex` — the reference sits on the later investigation,
never on this one. A negative result ends the chain.
[Profile Selection and Delimitation](profilauswahl-und-abgrenzung.html) shows the
chain as a whole.

### Examples

Example (minimal):

[mii-exa-mikrobio-spezifische-kultur](Observation-mii-exa-mikrobio-spezifische-kultur.html)

Negative VRE detection:

[mii-exa-mikrobio-spezifische-kultur-vre-negativ](Observation-mii-exa-mikrobio-spezifische-kultur-vre-negativ.html)
