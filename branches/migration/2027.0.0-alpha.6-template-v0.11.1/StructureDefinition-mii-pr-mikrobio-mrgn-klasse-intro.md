<!-- DERIVED:no-source source=MIIIGModulMikrobiologie/Technische-Implementierung/FHIR-Profile/Weitere-Eigenschaften/MRGN-Klasse.page.md gate=C -->
> **Written during migration - review before release.** TODO:REVIEW - this English page is a
> machine translation of the German source page named above, produced because the target
> template renders English as the default language and the source guide is German-only.
> The German mirror carries the original wording verbatim.
{: .ig-highlight .ig-highlight-blue}

MRGN class describes the classification of multi-resistant Gram-negative pathogens according to the RKI categorisation.

The profile classifies an already identified Gram-negative isolate and is not a detection test. The negative result of a targeted pathogen detection is not represented here but via specific determination or specific culture. If the isolate was assessed on the basis of the susceptibility findings and cannot be assigned to any class, the value `keine-mrgn-klasse` is used - such a negative value is meaningful here because a concrete classification scheme exists.

MRGN is a genuine classification with its own scheme: the value is the concrete class.

[Resistance category status](StructureDefinition-mii-pr-mikrobio-resistenzkategorie-status.html) stands alongside it as an equal and assesses Gram-positive pathogens (MRSA, VRE, LRE, LVRE). The two profiles do not overlap: an MRGN classification does not enter into any of the currently defined resistance categories. For the delimitation see [Profile selection and delimitation](profilauswahl-und-abgrenzung.html).

### Examples

Example (minimal):

[mii-exa-mikrobio-mrgn-klasse](Observation-mii-exa-mikrobio-mrgn-klasse.html)
