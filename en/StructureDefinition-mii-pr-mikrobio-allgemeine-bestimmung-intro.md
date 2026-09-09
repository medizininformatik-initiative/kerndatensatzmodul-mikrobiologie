General determination describes the identification of a microorganism or infectious agent in a specimen, without restriction to a predefined target.

### Result

The result is the identified microorganism from `mii-vs-mikrobio-organismen-snomedct`. If the specimen was examined but no pathogen was identified, `260415000 |Not detected|` is given - not the omission of the Observation.

To be distinguished from the neighbouring negative cases:

| Statement | Profile | Value |
|---|---|---|
| No pathogen identified | General determination | `260415000 \|Not detected\|` |
| No growth in culture | [General culture](StructureDefinition-mii-pr-mikrobio-allgemeine-kultur.html) | `264868006 \|No growth\|` |
| A specific pathogen was sought and not found | [Specific determination](StructureDefinition-mii-pr-mikrobio-spezifische-bestimmung.html) | `260415000 \|Not detected\|` |

`264868006 |No growth|` is tied to growth in culture and therefore remains reserved for the culture profiles. An indeterminate result is represented via `dataAbsentReason`, not via `Not detected`.

### Examples

Example (minimal):

[mii-exa-mikrobio-allgemeine-bestimmung](Observation-mii-exa-mikrobio-allgemeine-bestimmung.html)
