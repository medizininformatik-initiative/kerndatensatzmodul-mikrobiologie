Profile: MII_PR_Mikrobio_Diagnostic_Report
Parent: MII_PR_Labor_Laborbefund
Id: mii-pr-mikrobio-diagnostic-report
Title: "MII PR Microbiology Diagnostic Report"
Description: "Microbiological report for summarising and contextualising associated microbiological investigation results."
* insert PR_CS_VS_Version
* insert Publisher
// Modulthema, ersetzt die vom Parent geerbten Labor-Themen — Begruendung in
// input/fsh/rulesets/mikrobio-observation-common.fsh.
* insert CRMIArtifactTopic(0, http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl, C16851)
* insert CRMIArtifactTopic(+, http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl, C217438)
* ^purpose = "This profile describes the microbiological DiagnosticReport."
* basedOn ..1
// Der Parent slict DiagnosticReport.category selbst (Slice `v2-lab`,
// kerndatensatzmodul-labor#66) und legt seine Pflicht-Codings dort ab. Dieses
// Profil ergaenzt zwei EIGENSTAENDIGE Kategorien daneben — Mikrobiologie und,
// optional, der Befundtyp.
//
// Kein eigenes Slicing auf `category` — das slict der Parent bereits (pattern auf
// `$this`, offen). `contains` allein genuegt; siehe die Begruendung im RuleSet
// MIKRO_OBSERVATION_COMMON, der dieselbe Stelle gleich behandelt.
* category contains mibi-category 1..1 MS and mibi-sub-category 0..* MS
// Ein Slice, ein fester Wert, keine Coding-Ebene — wie im RuleSet
// MIKRO_OBSERVATION_COMMON und wie der Parent seinen eigenen Slice fuehrt.
* category[mibi-category] = $v2-0074#MB
* category[mibi-category] ^short = "Microbiology category"
* category[mibi-category] ^definition = "Category slice for microbiological reports"
* category[mibi-sub-category] ^short = "Microbiology category LOINC"
* category[mibi-sub-category] ^definition = "Category slice for the LOINC coding of microbiological reports. Multiple entries are permitted if the report covers several study types, e.g. bacteriological and mycological. If the report covers no nameable study types or is only to be classified generally, the subtype is omitted; the general classification is then made solely via category[mibi-category] with MB."
* category[mibi-sub-category] from MII_VS_Mikrobio_Befundtyp_LOINC (required)
* resultsInterpreter MS
// Die zusammenfassende Aussage des Labors. Fuer die Serologie ist sie der
// tragende Teil des Befunds und nicht Beigabe: Bei EBV ergeben VCA-IgM, VCA-IgG
// und EBNA-IgG einzeln noch keine Diagnose — erst die Zusammenschau sagt
// "frische Infektion" oder "durchgemachte Infektion", und diese Aussage ist
// keine der drei Einzeluntersuchungen.
//
// Das europaeische Whitepaper haelt im Serologie-Kapitel fest: "While the
// content of a conclusion is difficult to standardize, the ability to exchange a
// conclusion is important; this could be free text to begin with."
//
// Deshalb Freitext und BEWUSST kein conclusionCode: Das Whitepaper schlaegt fuer
// den Anfang ausdruecklich Freitext vor, und ein ValueSet fuer kodierte
// Gesamtaussagen hat dieses Modul nicht.
* conclusion MS
* conclusion ^short = "Summarising assessment by the laboratory as free text. For serological reports this is the key element, because there the diagnosis only emerges from the synopsis of several individual results."
* specimen ^min = 0
* result only Reference(
    MII_PR_Mikrobio_Allgemeine_Kultur or
    MII_PR_Mikrobio_Allgemeine_Bestimmung or
    MII_PR_Mikrobio_Spezifische_Bestimmung or
    MII_PR_Mikrobio_Keimzahl or
    MII_PR_Mikrobio_Empfindlichkeit or
    MII_PR_Mikrobio_Allgemeine_Mikroskopie or
    MII_PR_Mikrobio_Spezifische_Mikroskopie or
    MII_PR_Mikrobio_Antigen_Antikoerper_Quantitativ or
    MII_PR_Mikrobio_Aviditaet or
    MII_PR_Mikrobio_Ct_Wert or
    MII_PR_Mikrobio_Titer or
    MII_PR_Mikrobio_Nugent_Score or
    MII_PR_Mikrobio_Bartlett_Score or
    MII_PR_Mikrobio_Molekulare_Pathogenlast or
    MII_PR_Mikrobio_Resistenzmechanismen_Determinanten or
    MII_PR_Mikrobio_Virulenzfaktor or
    MII_PR_Mikrobio_Resistenzkategorie_Status or
    MII_PR_Mikrobio_MRGN_Klasse or
    MII_PR_Mikrobio_Voraussichtliche_Empfindlichkeit
)
