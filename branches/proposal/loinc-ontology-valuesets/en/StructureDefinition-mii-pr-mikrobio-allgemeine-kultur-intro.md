General culture describes the result of a non-targeted microbiological culture that tests whether any microorganism grows in the specimen, without restricting the analysis to a predefined pathogen.

### Test code

Preferred is `11475-1 |Microorganism identified in Specimen by Culture|`, which names the technique itself. `41852-5 |Microorganism or agent identified in Specimen|` is equally valid: the European data model prefers it here because it keeps the technique out of the test code and in `Observation.method`. It is the same code that [General determination](StructureDefinition-mii-pr-mikrobio-allgemeine-bestimmung.html) prefers, so an investigation using it is recognisable as a culture only by its method - which the invariant `allgemeine-kultur-method-with-neutral-code` therefore makes mandatory for this one code. Where aerobic and anaerobic incubation are not distinguished, `702658000 |Microbial culture technique|` is available. [Profile Selection and Delimitation](profilauswahl-und-abgrenzung.html) sets out how the two profiles stay distinguishable.

### Position in the diagnostic chain

The general culture is normally the first step: it establishes that something
grows, not what it is. Naming the organism is a separate investigation —
[General determination](StructureDefinition-mii-pr-mikrobio-allgemeine-bestimmung.html) —
which points back at this culture through the `triggeredBy` extension with
`type = reflex`. The culture itself carries no reference to what follows it; the
relationship is always recorded on the later investigation.
[Profile Selection and Delimitation](profilauswahl-und-abgrenzung.html) shows the
chain as a whole.

### Examples

Example (minimal):

[mii-exa-mikrobio-allgemeine-kultur](Observation-mii-exa-mikrobio-allgemeine-kultur.html)
