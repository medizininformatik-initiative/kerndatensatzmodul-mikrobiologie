<!-- DERIVED:no-source source=MIIIGModulMikrobiologie/Technische-Implementierung/FHIR-Profile/Index.page.md gate=C -->
> **Written during migration - review before release.** TODO:REVIEW - this English page is a machine translation of the German source page named
> above; the German mirror carries the original wording verbatim.
{: .ig-highlight .ig-highlight-blue}

The model is based on conventions agreed with the RKI, MIO42 and HL7 Europe and takes developments in the European context into account, in particular within the European Health Data Space (EHDS).

### Representing diagnostic chains

Diagnostic chains are represented, in agreement with HL7 Europe (in the EHDS context), via the R5 backport extension `extension-Observation.triggeredBy`. This modelling is more appropriate than `derivedFrom` because it describes a triggering or procedural relationship between investigations (e.g. reflex testing following a previous result). `derivedFrom` semantically implies a direct derivation of one result from another Observation; that is not correct for many microbiological use cases.

| Note | Mandatory / must-support elements |
|---------|---------------------|
| **!** | For elements that are mandatory or marked must-support, we refer to the corresponding [rules of the IPS](https://build.fhir.org/ig/HL7/fhir-ips/design.html#must-support), which apply to this implementation guide as well. |

<!-- DERIVED:bridge source=MIIIGModulMikrobiologie/Technische-Implementierung/FHIR-Profile/Index.page.md gate=B -->
> **Written during migration - review before release.** The ten sub-pages of this section are
> distributed across the migrated guide: the four family overviews (culture, determination,
> quantitative tests, further properties) are sections on [Profiles](profiles.html), the description
> of each individual profile is an intro note on its own artefact page, and
> [Specimen](probe.html) and [Profile Selection and Delimitation](profilauswahl-und-abgrenzung.html)
> have pages of their own.
{: .ig-highlight .ig-highlight-blue}
