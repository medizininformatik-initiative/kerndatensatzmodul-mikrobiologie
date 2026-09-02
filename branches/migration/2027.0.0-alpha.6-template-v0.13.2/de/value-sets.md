# ValueSets - MII Implementation Guide Microbiology v2027.0.0-alpha.6

* [**Inhaltsverzeichnis**](toc.md)
* **ValueSets**

## ValueSets

 Diese Seite enthält Übersetzungen aus der Originalsprache, in der der Leitfaden verfasst wurde. Informationen zu diesen Übersetzungen und Anweisungen zum Abgeben von Feedback zu den Übersetzungen finden Sie [hier](translationinfo.md). 

### Value Sets

Diese Seite listet die ValueSets des Moduls **Mikrobiologie** (Namenskonvention `MII_VS_<Modul>_<Name>`). Jede Zeile nennt den Zweck; die Codes und die Expansion stehen hinter dem Link. Die zugrunde liegenden CodeSysteme sind auf der Seite [Code Systems](code-systems.md) beschrieben, allgemeine Hinweise zur Verwendung von Codes unter [FHIR Terminology](http://hl7.org/fhir/R4/terminologies.html).

**Expansionen:** Die Expansionen in diesem Leitfaden erzeugt ein FHIR-Terminologieserver — SU-TermServ, sofern das Client-Zertifikat konfiguriert ist, sonst der öffentliche HL7-Server `tx.fhir.org` (dann expandieren manche KDS-spezifischen ValueSets möglicherweise unvollständig).

| | |
| :--- | :--- |
| [MII VS Labor Laborergebnis Semiquantitativ](ValueSet-mii-vs-labor-laborergebnis-semiquantitativ.md) | Kodierung für semi-quantitative Laborergebnisse |
| [MII VS Mikrobio Allgemeine Bestimmung Ergebnis SNOMED](ValueSet-mii-vs-mikrobio-allgemeine-bestimmung-ergebnis-snomed.md) | Ergebnis-ValueSet fuer die allgemeine Bestimmung: der identifizierte Mikroorganismus oder das negative Ergebnis, wenn kein Erreger identifiziert wurde. |
| [MII VS Mikrobio Allgemeine Bestimmung Methode SNOMED](ValueSet-mii-vs-mikrobio-allgemeine-bestimmung-methode-snomed.md) | Methoden-ValueSet für die allgemeine Bestimmung: nicht kulturbasierte Verfahren zur Identifikation eines Erregers ohne vordefiniertes Ziel, etwa Mikroskopie oder MALDI-TOF. |
| [MII VS Mikrobio Allgemeine Kultur Methode SNOMED](ValueSet-mii-vs-mikrobio-allgemeine-kultur-methode-snomed.md) | Methoden-ValueSet für die allgemeine Kultur: Kulturverfahren ohne Einschränkung auf einen vordefinierten Erreger, einschließlich aerober und anaerober Bebrütung. |
| [MII VS Mikrobio Antigen Antikoerper Methode SNOMED](ValueSet-mii-vs-mikrobio-antigen-antikoerper-methode-snomed.md) | Methoden-ValueSet für quantitative Antigen- und Antikörpertests sowie für die Aviditätsbestimmung: immunologische Nachweisverfahren. |
| [MII VS Mikrobio Antigen Antikoerper Quantitativ Einheiten UCUM](ValueSet-mii-vs-mikrobio-antigen-antikoerper-quantitativ-einheiten-ucum.md) | Einheiten-ValueSet für quantitative Antigen- und Antikörpertests (UCUM). Bindet Observation.valueQuantity.code. |
| [MII VS Mikrobio Antigen Antikoerper Quantitative Tests LOINC](ValueSet-mii-vs-mikrobio-antigen-antikoerper-quantitative-tests-loinc.md) | Tests-ValueSet für quantitative Antigen- und Antikörpertests: LOINC-Codes für die Messung erregerspezifischer Antigene oder Antikörper. |
| [MII VS Mikrobio Aviditaet Ergebnis](ValueSet-mii-vs-mikrobio-aviditaet-ergebnis.md) | Bewertungs-ValueSet für die Avidität: kategoriale Einordnung des Aviditätsindex als niedrig, intermediär oder hoch. Niedrige Avidität spricht für eine frische Infektion. |
| [MII VS Mikrobio Aviditaet Tests LOINC](ValueSet-mii-vs-mikrobio-aviditaet-tests-loinc.md) | Tests-ValueSet für die Aviditätsbestimmung: LOINC-Codes für Aviditätstests einschließlich des Zielantigens. |
| [MII VS Mikrobio Barlett Score LOINC](ValueSet-mii-vs-mikrobio-barlett-score-loinc.md) | Ergebnis-ValueSet für den Barlett-Score: Punktkategorien von +3 bis -1, die das Verhältnis von Entzündungs- zu Epithelzellen und damit die Eignung einer Sputumprobe für die Kultur bewerten. |
| [MII VS Mikrobio Befundtyp LOINC](ValueSet-mii-vs-mikrobio-befundtyp-loinc.md) | Sepzalisierte Kodierung von mikrobiologischen Befunden |
| [MII VS Mikrobio CT Wert LOINC](ValueSet-mii-vs-mikrobio-ct-wert-loinc.md) | Tests-ValueSet für den Ct-Wert: LOINC-Codes mit der Eigenschaft Zyklusschwellenwert bei Nukleinsäurenachweisen. |
| [MII VS Mikrobio Data Absent Reason](ValueSet-mii-vs-mikrobio-data-absent-reason.md) | Gruende fuer ein fehlendes Untersuchungsergebnis. Ergaenzt die FHIR-Basiscodes um das unbestimmbare Ergebnis, das zuvor ueber value[x] kodiert wurde. |
| [MII VS Mikrobio Detected Not Detected SNOMED](ValueSet-mii-vs-mikrobio-detected-not-detected-snomed.md) | Ergebnis-ValueSet für zielgerichtete qualitative Nachweise: nachgewiesen oder nicht nachgewiesen. Ein unbestimmbares Ergebnis wird nicht hierüber, sondern über Observation.dataAbsentReason abgebildet. |
| [MII VS Mikrobio Empfindlichkeit Einheiten UCUM](ValueSet-mii-vs-mikrobio-empfindlichkeit-einheiten-ucum.md) | Einheiten-ValueSet für die phänotypische Empfindlichkeitstestung (UCUM): minimale Hemmkonzentration in mg/L oder Hemmhofdurchmesser in mm. |
| [MII VS Mikrobio Empfänglichkeit Genotyp LOINC](ValueSet-mii-vs-mikrobio-empfindlichkeit-genotyp-loinc.md) | Tests-ValueSet für die voraussichtliche Empfindlichkeit: LOINC-Codes für die aus dem Genotyp abgeleitete erwartete Wirksamkeit einer antimikrobiellen Substanz. |
| [MII VS Mikrobio Empfindlichkeit Phenotyp LOINC](ValueSet-mii-vs-mikrobio-empfindlichkeit-phenotyp-loinc.md) | Tests-ValueSet für die phänotypische Empfindlichkeitstestung: LOINC-Codes der getesteten antimikrobiellen Substanz. |
| [MII VS Mikrobio Keimzahl Einheiten UCUM](ValueSet-mii-vs-mikrobio-keimzahl-einheiten-ucum.md) | Einheiten-ValueSet für die Keimzahlbestimmung (UCUM): koloniebildende Einheiten pro Volumen oder Masse. |
| [MII VS Mikrobio Keimzahl LOINC](ValueSet-mii-vs-mikrobio-keimzahl-loinc.md) | Tests-ValueSet für die Keimzahlbestimmung: LOINC-Codes für die quantitative Bestimmung lebensfähiger Mikroorganismen. |
| [MII VS Mikrobio Kultur Ergebnis SNOMED](ValueSet-mii-vs-mikrobio-kultur-ergebnis-snomed.md) | Ergebnis-ValueSet fuer die allgemeine und die spezifische Kultur: Wachstum oder kein Wachstum. Ein unbestimmbares Ergebnis wird nicht ueber value[x], sondern ueber Observation.dataAbsentReason abgebildet. |
| [MII VS Mikrobio Molekulare Diagnostik Einheiten UCUM](ValueSet-mii-vs-mikrobio-molekulare-diagnostik-einheiten-ucum.md) | Einheiten-ValueSet für die molekulare Pathogenlast (UCUM): Konzentrationsangaben wie Kopien pro Milliliter. |
| [MII VS Mikrobio Molekulare Pathogenlast Methode SNOMED](ValueSet-mii-vs-mikrobio-molekulare-pathogenlast-methode-snomed.md) | Methoden-ValueSet für die molekulare Pathogenlast: Amplifikationsverfahren zur Quantifizierung von Erregernukleinsäure. |
| [MII VS Mikrobio Molekulare Pathogenlast Tests LOINC](ValueSet-mii-vs-mikrobio-molekulare-pathogenlast-tests-loinc.md) | Tests-ValueSet für die molekulare Pathogenlast: quantitative LOINC-Codes für die Nukleinsäurekonzentration eines Erregers. |
| [MII VS Mikrobio Morphologie Ergebnis SNOMED](ValueSet-mii-vs-mikrobio-morphologie-ergebnis-snomed.md) | Ergebnis-ValueSet für die Mikroskopie: mikroskopisch beobachtete Morphologie ohne taxonomische Zuordnung, etwa grampositive Kokken in Haufen oder gramnegative Stäbchen. |
| [MII VS Mikrobio Morphologie Methode SNOMED](ValueSet-mii-vs-mikrobio-morphologie-methode-snomed.md) | Methoden-ValueSet für die Mikroskopie: mikroskopische Verfahren einschließlich der eingesetzten Färbetechnik. |
| [MII VS Mikrobio MRGN Klasse LOINC](ValueSet-mii-vs-mikrobio-mrgn-klasse-loinc.md) | Ergebnis-ValueSet für die MRGN-Klassifikation: 2MRGN, 3MRGN und 4MRGN nach RKI-Kategorisierung. Die negative Einstufung steht im modul­eigenen CodeSystem, da die LOINC-AnswerList sie nicht führt. |
| [MII VS Mikrobio Organismen SNOMED CT](ValueSet-mii-vs-mikrobio-organismen-snomedct.md) | Organismen-ValueSet: die SNOMED-CT-Hierarchien, aus denen ein identifizierter Erreger stammen kann. Wird nicht direkt gebunden, sondern in die Ergebnis-ValueSets der Bestimmung eingebunden. |
| [MII VS Mikrobio Resistenzkategorie Status Ergebnis](ValueSet-mii-vs-mikrobio-resistenzkategorie-status-ergebnis.md) | Ergebnis der Bewertung eines nachgewiesenen Erregers hinsichtlich der in Observation.code angegebenen Resistenzkategorie. |
| [MII VS Mikrobio Resistenzkategorie Status](ValueSet-mii-vs-mikrobio-resistenzkategorie-status.md) | Untersuchungscodes fuer die Bewertung eines nachgewiesenen Erregers hinsichtlich einer definierten Resistenzkategorie. |
| [MII VS Mikrobio Resistenzmechanismen Determinanten LOINC](ValueSet-mii-vs-mikrobio-resistenzmechanismen-determinanten-loinc.md) | Tests-ValueSet für Resistenzmechanismen und Determinanten: LOINC-Codes für den Nachweis von Resistenzgenen, Resistenzproteinen und funktionalen Resistenztests. |
| [MII VS Mikrobio Resistenzmechanismen Methode SNOMED](ValueSet-mii-vs-mikrobio-resistenzmechanismen-methode-snomed.md) | Methoden für den Nachweis von Resistenzgenen oder Resistenzmutationen (molekulare Verfahren). |
| [MII VS Mikrobio Spezifische Bestimmung Ergebnis SNOMED](ValueSet-mii-vs-mikrobio-spezifische-bestimmung-ergebnis-snomed.md) | Ergebnis-ValueSet fuer die spezifische Bestimmung: Nachweis oder Ausschluss des Ziels, das bereits im Untersuchungscode benannt ist. |
| [MII VS Mikrobio Spezifische Bestimmung Methode SNOMED](ValueSet-mii-vs-mikrobio-spezifische-bestimmung-methode-snomed.md) | Methoden-ValueSet für die spezifische Bestimmung: nicht kulturbasierte Verfahren des zielgerichteten Erregernachweises, etwa Amplifikation, Immunoassay oder Agglutination. |
| [MII VS Mikrobio Spezifische Bestimmung Tests LOINC](ValueSet-mii-vs-mikrobio-spezifische-bestimmung-tests-loinc.md) | Tests-ValueSet fuer die spezifische Bestimmung. |
| [MII VS Mikrobio Spezifische Kultur Methode SNOMED](ValueSet-mii-vs-mikrobio-spezifische-kultur-methode-snomed.md) | Methoden-ValueSet fuer die spezifische Kultur. Extensible gebunden, damit staerker spezialisierte Kulturverfahren ergaenzt werden koennen. |
| [MII VS Mikrobio Spezifische Kultur Tests LOINC](ValueSet-mii-vs-mikrobio-spezifische-kultur-tests-loinc.md) | Tests-ValueSet fuer die spezifische Kultur: erregerspezifische Kulturnachweise, bei denen das gesuchte Ziel bereits im LOINC-Code benannt ist. |
| [MII VS Mikrobio Susceptibility Norm](ValueSet-mii-vs-mikrobio-susceptibility-norm.md) | Norm-ValueSet für die Empfindlichkeitstestung: das Normsystem, auf dessen Grenzwerten eine Kategorie beruht. Gebunden an die Extension MII_EX_Mikrobio_Empfindlichkeit_Norm. |
| [MII VS Mikrobio Susceptibility](ValueSet-mii-vs-mikrobio-susceptibility.md) | Bewertungs-ValueSet für die phänotypische Empfindlichkeitstestung: die Kategorien sensibel, intermediär, sensibel bei erhöhter Exposition, resistent und nicht sensibel. |
| [MII VS Mikrobio Titer Methode SNOMED](ValueSet-mii-vs-mikrobio-titer-methode-snomed.md) | Methoden-ValueSet für die Titerbestimmung: Verfahren serieller Verdünnungsreihen. |
| [MII VS Mikrobio Titer Tests LOINC](ValueSet-mii-vs-mikrobio-titer-tests-loinc.md) | Tests-ValueSet für die Titerbestimmung: LOINC-Codes für semiquantitative Messungen aus Verdünnungsreihen. |
| [MII VS Mikrobio Virulenz LOINC](ValueSet-mii-vs-mikrobio-virulenz-loinc.md) | Tests-ValueSet für Virulenzfaktoren: LOINC-Codes für den Nachweis oder Ausschluss von Virulenzdeterminanten. |
| [MII VS Mikrobio Voraussichtliche Empfindlichkeit](ValueSet-mii-vs-mikrobio-voraussichtliche-empfindlichkeit.md) | Ergebnis-ValueSet für die voraussichtliche Empfindlichkeit: die aus genotypischen Nachweisen abgeleitete erwartete Kategorie sensibel, intermediär oder resistent. |

