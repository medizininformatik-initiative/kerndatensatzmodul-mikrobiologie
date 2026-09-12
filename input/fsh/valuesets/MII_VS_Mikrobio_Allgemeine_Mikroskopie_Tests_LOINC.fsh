ValueSet: MII_VS_Mikrobio_Allgemeine_Mikroskopie_Tests_LOINC
Id: mii-vs-mikrobio-allgemeine-mikroskopie-tests-loinc
Title: "MII VS Mikrobio Allgemeine Mikroskopie Tests [LOINC]"
Description: "Tests-ValueSet für die allgemeine Mikroskopie: nominale LOINC-Codes der mikroskopischen Beobachtung, deren Ergebnis die gesehene Morphologie ist. Bevorzugt wird 105059-0, weil es methodenneutral ist; die Codes mit Färbung im Namen (Gram, säurefest, Rhodamin-Auramin) sind gleichwertig zulässig und halten dafür Observation.method frei."
* insert PR_CS_VS_Version
* insert Publisher
* ^status = #active
// Alle Codes hier tragen PROPERTY = Prid und SCALE_TYP = Nom, ihr Ergebnis ist
// also das Gesehene. Was sie von MII_VS_Mikrobio_Spezifische_Mikroskopie_Tests_LOINC
// trennt, ist aber NICHT die Skala, sondern WAS DER CODE FRAGT: Hier nennt der
// Code allenfalls die Faerbung und fragt offen, was zu sehen ist; dort nennt er
// das gesuchte Objekt, und die Antwort ist die Stufe. Die Skala folgt dieser
// Unterscheidung meistens, aber nicht zuverlaessig — LOINC fuehrt fuer dieselbe
// Faerbung teils beide Formen und fuer Rhodamin-Auramin nur die nominale
// (gemessen 2026-09-11). Eine Kollision wie bei 41852-5 zwischen Kultur und
// Bestimmung entsteht trotzdem nicht, weil kein Code in beiden Listen steht.
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
// Am 2026-09-11 ergaenzt, auf Belegung durch ein zweites Labor — dieselbe
// Konstruktion wie 664-3, nur mit anderer Faerbung im METHOD_TYP. Ohne sie hatte
// eine Rhodamin-Auramin-Faerbung in diesem Modul UEBERHAUPT keinen gueltigen
// Testcode: Das spezifische ValueSet filtert auf PrThr + Ord, und fuer
// Rhodamin-Auramin existiert in LOINC keine ordinale Form.
* $loinc#11545-1 "Microscopic observation [Identifier] in Specimen by Acid fast stain"
* $loinc#676-7 "Microscopic observation [Identifier] in Specimen by Rhodamine-auramine fluorochrome stain"
