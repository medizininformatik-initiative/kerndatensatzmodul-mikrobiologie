<!-- markdownlint-disable MD041 -->

Technische Hinweise für DIZ-Implementierende zur Umsetzung der Profile des Moduls **Mikrobiologie** (ETL aus Primärsystemen, FHIR-API, Validierung).

<!-- MIGRATED verbatim from Simplifier page: MIIIGModulMikrobiologie/Kontext-im-Gesamtprojekt-Bezuege-zu-anderen-Modulen.page.md  -->
Dieses KDS-Modul ist eng mit dem [KDS-Modul Laborbefund](https://simplifier.net/medizininformatikinitiative-modullabor "KDS-Modul Laborbefund") verbunden, wobei jedoch alle Observations und DiagnosticReports spezifisch für die Mikrobiologie sind. 

Auch die genetischen Untersuchungen sind spezifisch für den mikrobiologischen Bereich und unterscheiden sich daher vom [KDS-Modul Molekulargenetischer Befundbericht](https://simplifier.net/medizininformatikinitiative-modulomics "KDS-Modul Molekulargenetischer Befundbericht").

Für die Beschreibung des Präparats verweisen wir auf das [KDS-Modul Biobank – Bioprobendaten](https://simplifier.net/medizininformatikinitiative-modulbiobank "KDS-Modul Molekulargenetischer Befundbericht"). Für die Beschreibung des Falles und der Organisation wird auf das [KDS-Modul Fall](https://simplifier.net/medizininformatikinitiative-modulfall "KDS-Modul Fall") bzw. [KDS-Modul Strukturdaten](https://simplifier.net/medizininformatikinitiative-modulstrukturdaten  "KDS-Modul Strukturdaten")  verwiesen.

<!-- MIGRATED verbatim from Simplifier page: MIIIGModulMikrobiologie/Referenzen.page.md  -->
Das Modell basiert auf fachlich abgestimmten Konventionen mit dem RKI, MIO42 und HL7 Europe und berücksichtigt Entwicklungen im europäischen Kontext, insbesondere im Rahmen des European Health Data Space (EHDS).

 Die Erstellung erfolgte unter Einbeziehung von Fachvertreterinnen und Fachvertretern der Universitätsklinika und wurde mit einer Vertreterin der Deutschen Gesellschaft für Hygiene und Mikrobiologie diskutiert.

 Es baut auf den Vorarbeiten für den [HiGHmed Use Case Infection Control](https://simplifier.net/MedizininformatikInitiative-HiGHmed-IC "HiGHmed") und den [SMITH Use Case HELP](https://simplifier.net/MedizininformatikInitiatie-SMITH-HELP "HELP") auf, ist aber auf alle möglichen mikrobiologischen Untersuchungen ausgedehnt.
