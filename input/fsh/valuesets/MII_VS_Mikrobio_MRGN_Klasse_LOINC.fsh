ValueSet: MII_VS_Mikrobio_MRGN_Klasse_LOINC
Id: mii-vs-mikrobio-mrgn-klasse-loinc
Title: "MII VS Mikrobio MRGN Klasse [LOINC]"
Description: "Ergebnis-ValueSet für die MRGN-Klassifikation: 2MRGN, 3MRGN und 4MRGN nach RKI-Kategorisierung. Die negative Einstufung steht im modul­eigenen CodeSystem, da die LOINC-AnswerList sie nicht führt."
* insert PR_CS_VS_Version
* insert Publisher
* ^status = #active
* ^date = "2023-03-02T00:00:00Z"
* $loinc#LA33214-0 "2MRGN"
* $loinc#LA33215-7 "3MRGN"
* $loinc#LA33216-5 "4MRGN"
// Negative Klassifikation bei identifiziertem Isolat: bewertet, keiner MRGN-Klasse zuzuordnen.
// Die LOINC-AnswerList LL6195-3 zu 99780-9 enthaelt ausschliesslich 2MRGN/3MRGN/4MRGN,
// daher MII-eigener Code. Das required-Binding bleibt bestehen.
* MII_CS_Mikrobio_MRGN_Ergebnis#keine-mrgn-klasse "Keine MRGN-Klasse"