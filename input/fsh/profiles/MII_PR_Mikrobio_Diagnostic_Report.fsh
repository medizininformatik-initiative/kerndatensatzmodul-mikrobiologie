Profile: MII_PR_Mikrobio_Diagnostic_Report
Parent: MII_PR_Labor_Laborbefund
Id: mii-pr-mikrobio-diagnostic-report
Title: "MII PR Mikrobio Diagnostic Report"
Description: "Mikrobiologischer Befundbericht zur Zusammenfassung und Kontextualisierung zugehöriger mikrobiologischer Untersuchungsergebnisse."
* insert PR_CS_VS_Version
* insert Publisher
* ^purpose = "Dieses Profil beschreibt den mikrobiologischen DiagnosticReport."
* basedOn ..1
* category contains mibi-category 1..1 MS and mibi-sub-category 0..1 MS
* category[mibi-category] ^short = "Mikrobiologie-Kategorie"
* category[mibi-category] ^definition = "Kategorie-Slice für mikrobiologische Befunde"
* category[mibi-category] ^patternCodeableConcept.coding[+] = $v2-0074#MB //Microbiology
* category[mibi-category].coding ^slicing.discriminator.type = #pattern
* category[mibi-category].coding ^slicing.discriminator.path = "$this"
* category[mibi-category].coding ^slicing.rules = #open
* category[mibi-category].coding contains v2-microbiology 1..1 MS and loinc-microbiology-studies 0..1 MS
* category[mibi-category].coding[v2-microbiology] = $v2-0074#MB // "Microbiology"
* category[mibi-category].coding[loinc-microbiology-studies] = $loinc#18725-2 // "Mikrobiologie"
* category[mibi-sub-category] ^short = "Mikrobiologie-Kategorie LOINC"
* category[mibi-sub-category] ^definition = "Kategorie-Slice für die LOINC-Kodierung von mikrobiologischen Befunden"
* category[mibi-sub-category] from MII_VS_Mikrobio_Befundtyp_LOINC (required)
* resultsInterpreter MS
* specimen ^min = 0
* result only Reference(
    MII_PR_Mikrobio_Allgemeine_Kultur or
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
    MII_PR_Mikrobio_MRE_Klasse or
    MII_PR_Mikrobio_MRGN_Klasse or
    MII_PR_Mikrobio_Voraussichtliche_Empfindlichkeit
)
