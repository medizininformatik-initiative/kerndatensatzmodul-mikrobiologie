# Artifacts Summary - MII Implementation Guide Microbiology v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* **Artifacts Summary**

## Artifacts Summary

This page provides a list of the FHIR artifacts defined as part of this implementation guide.

### Behavior: Capability Statements 

The following artifacts define the specific capabilities that different types of systems are expected to have in order to comply with this implementation guide. Systems conforming to this implementation guide are expected to declare conformance to one or more of the following capability statements.

| | |
| :--- | :--- |
| [ MII CPS Mikrobio Metadata  ](CapabilityStatement-mii-cps-mikrobio-metadata.md) | CapabilityStatement für das MII Mikrobiologie Modul 2027. |

### Behavior: Search Parameters 

These define the properties by which a RESTful server can be searched. They can also be used for sorting and including related resources.

| | |
| :--- | :--- |
| [ ObservationInterpretation  ](SearchParameter-ObservationInterpretation.md) | Suche nach der Interpretation einer mikrobiologischen Observation. |
| [ mii-sp-mikrobio-interpretation  ](SearchParameter-mii-sp-mikrobio-interpretation.md) | Suchparameter für die Normkategorie der Empfindlichkeitsextension |
| [ mii-sp-mikrobio-observation-titer  ](SearchParameter-mii-sp-mikrobio-observation-titer.md) | Suche nach der Verduennungsstufe eines Titers. Indiziert den Nenner des Ratio-Werts von MII_PR_Mikrobio_Titer; der Zaehler ist dort fest 1. Ein groesserer Nenner bedeutet einen hoeheren Titer, z. B. findet ?titer=gt160 alle Titer oberhalb von 1:160. |
| [ mii-sp-mikrobio-observation-triggered-by  ](SearchParameter-mii-sp-mikrobio-observation-triggered-by.md) | Suche nach der Observation, die eine mikrobiologische Observation ausgelöst hat. |

### Structures: Logical Models 

These define data models that represent the domain covered by this implementation guide in more business-friendly terms than the underlying FHIR resources.

| | |
| :--- | :--- |
| [ MII LM Mikrobio Befund  ](StructureDefinition-mii-lm-mikrobio-logical-model.md) | Logical Model des mikrobiologischen Befunds für die grafische Darstellung des Mikrobiologie-Datenmodells 2027 [DE] |
| [ MII LM Mikrobio Untersuchung  ](StructureDefinition-mii-lm-mikrobio-untersuchung.md) | Gemeinsame Angaben aller mikrobiologischen Untersuchungen [DE] |
| [ MII LM Mikrobio Untersuchungsarten  ](StructureDefinition-mii-lm-mikrobio-untersuchungsarten.md) | Fachliche Ausprägungen der mikrobiologischen Untersuchung für die grafische Darstellung des Mikrobiologie-Datenmodells 2027 [DE] |

### Structures: Resource Profiles 

These define constraints on FHIR resources for systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [ MII PR Mikrobio Allgemeine Bestimmung (Identifizierung)  ](StructureDefinition-mii-pr-mikrobio-allgemeine-bestimmung.md) | Allgemeine Bestimmung beschreibt die Identifikation eines Mikroorganismus oder infektiösen Agens in einer Probe, ohne Einschränkung auf ein vordefiniertes Ziel. |
| [ MII PR Mikrobio Allgemeine Kultur  ](StructureDefinition-mii-pr-mikrobio-allgemeine-kultur.md) | Allgemeine Kultur beschreibt das Ergebnis einer nicht zielgerichteten mikrobiologischen Kultur, die prüft, ob in der Probe irgendein Mikroorganismus wächst, ohne die Analyse auf einen vordefinierten Erreger zu beschränken. |
| [ MII PR Mikrobio Allgemeine Mikroskopie  ](StructureDefinition-mii-pr-mikrobio-mikroskopie.md) | Allgemeine Mikroskopie beschreibt die morphologische Beobachtung von Mikroorganismen in einer Probe mittels mikroskopischer Untersuchung, optional mit Färbetechniken (z. B. Gramfärbung). Das Ergebnis ist eine morphologische Gruppe, keine Spezies. |
| [ MII PR Mikrobio Antigen Antikoerper Quantitativ  ](StructureDefinition-mii-pr-mikrobio-antigen-antikoerper-quantitativ.md) | Quantitative Antigen-/Antikörperantwort beschreibt die quantitative Messung erregerspezifischer Antigene oder Antikörper in einer Probe, bestimmt mittels immunologischer Verfahren. |
| [ MII PR Mikrobio Aviditaet  ](StructureDefinition-mii-pr-mikrobio-aviditaet.md) | Avidität beschreibt die qualitative Beurteilung der Bindungsstärke von Antikörpern an ein spezifisches Antigen, typischerweise zur Unterscheidung frischer von zurückliegenden Infektionen. |
| [ MII PR Mikrobio Bartlett Score  ](StructureDefinition-mii-pr-mikrobio-bartlett-score.md) | Bartlett-Score beschreibt die qualitative mikroskopische Beurteilung der Eignung von Sputumproben für die mikrobiologische Kultur anhand des Verhältnisses von Entzündungs- zu Epithelzellen. |
| [ MII PR Mikrobio CT Wert  ](StructureDefinition-mii-pr-mikrobio-ct-wert.md) | CT-Wert beschreibt die Quantifizierung des Zyklusschwellenwerts bei Nukleinsäurenachweisen (z. B. Echtzeit-PCR) in einer Probe. |
| [ MII PR Mikrobio Diagnostic Report  ](StructureDefinition-mii-pr-mikrobio-diagnostic-report.md) | Mikrobiologischer Befundbericht zur Zusammenfassung und Kontextualisierung zugehöriger mikrobiologischer Untersuchungsergebnisse. |
| [ MII PR Mikrobio Empfindlichkeit  ](StructureDefinition-mii-pr-mikrobio-empfindlichkeit.md) | Empfindlichkeit beschreibt das Ergebnis der phänotypischen Resistenztestung eines Erregers gegenüber antimikrobiellen Substanzen unter Bezug auf ein Normsystem. |
| [ MII PR Mikrobio Keimzahl  ](StructureDefinition-mii-pr-mikrobio-keimzahl.md) | Keimzahl beschreibt die quantitative Bestimmung lebensfähiger Mikroorganismen in einer Probe als koloniebildende Einheiten je Volumen, je Masse oder als Anzahl je Probe. |
| [ MII PR Mikrobio MRGN Klasse  ](StructureDefinition-mii-pr-mikrobio-mrgn-klasse.md) | MRGN-Klasse beschreibt die Einstufung multiresistenter gramnegativer Erreger entsprechend der RKI-Kategorisierung. |
| [ MII PR Mikrobio Molekulare Pathogenlast  ](StructureDefinition-mii-pr-mikrobio-molekulare-pathogenlast.md) | Molekulare Pathogenlast beschreibt die quantitative Messung der Nukleinsäurekonzentration eines Erregers in einer Probe, typischerweise als Konzentration pro Volumen. |
| [ MII PR Mikrobio Nugent Score  ](StructureDefinition-mii-pr-mikrobio-nugent-score.md) | Nugent-Score beschreibt ein Gramfärbungs-basiertes semiquantitatives Punktesystem zur Beurteilung vaginaler Mikrobiotamuster bei bakterieller Vaginose. |
| [ MII PR Mikrobio Probe  ](StructureDefinition-mii-pr-mikrobio-probe.md) | Probe beschreibt das mikrobiologisch untersuchte Material. Das Profil leitet vom Bioproben-Basisprofil der MII-Biobank ab und ergaenzt die Erwartungen der mikrobiologischen Diagnostik. |
| [ MII PR Mikrobio Resistenzkategorie Status  ](StructureDefinition-mii-pr-mikrobio-resistenzkategorie-status.md) | Bewertung eines nachgewiesenen Erregers hinsichtlich einer definierten Resistenzkategorie, z. B. MRSA, VRE, LRE oder LVRE. Die bewertete Kategorie steht in Observation.code, das Ergebnis der Bewertung in Observation.value. |
| [ MII PR Mikrobio Resistenzmechanismen Determinanten  ](StructureDefinition-mii-pr-mikrobio-resistenzmechanismen-determinanten.md) | Resistenzmechanismen/Determinanten beschreibt den Nachweis von Resistenzgenen, Resistenzmutationen, Proteinen oder funktionalen Test (z.B. CIM-Test) in einer Probe oder Isolat als Hinweis auf spezifische Resistenzmechanismen. |
| [ MII PR Mikrobio Spezifische Bestimmung  ](StructureDefinition-mii-pr-mikrobio-spezifische-bestimmung.md) | Spezifische Bestimmung beschreibt den qualitativen Nachweis eines vordefinierten mikrobiellen Ziels in einer Probe durch direkte molekulare, immunologische oder biochemische Nachweismethoden sowie durch methodenneutral kodierte Nachweistests. Der kulturbasierte zielgerichtete Nachweis liegt ebenfalls hier; das Verfahren steht im Untersuchungscode und in Observation.method. |
| [ MII PR Mikrobio Spezifische Mikroskopie  ](StructureDefinition-mii-pr-mikrobio-spezifische-mikroskopie.md) | Spezifische Mikroskopie beschreibt den mikroskopischen Nachweis eines im Untersuchungscode benannten Objekts — etwa säurefester Stäbchen oder von Leukozyten — mit der semiquantitativen Stufe als Ergebnis. |
| [ MII PR Mikrobio Titer  ](StructureDefinition-mii-pr-mikrobio-titer.md) | Titer beschreibt eine semiquantitative Messung aus seriellen Verdünnungsreihen, berichtet als Verhältnis (z. B. 1:160). |
| [ MII PR Mikrobio Virulenzfaktor  ](StructureDefinition-mii-pr-mikrobio-virulenzfaktor.md) | Virulenzfaktor beschreibt den qualitativen Nachweis oder Ausschluss von Virulenzdeterminanten in einer Probe oder einem Isolat. |
| [ MII PR Mikrobio Voraussichtliche Empfindlichkeit  ](StructureDefinition-mii-pr-mikrobio-voraussichtliche-empfindlichkeit.md) | Voraussichtliche Empfindlichkeit beschreibt die aus genotypischen Resistenznachweisen abgeleitete erwartete Suszeptibilität oder Resistenz gegenüber antimikrobiellen Substanzen. |

### Structures: Extension Definitions 

These define constraints on FHIR data types for systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [ MII EX Mikrobio Empfindlichkeit Norm  ](StructureDefinition-mii-ex-mikrobio-empfindlichkeit-norm.md) | Normative susceptibility interpretation metadata (system, version, category). |
| [ MII EX Mikrobio Färbung  ](StructureDefinition-mii-ex-mikrobio-faerbung.md) | Staining technique used for the microscopic examination, coded with the same SNOMED CT hierarchy as the European laboratory coordination. |
| [ R5: Triggering observation(s) (new)  ](StructureDefinition-ext-R5-Observation.triggeredBy.md) | R5: `Observation.triggeredBy` (new:BackboneElement) |

### Terminology: Value Sets 

These define sets of codes used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [ MII VS Labor Laborergebnis Semiquantitativ  ](ValueSet-mii-vs-labor-laborergebnis-semiquantitativ.md) | Kodierung für semi-quantitative Laborergebnisse |
| [ MII VS Mikrobio Allgemeine Bestimmung Ergebnis [SNOMED]  ](ValueSet-mii-vs-mikrobio-allgemeine-bestimmung-ergebnis-snomed.md) | Ergebnis-ValueSet fuer die allgemeine Bestimmung: der identifizierte Mikroorganismus oder das negative Ergebnis, wenn kein Erreger identifiziert wurde. |
| [ MII VS Mikrobio Allgemeine Bestimmung Methode [SNOMED]  ](ValueSet-mii-vs-mikrobio-allgemeine-bestimmung-methode-snomed.md) | Methoden-ValueSet für die allgemeine Bestimmung: nicht kulturbasierte Verfahren zur Identifikation eines Erregers ohne vordefiniertes Ziel, etwa Mikroskopie oder MALDI-TOF. |
| [ MII VS Mikrobio Allgemeine Bestimmung Tests [LOINC]  ](ValueSet-mii-vs-mikrobio-allgemeine-bestimmung-tests-loinc.md) | Tests-ValueSet für die allgemeine Bestimmung: LOINC-Codes für die ungerichtete Identifizierung eines Mikroorganismus. Bevorzugt wird 41852-5; die übrigen Codes sind gleichwertig zulässig, wo das Labor die Erregergruppe oder das Sequenzierziel im Code benennt. |
| [ MII VS Mikrobio Allgemeine Kultur Methode [SNOMED]  ](ValueSet-mii-vs-mikrobio-allgemeine-kultur-methode-snomed.md) | Methoden-ValueSet für die allgemeine Kultur: Kulturverfahren ohne Einschränkung auf einen vordefinierten Erreger, einschließlich aerober und anaerober Bebrütung. |
| [ MII VS Mikrobio Allgemeine Kultur Tests [LOINC]  ](ValueSet-mii-vs-mikrobio-allgemeine-kultur-tests-loinc.md) | Tests-ValueSet für die allgemeine Kultur: LOINC-Codes für die ungerichtete kulturelle Untersuchung. Bevorzugt wird 11475-1, weil der Code das Verfahren selbst benennt; 41852-5 ist gleichwertig zulässig. |
| [ MII VS Mikrobio Allgemeine Mikroskopie Tests [LOINC]  ](ValueSet-mii-vs-mikrobio-allgemeine-mikroskopie-tests-loinc.md) | Tests-ValueSet für die allgemeine Mikroskopie: nominale LOINC-Codes der mikroskopischen Beobachtung, deren Ergebnis die gesehene Morphologie ist. Bevorzugt wird 105059-0, weil es methodenneutral ist; die Codes mit Färbung im Namen (Gram, säurefest, Rhodamin-Auramin) sind gleichwertig zulässig und halten dafür Observation.method frei. |
| [ MII VS Mikrobio Antigen Antikoerper Methode [SNOMED]  ](ValueSet-mii-vs-mikrobio-antigen-antikoerper-methode-snomed.md) | Methoden-ValueSet für quantitative Antigen- und Antikörpertests sowie für die Aviditätsbestimmung: immunologische Nachweisverfahren. |
| [ MII VS Mikrobio Antigen Antikoerper Quantitativ Einheiten [UCUM]  ](ValueSet-mii-vs-mikrobio-antigen-antikoerper-quantitativ-einheiten-ucum.md) | Einheiten-ValueSet für quantitative Antigen- und Antikörpertests (UCUM). Bindet Observation.valueQuantity.code. |
| [ MII VS Mikrobio Antigen Antikoerper Quantitative Tests [LOINC]  ](ValueSet-mii-vs-mikrobio-antigen-antikoerper-quantitative-tests-loinc.md) | Tests-ValueSet für quantitative Antigen- und Antikörpertests: LOINC-Codes für die Messung erregerspezifischer Antigene oder Antikörper. |
| [ MII VS Mikrobio Aviditaet Ergebnis  ](ValueSet-mii-vs-mikrobio-aviditaet-ergebnis.md) | Bewertungs-ValueSet für die Avidität: kategoriale Einordnung des Aviditätsindex als niedrig, intermediär oder hoch. Niedrige Avidität spricht für eine frische Infektion. |
| [ MII VS Mikrobio Aviditaet Tests [LOINC]  ](ValueSet-mii-vs-mikrobio-aviditaet-tests-loinc.md) | Tests-ValueSet für die Aviditätsbestimmung: LOINC-Codes für Aviditätstests einschließlich des Zielantigens. |
| [ MII VS Mikrobio Bartlett Score [LOINC]  ](ValueSet-mii-vs-mikrobio-bartlett-score-loinc.md) | Ergebnis-ValueSet für den Bartlett-Score: Punktkategorien von +3 bis -1, die das Verhältnis von Entzündungs- zu Epithelzellen und damit die Eignung einer Sputumprobe für die Kultur bewerten. |
| [ MII VS Mikrobio Befundtyp [LOINC]  ](ValueSet-mii-vs-mikrobio-befundtyp-loinc.md) | Sepzalisierte Kodierung von mikrobiologischen Befunden |
| [ MII VS Mikrobio CT Wert [LOINC]  ](ValueSet-mii-vs-mikrobio-ct-wert-loinc.md) | Tests-ValueSet für den Ct-Wert: LOINC-Codes mit der Eigenschaft Zyklusschwellenwert bei Nukleinsäurenachweisen. |
| [ MII VS Mikrobio Data Absent Reason  ](ValueSet-mii-vs-mikrobio-data-absent-reason.md) | Gruende fuer ein fehlendes Untersuchungsergebnis. Ergaenzt die FHIR-Basiscodes um das unbestimmbare Ergebnis, das zuvor ueber value[x] kodiert wurde. |
| [ MII VS Mikrobio Detected Not Detected [SNOMED]  ](ValueSet-mii-vs-mikrobio-detected-not-detected-snomed.md) | Ergebnis-ValueSet für zielgerichtete qualitative Nachweise: nachgewiesen oder nicht nachgewiesen. Ein unbestimmbares Ergebnis wird nicht hierüber, sondern über Observation.dataAbsentReason abgebildet. |
| [ MII VS Mikrobio Empfindlichkeit Einheiten [UCUM]  ](ValueSet-mii-vs-mikrobio-empfindlichkeit-einheiten-ucum.md) | Einheiten-ValueSet für die phänotypische Empfindlichkeitstestung (UCUM): minimale Hemmkonzentration in mg/L oder Hemmhofdurchmesser in mm. |
| [ MII VS Mikrobio Empfindlichkeit Methode [SNOMED]  ](ValueSet-mii-vs-mikrobio-empfindlichkeit-methode-snomed.md) | Methoden-ValueSet für die phänotypische Empfindlichkeitstestung: die Verfahren, mit denen eine minimale Hemmkonzentration oder ein Hemmhofdurchmesser gemessen wird. |
| [ MII VS Mikrobio Empfindlichkeit Phenotyp [LOINC]  ](ValueSet-mii-vs-mikrobio-empfindlichkeit-phenotyp-loinc.md) | Tests-ValueSet für die phänotypische Empfindlichkeitstestung: LOINC-Codes der getesteten antimikrobiellen Substanz. |
| [ MII VS Mikrobio Empfänglichkeit Genotyp [LOINC]  ](ValueSet-mii-vs-mikrobio-empfindlichkeit-genotyp-loinc.md) | Tests-ValueSet für die voraussichtliche Empfindlichkeit: LOINC-Codes für die aus dem Genotyp abgeleitete erwartete Wirksamkeit einer antimikrobiellen Substanz. |
| [ MII VS Mikrobio Färbung [SNOMED]  ](ValueSet-mii-vs-mikrobio-faerbung-snomed.md) | Färbeverfahren der mikroskopischen Untersuchung, z. B. Gramfärbung oder Kinyounfärbung. |
| [ MII VS Mikrobio Keimzahl Einheiten [UCUM]  ](ValueSet-mii-vs-mikrobio-keimzahl-einheiten-ucum.md) | Einheiten-ValueSet für die Keimzahlbestimmung (UCUM): koloniebildende Einheiten je Volumen, je Masse oder als Anzahl je Probe. |
| [ MII VS Mikrobio Keimzahl [LOINC]  ](ValueSet-mii-vs-mikrobio-keimzahl-loinc.md) | Tests-ValueSet für die Keimzahlbestimmung: LOINC-Codes für die quantitative Bestimmung lebensfähiger Mikroorganismen. |
| [ MII VS Mikrobio Kultur Ergebnis [SNOMED]  ](ValueSet-mii-vs-mikrobio-kultur-ergebnis-snomed.md) | Ergebnis-ValueSet fuer die allgemeine und die spezifische Kultur: Wachstum, kein Wachstum oder ein nicht eindeutiges Ergebnis. Wie viel gewachsen ist, sagt nicht dieses ValueSet, sondern die Keimzahl. Ein unbestimmbares Ergebnis wird nicht ueber value[x], sondern ueber Observation.dataAbsentReason abgebildet. |
| [ MII VS Mikrobio MRGN Klasse [LOINC]  ](ValueSet-mii-vs-mikrobio-mrgn-klasse-loinc.md) | Ergebnis-ValueSet für die MRGN-Klassifikation: 2MRGN, 3MRGN und 4MRGN nach RKI-Kategorisierung. Die negative Einstufung steht im modul­eigenen CodeSystem, da die LOINC-AnswerList sie nicht führt. |
| [ MII VS Mikrobio Mikroskopie Semiquantitativ [SNOMED]  ](ValueSet-mii-vs-mikrobio-mikroskopie-semiquantitativ-snomed.md) | Ergebnis-ValueSet für die spezifische Mikroskopie: die semiquantitative Stufe, in der das im Code benannte Objekt gesehen wurde. |
| [ MII VS Mikrobio Molekulare Diagnostik Einheiten [UCUM]  ](ValueSet-mii-vs-mikrobio-molekulare-diagnostik-einheiten-ucum.md) | Einheiten-ValueSet für die molekulare Pathogenlast (UCUM): Konzentrationsangaben wie Kopien pro Milliliter. |
| [ MII VS Mikrobio Molekulare Pathogenlast Methode [SNOMED]  ](ValueSet-mii-vs-mikrobio-molekulare-pathogenlast-methode-snomed.md) | Methoden-ValueSet für die molekulare Pathogenlast: Amplifikationsverfahren zur Quantifizierung von Erregernukleinsäure. |
| [ MII VS Mikrobio Molekulare Pathogenlast Tests [LOINC]  ](ValueSet-mii-vs-mikrobio-molekulare-pathogenlast-tests-loinc.md) | Tests-ValueSet für die molekulare Pathogenlast: quantitative LOINC-Codes für die Nukleinsäurekonzentration eines Erregers. |
| [ MII VS Mikrobio Morphologie Ergebnis [SNOMED]  ](ValueSet-mii-vs-mikrobio-morphologie-ergebnis-snomed.md) | Ergebnis-ValueSet für die Mikroskopie: die mikroskopisch beobachtete morphologische Gruppe, etwa grampositive Kokken in Haufen oder gramnegative Stäbchen. Eine Speziesidentifizierung gehört nicht hierher, auch wenn sie mikroskopisch gestellt wurde. |
| [ MII VS Mikrobio Morphologie Methode [SNOMED]  ](ValueSet-mii-vs-mikrobio-morphologie-methode-snomed.md) | Methoden-ValueSet für die Mikroskopie: die eingesetzten mikroskopischen Verfahren. Die Färbung wird nicht hier, sondern in der Extension MII_EX_Mikrobio_Faerbung angegeben. |
| [ MII VS Mikrobio Organismen [SNOMED CT]  ](ValueSet-mii-vs-mikrobio-organismen-snomedct.md) | Organismen-ValueSet: die SNOMED-CT-Hierarchien, aus denen ein identifizierter Erreger stammen kann. Wird nicht direkt gebunden, sondern in die Ergebnis-ValueSets der Bestimmung eingebunden. |
| [ MII VS Mikrobio Resistenzkategorie Status  ](ValueSet-mii-vs-mikrobio-resistenzkategorie-status.md) | Untersuchungscodes fuer die Bewertung eines nachgewiesenen Erregers hinsichtlich einer definierten Resistenzkategorie. |
| [ MII VS Mikrobio Resistenzkategorie Status Ergebnis  ](ValueSet-mii-vs-mikrobio-resistenzkategorie-status-ergebnis.md) | Ergebnis der Bewertung eines nachgewiesenen Erregers hinsichtlich der in Observation.code angegebenen Resistenzkategorie. |
| [ MII VS Mikrobio Resistenzmechanismen Determinanten [LOINC]  ](ValueSet-mii-vs-mikrobio-resistenzmechanismen-determinanten-loinc.md) | Tests-ValueSet für Resistenzmechanismen und Determinanten: LOINC-Codes für den Nachweis von Resistenzgenen, Resistenzproteinen und funktionalen Resistenztests. |
| [ MII VS Mikrobio Resistenzmechanismen Methode [SNOMED]  ](ValueSet-mii-vs-mikrobio-resistenzmechanismen-methode-snomed.md) | Methoden für den Nachweis von Resistenzmechanismen und Determinanten: molekulare, immunologische und funktionale Verfahren. |
| [ MII VS Mikrobio Spezifische Bestimmung Ergebnis [SNOMED]  ](ValueSet-mii-vs-mikrobio-spezifische-bestimmung-ergebnis-snomed.md) | Ergebnis-ValueSet fuer die spezifische Bestimmung: Nachweis oder Ausschluss des Ziels, das bereits im Untersuchungscode benannt ist, einschliesslich der Graubereichsbefunde schwach positiv und nicht eindeutig. Ein unbestimmbares Ergebnis wird nicht ueber value[x], sondern ueber Observation.dataAbsentReason abgebildet. |
| [ MII VS Mikrobio Spezifische Bestimmung Methode [SNOMED]  ](ValueSet-mii-vs-mikrobio-spezifische-bestimmung-methode-snomed.md) | Methoden-ValueSet für die spezifische Bestimmung: nicht kulturbasierte Verfahren des zielgerichteten Erregernachweises, etwa Amplifikation, Immunoassay oder Agglutination. |
| [ MII VS Mikrobio Spezifische Bestimmung Tests [LOINC]  ](ValueSet-mii-vs-mikrobio-spezifische-bestimmung-tests-loinc.md) | Tests-ValueSet fuer die spezifische Bestimmung. |
| [ MII VS Mikrobio Spezifische Mikroskopie Tests [LOINC]  ](ValueSet-mii-vs-mikrobio-spezifische-mikroskopie-tests-loinc.md) | Tests-ValueSet für die spezifische Mikroskopie: ordinale LOINC-Codes, bei denen das gesuchte Objekt und die Färbetechnik im Code benannt sind und das Ergebnis die semiquantitative Stufe ist. |
| [ MII VS Mikrobio Susceptibility  ](ValueSet-mii-vs-mikrobio-susceptibility.md) | Bewertungs-ValueSet für die phänotypische Empfindlichkeitstestung: die Kategorien sensibel, intermediär, sensibel bei erhöhter Exposition, resistent und nicht sensibel. |
| [ MII VS Mikrobio Susceptibility Norm  ](ValueSet-mii-vs-mikrobio-susceptibility-norm.md) | Norm-ValueSet für die Empfindlichkeitstestung: das Normsystem, auf dessen Grenzwerten eine Kategorie beruht. Gebunden an die Extension MII_EX_Mikrobio_Empfindlichkeit_Norm. |
| [ MII VS Mikrobio Titer Methode [SNOMED]  ](ValueSet-mii-vs-mikrobio-titer-methode-snomed.md) | Methoden-ValueSet für die Titerbestimmung: Verfahren serieller Verdünnungsreihen. |
| [ MII VS Mikrobio Titer Tests [LOINC]  ](ValueSet-mii-vs-mikrobio-titer-tests-loinc.md) | Tests-ValueSet für die Titerbestimmung: LOINC-Codes für semiquantitative Messungen aus Verdünnungsreihen. |
| [ MII VS Mikrobio Virulenz [LOINC]  ](ValueSet-mii-vs-mikrobio-virulenz-loinc.md) | Tests-ValueSet für Virulenzfaktoren: LOINC-Codes für den Nachweis oder Ausschluss von Virulenzdeterminanten. |
| [ MII VS Mikrobio Voraussichtliche Empfindlichkeit  ](ValueSet-mii-vs-mikrobio-voraussichtliche-empfindlichkeit.md) | Ergebnis-ValueSet für die voraussichtliche Empfindlichkeit: die aus genotypischen Nachweisen abgeleitete erwartete Kategorie sensibel, intermediär oder resistent. |

### Terminology: Code Systems 

These define new code systems used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [ MII CS Mikrobio MRGN Ergebnis  ](CodeSystem-mii-cs-mikrobio-mrgn-ergebnis.md) | CodeSystem für Ergebnisse der MRGN-Klassifikation, die sich nicht über LOINC abbilden lassen. Die LOINC-AnswerList LL6195-3 zu 99780-9 enthält ausschließlich 2MRGN, 3MRGN und 4MRGN und damit keinen Negativwert. |
| [ MII CS Mikrobio Resistenzkategorie  ](CodeSystem-mii-cs-mikrobio-resistenzkategorie.md) | Untersuchungscodes (Observation.code) für die Bewertung eines nachgewiesenen Erregers hinsichtlich einer definierten Resistenzkategorie. Jeder Code benennt die bewertete Kategorie; das Ergebnis der Bewertung steht in Observation.value. |
| [ MII CS Mikrobio Susceptibility Norm  ](CodeSystem-mii-cs-mikrobio-susceptibility-norm.md) | CodeSystem zur Kodierung von Normen für die Interpretation der Empfindlichkeit von Mikroorganismen gegenüber antimikrobiellen Substanzen. |

### Example: Example Instances 

These are example instances that show what data produced and consumed by systems conforming with this implementation guide might look like.

| | |
| :--- | :--- |
| [ MII EXA Mikrobio Allgemeine Bestimmung  ](Observation-mii-exa-mikrobio-allgemeine-bestimmung.md) | Ungerichtete Erregeridentifizierung aus einer Probe, ausgewiesen als Reflex-Folgeuntersuchung der allgemeinen Kultur. |
| [ MII EXA Mikrobio Allgemeine Kultur  ](Observation-mii-exa-mikrobio-allgemeine-kultur.md) | Ungerichtete kulturelle Anzucht mit Wachstumsnachweis, aerobe Kultur. |
| [ MII EXA Mikrobio Allgemeine Kultur methodenneutraler Code  ](Observation-mii-exa-mikrobio-allgemeine-kultur-methodenneutral.md) | Ungerichtete kulturelle Anzucht ohne Wachstum mit dem methodenneutralen Untersuchungscode 41852-5: Erst die Methode weist die Untersuchung als Kultur aus. |
| [ MII EXA Mikrobio Allgemeine Mikroskopie  ](Observation-mii-exa-mikrobio-mikroskopie.md) | Mikroskopischer Befund als morphologische Gruppe: grampositive Kokken in Haufen. |
| [ MII EXA Mikrobio Allgemeine Mikroskopie wenig grampositive Kokken  ](Observation-mii-exa-mikrobio-mikroskopie-gram-kokken-wenig.md) | Grampräparat mit wenig grampositiven Kokken: die Morphologie als Ergebnis, die semiquantitative Menge als Komponente. |
| [ MII EXA Mikrobio Antigen Antikoerper quantitativ  ](Observation-mii-exa-mikrobio-antigen-antikoerper-quantitativ.md) | Quantitative Antikörperbestimmung im Serum am Beispiel der Hepatitis-B-Oberflächen-Antikörper. |
| [ MII EXA Mikrobio Aviditaet  ](Observation-mii-exa-mikrobio-aviditaet.md) | Aviditätsbestimmung von CMV-IgG-Antikörpern; der Messwert bleibt in value, die Einordnung steht in interpretation. |
| [ MII EXA Mikrobio Bartlett Score  ](Observation-mii-exa-mikrobio-bartlett-score.md) | Bartlett-Score einer Sputumprobe zur Beurteilung, ob sie für die Kultur geeignet ist. |
| [ MII EXA Mikrobio Ct Wert  ](Observation-mii-exa-mikrobio-ct-wert.md) | Zyklusschwellenwert einer Echtzeit-PCR auf Influenza A H3. |
| [ MII EXA Mikrobio Diagnostic Report  ](DiagnosticReport-mii-exa-mikrobio-diagnostic-report.md) | Mikrobiologischer Befundbericht, der die zugehörigen Untersuchungen zusammenfasst. |
| [ MII EXA Mikrobio Empfindlichkeit  ](Observation-mii-exa-mikrobio-empfindlichkeit.md) | Phänotypische Empfindlichkeitstestung mit MHK in mg/L; die Kategorie steht mit ihrer Norm in interpretation. |
| [ MII EXA Mikrobio Empfindlichkeit nur Kategorie  ](Observation-mii-exa-mikrobio-empfindlichkeit-nur-kategorie.md) | Phänotypische Empfindlichkeitstestung, bei der nur die Kategorie berichtet wird und kein Messwert vorliegt; die Norm steht an derselben Stelle wie die Kategorie. |
| [ MII EXA Mikrobio Keimzahl  ](Observation-mii-exa-mikrobio-keimzahl.md) | Keimzahlbestimmung als koloniebildende Einheiten je Milliliter. |
| [ MII EXA Mikrobio Keimzahl Katheterspitze  ](Observation-mii-exa-mikrobio-keimzahl-katheterspitze.md) | Keimzahl einer Katheterspitze in koloniebildenden Einheiten ohne Nenner. Die Bezugsgröße steht in Specimen.type. |
| [ MII EXA Mikrobio Labor  ](Organization-mii-exa-mikrobio-labor.md) | Durchführendes mikrobiologisches Labor der Beispiele dieses Moduls. |
| [ MII EXA Mikrobio MRGN Klasse  ](Observation-mii-exa-mikrobio-mrgn-klasse.md) | MRGN-Klassifikation eines gramnegativen Isolats mit dem Ergebnis 2MRGN. |
| [ MII EXA Mikrobio MRGN Klasse negativ  ](Observation-mii-exa-mikrobio-mrgn-klasse-negativ.md) | Identifiziertes gramnegatives Isolat, dessen Empfindlichkeitsbefunde bewertet wurden und das keiner MRGN-Klasse zuzuordnen ist. |
| [ MII EXA Mikrobio Molekulare Pathogenlast  ](Observation-mii-exa-mikrobio-molekulare-pathogenlast.md) | Quantitative molekulare Erregerlast am Beispiel der CMV-DNA in Kopien je Milliliter. |
| [ MII EXA Mikrobio Nugent Score  ](Observation-mii-exa-mikrobio-nugent-score.md) | Nugent-Score einer Vaginalprobe zur Beurteilung einer bakteriellen Vaginose. |
| [ MII EXA Mikrobio Patient  ](Patient-mii-exa-mikrobio-patient.md) | Minimales Subject für die Beispiele dieses Moduls. Kein Profil, keine Demografie — Patient wird vom Personen-Modul verantwortet. |
| [ MII EXA Mikrobio Probe  ](Specimen-mii-exa-mikrobio-probe.md) | Generisches Probenmaterial für die Beispiele dieses Moduls. Der Typ ist bewusst unspezifisch, weil dieselbe Probe Beispiele unterschiedlicher Untersuchungsarten trägt. |
| [ MII EXA Mikrobio Probe Katheterspitze  ](Specimen-mii-exa-mikrobio-probe-katheterspitze.md) | Katheterspitze als Probenmaterial. Sie hat weder Volumen noch Masse und ist damit selbst die Bezugsgröße der Keimzahl. |
| [ MII EXA Mikrobio Resistenzkategorie VRE negativ  ](Observation-mii-exa-mikrobio-resistenzkategorie-vre-negativ.md) | Identifizierter Enterococcus ohne Vancomycinresistenz: VRE-Status Negative. |
| [ MII EXA Mikrobio Resistenzkategorie VRE positiv  ](Observation-mii-exa-mikrobio-resistenzkategorie-vre-positiv.md) | Identifizierter Enterococcus faecium mit nachgewiesener Vancomycinresistenz: VRE-Status Positive, abgeleitet aus Identifikation und Empfindlichkeitstestung. |
| [ MII EXA Mikrobio Resistenzmechanismen Determinanten  ](Observation-mii-exa-mikrobio-resistenzmechanismen-determinanten.md) | Molekularer Nachweis einer Resistenzdeterminante mittels PCR. |
| [ MII EXA Mikrobio Spezifische Bestimmung  ](Observation-mii-exa-mikrobio-spezifische-bestimmung.md) | Zielgerichteter molekularer Erregernachweis mit negativem Ergebnis. |
| [ MII EXA Mikrobio Spezifische Bestimmung Influenza positiv  ](Observation-mii-exa-mikrobio-spezifische-bestimmung-influenza-positiv.md) | Zielgerichteter molekularer Erregernachweis mit positivem Ergebnis, abgeleitet aus dem berichteten Ct-Wert. |
| [ MII EXA Mikrobio Spezifische Bestimmung VRE negativ  ](Observation-mii-exa-mikrobio-spezifische-bestimmung-vre-negativ.md) | Negativer VRE-Nachweis: Der Test auf vancomycinresistente Enterokokken ist negativ. |
| [ MII EXA Mikrobio Spezifische Kultur  ](Observation-mii-exa-mikrobio-spezifische-kultur.md) | Zielgerichteter Nachweis eines vordefinierten Erregers, kulturell durchgeführt und hier positiv. |
| [ MII EXA Mikrobio Spezifische Kultur VRE negativ  ](Observation-mii-exa-mikrobio-spezifische-kultur-vre-negativ.md) | Negativer VRE-Nachweis mittels erregerspezifischer Kultur. |
| [ MII EXA Mikrobio Spezifische Mikroskopie Auramin negativ  ](Observation-mii-exa-mikrobio-spezifische-mikroskopie-auramin-negativ.md) | Auraminfärbung ohne Nachweis säurefester Stäbchen: der negative Fall der spezifischen Mikroskopie. |
| [ MII EXA Mikrobio Spezifische Mikroskopie Kinyoun zwei plus  ](Observation-mii-exa-mikrobio-spezifische-mikroskopie-kinyoun-zweiplus.md) | Kinyounfärbung mit säurefesten Stäbchen in der Stufe zwei von drei, entsprechend 1–10 pro Gesichtsfeld. |
| [ MII EXA Mikrobio Spezifische Mikroskopie Leukozyten je Gesichtsfeld  ](Observation-mii-exa-mikrobio-spezifische-mikroskopie-leukozyten-gesichtsfeld.md) | Leukozyten im Grampräparat als Zählung je Gesichtsfeld, 10 bis 25, statt als semiquantitative Stufe. |
| [ MII EXA Mikrobio Titer  ](Observation-mii-exa-mikrobio-titer.md) | Titerbestimmung als Verdünnungsverhältnis am Beispiel von Rötelnvirus-Antikörpern. |
| [ MII EXA Mikrobio Virulenzfaktor  ](Observation-mii-exa-mikrobio-virulenzfaktor.md) | Nachweis eines Virulenzfaktor-Gens mit negativem Ergebnis. |
| [ MII EXA Mikrobio Voraussichtliche Empfindlichkeit  ](Observation-mii-exa-mikrobio-voraussichtliche-empfindlichkeit.md) | Aus dem Genotyp abgeleitete erwartete Empfindlichkeit gegenüber Rifampicin. |
| [ MII EXA Mikrobio Workflow VRE 1 Kultur positiv  ](Observation-mii-exa-mikrobio-workflow-vre-01-kultur.md) | Workflow-Kette VRE, Schritt 1: positiver VRE-Nachweis mittels erregerspezifischer Kultur. |
| [ MII EXA Mikrobio Workflow VRE 2 Identifikation  ](Observation-mii-exa-mikrobio-workflow-vre-02-identifikation.md) | Workflow-Kette VRE, Schritt 2: weiterführende Identifikation des Isolats als Enterococcus faecium, ausgelöst durch den positiven Nachweis. |
| [ MII EXA Mikrobio Workflow VRE 3 Empfindlichkeit  ](Observation-mii-exa-mikrobio-workflow-vre-03-empfindlichkeit.md) | Workflow-Kette VRE, Schritt 3: Vancomycin-Empfindlichkeitstestung des identifizierten Isolats mit dem Ergebnis resistent. |

### Other 

These are resources that are used within this implementation guide that do not fit into one of the other categories.

| | |
| :--- | :--- |
| [ Expansion Parameters Manifest  ](Parameters-mii-param-mikrobio-manifest.md) | Gepinnte CodeSystem-Versionen, gegen die jedes ValueSet dieses Leitfadens expandiert wird. |

