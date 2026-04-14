Logical: MII_LM_Mikrobio_Logical_Model
Parent: Element
Id: mii-lm-mikrobio-logical-model
Title: "MII LM Mikrobio Logical Model"
Description: "Logical Model für die grafische Darstellung des Mikrobiologie-Datenmodells 2027 [DE]"
* insert PR_CS_VS_Version
* insert Publisher
* ^url = "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-lm-mikrobio-logical-model-de"
* ^type = "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-lm-mikrobio-logical-model"
* . ^short = "mii lm mikrobio logical model"

// Kultur
* Kultur 0..* BackboneElement "Kultur" "Kultur"
  * AllgemeineKultur 0..* https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-allgemeine-kultur "Allgemeine Kultur" "MII PR Mikrobio Allgemeine Kultur"
  * Mikroskopie 0..* https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-mikroskopie "Mikroskopie" "MII PR Mikrobio Mikroskopie"
  * BarlettScore 0..* https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-barlett-score "Barlett Score" "MII PR Mikrobio Barlett Score"
  * NugentScore 0..* https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-nugent-score "Nugent Score" "MII PR Mikrobio Nugent Score"
  * Keimzahl 0..* https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-keimzahl "Keimzahl" "MII PR Mikrobio Keimzahl"
  * Empfindlichkeit 0..* https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-empfindlichkeit "Empfindlichkeit" "MII PR Mikrobio Empfindlichkeit"

// Bestimmung
* Bestimmung 0..* BackboneElement "Bestimmung" "Bestimmung"
  * AllgemeineBestimmung 0..* https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-allgemeine-bestimmung "Allgemeine Bestimmung" "MII PR Mikrobio Allgemeine Bestimmung"
  * SpezifischeBestimmung 0..* https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-spezifische-bestimmung "Spezifische Bestimmung" "MII PR Mikrobio Spezifische Bestimmung"
  * CtWert 0..* https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-ct-wert "Ct-Wert" "MII PR Mikrobio CT Wert"

// Weitere Eigenschaften
* WeitereEigenschaften 0..* BackboneElement "Weitere Eigenschaften" "Weitere Eigenschaften"
  * Virulenzfaktor 0..* https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-virulenzfaktor "Virulenz" "MII PR Mikrobio Virulenzfaktor"
  * ResistenzmechanismenDeterminanten 0..* https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-resistenzmechanismen-determinanten "Resistenzmechanismus" "MII PR Mikrobio Resistenzmechanismen Determinanten"
  * MRGNKlasse 0..* https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-mrgn-klasse "MRGN Klasse" "MII PR Mikrobio MRGN Klasse"
  * VoraussichtlicheEmpfindlichkeit 0..* https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-voraussichtliche-empfindlichkeit "Voraussichtliche Empfindlichkeit" "MII PR Mikrobio Voraussichtliche Empfindlichkeit"
  * MREKlasse 0..* https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-mre-klasse "MRE Klasse" "MII PR Mikrobio MRE Klasse"
  * Aviditaet 0..* https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-aviditaet "Aviditaet" "MII PR Mikrobio Aviditaet"

// Quantitative tests
* QuantitativeTests 0..* BackboneElement "Quantitative tests" "Quantitative tests"
  * AntigenAntikoerperQuantitativ 0..* https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-antigen-antikoerper-quantitativ "Antigen Antikoerper Tests" "MII PR Mikrobio Antigen Antikoerper Quantitativ"
  * Titer 0..* https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-titer "Titer" "MII PR Mikrobio Titer"
  * MolekularePathogenlast 0..* https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-molekulare-pathogenlast "Molekulare Pathogenlast" "MII PR Mikrobio Molekulare Pathogenlast"

// Diagnostic Report
* DiagnosticReportKategorie 0..* BackboneElement "Diagnostic Report" "Diagnostic Report"
  * MikrobiologieBericht 0..* https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-diagnostic-report "MII PR Mikrobio Diagnostic Report" "MII PR Mikrobio Diagnostic Report"
