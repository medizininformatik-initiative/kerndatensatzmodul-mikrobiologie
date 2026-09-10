ValueSet: MII_VS_Mikrobio_Allgemeine_Bestimmung_Methode_SNOMED
Id: mii-vs-mikrobio-allgemeine-bestimmung-methode-snomed
Title: "MII VS Mikrobio Allgemeine Bestimmung Methode [SNOMED]"
Description: "Methoden-ValueSet für die allgemeine Bestimmung: nicht kulturbasierte Verfahren zur Identifikation eines Erregers ohne vordefiniertes Ziel, etwa Mikroskopie oder MALDI-TOF."
* insert PR_CS_VS_Version
* insert Publisher
* ^status = #active
* $sct#278289002 "Microscopy technique (qualifier value)"
* $sct#83581000052107 "Matrix assisted laser desorption ionization time of flight mass spectrometry technique (qualifier value)"
* $sct#258083009 "Visual estimation technique (qualifier value)"
// Aus dem Blatt "Molecular techniques", Block "Identification Procedure
// (General sequencing)": Dieselbe Frage, dasselbe Ergebnis, anderes Verfahren —
// das Blatt sagt es woertlich ("same value set as for Phenotypic
// identification"). Ohne diesen Code waere sequenzierungsbasierte
// Identifizierung nicht kodierbar.
* $sct#1304162005 "Nucleic acid sequencing technique (qualifier value)"

// FEHLT IN SNOMED, im Datenmodell angefordert: "Targeted rapid biochemical
// microbial detection technique" fuer die manuelle biochemische Identifizierung
// (VITEK). Die Anforderung stand zuvor auf dem Blatt "Identification Specific"
// und ist in der Fassung vom 2026-09-10 hierher gewandert — sie gehoert damit in
// dieses ValueSet, nicht in das der Spezifischen Bestimmung. Naechstliegender
// vorhandener Code ist 23093004 "Microbial identification, Minitek biochemical
// differentiation disk method", der aber ein einzelnes Testsystem benennt.

