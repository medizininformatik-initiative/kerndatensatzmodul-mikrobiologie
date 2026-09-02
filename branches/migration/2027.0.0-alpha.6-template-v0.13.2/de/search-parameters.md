# Suchparameter - MII Implementation Guide Microbiology v2027.0.0-alpha.6

* [**Inhaltsverzeichnis**](toc.md)
* **Suchparameter**

## Suchparameter

 Diese Seite enthält Übersetzungen aus der Originalsprache, in der der Leitfaden verfasst wurde. Informationen zu diesen Übersetzungen und Anweisungen zum Abgeben von Feedback zu den Übersetzungen finden Sie [hier](translationinfo.md). 

### Search Parameters

Das Modul **Mikrobiologie** definiert die folgenden Suchparameter über die FHIR-Basisparameter hinaus. Alle gelten für `Observation`.

| | |
| :--- | :--- |
|  | Suche nach der Interpretation einer mikrobiologischen Observation. |
|  | Suchparameter für die Normkategorie der Empfindlichkeitsextension |
|  | Suche nach der Verduennungsstufe eines Titers. Indiziert den Nenner des Ratio-Werts von MII_PR_Mikrobio_Titer; der Zaehler ist dort fest 1. Ein groesserer Nenner bedeutet einen hoeheren Titer, z. B. findet ?titer=gt160 alle Titer oberhalb von 1:160. |
|  | Suche nach der Observation, die eine mikrobiologische Observation ausgelöst hat. |

