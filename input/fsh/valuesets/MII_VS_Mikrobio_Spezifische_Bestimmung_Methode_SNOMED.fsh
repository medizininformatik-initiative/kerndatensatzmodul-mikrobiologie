ValueSet: MII_VS_Mikrobio_Spezifische_Bestimmung_Methode_SNOMED
Id: mii-vs-mikrobio-spezifische-bestimmung-methode-snomed
Title: "MII VS Mikrobio Spezifische Bestimmung Methode [SNOMED]"
Description: "Methoden-ValueSet für die spezifische Bestimmung: nicht kulturbasierte Verfahren des zielgerichteten Erregernachweises, etwa Amplifikation, Immunoassay oder Agglutination."
* insert PR_CS_VS_Version
* insert Publisher
* ^status = #active
* $sct#258066000 "Polymerase chain reaction technique (qualifier value)"
* $sct#1303992007 "Digital polymerase chain reaction technique (qualifier value)"
* $sct#70601000052104 "Real-time polymerase chain reaction technique (qualifier value)"
* $sct#1303998006 "Multiplex polymerase chain reaction technique (qualifier value)"
* $sct#1304048000 "Transcription mediated amplification technique (qualifier value)"
* $sct#708104000 "Agglutination technique (qualifier value)"
* $sct#726449005 "Immunoassay technique (qualifier value)"
* $sct#703444002 "Fluorescent immunoassay (qualifier value)"
// 703752003 (mikroorganismusspezifische Kulturtechnik) ist nach
// MII_VS_Mikrobio_Spezifische_Kultur_Methode_SNOMED ausgelagert

// Aus dem Methodenblock des Blattes "Molecular techniques", der fuer den
// gezielten wie den allgemeinen Nachweis gilt.
* $sct#1259932009 "Loop-mediated isothermal amplification technique (qualifier value)"
* $sct#1304162005 "Nucleic acid sequencing technique (qualifier value)"

// Die SNOMED-Anforderung "Targeted rapid biochemical microbial detection
// technique" (VITEK) stand hier; in der Datenmodell-Fassung vom 2026-09-10 ist
// sie auf das Blatt "Phenotypic Identification" gewandert und daher jetzt in
// MII_VS_Mikrobio_Allgemeine_Bestimmung_Methode_SNOMED vermerkt.