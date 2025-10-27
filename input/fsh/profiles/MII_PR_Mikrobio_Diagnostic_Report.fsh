Profile: MII_PR_Mikrobio_Diagnostic_Report
Parent: MII_PR_Labor_Laborbefund
Id: mii-pr-mikrobio-diagnostic-report
Title: "MII PR Mikrobio Diagnostic Report"
Description: "This profile describes a diagnostic report in microbiology"
* insert PR_CS_VS_Version
* insert Publisher
* ^purpose = "Dieses Profil beschreibt einen diagnostischer Bericht in Mikrobiologie"
* basedOn ..1
* category
  * coding contains
      snomed-microbiology-studies 1..1 MS and
      loinc-microbiology-specialization 0..1
  * coding[snomed-microbiology-studies] = $sct#4341000179107
  * coding[loinc-microbiology-specialization] from MII_VS_Mikrobio_Befundtyp_LOINC (required)
    * obeys dia-ic-highmed-1
* resultsInterpreter MS
* specimen ^min = 0