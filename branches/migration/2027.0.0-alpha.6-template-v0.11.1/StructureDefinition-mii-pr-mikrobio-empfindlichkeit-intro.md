<!-- DERIVED:no-source source=MIIIGModulMikrobiologie/Technische-Implementierung/FHIR-Profile/Kultur/Empfindlichkeit.page.md gate=C -->
> **Written during migration - review before release.** TODO:REVIEW - this English page is a
> machine translation of the German source page named above, produced because the target
> template renders English as the default language and the source guide is German-only.
> The German mirror carries the original wording verbatim.
{: .ig-highlight .ig-highlight-blue}

Susceptibility describes the result of phenotypic resistance testing of a pathogen against antimicrobial substances with reference to a norm system.

The resistance of an already identified pathogen against a single substance is represented here, for example a linezolid-resistant Enterococcus via `29258-1 |Linezolid [Susceptibility]|` with `interpretation` R; the negative case is `interpretation` S. Targeted detection of a resistant pathogen as such belongs in the detection profiles instead - see [Profile selection and delimitation](profilauswahl-und-abgrenzung.html).

### Examples

Example (minimal):

[mii-exa-mikrobio-empfindlichkeit](Observation-mii-exa-mikrobio-empfindlichkeit.html)
