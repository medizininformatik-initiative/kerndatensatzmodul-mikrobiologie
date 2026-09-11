Specimen describes the material examined microbiologically. The profile derives from
[MII_PR_Biobank_Specimen_Bioprobe_Core](https://simplifier.net/medizininformatikinitiative-modulbiobank/mii_pr_biobank_specimen_bioprobe_core),
a base profile written so that modules derive from it rather than implement it
directly. `Observation.specimen` of every investigation profile in this module
references it.

{:.bg-warning}
**Ballot question 1 — can you supply a Specimen resource for every result?**
Every investigation profile here requires `Observation.specimen`. The HL7 EU Lab Semantic Workgroup
states that the specimen shall always be represented explicitly in a
Specimen resource, even where the LOINC code already carries it, so the question
is deliverability rather than principle. Feedback from German laboratory practice
is that one is frequently not produced. Full statement of the question on
[Specimen](probe.html).

{:.bg-warning}
**Ballot question 3 — mandatory storage temperature conditions on `Specimen.processing`.**
The base profile requires the extension `temperaturbedingungen` on every
`Specimen.processing` element. It carries no meaning for microbiological
processing, and a derived profile cannot relax it. Full statement of the question
on [Specimen](probe.html).

### Specimen type

`Specimen.type.coding:sct` keeps the inherited binding to the biobank specimen
type set. It is `descendent-of 123038009 |Specimen|` and therefore covers the
microbiological specimen types; an own value set would be a subset without
additional meaning. One gap: the root code `123038009` itself is excluded, so
"specimen, unspecified" cannot be expressed. The binding is extensible, so the
case remains a warning rather than an error.
