Ct value describes the quantification of the cycle threshold in nucleic acid detection (e.g. real-time PCR) in a specimen.

### Position in the diagnostic chain

A Ct value cannot be interpreted without its test and instrument. The link
to the detection is optional; where it is given, the detection carries it:
`derivedFrom` pointing at the Ct value.

`derivedFrom` is Must Support at this profile all the same, for the case where a
Ct value itself arises from a preceding investigation. The pairing is shown by
[mii-exa-mikrobio-spezifische-bestimmung-influenza-positiv](Observation-mii-exa-mikrobio-spezifische-bestimmung-influenza-positiv.html),
which points at the Ct value example: `49524-2` and `74039-9` differ only in
property and scale — the same component, the same specimen-neutral system, the
same method. One investigation, two statements reported from it.
[Profile Selection and Delimitation](profilauswahl-und-abgrenzung.html) shows the
chain as a whole.

### Examples

Example (minimal):

[mii-exa-mikrobio-ct-wert](Observation-mii-exa-mikrobio-ct-wert.html)
