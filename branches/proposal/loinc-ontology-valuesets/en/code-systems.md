# Code Systems - MII Implementation Guide Microbiology v2027.0.0-ballot2

* [**Table of Contents**](toc.md)
* **Code Systems**

## Code Systems

This page lists the code systems the **Microbiology** module defines itself (naming convention `MII_CS_<Module>_<Name>`). They cover what the international terminologies do not.

| | |
| :--- | :--- |
| [MII CS Microbiology MRGN Result](CodeSystem-mii-cs-mikrobio-mrgn-ergebnis.md) | CodeSystem for results of the MRGN classification that cannot be represented with LOINC. The LOINC answer list LL6195-3 for 99780-9 contains only 2MRGN, 3MRGN and 4MRGN and therefore no negative value. |
| [MII CS Microbiology Resistance Category](CodeSystem-mii-cs-mikrobio-resistenzkategorie.md) | Investigation codes (Observation.code) for assessing a detected pathogen with regard to a defined resistance category. Each code names the assessed category; the result of the assessment is in Observation.value. |
| [MII CS Microbiology Susceptibility Norm](CodeSystem-mii-cs-mikrobio-susceptibility-norm.md) | CodeSystem for coding the norms used to interpret the susceptibility of microorganisms to antimicrobial substances. |

