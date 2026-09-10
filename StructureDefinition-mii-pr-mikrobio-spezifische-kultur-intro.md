Specific culture describes the result of a targeted culture-based investigation that tests whether a predefined microorganism grows in the specimen. The target sought is already named in the test code; the result is the statement about growth (`Organism growth` or `No growth`).

This profile therefore also represents the negative result of a culture-based targeted pathogen detection, for example a negative VRE or MRSA test. An indeterminate result is not given via `value` but via `dataAbsentReason`. For the delimitation against susceptibility testing and classification see [Profile selection and delimitation](profilauswahl-und-abgrenzung.html).

Non-culture-based targeted detection is represented via [Specific determination](StructureDefinition-mii-pr-mikrobio-spezifische-bestimmung.html).

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
