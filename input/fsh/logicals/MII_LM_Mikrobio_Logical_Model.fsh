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

* AllgemeineKultur 0..* http://hl7.org/fhir/StructureDefinition/Observation "Allgemeine Kultur" "Allgemeine Kultur"
* SpezifischeKultur 0..* http://hl7.org/fhir/StructureDefinition/Observation "Spezifische Kultur" "Spezifische Kultur"
* AllgemeineBestimmung 0..* http://hl7.org/fhir/StructureDefinition/Observation "Allgemeine Bestimmung" "Allgemeine Bestimmung"
* SpezifischeBestimmung 0..* http://hl7.org/fhir/StructureDefinition/Observation "Spezifische Bestimmung" "Spezifische Bestimmung"
* MolekularePathogenlast 0..* http://hl7.org/fhir/StructureDefinition/Observation "Molekulare Pathogenlast" "Molekulare Pathogenlast"
* CtWert 0..* http://hl7.org/fhir/StructureDefinition/Observation "CT-Wert" "CT-Wert"

* Keimzahl 0..* http://hl7.org/fhir/StructureDefinition/Observation "Keimzahl" "Keimzahl"
* Empfindlichkeit 0..* http://hl7.org/fhir/StructureDefinition/Observation "Empfindlichkeit" "Empfindlichkeit"
* Mikroskopie 0..* http://hl7.org/fhir/StructureDefinition/Observation "Mikroskopie" "Mikroskopie"
* NugentScore 0..* http://hl7.org/fhir/StructureDefinition/Observation "Nugent Score" "Nugent Score"
* BarlettScore 0..* http://hl7.org/fhir/StructureDefinition/Observation "Barlett Score" "Barlett Score"

* SerologieImmunologie 0..* http://hl7.org/fhir/StructureDefinition/Observation "Serologie/Immunologie" "Serologie/Immunologie"
* AntigenAntikoerperQuantitativ 0..* http://hl7.org/fhir/StructureDefinition/Observation "Antigen/Antikörper quantitativ" "Antigen/Antikörper quantitativ"
* Aviditaet 0..* http://hl7.org/fhir/StructureDefinition/Observation "Avidität" "Avidität"
* Titer 0..* http://hl7.org/fhir/StructureDefinition/Observation "Titer" "Titer"

* ResistenzmechanismenDeterminanten 0..* http://hl7.org/fhir/StructureDefinition/Observation "Resistenzmechanismen/Determinanten" "Resistenzmechanismen/Determinanten"
* Virulenzfaktor 0..* http://hl7.org/fhir/StructureDefinition/Observation "Virulenzfaktor" "Virulenzfaktor"
* VoraussichtlicheEmpfindlichkeit 0..* http://hl7.org/fhir/StructureDefinition/Observation "Voraussichtliche Empfindlichkeit" "Voraussichtliche Empfindlichkeit"
* MREKlasse 0..* http://hl7.org/fhir/StructureDefinition/Observation "MRE Klasse" "MRE Klasse"
* MRGNKlasse 0..* http://hl7.org/fhir/StructureDefinition/Observation "MRGN Klasse" "MRGN Klasse"

* MikrobiologieBericht 0..* http://hl7.org/fhir/StructureDefinition/DiagnosticReport "Mikrobiologie Bericht" "Mikrobiologie Bericht"
