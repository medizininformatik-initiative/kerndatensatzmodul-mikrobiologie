The model is based on conventions agreed with the RKI, MIO42 and HL7 Europe and takes developments in the European context into account, in particular within the European Health Data Space (EHDS).

### Representing diagnostic chains

Diagnostic chains are represented, in agreement with HL7 Europe (in the EHDS context), via the R5 backport extension `extension-Observation.triggeredBy`. This modelling is more appropriate than `derivedFrom` because it describes a triggering or procedural relationship between investigations (e.g. reflex testing following a previous result). `derivedFrom` semantically implies a direct derivation of one result from another Observation; that is not correct for many microbiological use cases.

| Note | Mandatory / must-support elements |
|---------|---------------------|
| **!** | For elements that are mandatory or marked must-support, we refer to the corresponding [rules of the IPS](https://build.fhir.org/ig/HL7/fhir-ips/design.html#must-support), which apply to this implementation guide as well. |

