ValueSet: MII_VS_Mikrobio_Allgemeine_Mikroskopie_Tests_LOINC
Id: mii-vs-mikrobio-allgemeine-mikroskopie-tests-loinc
Title: "MII VS Mikrobio Allgemeine Mikroskopie Tests [LOINC]"
Description: "Tests-ValueSet für die allgemeine Mikroskopie: nominale LOINC-Codes der mikroskopischen Beobachtung, deren Ergebnis die gesehene Morphologie ist. Bevorzugt wird 105059-0; 664-3 ist gleichwertig zulässig, wenn die Färbung im Code stehen soll."
* insert PR_CS_VS_Version
* insert Publisher
* ^status = #active
// Beide Codes tragen SCALE_TYP = Nom und PROPERTY = Prid, ihr Ergebnis ist also
// die beobachtete Morphologie. Genau das trennt sie von
// MII_VS_Mikrobio_Spezifische_Mikroskopie_Tests_LOINC, das auf Ord filtert —
// eine Kollision wie bei 41852-5 zwischen Kultur und Bestimmung entsteht hier
// deshalb nicht.
//
// 105059-0 bleibt die Empfehlung, weil es methodenneutral ist und die Faerbung
// nach Observation.method auslagert, wie das EU-Datenmodell es verlangt
// ("Precoordination should be left out!").
//
// 664-3 aufgenommen aus der Rueckmeldung eines Labors, das seine Gramfaerbung
// auf beide Wege abgebildet hat. Es hat einen praktischen Vorteil: Weil die
// Faerbung im Code steht, bleibt Observation.method frei — und das Element ist
// 0..1, kann also Faerbung und Mikroskopieverfahren nicht beide tragen.
* $loinc#105059-0 "Microscopic observation [Identifier] in Specimen"
* $loinc#664-3 "Microscopic observation [Identifier] in Specimen by Gram stain"
