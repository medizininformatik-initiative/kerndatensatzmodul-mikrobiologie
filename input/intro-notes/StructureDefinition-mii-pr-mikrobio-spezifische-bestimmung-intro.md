Specific determination describes the targeted qualitative detection of a predefined microbial target (e.g. microorganism, nucleic acid, antigen, antibody or biochemical marker) in a specimen by direct molecular, immunological or biochemical detection methods, as well as by method-neutrally coded detection tests. Culture-based targeted detection is represented via [Specific culture](StructureDefinition-mii-pr-mikrobio-spezifische-kultur.html).

The result is the statement about detection of the target named in the code (`Detected` or `Not detected`); an indeterminate result is given not via `value` but via `dataAbsentReason`. This profile therefore also represents the negative result of a targeted pathogen detection, for example a negative VRE test.

The method used should generally be given via `Observation.method` where it is known. If the LOINC code used already carries a pre-coordinated method, `Observation.method` may be populated in addition. **If the LOINC code carries no method, `Observation.method` MUST be populated.**

For the delimitation against susceptibility testing and classification, and for code selection, see [Profile selection and delimitation](profilauswahl-und-abgrenzung.html).

Investigations without a predefined target, where the result is the naming of the identified pathogen, are represented via [General determination](StructureDefinition-mii-pr-mikrobio-allgemeine-bestimmung.html).

### Examples

Example (minimal):

[mii-exa-mikrobio-spezifische-bestimmung](Observation-mii-exa-mikrobio-spezifische-bestimmung.html)
