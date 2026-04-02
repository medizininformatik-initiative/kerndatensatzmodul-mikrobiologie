Logical: MII_LM_Mikrobio_Logical_Model
Parent: Element
Id: mii-lm-mikrobio-logical-model
Title: "MII LM Mikrobio Logical Model"
Description: "Logical Model für die grafische Darstellung des Mikrobiologie-Datenmodells 2026 [DE]"
* insert PR_CS_VS_Version
* insert Publisher
* ^url = "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-lm-mikrobio-logical-model-de"
* ^type = "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-lm-mikrobio-logical-model"
* . ^short = "mii lm mikrobio logical model"

// Kultur
* Kultur 0..* BackboneElement "Kultur" "Kultur"
  * AllgemeineKultur 0..* https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-allgemeine-kultur "Allgemeine Kultur (NEW)" "MII PR Mikrobio Allgemeine Kultur"
  * SpezifischeKultur 0..* https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-spezifische-kultur "Spezifische Kultur (NEW)" "MII PR Mikrobio Spezifische Kultur"
  * Keimzahl 0..* https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-keimzahl "Keimzahl" "MII PR Mikrobio Keimzahl"
  * Mikroskopie 0..* https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-mikroskopie "Mikroskopie" "MII PR Mikrobio Mikroskopie"
  * Empfindlichkeit 0..* https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-empfindlichkeit "Empfindlichkeit" "MII PR Mikrobio Empfindlichkeit"
  * NugentScore 0..* https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-nugent-score "Nugent Score (ex component)" "MII PR Mikrobio Nugent Score"
  * BarlettScore 0..* https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-barlett-score "Barlett Score (ex component)" "MII PR Mikrobio Barlett Score"

// Determination
* Determination 0..* BackboneElement "Determination" "Determination"
  * AllgemeineBestimmung 0..* https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-allgemeine-bestimmung "General Determination (NEW)" "MII PR Mikrobio Allgemeine Bestimmung"
  * SpezifischeBestimmung 0..* https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-spezifische-bestimmung "Specific Determination (NEW)" "MII PR Mikrobio Spezifische Bestimmung"
  * CtWert 0..* https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-ct-wert "CT-Wert (ex component)" "MII PR Mikrobio CT Wert"
  * MolekularePathogenlast 0..* https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-molekulare-pathogenlast "Molekulare Pathogenlast" "MII PR Mikrobio Molekulare Pathogenlast"

// Weitere Eigenschaften
* WeitereEigenschaften 0..* BackboneElement "Weitere Eigenschaften" "Weitere Eigenschaften"
  * VoraussichtlicheEmpfindlichkeit 0..* https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-voraussichtliche-empfindlichkeit "Voraussichtliche Empfindlichkeit" "MII PR Mikrobio Voraussichtliche Empfindlichkeit"
  * Virulenzfaktor 0..* https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-virulenzfaktor "Virulenzfaktor" "MII PR Mikrobio Virulenzfaktor"
  * ResistenzmechanismenDeterminanten 0..* https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-resistenzmechanismen-determinanten "Resistenzmechanismen/Determinanten" "MII PR Mikrobio Resistenzmechanismen Determinanten"
  * MRGNKlasse 0..* https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-mrgn-klasse "MRGN Klasse" "MII PR Mikrobio MRGN Klasse"
  * MREKlasse 0..* https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-mre-klasse "MRE Klasse" "MII PR Mikrobio MRE Klasse"

// Serology Immunology
* SerologyImmunology 0..* BackboneElement "Serology Immunology" "Serology Immunology"
  * SerologieImmunologie 0..* https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-serologie-immunologie "Serologie Immunologie" "MII PR Mikrobio Serologie Immunologie"
  * AntigenAntikoerperQuantitativ 0..* https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-antigen-antikoerper-quantitativ "Antigen antibody quantitative tests" "MII PR Mikrobio Antigen Antikoerper Quantitativ"
  * Aviditaet 0..* https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-aviditaet "Avidity (ex component)" "MII PR Mikrobio Aviditaet"
  * Titer 0..* https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-titer "Titer (ex component)" "MII PR Mikrobio Titer"

// Diagnostic Report
* DiagnosticReportKategorie 0..* BackboneElement "Diagnostic Report" "Diagnostic Report"
  * MikrobiologieBericht 0..* https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-diagnostic-report "MII PR Mikrobio Diagnostic Report" "MII PR Mikrobio Diagnostic Report"
