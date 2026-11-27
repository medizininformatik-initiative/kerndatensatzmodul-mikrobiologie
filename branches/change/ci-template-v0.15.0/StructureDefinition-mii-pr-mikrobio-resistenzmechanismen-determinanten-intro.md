Resistance mechanisms / determinants describes the detection of resistance genes, resistance mutations, proteins or functional tests (for example the CIM test) in a specimen or an isolate as an indication of specific resistance mechanisms.

### Position in the diagnostic chain

The detection of resistance mechanisms stands beside susceptibility testing at
the same point of the chain: both assess an already identified pathogen. It
points back at the investigation that triggered it — the identification, or the
detection where identification was omitted — through the `triggeredBy` extension
with `type = reflex`.

[Resistance category status](StructureDefinition-mii-pr-mikrobio-resistenzkategorie-status.html)
may be derived from this result and then references it through `derivedFrom`,
for example a detected `mecA` as the basis of an MRSA assessment.
[Profile Selection and Delimitation](profilauswahl-und-abgrenzung.html) shows the
chain as a whole.

### Examples

Example (minimal):

[mii-exa-mikrobio-resistenzmechanismen-determinanten](Observation-mii-exa-mikrobio-resistenzmechanismen-determinanten.html)
