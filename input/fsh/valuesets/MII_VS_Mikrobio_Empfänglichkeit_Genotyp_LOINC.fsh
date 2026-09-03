ValueSet: MII_VS_Mikrobio_Empfaenglichkeit_Genotyp_LOINC
Id: mii-vs-mikrobio-empfindlichkeit-genotyp-loinc
Title: "MII VS Mikrobio Empfänglichkeit Genotyp [LOINC]"
Description: "Tests-ValueSet für die voraussichtliche Empfindlichkeit: LOINC-Codes für die aus dem Genotyp abgeleitete erwartete Wirksamkeit einer antimikrobiellen Substanz."
* insert PR_CS_VS_Version
* insert Publisher
* ^status = #active
* ^date = "2023-03-02T00:00:00Z"
// TODO (2026-09-03): Dieses ValueSet ist ZU TECHNOLOGIESPEZIFISCH — dieselbe
// Klasse Befund wie bei MII_VS_Mikrobio_Resistenzmechanismen_Methode_SNOMED.
//
// Der Filter unten schränkt auf METHOD_TYP = LP28723-2 (Genotyp-Methode) ein und
// lässt damit ausschließlich genotypische Codes zu. Das Profil ist jedoch
// technologieoffen formuliert:
//   "die aus dem Nachweis von Resistenzmechanismen/Genen/Proteinen abgeleitete
//    erwartete Suszeptibilität oder Resistenz"
// Ein PROTEIN-Nachweis ist phänotypisch, nicht genotypisch: PBP2a per
// Lateral-Flow-Schnelltest begründet dieselbe Erwartung wie ein per PCR
// gefundenes mecA-Gen, ist über diesen Filter aber nicht kodierbar.
//
// Zu klären, bevor der Filter geweitert wird:
//   - Welche METHOD_TYP-Werte neben LP28723-2 aufzunehmen sind (Immunoassay,
//     ggf. methodenneutrale Codes).
//   - Ob der ValueSet-NAME mitwandern muss: "Genotyp" im Namen zementiert die
//     Einengung. Eine Umbenennung ändert allerdings die Canonical und ist damit
//     eine Entscheidung mit Konsumentenwirkung, nicht bloß Kosmetik.
//
// Die Intro-Note wurde am 2026-09-03 bereits auf die technologieoffene Fassung
// gezogen; bis zur Weitung sagt der Text mehr, als die Bindung zulässt.
* include codes from system $loinc
    where CLASS = "LP7755-4" and
    PROPERTY = "LP6870-2" and
    METHOD_TYP = "LP28723-2"
