Profile: MII_PR_Mikrobio_Diagnostic_Report
Parent: MII_PR_Labor_Laborbefund
Id: mii-pr-mikrobio-diagnostic-report
Title: "MII PR Mikrobio Diagnostic Report"
Description: "Mikrobiologischer Befundbericht zur Zusammenfassung und Kontextualisierung zugehöriger mikrobiologischer Untersuchungsergebnisse."
* insert PR_CS_VS_Version
* insert Publisher
* ^purpose = "Dieses Profil beschreibt den mikrobiologischen DiagnosticReport."
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
* category[mibi-category] ^short = "Mikrobiologie-Kategorie"
* category[mibi-category] ^definition = "Kategorie-Slice für mikrobiologische Befunde"
* category[mibi-sub-category] ^short = "Mikrobiologie-Kategorie LOINC"
* category[mibi-sub-category] ^definition = "Kategorie-Slice für die LOINC-Kodierung von mikrobiologischen Befunden. Mehrfachangabe zulaessig, wenn der Befund mehrere Studientypen umfasst, z. B. bakteriologisch und mykologisch. Umfasst der Befund keine benennbaren Studientypen oder soll er nur allgemein eingeordnet werden, entfaellt der Subtyp; die allgemeine Einordnung erfolgt dann allein ueber category[mibi-category] mit MB."
* category[mibi-sub-category] from MII_VS_Mikrobio_Befundtyp_LOINC (required)
* resultsInterpreter MS
* specimen ^min = 0
* result only Reference(
    MII_PR_Mikrobio_Allgemeine_Kultur or
    MII_PR_Mikrobio_Spezifische_Kultur or
    MII_PR_Mikrobio_Allgemeine_Bestimmung or
    MII_PR_Mikrobio_Spezifische_Bestimmung or
    MII_PR_Mikrobio_Keimzahl or
    MII_PR_Mikrobio_Empfindlichkeit or
    MII_PR_Mikrobio_Mikroskopie or
    MII_PR_Mikrobio_Antigen_Antikoerper_Quantitativ or
    MII_PR_Mikrobio_Aviditaet or
    MII_PR_Mikrobio_Ct_Wert or
    MII_PR_Mikrobio_Titer or
    MII_PR_Mikrobio_Nugent_Score or
    MII_PR_Mikrobio_Barlett_Score or
    MII_PR_Mikrobio_Molekulare_Pathogenlast or
    MII_PR_Mikrobio_Resistenzmechanismen_Determinanten or
    MII_PR_Mikrobio_Virulenzfaktor or
    MII_PR_Mikrobio_Resistenzkategorie_Status or
    MII_PR_Mikrobio_MRGN_Klasse or
    MII_PR_Mikrobio_Voraussichtliche_Empfindlichkeit
)
