# Capability Statements - MII Implementation Guide Microbiology v2027.0.0-alpha.6

* [**Table of Contents**](toc.md)
* **Capability Statements**

## Capability Statements

### Capability Statements

The CapabilityStatements of the **Microbiology** module describe the expected server/client capabilities (supported resources and interactions).

> **Written during migration - review before release.** TODO:REVIEW - this English text is a machine translation of the German source page named above; the German mirror carries the original wording verbatim.

To enable decentralised data analysis via the German Research Data Portal for Health of the Medical Informatics Initiative, the [capabilities interaction](https://www.hl7.org/fhir/http.html#capabilities) MUST be supported, so that the FHIR server exposes a CapabilityStatement at `[BASE_URL]/metadata`. That CapabilityStatement MUST state which profiles - including version - and which search parameters are supported.

The contents that MUST be given in the CapabilityStatement are listed below. In addition, conformance to the following CapabilityStatement MUST be declared in the respective CapabilityStatement instance under [`CapabilityStatement.instantiates`](https://www.hl7.org/fhir/capabilitystatement-definitions.html#CapabilityStatement.instantiates).

Canonical: `https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/CapabilityStatement/metadata`

[Artefact page of this CapabilityStatement](CapabilityStatement-mii-cps-mikrobio-metadata.md)

