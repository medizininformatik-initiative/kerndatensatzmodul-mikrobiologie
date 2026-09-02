# Anleitung für Implementierende - MII Implementation Guide Microbiology v2027.0.0-alpha.6

* [**Inhaltsverzeichnis**](toc.md)
* [**Anleitung**](guidance.md)
* **Anleitung für Implementierende**

## Anleitung für Implementierende

 Diese Seite enthält Übersetzungen aus der Originalsprache, in der der Leitfaden verfasst wurde. Informationen zu diesen Übersetzungen und Anweisungen zum Abgeben von Feedback zu den Übersetzungen finden Sie [hier](translationinfo.md). 

Technische Hinweise für DIZ-Implementierende zur Umsetzung der Profile des Moduls **Mikrobiologie** (ETL aus Primärsystemen, FHIR-API, Validierung).

Dieses KDS-Modul ist eng mit dem [KDS-Modul Laborbefund](https://simplifier.net/medizininformatikinitiative-modullabor) verbunden, wobei jedoch alle Observations und DiagnosticReports spezifisch für die Mikrobiologie sind.

Auch die genetischen Untersuchungen sind spezifisch für den mikrobiologischen Bereich und unterscheiden sich daher vom [KDS-Modul Molekulargenetischer Befundbericht](https://simplifier.net/medizininformatikinitiative-modulomics).

Für die Beschreibung des Präparats verweisen wir auf das [KDS-Modul Biobank – Bioprobendaten](https://simplifier.net/medizininformatikinitiative-modulbiobank). Für die Beschreibung des Falles und der Organisation wird auf das [KDS-Modul Fall](https://simplifier.net/medizininformatikinitiative-modulfall) bzw. [KDS-Modul Strukturdaten](https://simplifier.net/medizininformatikinitiative-modulstrukturdaten) verwiesen.

Das Modell basiert auf fachlich abgestimmten Konventionen mit dem RKI, MIO42 und HL7 Europe und berücksichtigt Entwicklungen im europäischen Kontext, insbesondere im Rahmen des European Health Data Space (EHDS).

Die Erstellung erfolgte unter Einbeziehung von Fachvertreterinnen und Fachvertretern der Universitätsklinika und wurde mit einer Vertreterin der Deutschen Gesellschaft für Hygiene und Mikrobiologie diskutiert.

Es baut auf den Vorarbeiten für den [HiGHmed Use Case Infection Control](https://simplifier.net/MedizininformatikInitiative-HiGHmed-IC) und den [SMITH Use Case HELP](https://simplifier.net/MedizininformatikInitiatie-SMITH-HELP) auf, ist aber auf alle möglichen mikrobiologischen Untersuchungen ausgedehnt.

