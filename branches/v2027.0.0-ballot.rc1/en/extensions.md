# Extensions - MII Implementation Guide Microbiology v2027.0.0-alpha.6

* [**Table of Contents**](toc.md)
* **Extensions**

## Extensions

### Extensions

The module defines **one** extension of its own, following the MII naming convention `MII_EX_<Module>_<Name>`, and vendors **one** HL7 cross-version extension it cannot yet obtain from a package. The profiles that use them are on the [Profiles](profiles.md) page.

#### MII EX Mikrobio Empfindlichkeit Norm

[mii-ex-mikrobio-empfindlichkeit-norm](StructureDefinition-mii-ex-mikrobio-empfindlichkeit-norm.md) names the normative system on whose breakpoints a susceptibility category rests — `EUCAST`, `CLSI` or `Andere`, from [MII VS Mikrobio Susceptibility Norm](ValueSet-mii-vs-mikrobio-susceptibility-norm.md).

Its context is `Observation.interpretation`, not the Observation, and that is the point: a category is meaningless without the breakpoints behind it, and the same MIC is susceptible under one norm and resistant under another. Hanging on the assessment lets one measured MIC carry a EUCAST and a CLSI category side by side, each with its own norm. [Susceptibility](StructureDefinition-mii-pr-mikrobio-empfindlichkeit.md) requires it once per interpretation (`1..1 MS`). The reasoning is set out under [Interpretation](interpretation.md), including the open point that the norm's **version** is not yet expressible.

#### R5: Triggering observation(s)

[ext-R5-Observation.triggeredBy](StructureDefinition-ext-R5-Observation.triggeredBy.md) is **not** an MII extension. It is a copy of the HL7 cross-version extension `http://hl7.org/fhir/5.0/StructureDefinition/extension-Observation.triggeredBy`, which backports the R5 element `Observation.triggeredBy` to R4, kept under its original canonical, publisher and work group.

It is vendored because Simplifier did not support the `xver` packages, which broke snapshot generation. Once the module can depend on the package again, this copy is removed and the dependency restored — the canonical does not change, so consumers are unaffected.

The module uses it to model the reflex chain: an investigation records the investigation that triggered it, with `type = reflex`. See [FHIR Profiles - Modelling Notes](fhir-profile.md) for the modelling and [Profile Selection and Delimitation](profilauswahl-und-abgrenzung.md) for the chain it produces. The search parameter [mii-sp-mikrobio-observation-triggered-by](SearchParameter-mii-sp-mikrobio-observation-triggered-by.md) makes the chain searchable.

