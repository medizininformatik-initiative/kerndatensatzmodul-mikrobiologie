Specimen describes the material examined microbiologically. The profile derives from
[MII_PR_Biobank_Specimen_Bioprobe_Core](https://simplifier.net/medizininformatikinitiative-modulbiobank/mii_pr_biobank_specimen_bioprobe_core),
a base profile written so that modules derive from it rather than implement it
directly. `Observation.specimen` of every investigation profile in this module
references it.

### Specimen type

`Specimen.type.coding:sct` keeps the inherited binding to the biobank specimen
type set. It is `descendent-of 123038009 |Specimen|` and therefore covers the
microbiological specimen types; an own value set would be a subset without
additional meaning. One gap: the root code `123038009` itself is excluded, so
"specimen, unspecified" cannot be expressed. The binding is extensible, so the
case remains a warning rather than an error.
