# Suchparameter - MII Implementation Guide Microbiology v2027.0.0-ballot2

* [**Inhaltsverzeichnis**](toc.md)
* **Suchparameter**

## Suchparameter

 Diese Seite enthält Übersetzungen aus der Originalsprache, in der der Leitfaden verfasst wurde. Informationen zu diesen Übersetzungen und Anweisungen zum Abgeben von Feedback zu den Übersetzungen finden Sie [hier](translationinfo.md). 

Das Modul **Mikrobiologie** definiert die folgenden Suchparameter über die FHIR-Basisparameter hinaus. Alle gelten für `Observation`.

| | |
| :--- | :--- |
|  | Search by the interpretation of a microbiological Observation. |
|  | Search parameter for the norm category of the susceptibility extension |
|  | Search by the dilution step of a titre. Indexes the denominator of the Ratio value of MII_PR_Mikrobio_Titer; the numerator is fixed at 1 there. A larger denominator means a higher titre, e.g. ?titer=gt160 finds all titres above 1:160. |
|  | Search by the Observation that triggered a microbiological Observation. |

