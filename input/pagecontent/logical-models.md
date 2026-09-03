<!-- markdownlint-disable MD041 -->
<!-- Source: kerndatensatz-basis input/pagecontent/logical-models.md.
     German mirror: input/translations/de/pagecontent/logical-models.md. -->
### Logical Models

The logical data models of the **Microbiology** module describe the domain dataset independently of its concrete FHIR representation.

The official, approved version of the information model for the Microbiology module can be found on [ART-DECOR](https://art-decor.org/art-decor/decor-datasets--mide-). To unify the representation, the information model was additionally expressed as FHIR Logical Models.

The information model is split across three logical models:

| Logical model | Content |
|---|---|
| [Report](#report) | The microbiological diagnostic report that summarises the investigations. |
| [Investigation](#investigation) | Abstract base carrying the statements that apply to every microbiological investigation. |
| [Investigation types](#investigation-types) | The domain variants, grouped by culture, determination, further properties and quantitative tests. |

Note that the logical models aim solely at representing the data elements and their descriptions. The data types and cardinalities used are not to be regarded as binding; that is settled conclusively by the FHIR profiles. For every element within the logical models there is a 1:1 mapping onto an element of a concrete FHIR resource.

### Report

The microbiological report, derived from the profile `mii-pr-mikrobio-diagnostic-report`. It references the individual investigations it contains via *Investigation*.

{% include StructureDefinition-mii-lm-mikrobio-logical-model-snapshot.xhtml %}

{% include StructureDefinition-mii-lm-mikrobio-logical-model-dict.xhtml %}

### Investigation

The abstract base class of all microbiological investigations. It carries the statements that the profile `mii-pr-labor-laboruntersuchung`, together with the microbiology-specific rules, prescribes for every investigation: identification, status, patient, specimen material, timings, properties influencing interpretation, and the triggering investigation.

{% include StructureDefinition-mii-lm-mikrobio-untersuchung-snapshot.xhtml %}

{% include StructureDefinition-mii-lm-mikrobio-untersuchung-dict.xhtml %}

### Investigation types

The domain variants of a microbiological investigation. This model derives from *Investigation* and therefore inherits all the common statements described there; the table below lists only the attributes that the respective variant additionally specifies.

{% include StructureDefinition-mii-lm-mikrobio-untersuchungsarten-snapshot.xhtml %}

{% include StructureDefinition-mii-lm-mikrobio-untersuchungsarten-dict.xhtml %}
