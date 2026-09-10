<!-- markdownlint-disable MD041 -->
<!-- Structure follows kerndatensatzmodul-labor input/pagecontent/researcher-guidance.md:
     an opening paragraph on what the module represents, then four numbered
     "Getting Started" blocks — logical models, UML diagrams, examples, domain
     guidance — each saying what a reader gains from that artefact.
     German mirror: input/translations/de/pagecontent/researcher-guidance.md. -->

Microbiological findings are the basis of infection diagnostics and of every
statement about antimicrobial resistance. The central document this module
represents is the microbiological report a medical laboratory produces: the
detection, identification and characterisation of microorganisms and their
properties. Because the module is broadly applicable, it does not prescribe
consortium-specific scenarios.

### Getting Started

If you are new to the MII Core Dataset, we recommend exploring the following
resources:

**1. Logical Models — Understanding Module Content**

The [Logical Models](logical-models.html) provide a high-level,
technology-independent description of the data this module covers, split across
three models:

* **Report** — the microbiological report that summarises the investigations it
  contains
* **Investigation** — the abstract base carrying what applies to every
  investigation: identification, status, patient, specimen, timings, and the
  investigation that triggered it
* **Investigation types** — the domain variants, grouped into culture,
  determination, quantitative tests and further properties

They let you understand the scope and structure of the available data without
knowing the FHIR details. Their data types and cardinalities are not normative;
the profiles settle those.

**2. UML Diagrams — Visualizing Data Relationships**

The [UML Diagrams](uml-diagrams.html) show how the elements relate to one
another. They are particularly useful for:

* seeing how a report, its investigations and their specimens hang together
* identifying the elements relevant to a research question

**3. Examples — Seeing FHIR Data in Practice**

The [Examples](examples.html) show samples of the FHIR resources, among them a
three-step diagnostic chain from culture through identification to susceptibility
testing, a colony count from a catheter tip, a Gram morphology reported together
with its amount, and a positive molecular detection alongside the Ct value it was
read from. They demonstrate:

* how microbiological data is represented in FHIR
* what a complete report looks like
* how the resources reference one another

**4. Domain Guidance — What to Watch Out for in an Analysis**

Four subjects decide whether microbiological data is read correctly:

* [Profile Selection and Delimitation](profilauswahl-und-abgrenzung.html) — which
  profile carries which statement. This matters most for negative findings,
  because "negative" is four different statements here: no growth in culture, a
  target sought and not found, an assessed pathogen that does not meet a
  resistance category, and an investigation that yielded no usable result at all.
  Counting them together produces a wrong denominator.
* [Interpretation](interpretation.html) — how a susceptibility result is
  assessed, and the norm the assessment rests on. S, I and R are only comparable
  between sites when the underlying rule set is known, which is why it travels
  with the result.
* [FHIR Profiles – Modelling Notes](fhir-profile.html) — how the steps of a
  diagnostic workflow are linked. Any query that follows an isolate from culture
  to susceptibility depends on these relations, and the three of them mean
  different things: `triggeredBy` a triggered follow-up investigation,
  `derivedFrom` a derived result, `hasMember` a panel.
* [Specimen](probe.html) — what was measured from, and which module owns that
  description.

One pitfall is worth naming here, because it cannot be seen from a resource
alone: a coarse microscopic morphology such as *Gram-positive coccus* is an
organism code in SNOMED CT and therefore also a member of the organism value set
used for identification. A query asking "which organisms were identified" must
filter by profile or test code rather than by `value[x]` alone, or it will count
morphological groups as species. The test codes themselves are disjoint, so no
ambiguity remains once the filter is right.
