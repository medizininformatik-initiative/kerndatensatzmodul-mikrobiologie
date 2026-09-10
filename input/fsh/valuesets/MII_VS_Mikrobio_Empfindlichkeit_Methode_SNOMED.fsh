ValueSet: MII_VS_Mikrobio_Empfindlichkeit_Methode_SNOMED
Id: mii-vs-mikrobio-empfindlichkeit-methode-snomed
Title: "MII VS Mikrobio Empfindlichkeit Methode [SNOMED]"
Description: "Methoden-ValueSet für die phänotypische Empfindlichkeitstestung: die Verfahren, mit denen eine minimale Hemmkonzentration oder ein Hemmhofdurchmesser gemessen wird."
* insert PR_CS_VS_Version
* insert Publisher
* ^status = #active
// Bis 2026-09-10 hatte MII_PR_Mikrobio_Empfindlichkeit GAR KEIN method-Binding —
// das Element kam unbeschraenkt aus dem Elternprofil. Das EU-Datenmodell nennt
// im Blatt "Phenotypic susceptibility" (Zeilen 11-15) genau diese fuenf
// Verfahren; vier davon fuehrte das Modul schon in
// MII_VS_Mikrobio_Resistenzmechanismen_Methode_SNOMED, wo sie auf eine andere
// FRAGE angewandt werden (liegt ein ESBL vor?) als hier (wie empfindlich ist
// das Isolat gegen X?). Dasselbe Verfahren, zwei Fragen, zwei Profile — dafuer
// ist Observation.method postkoordiniert.
* $sct#263696007 "Broth dilution (qualifier value)"
* $sct#1303975003 "Disk diffusion technique (qualifier value)"
* $sct#703442003 "Gradient strip susceptibility test technique (qualifier value)"
* $sct#260111000146108 "Manual minimum inhibitory concentration microdilution susceptibility test technique (qualifier value)"
* $sct#260101000146106 "Automated minimum inhibitory concentration microdilution susceptibility test technique (qualifier value)"
