MRGN class describes the classification of multi-resistant Gram-negative pathogens according to the RKI categorisation.

The profile classifies an already identified Gram-negative isolate and is not a detection test. The negative result of a targeted pathogen detection is not represented here but via specific determination or specific culture. If the isolate was assessed on the basis of the susceptibility findings and cannot be assigned to any class, the value `keine-mrgn-klasse` is used - such a negative value is meaningful here because a concrete classification scheme exists.

MRGN is a genuine classification with its own scheme: the value is the concrete class.

[Resistance category status](StructureDefinition-mii-pr-mikrobio-resistenzkategorie-status.html) stands alongside it as an equal and assesses Gram-positive pathogens (MRSA, VRE, LRE, LVRE). The two profiles do not overlap: an MRGN classification does not enter into any of the currently defined resistance categories. For the delimitation see [Profile selection and delimitation](profilauswahl-und-abgrenzung.html).

### Position in the diagnostic chain

The MRGN classification stands at the end of the chain and is a derived
statement: the susceptibility findings it was classified from are referenced
through `Observation.derivedFrom`, and they should be given so that the basis of
the classification remains traceable. `triggeredBy` is **not** used for this —
the classification arises by clinical derivation and not as a triggered follow-up
investigation. The same applies to
[Resistance category status](StructureDefinition-mii-pr-mikrobio-resistenzkategorie-status.html).
[Profile Selection and Delimitation](profilauswahl-und-abgrenzung.html) shows the
chain as a whole.

### Examples

Example (minimal):

[mii-exa-mikrobio-mrgn-klasse](Observation-mii-exa-mikrobio-mrgn-klasse.html)
