ValueSet: MII_VS_Mikrobio_Resistenzmechanismen_Methode_SNOMED
Id: mii-vs-mikrobio-resistenzmechanismen-methode-snomed
Title: "MII VS Mikrobio Resistenzmechanismen Methode [SNOMED]"
Description: "Methoden für den Nachweis von Resistenzmechanismen und Determinanten: molekulare, immunologische und funktionale Verfahren."
* insert PR_CS_VS_Version
* insert Publisher
* ^status = #active
// Die Liste folgt der Definition des Profils, die drei Nachweiswege nennt:
// "Resistenzgene, Resistenzmutationen, Proteine oder funktionale Tests
// (z. B. CIM-Test)". Alle Codes liegen unter 272394005 |Technique|.
//
// Das Code-ValueSet ist davon unabhängig methodenneutral:
// MII_VS_Mikrobio_Resistenzmechanismen_Determinanten_LOINC filtert über
// PROPERTY = PrThr und CLASS = ABXBACT und liess immunologische Codes wie
// 101673-2 "KPC carbapenemase [Presence] in Isolate by Rapid immunoassay" schon
// immer zu. Die Einengung sass allein hier.

// Molekular — Gene und Mutationen.
* $sct#258066000 "Polymerase chain reaction technique (qualifier value)"
* $sct#70601000052104 "Real-time polymerase chain reaction technique (qualifier value)"
* $sct#1303992007 "Digital polymerase chain reaction technique (qualifier value)"
* $sct#1303998006 "Multiplex polymerase chain reaction technique (qualifier value)"
* $sct#1304048000 "Transcription mediated amplification technique (qualifier value)"
* $sct#1304162005 "Nucleic acid sequencing technique (qualifier value)"

// Immunologisch — Proteinnachweis, allen voran der Lateral-Flow-Schnelltest für
// die Carbapenemasen KPC, NDM, VIM, IMP und OXA-48. Die ersten vier Codes führt
// das Modul bereits in den Methodenlisten der Spezifischen Bestimmung, des Titers
// und der Antigen-/Antikörperbestimmung.
* $sct#726449005 "Immunoassay technique (qualifier value)"
* $sct#708099001 "Rapid immunoassay technique (qualifier value)"
* $sct#703444002 "Fluorescent immunoassay (qualifier value)"
* $sct#708104000 "Agglutination technique (qualifier value)"
* $sct#703458000 "Neutralization method (qualifier value)"

// Funktional — der Test weist nicht das Gen oder das Protein nach, sondern
// dessen Wirkung. Der mCIM ist das Verfahren, das EUCAST und CLSI für den
// Carbapenemase-Nachweis empfehlen; der ursprüngliche CIM ist seine ältere
// Variante und hat keinen eigenen Code.
* $sct#782518009 "Modified carbapenem inactivation technique (qualifier value)"