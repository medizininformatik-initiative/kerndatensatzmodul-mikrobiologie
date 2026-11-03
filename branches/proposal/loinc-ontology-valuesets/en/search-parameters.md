# Search Parameters - MII Implementation Guide Microbiology v2027.0.0-ballot2

* [**Table of Contents**](toc.md)
* **Search Parameters**

## Search Parameters

The **Microbiology** module defines the following search parameters beyond the FHIR base set. All of them apply to `Observation`.

| | |
| :--- | :--- |
|  | Search by the interpretation of a microbiological Observation. |
|  | Search parameter for the norm category of the susceptibility extension |
|  | Search by the dilution step of a titre. Indexes the denominator of the Ratio value of MII_PR_Mikrobio_Titer; the numerator is fixed at 1 there. A larger denominator means a higher titre, e.g. ?titer=gt160 finds all titres above 1:160. |
|  | Search by the Observation that triggered a microbiological Observation. |

