// Ergebnis-ValueSet fuer Virulenzfaktor und Resistenzmechanismen/Determinanten
// (Ballotkommentierung, Issue #61, 2026-11-26). Neben Detected und Not detected
// gibt es Befunde, die keines von beiden sind; dafuer "Equivocal result", den Code,
// den dieses Modul auch sonst fuer einen grenzwertigen Befund verwendet.
// "Inconclusive" bleibt draussen: Ein Ergebnis ohne verwertbare Aussage laeuft im
// ganzen Modul ueber dataAbsentReason.
//
// Geschachtelt: MII_VS_Mikrobio_Detected_Not_Detected_SNOMED (auch von der
// Spezifischen Mikroskopie gebunden) <- dieses ValueSet <- das Ergebnis-ValueSet
// der Spezifischen Bestimmung, das zusaetzlich das abgekuendigte "Weakly
// positive" fuehrt.
ValueSet: MII_VS_Mikrobio_Detected_Not_Detected_Equivocal_SNOMED
Id: mii-vs-mikrobio-detected-not-detected-equivocal-snomed
Title: "MII VS Mikrobio Detected Not Detected Equivocal [SNOMED]"
Description: "Ergebnis-ValueSet für qualitative Nachweise von Virulenzfaktoren und Resistenzmechanismen/Determinanten: nachgewiesen, nicht nachgewiesen oder nicht eindeutig. Ein unbestimmbares Ergebnis wird über Observation.dataAbsentReason abgebildet."
* insert PR_CS_VS_Version
* insert Publisher
* ^status = #active
* include codes from valueset MII_VS_Mikrobio_Detected_Not_Detected_SNOMED
* $sct#280414007 "Equivocal result"
