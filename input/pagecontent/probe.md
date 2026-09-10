### Report - Specimen

<a id="ballot-question-1"></a>

{:.bg-warning}
**Ballot question 1 — can you supply a Specimen resource for every result?**
Every investigation profile in this module requires `Observation.specimen`. The
requirement does not originate with this guide alone: the European white paper
states that the specimen **shall always** be represented explicitly in a FHIR
Specimen resource, preferably in `Specimen.type` using SNOMED CT — and expressly
says this holds *even where the LOINC code already carries the specimen*.

Feedback from German laboratory practice is that a Specimen resource is
frequently not produced. If that holds widely, the two ways out point in
opposite directions: relax `Observation.specimen` to `0..1` and let
pre-coordinated LOINC codes carry the material, or keep the requirement and
accept that some senders cannot conform. Please comment during the ballot.

Specimens are represented by [Specimen](StructureDefinition-mii-pr-mikrobio-probe.html),
which derives from
[MII_PR_Biobank_Specimen_Bioprobe_Core](https://simplifier.net/medizininformatikinitiative-modulbiobank/mii_pr_biobank_specimen_bioprobe_core)
of the [MII Biobank module](https://simplifier.net/medizininformatikinitiative-modulbiobank) —
a base profile written for exactly this purpose, which modules derive from rather
than implement directly. `Observation.specimen` of every investigation profile
references it.

The following elements are particularly relevant for the microbiological use cases:

-   **`Specimen.type[sct]`**\
    Should be populated with the specimen type. This applies even where the material is already
    pre-coordinated in the LOINC code used, so that the specimen type is available in a structured
    form and independently of the Observation code.

-   **`Specimen.collection.collected[x]`**\
    Gives the time of specimen collection. If that is not known, the time of specimen receipt may
    be documented instead.

-   **`Specimen.parent`**\
    Represents the relationship to the specimen from which another specimen was derived or taken,
    e.g. for further-processed materials or materials obtained from primary specimens.

### `Specimen.processing`: temperature conditions and staining

<a id="ballot-question-3"></a>

{:.bg-warning}
**Ballot question 3 — mandatory storage temperature conditions on `Specimen.processing`.**
The base profile requires the extension `temperaturbedingungen` on every
`Specimen.processing` element, in `2026.0.1` as in `2027.0.0-ballot.rc2`. That
requirement comes from the biobank, where `Specimen.processing` describes the
storage process of a biosample and the temperature is a core statement. In
microbiology the same place describes laboratory processing — staining,
enrichment, incubation — where a storage temperature is either unknown or
without meaning. A derived profile can only narrow, never relax, so this module
cannot resolve it. We consider the requirement misplaced in this context and are
raising it with the biobank module, with a view to confining it to the storage
slice `processing:lagerprozess`, where it belongs. Please comment during the
ballot if you are affected.

The staining technique is consequently **not** given under
`Specimen.processing.procedure`, as the European data model proposes, but in
`Observation.method` — see
[Microscopy](StructureDefinition-mii-pr-mikrobio-mikroskopie.html), where ballot
question 2 sets out the reasoning.

### Incubation duration and temperature

<a id="ballot-question-4"></a>

{:.bg-warning}
**Ballot question 4 — is incubation representable via `Specimen.processing`?**
FHIR provides for it there, and the MII already has the pieces. Measured against
R4 core and the biobank module on 2026-09-10:

- **Duration** — `Specimen.processing.time[x]` as a `Period`. `Specimen.processing`
  has no `Duration` element of its own (`Specimen.collection.duration` refers to
  collection), so start and end are the FHIR-native form. That is precisely what
  the European data model asks for when it notes that its candidate LOINC code
  `80581-2` "mandates for start/enddate" — with a `Period` the requirement is met
  and no new LOINC code is needed.
- **Temperature** — the extension `MII_EX_Biobank_Temperaturbedingungen`, whose
  context is `Specimen.processing` and whose value is a `Range`. The right element
  and the right datatype for "35-37 degrees C".

**We ask whether that is implementable at your site.** The modelling is settled;
the deployment reality is not. If no Specimen resource is produced (ballot
question 1), `Specimen.processing` is out of reach, and the alternative would be
extensions on `Observation.method`, which qualify the technique in the resource
that reports the result. This module does not represent incubation until the
answer is in.
