// Geordnete Dreier-Skala fuer die Menge eines Nachweises (Ballotkommentierung,
// Issue #61, 2026-11-27): gering, maessig, hoch. "Schwach positiv" ist gering.
// Die Praesenzachse unter 52101004 |Present|, also dieselben Codes, die die
// Mikroskopie als Plus-Werte fuehrt.
//
// Geschachtelt: dieses ValueSet (gebunden an component[menge] der Spezifischen
// Bestimmung) <- MII_VS_Mikrobio_Mikroskopie_Semiquantitativ_SNOMED, das
// zusaetzlich die Zahl-Deskriptoren fuers Grampraeparat fuehrt. So ist die
// Skala einmal definiert. Nicht die Vierer-Skala + bis ++++ der Keimzahl: Die
// fachliche Leitung wuenscht drei Werte.
ValueSet: MII_VS_Mikrobio_Nachweis_Menge_SNOMED
Id: mii-vs-mikrobio-nachweis-menge-snomed
Title: "MII VS Mikrobio Nachweis Menge [SNOMED]"
Description: "Semiquantitativer Wert eines Nachweises als geordnete Skala: gering, mäßig, hoch. Schwach positiv ist gering."
* insert PR_CS_VS_Version
* insert Publisher
* ^status = #active
* $sct#441614007 "Present one plus out of three plus"
* $sct#441517005 "Present two plus out of three plus"
* $sct#441521003 "Present three plus out of three plus"
