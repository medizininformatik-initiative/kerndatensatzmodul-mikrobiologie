# Search Parameters - MII Implementation Guide Microbiology v2027.0.0-alpha.6

* [**Table of Contents**](toc.md)
* **Search Parameters**

## Search Parameters

### Search Parameters

The **Microbiology** module defines the following search parameters beyond the FHIR base set. All of them apply to `Observation`.

| | |
| :--- | :--- |
|  | Suche nach der Interpretation einer mikrobiologischen Observation. |
|  | Suchparameter für die Normkategorie der Empfindlichkeitsextension |
|  | Suche nach der Verduennungsstufe eines Titers. Indiziert den Nenner des Ratio-Werts von MII_PR_Mikrobio_Titer; der Zaehler ist dort fest 1. Ein groesserer Nenner bedeutet einen hoeheren Titer, z. B. findet ?titer=gt160 alle Titer oberhalb von 1:160. |
|  | Suche nach der Observation, die eine mikrobiologische Observation ausgelöst hat. |

