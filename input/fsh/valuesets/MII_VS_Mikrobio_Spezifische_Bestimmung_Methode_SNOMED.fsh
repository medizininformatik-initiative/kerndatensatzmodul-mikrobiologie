ValueSet: MII_VS_Mikrobio_Spezifische_Bestimmung_Methode_SNOMED
Id: mii-vs-mikrobio-spezifische-bestimmung-methode-snomed
Title: "MII VS Mikrobio Spezifische Bestimmung Methode [SNOMED]"
Description: "Methoden-ValueSet für die spezifische Bestimmung: nicht kulturbasierte Verfahren des zielgerichteten Erregernachweises, etwa Amplifikation, Immunoassay oder Agglutination."
* insert PR_CS_VS_Version
* insert Publisher
* ^status = #active
// Sondenbasierte Zielamplifikation — die Lucke, die beide Quellen nennen und
// die dieses ValueSet bis 2026-09-10 hatte. Das Whitepaper benutzt den Code in
// seinem zentralen Postkoordinations-Beispiel (Neisseria gonorrhoeae DNA:
// Observation.code ohne praekoordinierte Angaben, Specimen.type = 119344008,
// Observation.method = 702675006), und das Workbook fuehrt ihn in "Molecular
// techniques" G28 mit dem Kommentar "probe is the keyword in modern medical
// targeted pcrs; is there still a place for (nonsequencing) pcrs without a
// probe?".
//
// Er steht bewusst NEBEN 258066000: Nicht jede PCR ist sondenbasiert, und
// 258066000 bleibt fuer Verfahren ohne Sonde die richtige Angabe. Die Frage des
// Workbooks, ob es solche noch gibt, ist keine, die dieses Modul entscheidet.
* $sct#702675006 "Probe with target amplification technique (qualifier value)"
* $sct#258066000 "Polymerase chain reaction technique (qualifier value)"
* $sct#1303992007 "Digital polymerase chain reaction technique (qualifier value)"
* $sct#70601000052104 "Real-time polymerase chain reaction technique (qualifier value)"
* $sct#1303998006 "Multiplex polymerase chain reaction technique (qualifier value)"
* $sct#1304048000 "Transcription mediated amplification technique (qualifier value)"
* $sct#708104000 "Agglutination technique (qualifier value)"
* $sct#726449005 "Immunoassay technique (qualifier value)"
* $sct#703444002 "Fluorescent immunoassay (qualifier value)"
// 703752003 (mikroorganismusspezifische Kulturtechnik) ist nach
// MII_VS_Mikrobio_Spezifische_Kultur_Methode_SNOMED ausgelagert. Das Blatt
// "Identification Specific" fuehrt den Code in Zeile 25 und stellt selbst die
// Frage dazu: "or should this not be allowed, use culture specific profile
// instead?" — unsere Antwort ist genau das. Ein kulturell durchgefuehrter
// zielgerichteter Nachweis antwortet mit Wachstum, nicht mit Detected, und hat
// damit einen anderen Ergebnisraum.

// Aus dem Methodenblock des Blattes "Molecular techniques", der fuer den
// gezielten wie den allgemeinen Nachweis gilt.
* $sct#1259932009 "Loop-mediated isothermal amplification technique (qualifier value)"
* $sct#1304162005 "Nucleic acid sequencing technique (qualifier value)"

// Die SNOMED-Anforderung "Targeted rapid biochemical microbial detection
// technique" (VITEK) stand hier; in der Datenmodell-Fassung vom 2026-09-10 ist
// sie auf das Blatt "Phenotypic Identification" gewandert und daher jetzt in
// MII_VS_Mikrobio_Allgemeine_Bestimmung_Methode_SNOMED vermerkt.