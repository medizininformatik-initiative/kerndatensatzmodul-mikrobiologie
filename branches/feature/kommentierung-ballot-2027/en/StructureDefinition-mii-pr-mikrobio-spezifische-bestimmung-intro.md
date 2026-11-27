Specific determination describes the targeted qualitative detection of a predefined microbial target (e.g. microorganism, nucleic acid, antigen, antibody or biochemical marker) in a specimen by direct molecular, immunological or biochemical detection methods, as well as by method-neutrally coded detection tests. Culture-based targeted detection is represented here too: the technique is carried by the test code and by `Observation.method`, not by the result.

The result is the statement about detection of the target named in the code (`Detected`, `Not detected` or `Equivocal result`); an indeterminate result is given not via `value` but via `dataAbsentReason`. This profile therefore also represents the negative result of a targeted pathogen detection, for example a negative VRE test. A weakly positive result is `Detected` with the amount in `component[menge]`, on the scale low, moderate, high: `441614007` (+ of +++).

The method used should generally be given via `Observation.method` where it is known. If the LOINC code used already carries a pre-coordinated method, `Observation.method` may be populated in addition. **If the LOINC code carries no method, `Observation.method` MUST be populated.**

For the delimitation against susceptibility testing and classification, and for code selection, see [Profile selection and delimitation](profilauswahl-und-abgrenzung.html).

Investigations without a predefined target, where the result is the naming of the identified pathogen, are represented via [General determination](StructureDefinition-mii-pr-mikrobio-allgemeine-bestimmung.html).

### Position in the diagnostic chain

Identification and susceptibility point back here through `triggeredBy`,
derived assessments through `derivedFrom`. With a direct detection the result is
there first; with a targeted culture `Detected` is settled only after
identification and testing.

Where a Ct value is reported alongside the detection, the relationship runs in
the other direction and uses a different element: this detection carries
`derivedFrom` pointing at the
[Ct value](StructureDefinition-mii-pr-mikrobio-ct-wert.html) it was read from,
not the Ct value at the detection.
[Profile Selection and Delimitation](profilauswahl-und-abgrenzung.html) shows the
chain as a whole.

### Examples

Example (minimal):

[mii-exa-mikrobio-spezifische-bestimmung](Observation-mii-exa-mikrobio-spezifische-bestimmung.html)

Positive detection with the Ct value it was read from, showing the direction of
`derivedFrom`:

[mii-exa-mikrobio-spezifische-bestimmung-influenza-positiv](Observation-mii-exa-mikrobio-spezifische-bestimmung-influenza-positiv.html)
