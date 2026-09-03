ValueSet: MII_VS_Mikrobio_Resistenzmechanismen_Methode_SNOMED
Id: mii-vs-mikrobio-resistenzmechanismen-methode-snomed
Title: "MII VS Mikrobio Resistenzmechanismen Methode [SNOMED]"
Description: "Methoden für den Nachweis von Resistenzgenen oder Resistenzmutationen (molekulare Verfahren)."
* insert PR_CS_VS_Version
* insert Publisher
* ^status = #active
// TODO (2026-09-03): Dieses ValueSet ist ZU ENG. Es führt ausschließlich molekulare
// Verfahren, während das Profil ausdrücklich weiter gefasst ist:
//   "Nachweis von Resistenzgenen, Resistenzmutationen, Proteinen oder funktionalen
//    Test (z.B. CIM-Test) in einer Probe oder Isolat"
// In der Praxis fehlen damit zwei Verfahrensklassen:
//   1. IMMUNOLOGISCH — z. B. der Lateral-Flow-Schnelltest, wie er für die
//      Carbapenemasen KPC/NDM/VIM/IMP/OXA-48 eingesetzt wird. Das Modul führt
//      bereits validiert 726449005 (Immunoassay technique), 703444002
//      (Fluorescent immunoassay), 708104000 (Agglutination technique) und
//      703458000 (Neutralization method). Die EU-Terminologie-Arbeitsmappe nennt
//      zusätzlich 708099001 (Rapid immunoassay technique) — hier noch nicht
//      geprüft.
//   2. FUNKTIONELL — z. B. der CIM-Test (Carbapenem Inactivation Method). Ein
//      passender SNOMED-Code ist im Modul nicht vorhanden; die EU-Arbeitsmappe
//      führt "Targeted rapid biochemical microbial detection technique" als bei
//      SNOMED ZU BEANTRAGEN. Vor dem Ergänzen also erst Terminologie klären.
//
// NICHT betroffen ist das Code-ValueSet: MII_VS_Mikrobio_Resistenzmechanismen_-
// Determinanten_LOINC filtert methodenneutral (PROPERTY = PrThr, CLASS = ABXBACT)
// und lässt immunologische Codes wie 101673-2 "KPC carbapenemase [Presence] in
// Isolate by Rapid immunoassay" bereits zu. Die Einengung sitzt allein hier.
//
// Mit der Erweiterung ist auch die Description oben zu korrigieren: "(molekulare
// Verfahren)" wäre dann falsch.
* $sct#258066000 "Polymerase chain reaction technique (qualifier value)"
* $sct#70601000052104 "Real-time polymerase chain reaction technique (qualifier value)"
* $sct#1303992007 "Digital polymerase chain reaction technique (qualifier value)"
* $sct#1303998006 "Multiplex polymerase chain reaction technique (qualifier value)"
* $sct#1304048000 "Transcription mediated amplification technique (qualifier value)"
* $sct#1304162005 "Nucleic acid sequencing technique (qualifier value)"