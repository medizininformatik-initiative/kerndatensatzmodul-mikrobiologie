# Anleitung für Implementierende - MII Implementation Guide Microbiology v2027.0.0-ballot.rc1

* [**Inhaltsverzeichnis**](toc.md)
* [**Anleitung**](guidance.md)
* **Anleitung für Implementierende**

## Anleitung für Implementierende

Diese Seite sammelt, was zur Umsetzung des Moduls **Mikrobiologie** in FHIR-basierten Systemen benötigt wird (ETL aus Primärsystemen, FHIR-API, Validierung).

### Anforderungen verstehen

**1. Logische Modelle — fachliche Anforderungen**

Die [Logischen Modelle](logical-models.md) tragen die fachlichen und klinischen Anforderungen, unabhängig von den FHIR-Profilen:

* **Befund** — der mikrobiologische Befund und die Untersuchungen, die er zusammenfasst
* **Untersuchung** — die abstrakte Basis: Identifikation, Status, Patient:in, Probe, Zeitpunkte, interpretationsrelevante Eigenschaften, auslösende Untersuchung
* **Untersuchungsarten** — die fachlichen Varianten und die Attribute, die jede von ihnen zusätzlich festlegt

Die verwendeten Datentypen und Kardinalitäten sind nicht verbindlich; die verbindlichen Anforderungen definieren die Profile.

**2. UML-Diagramme — Datenbeziehungen**

Die [UML-Diagramme](uml-diagrams.md) veranschaulichen die Beziehungen zwischen den Elementen und die Referenzen zwischen den Ressourcen.

### Konformität

Die Konformitätsregeln gelten für den gesamten Kerndatensatz und werden vom Meta-Modul gepflegt, nicht hier wiederholt:

* [Konformität](https://github.com/medizininformatik-initiative/kerndatensatz-meta/wiki/Conformance) — die Regeln als Ganzes
* [Allgemeine Anforderungen](https://github.com/medizininformatik-initiative/kerndatensatz-meta/wiki/Conformance#anforderungsdokumentation)
* [Must Support](https://github.com/medizininformatik-initiative/kerndatensatz-meta/wiki/Conformance#must-support-ms)
* [Umgang mit fehlenden Daten](https://github.com/medizininformatik-initiative/kerndatensatz-meta/wiki/Conformance#fehlende-daten)
* [Datenschutz und Sicherheit](security-and-privacy.md) — modulspezifische Hinweise

### Technische Artefakte

* [Profile](profiles.md) — die 22 Profile mit ihren Einschränkungen, je eines pro Untersuchungsart sowie Befund und Probe
* [Extensions](extensions.md) — die Norm hinter einer Empfindlichkeitsbewertung und der R5-Backport, der die auslösende Untersuchung trägt
* [ValueSets](value-sets.md) — die 48 ValueSets, die das Modul definiert
* [CodeSysteme](code-systems.md) — die vier, die das Modul selbst definiert, darunter die Interimscodes für Fälle, in denen noch kein LOINC- oder SNOMED-Code existiert
* [Capability Statements](capability-statements.md) — die REST-Anforderungen einschließlich Interaktionen und Suchparametern
* [Suchparameter](search-parameters.md) — die vier, die das Modul definiert, darunter der für die auslösende Untersuchung
* [Beispiele](examples.md) — Musterressourcen
* [ImplementationGuide-Ressource](ImplementationGuide-mii-ig-mikrobiologie.md) — die Paketversionen, auf die dieser Leitfaden tatsächlich auflöst, die globalen Profile und die Expansionsparameter

### Fachliche Hinweise

Vier Themen sind für die Umsetzung gesondert beschrieben:

* [Profilauswahl und Abgrenzung](profilauswahl-und-abgrenzung.md) — welches Profil welche Aussage trägt, wie die vier Arten negativer Ergebnisse unterschieden werden und wie die Schritte eines diagnostischen Ablaufs verknüpft sind
* [Interpretation](interpretation.md) — die Empfindlichkeitskategorien, die Norm, auf der sie beruhen, und das Verhältnis von Messwert und Bewertung
* [FHIR-Profile – Hinweise zur Modellierung](fhir-profile.md) — die Konventionen hinter den Profilen: Postkoordination, die Methodenachse und die Abbildung diagnostischer Ketten
* [Probe](probe.md) — die Abbildung des Probenmaterials über das Biobank-Modul

### Kontext im Gesamtprojekt – Bezüge zu anderen Modulen

Dieses KDS-Modul ist eng mit dem [KDS-Modul Laborbefund](https://simplifier.net/medizininformatikinitiative-modullabor) verbunden, wobei jedoch alle Observations und DiagnosticReports spezifisch für die Mikrobiologie sind.

Auch die genetischen Untersuchungen sind spezifisch für den mikrobiologischen Bereich und unterscheiden sich daher vom [KDS-Modul Molekulargenetischer Befundbericht](https://simplifier.net/medizininformatikinitiative-modulomics).

Für die Beschreibung des Präparats verweisen wir auf das [KDS-Modul Biobank – Bioprobendaten](https://simplifier.net/medizininformatikinitiative-modulbiobank). Für die Beschreibung des Falles und der Organisation wird auf das [KDS-Modul Fall](https://simplifier.net/medizininformatikinitiative-modulfall) bzw. [KDS-Modul Strukturdaten](https://simplifier.net/medizininformatikinitiative-modulstrukturdaten) verwiesen.

### Referenzen

Das Modell basiert auf fachlich abgestimmten Konventionen mit dem RKI, MIO42 und HL7 Europe und berücksichtigt Entwicklungen im europäischen Kontext, insbesondere im Rahmen des European Health Data Space (EHDS).

Die Erstellung erfolgte unter Einbeziehung von Fachvertreterinnen und Fachvertretern der Universitätsklinika und wurde mit einer Vertreterin der Deutschen Gesellschaft für Hygiene und Mikrobiologie diskutiert.

Es baut auf den Vorarbeiten für den [HiGHmed Use Case Infection Control](https://simplifier.net/MedizininformatikInitiative-HiGHmed-IC) und den [SMITH Use Case HELP](https://simplifier.net/MedizininformatikInitiatie-SMITH-HELP) auf, ist aber auf alle möglichen mikrobiologischen Untersuchungen ausgedehnt.

### Erste Schritte in der Umsetzung

**Downloads**

Die Seite [Downloads](downloads.md) stellt das FHIR-Paket für die Validierung, je ein Paket pro Sprache und eine herunterladbare Kopie dieses Leitfadens bereit.

**Terminologieserver**

Für die Expansion von ValueSets und die Validierung von Codes wird der MII-Terminologieserver verwendet:

* **URL:** [https://www.ontoserver.mii-termserv.de/](https://www.ontoserver.mii-termserv.de/)

Der Zugang ist über Clientzertifikate geschützt und wird an Einrichtungen in Deutschland vergeben. Die Versionen, auf die dieser Leitfaden gepinnt ist, stehen in seinen [Expansionsparametern](Parameters-mii-param-mikrobio-manifest.md) — derzeit SNOMED CT `20260701` und LOINC `2.82`. Eine Expansion gegen eine andere Version kann eine andere Codemenge ergeben; die ValueSets dieses Moduls werden über LOINC-Achsenfilter gebildet, ein Versionswechsel verschiebt also die Mitgliedschaft und nicht nur die Anzeige.

**Validierung**

Validiert wird gegen das FHIR-Paket mit dem [FHIR-Validator](https://confluence.hl7.org/spaces/FHIR/pages/35718580/Using+the+FHIR+Validator).

