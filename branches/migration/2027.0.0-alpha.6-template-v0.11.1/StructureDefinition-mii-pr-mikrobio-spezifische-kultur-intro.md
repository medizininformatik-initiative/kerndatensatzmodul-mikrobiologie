<!-- DERIVED:no-source source=MIIIGModulMikrobiologie/Technische-Implementierung/FHIR-Profile/Kultur/Spezifische-Kultur.page.md gate=C -->
> **Written during migration - review before release.** TODO:REVIEW - this English page is a
> machine translation of the German source page named above, produced because the target
> template renders English as the default language and the source guide is German-only.
> The German mirror carries the original wording verbatim.
{: .ig-highlight .ig-highlight-blue}

Specific culture describes the result of a targeted culture-based investigation that tests whether a predefined microorganism grows in the specimen. The target sought is already named in the test code; the result is the statement about growth (`Organism growth` or `No growth`).

This profile therefore also represents the negative result of a culture-based targeted pathogen detection, for example a negative VRE or MRSA test. An indeterminate result is not given via `value` but via `dataAbsentReason`. For the delimitation against susceptibility testing and classification see [Profile selection and delimitation](profilauswahl-und-abgrenzung.html).

Non-culture-based targeted detection is represented via [Specific determination](StructureDefinition-mii-pr-mikrobio-spezifische-bestimmung.html).

### Examples

Example (minimal):

[mii-exa-mikrobio-spezifische-kultur](Observation-mii-exa-mikrobio-spezifische-kultur.html)

Negative VRE detection:

[mii-exa-mikrobio-spezifische-kultur-vre-negativ](Observation-mii-exa-mikrobio-spezifische-kultur-vre-negativ.html)
