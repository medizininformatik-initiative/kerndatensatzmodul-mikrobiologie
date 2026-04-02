Profile: MII_PR_Mikrobio_Diagnostic_Report
Parent: MII_PR_Labor_Laborbefund
Id: mii-pr-mikrobio-diagnostic-report
Title: "MII PR Mikrobio Diagnostic Report"
Description: "Mikrobiologischer Befundbericht zur Zusammenfassung und Kontextualisierung zugehöriger mikrobiologischer Untersuchungsergebnisse."
* insert PR_CS_VS_Version
* insert Publisher
* ^purpose = "Dieses Profil beschreibt den mikrobiologischen DiagnosticReport."
* basedOn ..1
* category
  * coding MS
    * ^slicing.discriminator.type = #pattern
    * ^slicing.discriminator.path = "$this"
    * ^slicing.rules = #open
  * coding contains
      snomed-microbiology-studies 1..1 MS and
      loinc-microbiology-specialization 0..1
  * coding[snomed-microbiology-studies] = $sct#4341000179107
  * coding[loinc-microbiology-specialization] from MII_VS_Mikrobio_Befundtyp_LOINC (required)
    * obeys dia-ic-highmed-1
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
    MII_PR_Mikrobio_Serologie_Immunologie or
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
