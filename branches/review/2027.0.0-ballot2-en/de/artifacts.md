# Artefaktübersicht - MII Implementation Guide Microbiology v2027.0.0-ballot2

* [**Inhaltsverzeichnis**](toc.md)
* **Artefaktübersicht**

## Artefaktübersicht

 Für die aktuelle Seite ist keine Übersetzung verfügbar, daher wurde sie in der Standardsprache dargestellt. 

Diese Seite bietet eine Liste der FHIR-Artefakte, die in diesem Implementierungsleitfaden definiert sind.

### Verhalten: CapabilityStatements 

Die folgenden Artefakte definieren die spezifischen Fähigkeiten, die verschiedene Systemtypen haben müssen, um diesem Implementierungsleitfaden zu entsprechen. Von Systemen, die mit dem Implementierungsleitfaden konform sind, wird erwartet, dass sie die Konformität mit einem oder mehreren der folgenden Capability Statements deklarieren.

| | |
| :--- | :--- |
| [ MII CPS Mikrobio Metadata  ](CapabilityStatement-mii-cps-mikrobio-metadata.md) | CapabilityStatement for the MII Microbiology module 2027. |

### Verhalten: Suchparameter (SearchParameter) 

Diese definieren die Eigenschaften, nach denen ein RESTful-Server durchsucht werden kann. Sie können auch zum Sortieren und Einbeziehen verwandter Ressourcen verwendet werden.

| | |
| :--- | :--- |
| [ ObservationInterpretation  ](SearchParameter-ObservationInterpretation.md) | Search by the interpretation of a microbiological Observation. |
| [ mii-sp-mikrobio-interpretation  ](SearchParameter-mii-sp-mikrobio-interpretation.md) | Search parameter for the norm category of the susceptibility extension |
| [ mii-sp-mikrobio-observation-titer  ](SearchParameter-mii-sp-mikrobio-observation-titer.md) | Search by the dilution step of a titre. Indexes the denominator of the Ratio value of MII_PR_Mikrobio_Titer; the numerator is fixed at 1 there. A larger denominator means a higher titre, e.g. ?titer=gt160 finds all titres above 1:160. |
| [ mii-sp-mikrobio-observation-triggered-by  ](SearchParameter-mii-sp-mikrobio-observation-triggered-by.md) | Search by the Observation that triggered a microbiological Observation. |

### Strukturen: Logische Modelle 

Diese definieren Datenmodelle, die den von diesem Implementierungsleitfaden abgedeckten Bereich in geschäftsfreundlicheren Begriffen darstellen als die zugrunde liegenden FHIR-Ressourcen.

| | |
| :--- | :--- |
| [ MII LM Microbiology Investigation  ](StructureDefinition-mii-lm-mikrobio-untersuchung.md) | Common information of all microbiological investigations |
| [ MII LM Microbiology Investigation Types  ](StructureDefinition-mii-lm-mikrobio-untersuchungsarten.md) | Specialisations of the microbiological investigation for the graphical representation of the 2027 microbiology data model |
| [ MII LM Microbiology Report  ](StructureDefinition-mii-lm-mikrobio-logical-model.md) | Logical model of the microbiological report for the graphical representation of the 2027 microbiology data model |

### Strukturen: Ressourcenprofile 

Diese definieren Einschränkungen für FHIR-Ressourcen für Systeme, die mit dem Implementierungsleitfaden konform sind.

| | |
| :--- | :--- |
| [ MII PR Microbiology Antigen Antibody Quantitative  ](StructureDefinition-mii-pr-mikrobio-antigen-antikoerper-quantitativ.md) | Quantitative antigen/antibody response describes the quantitative measurement of pathogen-specific antigens or antibodies in a specimen, determined by immunological procedures. |
| [ MII PR Microbiology Avidity  ](StructureDefinition-mii-pr-mikrobio-aviditaet.md) | Avidity describes the qualitative assessment of the binding strength of antibodies to a specific antigen, typically to distinguish recent from past infections. |
| [ MII PR Microbiology Bartlett Score  ](StructureDefinition-mii-pr-mikrobio-bartlett-score.md) | Bartlett score describes the qualitative microscopic assessment of the suitability of sputum specimens for microbiological culture based on the ratio of inflammatory to epithelial cells. |
| [ MII PR Microbiology Colony Count  ](StructureDefinition-mii-pr-mikrobio-keimzahl.md) | Colony count describes the quantitative determination of viable microorganisms in a specimen as colony-forming units per volume, per mass or as a count per specimen. |
| [ MII PR Microbiology Ct Value  ](StructureDefinition-mii-pr-mikrobio-ct-wert.md) | Ct value describes the quantification of the cycle threshold in nucleic acid detection (e.g. real-time PCR) in a specimen. |
| [ MII PR Microbiology Diagnostic Report  ](StructureDefinition-mii-pr-mikrobio-diagnostic-report.md) | Microbiological report for summarising and contextualising associated microbiological investigation results. |
| [ MII PR Microbiology General Culture  ](StructureDefinition-mii-pr-mikrobio-allgemeine-kultur.md) | General culture describes the result of an untargeted microbiological culture that checks whether any microorganism grows in the specimen, without restricting the analysis to a predefined pathogen. |
| [ MII PR Microbiology General Determination (Identification)  ](StructureDefinition-mii-pr-mikrobio-allgemeine-bestimmung.md) | General determination describes the identification of a microorganism or infectious agent in a specimen, without restriction to a predefined target. |
| [ MII PR Microbiology General Microscopy  ](StructureDefinition-mii-pr-mikrobio-mikroskopie.md) | General microscopy describes the morphological observation of microorganisms in a specimen by microscopic examination, optionally with staining techniques (e.g. Gram stain). The result is a morphological group, not a species. |
| [ MII PR Microbiology MRGN Class  ](StructureDefinition-mii-pr-mikrobio-mrgn-klasse.md) | MRGN class describes the classification of multidrug-resistant Gram-negative pathogens according to the RKI categorisation. |
| [ MII PR Microbiology Molecular Pathogen Load  ](StructureDefinition-mii-pr-mikrobio-molekulare-pathogenlast.md) | Molecular pathogen load describes the quantitative measurement of the nucleic acid concentration of a pathogen in a specimen, typically as a concentration per volume. |
| [ MII PR Microbiology Nugent Score  ](StructureDefinition-mii-pr-mikrobio-nugent-score.md) | Nugent score describes a Gram-stain-based semiquantitative scoring system for assessing vaginal microbiota patterns in bacterial vaginosis. |
| [ MII PR Microbiology Predicted Susceptibility  ](StructureDefinition-mii-pr-mikrobio-voraussichtliche-empfindlichkeit.md) | Predicted susceptibility describes the expected susceptibility or resistance to antimicrobial substances derived from genotypic resistance detections. |
| [ MII PR Microbiology Resistance Category Status  ](StructureDefinition-mii-pr-mikrobio-resistenzkategorie-status.md) | Assessment of a detected pathogen with regard to a defined resistance category, e.g. MRSA, VRE, LRE or LVRE. The assessed category is in Observation.code, the result of the assessment in Observation.value. |
| [ MII PR Microbiology Resistance Mechanisms Determinants  ](StructureDefinition-mii-pr-mikrobio-resistenzmechanismen-determinanten.md) | Resistance mechanisms / determinants describes the detection of resistance genes, resistance mutations, proteins or functional tests (e.g. CIM test) in a specimen or isolate as an indication of specific resistance mechanisms. |
| [ MII PR Microbiology Specific Determination  ](StructureDefinition-mii-pr-mikrobio-spezifische-bestimmung.md) | Specific determination describes the qualitative detection of a predefined microbial target in a specimen by direct molecular, immunological or biochemical detection methods and by method-neutrally coded detection tests. Culture-based targeted detection also belongs here; the procedure is stated in the investigation code and in Observation.method. |
| [ MII PR Microbiology Specific Microscopy  ](StructureDefinition-mii-pr-mikrobio-spezifische-mikroskopie.md) | Specific microscopy describes the microscopic detection of an object named in the investigation code — such as acid-fast rods or leukocytes — with the semiquantitative grade as the result. |
| [ MII PR Microbiology Specimen  ](StructureDefinition-mii-pr-mikrobio-probe.md) | Specimen describes the material examined microbiologically. The profile derives from the biospecimen base profile of the MII Biobank module and adds the expectations of microbiological diagnostics. |
| [ MII PR Microbiology Susceptibility  ](StructureDefinition-mii-pr-mikrobio-empfindlichkeit.md) | Susceptibility describes the result of phenotypic resistance testing of a pathogen against antimicrobial substances with reference to a norm system. |
| [ MII PR Microbiology Titre  ](StructureDefinition-mii-pr-mikrobio-titer.md) | Titre describes a semiquantitative measurement from serial dilution series, reported as a ratio (e.g. 1:160). |
| [ MII PR Microbiology Virulence Factor  ](StructureDefinition-mii-pr-mikrobio-virulenzfaktor.md) | Virulence factor describes the qualitative detection or exclusion of virulence determinants in a specimen or an isolate. |

### Strukturen: Extension-Definitionen 

Diese definieren Einschränkungen für FHIR-Datentypen für Systeme, die mit diesem Implementierungsleitfaden konform sind.

| | |
| :--- | :--- |
| [ MII EX Microbiology Staining  ](StructureDefinition-mii-ex-mikrobio-faerbung.md) | Staining technique used for the microscopic examination, coded with the same SNOMED CT hierarchy as the European laboratory coordination. |
| [ MII EX Microbiology Susceptibility Norm  ](StructureDefinition-mii-ex-mikrobio-empfindlichkeit-norm.md) | Normative susceptibility interpretation metadata (system, version, category). |
| [ R5: Triggering observation(s) (new)  ](StructureDefinition-ext-R5-Observation.triggeredBy.md) | R5: `Observation.triggeredBy` (new:BackboneElement) |

### Terminologie: ValueSets 

Diese definieren Wertemengen, die von Systemen verwendet werden, die mit dem Implementierungsleitfaden konform sind.

| | |
| :--- | :--- |
| [ MII VS Laboratory Lab Result Semiquantitative  ](ValueSet-mii-vs-labor-laborergebnis-semiquantitativ.md) | Coding for semi-quantitative laboratory results |
| [ MII VS Microbiology Antigen Antibody Method [SNOMED]  ](ValueSet-mii-vs-mikrobio-antigen-antikoerper-methode-snomed.md) | Method ValueSet for quantitative antigen and antibody tests and for avidity determination: immunological detection procedures. |
| [ MII VS Microbiology Antigen Antibody Quantitative Tests [LOINC]  ](ValueSet-mii-vs-mikrobio-antigen-antikoerper-quantitative-tests-loinc.md) | Test ValueSet for quantitative antigen and antibody tests: LOINC codes for measuring pathogen-specific antigens or antibodies. |
| [ MII VS Microbiology Antigen Antibody Quantitative Units [UCUM]  ](ValueSet-mii-vs-mikrobio-antigen-antikoerper-quantitativ-einheiten-ucum.md) | Unit ValueSet for quantitative antigen and antibody tests (UCUM). Bound to Observation.valueQuantity.code. |
| [ MII VS Microbiology Avidity Result  ](ValueSet-mii-vs-mikrobio-aviditaet-ergebnis.md) | Assessment ValueSet for avidity: categorical classification of the avidity index as low, borderline or high. Low avidity indicates a recent infection. |
| [ MII VS Microbiology Avidity Tests [LOINC]  ](ValueSet-mii-vs-mikrobio-aviditaet-tests-loinc.md) | Test ValueSet for avidity determination: LOINC codes for avidity tests including the target antigen. |
| [ MII VS Microbiology Bartlett Score [LOINC]  ](ValueSet-mii-vs-mikrobio-bartlett-score-loinc.md) | Result ValueSet for the Bartlett score: score categories from +3 to -1 that rate the ratio of inflammatory to epithelial cells and thus the suitability of a sputum specimen for culture. |
| [ MII VS Microbiology Colony Count Units [UCUM]  ](ValueSet-mii-vs-mikrobio-keimzahl-einheiten-ucum.md) | Unit ValueSet for colony counting (UCUM): colony-forming units per volume, per mass or as a count per specimen. |
| [ MII VS Microbiology Colony Count [LOINC]  ](ValueSet-mii-vs-mikrobio-keimzahl-loinc.md) | Test ValueSet for colony counting: LOINC codes for the quantitative determination of viable microorganisms. |
| [ MII VS Microbiology Ct Value [LOINC]  ](ValueSet-mii-vs-mikrobio-ct-wert-loinc.md) | Test ValueSet for the Ct value: LOINC codes with the property cycle threshold in nucleic acid detection. |
| [ MII VS Microbiology Culture Result [SNOMED]  ](ValueSet-mii-vs-mikrobio-kultur-ergebnis-snomed.md) | Result ValueSet for general and specific culture: growth, no growth or an equivocal result. How much has grown is not stated by this ValueSet but by the colony count. An indeterminable result is represented not via value[x] but via Observation.dataAbsentReason. |
| [ MII VS Microbiology Data Absent Reason  ](ValueSet-mii-vs-mikrobio-data-absent-reason.md) | Reasons for a missing investigation result. Supplements the FHIR base codes with the indeterminable result that was previously coded via value[x]. |
| [ MII VS Microbiology Detected Not Detected [SNOMED]  ](ValueSet-mii-vs-mikrobio-detected-not-detected-snomed.md) | Result ValueSet for targeted qualitative detections: detected or not detected. An indeterminable result is represented not here but via Observation.dataAbsentReason. |
| [ MII VS Microbiology General Culture Method [SNOMED]  ](ValueSet-mii-vs-mikrobio-allgemeine-kultur-methode-snomed.md) | Method ValueSet for general culture: culture procedures without restriction to a predefined pathogen, including aerobic and anaerobic incubation. |
| [ MII VS Microbiology General Culture Tests [LOINC]  ](ValueSet-mii-vs-mikrobio-allgemeine-kultur-tests-loinc.md) | Test ValueSet for general culture: LOINC codes for untargeted culture investigation. 11475-1 is preferred because the code names the procedure itself; 41852-5 is equally permitted. |
| [ MII VS Microbiology General Determination Method [SNOMED]  ](ValueSet-mii-vs-mikrobio-allgemeine-bestimmung-methode-snomed.md) | Method ValueSet for general determination: non-culture-based procedures for identifying a pathogen without a predefined target, such as microscopy or MALDI-TOF. |
| [ MII VS Microbiology General Determination Result [SNOMED]  ](ValueSet-mii-vs-mikrobio-allgemeine-bestimmung-ergebnis-snomed.md) | Result ValueSet for general determination: the identified microorganism, or the negative result if no pathogen was identified. |
| [ MII VS Microbiology General Determination Tests [LOINC]  ](ValueSet-mii-vs-mikrobio-allgemeine-bestimmung-tests-loinc.md) | Test ValueSet for general determination: LOINC codes for the untargeted identification of a microorganism. 41852-5 is preferred; the remaining codes are equally permitted where the laboratory names the pathogen group or the sequencing target in the code. |
| [ MII VS Microbiology General Microscopy Tests [LOINC]  ](ValueSet-mii-vs-mikrobio-allgemeine-mikroskopie-tests-loinc.md) | Test ValueSet for general microscopy: nominal LOINC codes for microscopic observation whose result is the morphology seen. 105059-0 is preferred because it is method-neutral; the codes with a stain in the name (Gram, acid-fast, rhodamine-auramine) are equally permitted and leave Observation.method free in return. |
| [ MII VS Microbiology MRGN Class [LOINC]  ](ValueSet-mii-vs-mikrobio-mrgn-klasse-loinc.md) | Result ValueSet for the MRGN classification: 2MRGN, 3MRGN and 4MRGN according to the RKI categorisation. The negative classification is in the module's own CodeSystem, because the LOINC answer list does not carry it. |
| [ MII VS Microbiology Microscopy Field of View Units [UCUM]  ](ValueSet-mii-vs-mikrobio-mikroskopie-gesichtsfeld-einheiten-ucum.md) | Units for the count per field of view in the quantity component of microscopy. |
| [ MII VS Microbiology Microscopy Semiquantitative [SNOMED]  ](ValueSet-mii-vs-mikrobio-mikroskopie-semiquantitativ-snomed.md) | Quantity ValueSet for microscopy: the semiquantitative grade in which a microscopic finding was seen. |
| [ MII VS Microbiology Molecular Diagnostics Units [UCUM]  ](ValueSet-mii-vs-mikrobio-molekulare-diagnostik-einheiten-ucum.md) | Unit ValueSet for molecular pathogen load (UCUM): concentration units such as copies per millilitre. |
| [ MII VS Microbiology Molecular Pathogen Load Method [SNOMED]  ](ValueSet-mii-vs-mikrobio-molekulare-pathogenlast-methode-snomed.md) | Method ValueSet for molecular pathogen load: amplification procedures for quantifying pathogen nucleic acid. |
| [ MII VS Microbiology Molecular Pathogen Load Tests [LOINC]  ](ValueSet-mii-vs-mikrobio-molekulare-pathogenlast-tests-loinc.md) | Test ValueSet for molecular pathogen load: quantitative LOINC codes for the nucleic acid concentration of a pathogen. |
| [ MII VS Microbiology Morphology Method [SNOMED]  ](ValueSet-mii-vs-mikrobio-morphologie-methode-snomed.md) | Method ValueSet for microscopy: the microscopic procedures used. The stain is stated not here but in the extension MII_EX_Mikrobio_Faerbung. |
| [ MII VS Microbiology Morphology Result [SNOMED]  ](ValueSet-mii-vs-mikrobio-morphologie-ergebnis-snomed.md) | Result ValueSet for microscopy: the morphological group observed microscopically, such as Gram-positive cocci in clusters or Gram-negative rods. A species identification does not belong here, even if it was made microscopically. |
| [ MII VS Microbiology Organisms [SNOMED CT]  ](ValueSet-mii-vs-mikrobio-organismen-snomedct.md) | Organism ValueSet: the SNOMED CT hierarchies from which an identified pathogen may come. Not bound directly, but included in the result ValueSets of the determination profiles. |
| [ MII VS Microbiology Predicted Susceptibility  ](ValueSet-mii-vs-mikrobio-voraussichtliche-empfindlichkeit.md) | Result ValueSet for predicted susceptibility: the expected category susceptible, intermediate or resistant derived from genotypic detections. |
| [ MII VS Microbiology Report Type [LOINC]  ](ValueSet-mii-vs-mikrobio-befundtyp-loinc.md) | Specialised coding of microbiological reports |
| [ MII VS Microbiology Resistance Category Status  ](ValueSet-mii-vs-mikrobio-resistenzkategorie-status.md) | Investigation codes for assessing a detected pathogen with regard to a defined resistance category. |
| [ MII VS Microbiology Resistance Category Status Result  ](ValueSet-mii-vs-mikrobio-resistenzkategorie-status-ergebnis.md) | Result of assessing a detected pathogen with regard to the resistance category given in Observation.code. |
| [ MII VS Microbiology Resistance Mechanisms Determinants [LOINC]  ](ValueSet-mii-vs-mikrobio-resistenzmechanismen-determinanten-loinc.md) | Test ValueSet for resistance mechanisms and determinants: LOINC codes for the detection of resistance genes, resistance proteins and functional resistance tests. |
| [ MII VS Microbiology Resistance Mechanisms Method [SNOMED]  ](ValueSet-mii-vs-mikrobio-resistenzmechanismen-methode-snomed.md) | Methods for detecting resistance mechanisms and determinants: molecular, immunological and functional procedures. |
| [ MII VS Microbiology Specific Determination Method [SNOMED]  ](ValueSet-mii-vs-mikrobio-spezifische-bestimmung-methode-snomed.md) | Method ValueSet for specific determination: non-culture-based procedures for targeted pathogen detection, such as amplification, immunoassay or agglutination. |
| [ MII VS Microbiology Specific Determination Result [SNOMED]  ](ValueSet-mii-vs-mikrobio-spezifische-bestimmung-ergebnis-snomed.md) | Result ValueSet for specific determination: detection or exclusion of the target already named in the investigation code, including the grey-zone findings weakly positive and equivocal. An indeterminable result is represented not via value[x] but via Observation.dataAbsentReason. |
| [ MII VS Microbiology Specific Determination Tests [LOINC]  ](ValueSet-mii-vs-mikrobio-spezifische-bestimmung-tests-loinc.md) | Test ValueSet for specific determination. |
| [ MII VS Microbiology Specific Microscopy Tests [LOINC]  ](ValueSet-mii-vs-mikrobio-spezifische-mikroskopie-tests-loinc.md) | Test ValueSet for specific microscopy: ordinal LOINC codes in which the object sought and the staining technique are named in the code; the result is the detection, the quantity is in the quantity component. |
| [ MII VS Microbiology Staining [SNOMED]  ](ValueSet-mii-vs-mikrobio-faerbung-snomed.md) | Staining procedures of the microscopic examination, e.g. Gram stain or Kinyoun stain. |
| [ MII VS Microbiology Susceptibility  ](ValueSet-mii-vs-mikrobio-susceptibility.md) | Assessment ValueSet for phenotypic susceptibility testing: the categories susceptible, intermediate, susceptible at increased exposure, resistant and non-susceptible. |
| [ MII VS Microbiology Susceptibility Genotype [LOINC]  ](ValueSet-mii-vs-mikrobio-empfindlichkeit-genotyp-loinc.md) | Test ValueSet for predicted susceptibility: LOINC codes for the expected efficacy of an antimicrobial substance derived from the genotype. |
| [ MII VS Microbiology Susceptibility Method [SNOMED]  ](ValueSet-mii-vs-mikrobio-empfindlichkeit-methode-snomed.md) | Method ValueSet for phenotypic susceptibility testing: the procedures used to measure a minimum inhibitory concentration or an inhibition zone diameter. |
| [ MII VS Microbiology Susceptibility Norm  ](ValueSet-mii-vs-mikrobio-susceptibility-norm.md) | Norm ValueSet for susceptibility testing: the norm system on whose breakpoints a category is based. Bound to the extension MII_EX_Mikrobio_Empfindlichkeit_Norm. |
| [ MII VS Microbiology Susceptibility Phenotype [LOINC]  ](ValueSet-mii-vs-mikrobio-empfindlichkeit-phenotyp-loinc.md) | Test ValueSet for phenotypic susceptibility testing: LOINC codes of the antimicrobial substance tested. |
| [ MII VS Microbiology Susceptibility Units [UCUM]  ](ValueSet-mii-vs-mikrobio-empfindlichkeit-einheiten-ucum.md) | Unit ValueSet for phenotypic susceptibility testing (UCUM): minimum inhibitory concentration in mg/L or inhibition zone diameter in mm. |
| [ MII VS Microbiology Titre Method [SNOMED]  ](ValueSet-mii-vs-mikrobio-titer-methode-snomed.md) | Method ValueSet for titre determination: serial dilution procedures. |
| [ MII VS Microbiology Titre Tests [LOINC]  ](ValueSet-mii-vs-mikrobio-titer-tests-loinc.md) | Test ValueSet for titre determination: LOINC codes for semiquantitative measurements from dilution series. |
| [ MII VS Microbiology Virulence [LOINC]  ](ValueSet-mii-vs-mikrobio-virulenz-loinc.md) | Test ValueSet for virulence factors: LOINC codes for the detection or exclusion of virulence determinants. |

### Terminologie: CodeSysteme 

Diese definieren neue CodeSysteme, die von Systemen verwendet werden, die mit diesem Implementierungsleitfaden konform sind.

| | |
| :--- | :--- |
| [ MII CS Microbiology MRGN Result  ](CodeSystem-mii-cs-mikrobio-mrgn-ergebnis.md) | CodeSystem for results of the MRGN classification that cannot be represented with LOINC. The LOINC answer list LL6195-3 for 99780-9 contains only 2MRGN, 3MRGN and 4MRGN and therefore no negative value. |
| [ MII CS Microbiology Resistance Category  ](CodeSystem-mii-cs-mikrobio-resistenzkategorie.md) | Investigation codes (Observation.code) for assessing a detected pathogen with regard to a defined resistance category. Each code names the assessed category; the result of the assessment is in Observation.value. |
| [ MII CS Microbiology Susceptibility Norm  ](CodeSystem-mii-cs-mikrobio-susceptibility-norm.md) | CodeSystem for coding the norms used to interpret the susceptibility of microorganisms to antimicrobial substances. |

### Beispiel: Beispielinstanzen 

Dies sind Beispielinstanzen, die zeigen, wie Daten aussehen könnten, die von Systemen produziert und konsumiert werden, die mit diesem Implementierungsleitfaden konform sind.

| | |
| :--- | :--- |
| [ MII EXA Microbiology Antigen Antibody Quantitative  ](Observation-mii-exa-mikrobio-antigen-antikoerper-quantitativ.md) | Quantitative antibody determination in serum, using the example of hepatitis B surface antibodies. |
| [ MII EXA Microbiology Avidity  ](Observation-mii-exa-mikrobio-aviditaet.md) | Avidity determination of CMV IgG antibodies; the measured value stays in value, the classification is in interpretation. |
| [ MII EXA Microbiology Bartlett Score  ](Observation-mii-exa-mikrobio-bartlett-score.md) | Bartlett score of a sputum specimen to assess whether it is suitable for culture. |
| [ MII EXA Microbiology Colony Count  ](Observation-mii-exa-mikrobio-keimzahl.md) | Colony count as colony-forming units per millilitre. |
| [ MII EXA Microbiology Colony Count Catheter Tip  ](Observation-mii-exa-mikrobio-keimzahl-katheterspitze.md) | Colony count of a catheter tip in colony-forming units without a denominator. The reference quantity is in Specimen.type. |
| [ MII EXA Microbiology Ct Value  ](Observation-mii-exa-mikrobio-ct-wert.md) | Cycle threshold of a real-time PCR for influenza A H3. |
| [ MII EXA Microbiology Diagnostic Report  ](DiagnosticReport-mii-exa-mikrobio-diagnostic-report.md) | Microbiological report that summarises the associated investigations. |
| [ MII EXA Microbiology General Culture  ](Observation-mii-exa-mikrobio-allgemeine-kultur.md) | Untargeted culture with growth detected, aerobic culture. |
| [ MII EXA Microbiology General Culture Method-Neutral Code  ](Observation-mii-exa-mikrobio-allgemeine-kultur-methodenneutral.md) | Untargeted culture without growth using the method-neutral investigation code 41852-5: only the method identifies the investigation as a culture. |
| [ MII EXA Microbiology General Determination  ](Observation-mii-exa-mikrobio-allgemeine-bestimmung.md) | Untargeted pathogen identification from a specimen, declared as a reflex follow-up investigation of the general culture. |
| [ MII EXA Microbiology General Microscopy  ](Observation-mii-exa-mikrobio-mikroskopie.md) | Microscopic finding as a morphological group: Gram-positive cocci in clusters. |
| [ MII EXA Microbiology General Microscopy Few Gram-Positive Cocci  ](Observation-mii-exa-mikrobio-mikroskopie-gram-kokken-wenig.md) | Gram preparation with few Gram-positive cocci: the morphology as the result, the semiquantitative quantity as a component. |
| [ MII EXA Microbiology Laboratory  ](Organization-mii-exa-mikrobio-labor.md) | Performing microbiology laboratory of the examples of this module. |
| [ MII EXA Microbiology MRGN Class  ](Observation-mii-exa-mikrobio-mrgn-klasse.md) | MRGN classification of a Gram-negative isolate with the result 2MRGN. |
| [ MII EXA Microbiology MRGN Class Negative  ](Observation-mii-exa-mikrobio-mrgn-klasse-negativ.md) | Identified Gram-negative isolate whose susceptibility results were assessed and which cannot be assigned to any MRGN class. |
| [ MII EXA Microbiology Molecular Pathogen Load  ](Observation-mii-exa-mikrobio-molekulare-pathogenlast.md) | Quantitative molecular pathogen load, using the example of CMV DNA in copies per millilitre. |
| [ MII EXA Microbiology Nugent Score  ](Observation-mii-exa-mikrobio-nugent-score.md) | Nugent score of a vaginal specimen for assessing bacterial vaginosis. |
| [ MII EXA Microbiology Patient  ](Patient-mii-exa-mikrobio-patient.md) | Minimal subject for the examples of this module. No profile, no demographics — Patient is the responsibility of the Person module. |
| [ MII EXA Microbiology Predicted Susceptibility  ](Observation-mii-exa-mikrobio-voraussichtliche-empfindlichkeit.md) | Expected susceptibility to rifampicin derived from the genotype. |
| [ MII EXA Microbiology Resistance Category VRE Negative  ](Observation-mii-exa-mikrobio-resistenzkategorie-vre-negativ.md) | Identified Enterococcus without vancomycin resistance: VRE status Negative. |
| [ MII EXA Microbiology Resistance Category VRE Positive  ](Observation-mii-exa-mikrobio-resistenzkategorie-vre-positiv.md) | Identified Enterococcus faecium with detected vancomycin resistance: VRE status Positive, derived from identification and susceptibility testing. |
| [ MII EXA Microbiology Resistance Mechanisms Determinants  ](Observation-mii-exa-mikrobio-resistenzmechanismen-determinanten.md) | Molecular detection of a resistance determinant by PCR. |
| [ MII EXA Microbiology Specific Culture  ](Observation-mii-exa-mikrobio-spezifische-kultur.md) | Targeted detection of a predefined pathogen, performed by culture and positive here. |
| [ MII EXA Microbiology Specific Culture VRE Negative  ](Observation-mii-exa-mikrobio-spezifische-kultur-vre-negativ.md) | Negative VRE detection by pathogen-specific culture. |
| [ MII EXA Microbiology Specific Determination  ](Observation-mii-exa-mikrobio-spezifische-bestimmung.md) | Targeted molecular pathogen detection with a negative result. |
| [ MII EXA Microbiology Specific Determination Influenza Positive  ](Observation-mii-exa-mikrobio-spezifische-bestimmung-influenza-positiv.md) | Targeted molecular pathogen detection with a positive result, derived from the reported Ct value. |
| [ MII EXA Microbiology Specific Determination VRE Negative  ](Observation-mii-exa-mikrobio-spezifische-bestimmung-vre-negativ.md) | Negative VRE detection: the test for vancomycin-resistant enterococci is negative. |
| [ MII EXA Microbiology Specific Microscopy Auramine Negative  ](Observation-mii-exa-mikrobio-spezifische-mikroskopie-auramin-negativ.md) | Auramine stain without detection of acid-fast rods: the negative case of specific microscopy. |
| [ MII EXA Microbiology Specific Microscopy Kinyoun Two Plus  ](Observation-mii-exa-mikrobio-spezifische-mikroskopie-kinyoun-zweiplus.md) | Kinyoun stain with detection of acid-fast rods, with grade two of three as the quantity component — corresponding to 1–10 per field of view. |
| [ MII EXA Microbiology Specific Microscopy Leukocytes per Field of View  ](Observation-mii-exa-mikrobio-spezifische-mikroskopie-leukozyten-gesichtsfeld.md) | Leukocytes detected in the Gram preparation, with the quantity as a count per field of view — 10 to 25 — instead of a semiquantitative grade. |
| [ MII EXA Microbiology Specimen  ](Specimen-mii-exa-mikrobio-probe.md) | Generic specimen material for the examples of this module. The type is deliberately unspecific because the same specimen carries examples of different investigation types. |
| [ MII EXA Microbiology Specimen Catheter Tip  ](Specimen-mii-exa-mikrobio-probe-katheterspitze.md) | Catheter tip as specimen material. It has neither volume nor mass and is therefore itself the reference quantity of the colony count. |
| [ MII EXA Microbiology Susceptibility  ](Observation-mii-exa-mikrobio-empfindlichkeit.md) | Phenotypic susceptibility testing with MIC in mg/L; the category with its norm is in interpretation. |
| [ MII EXA Microbiology Susceptibility Category Only  ](Observation-mii-exa-mikrobio-empfindlichkeit-nur-kategorie.md) | Phenotypic susceptibility testing in which only the category is reported and no measured value is available; the norm is in the same place as the category. |
| [ MII EXA Microbiology Titre  ](Observation-mii-exa-mikrobio-titer.md) | Titre determination as a dilution ratio, using the example of rubella virus antibodies. |
| [ MII EXA Microbiology Virulence Factor  ](Observation-mii-exa-mikrobio-virulenzfaktor.md) | Detection of a virulence factor gene with a negative result. |
| [ MII EXA Microbiology Workflow VRE 1 Culture Positive  ](Observation-mii-exa-mikrobio-workflow-vre-01-kultur.md) | VRE workflow chain, step 1: positive VRE detection by pathogen-specific culture. |
| [ MII EXA Microbiology Workflow VRE 2 Identification  ](Observation-mii-exa-mikrobio-workflow-vre-02-identifikation.md) | VRE workflow chain, step 2: further identification of the isolate as Enterococcus faecium, triggered by the positive detection. |
| [ MII EXA Microbiology Workflow VRE 3 Susceptibility  ](Observation-mii-exa-mikrobio-workflow-vre-03-empfindlichkeit.md) | VRE workflow chain, step 3: vancomycin susceptibility testing of the identified isolate with the result resistant. |

### Sonstige 

Dies sind Ressourcen, die in diesem Implementierungsleitfaden verwendet werden, die in keine der anderen Kategorien passen.

| | |
| :--- | :--- |
| [ Expansion Parameters Manifest  ](Parameters-mii-param-mikrobio-manifest.md) | Gepinnte CodeSystem-Versionen, gegen die jedes ValueSet dieses Leitfadens expandiert wird. |

