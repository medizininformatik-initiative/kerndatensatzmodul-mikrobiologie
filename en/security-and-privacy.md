# Security and Privacy - MII Implementation Guide Microbiology v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* **Security and Privacy**

## Security and Privacy

This section addresses security and privacy experts. General requirements are in the FHIR core specification — [Security & Privacy Module](https://build.fhir.org/secpriv-module.html) and the [security checklist](https://build.fhir.org/security.html). This page does not repeat them; it links the overarching data protection framework and states what is **specific to this module**.

#### 1. The overarching data protection concept

The [overarching data protection concept of the Medical Informatics Initiative](https://www.medizininformatik-initiative.de/en/data-protection-concept) governs how patient data may be processed for research across the network of Data Integration Centers: it covers the legal basis (the MII Broad Consent), the roles of the Data Integration Centers and Use & Access Committees, and the cross-site application scenarios (feasibility queries, distributed analyses, data and biosample provision). Everything this module specifies operates inside that framework — this guide adds no processing purpose of its own.

#### 2. De-identification, minimisation and pseudonymisation (DIMP)

How data leaving a Data Integration Center is de-identified in practice is specified by [DIMP (De-Identification — Minimisation — Pseudonymisation)](https://medizininformatik-initiative.github.io/dataportal/data-node/DIMP.html) in the data portal documentation: direct identifiers are removed, data elements not needed by the approved project are dropped, and identifying values are replaced by project-specific pseudonyms (FHIR Pseudonymizer configuration). The profiles of this module describe data **before** DIMP is applied; which elements survive a concrete data release is decided per project by the DIMP configuration, not by this guide.

#### 3. Module-specific aspects

Three properties of microbiological findings are specific to this module.

**A finding is sensitive without a diagnosis.** The test code names the target: an HIV, tuberculosis or hepatitis result is readable from `Observation.code` even where no `Condition` exists. Access rules keyed to diagnoses do not see it.

**Colonisation status outlives the episode.** MRSA, VRE, LRE, LVRE and the MRGN classes describe the person rather than the encounter and steer isolation and admission decisions — yet they are modelled as ordinary Observations, with nothing in the resource marking that weight.

**IfSG notification runs elsewhere.** Many of the pathogens representable here are notifiable under the German Infection Protection Act. That duty is discharged through demis; receiving these resources for research neither satisfies nor substitutes for it. This module defines no reporting workflow and no notification status.

