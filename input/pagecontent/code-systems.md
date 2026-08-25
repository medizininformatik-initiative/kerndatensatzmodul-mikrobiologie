<!-- markdownlint-disable MD041 -->
<!-- Split from the former terminology.md per the TF-KDS-agreed menu structure (one
     page per artifact type). The IG Publisher lists the CodeSystems on the
     artifact pages automatically; this page carries the MII notes on them.
     German mirror: input/translations/de/pagecontent/code-systems.md. -->
### Code Systems

This page describes the CodeSystems of the **Microbiology** module (naming
convention `MII_CS_<Module>_<Name>`). The ValueSets built on them are described
on the [Value Sets](value-sets.html) page.

{:.bg-info}
**Important:** CodeSystem resources of external terminologies (e.g. ICD-10-GM,
OPS, SNOMED CT) are **not** published in this module; they are obtained from the
central KDS terminology service (SU-TermServ):
[https://mii-termserv.de/](https://mii-termserv.de/).

<!-- DERIVED:no-source source=MIIIGModulMikrobiologie/Technische-Implementierung/Terminologien.page.md gate=C -->
> **Written during migration - review before release.** TODO:REVIEW - this English text is a
> machine translation of the German source page named above; the German mirror carries the
> original wording verbatim.
{: .ig-highlight .ig-highlight-blue}

German laboratories frequently use site-specific value lists and rule sets. This implementation guide aims to harmonise coding through the use of internationally established terminologies such as SNOMED CT and LOINC. LOINC provides codes for describing the elements of an investigation (e.g. the question asked), while SNOMED CT is used to code the associated nominal and ordinal values (e.g. results).

LOINC codes describe what is investigated (`Observation.code`), with the "component" representing the test as specifically as possible (e.g. an organism). In principle all LOINC codes are permitted; codes without pre-coordinated statements about "system" and "method" are however preferred. Instead, it is recommended to record the material (Specimen) and the method separately in the corresponding FHIR elements, even where that information is already contained in the LOINC code. SNOMED CT is used for these statements: the material via `Specimen.type` and the method via `Observation.method`. The qualitative test result is likewise coded with SNOMED CT via `Observation.valueCodeableConcept`.

The interpretation should in principle be coded with HL7 terminology via `Observation.interpretation`; where that is not sufficient, SNOMED CT may be used instead.
