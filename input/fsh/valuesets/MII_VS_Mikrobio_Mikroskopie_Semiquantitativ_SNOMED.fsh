ValueSet: MII_VS_Mikrobio_Mikroskopie_Semiquantitativ_SNOMED
Id: mii-vs-mikrobio-mikroskopie-semiquantitativ-snomed
Title: "MII VS Mikrobio Mikroskopie Semiquantitativ [SNOMED]"
Description: "Mengen-ValueSet der Mikroskopie: die semiquantitative Stufe, in der ein mikroskopischer Befund gesehen wurde."
* insert PR_CS_VS_Version
* insert Publisher
* ^status = #active
// Quelle ist der reale Ergebniskatalog eines deutschen Labors, abgebildet auf
// seine Auramin- und Kinyoun-Faerbungen und auf das Grampraeparat. Damit deckt
// diese Liste die Wunschliste des Modellblattes "Microscopy" (Zeile 15: "few?,
// moderate?, many?, +?, ++?, +++?, ++++?, 1 of 3, 2 of 3, 3 of 3") mit
// existierenden SNOMED-Codes ab.
//
// Am 2026-09-12 auf die echten STUFEN verengt: 52101004 |Present|,
// 2667000 |Absent|, 260413007 |None| und 27863008 |No organisms seen| sind
// entfallen. Sie sind keine Menge, sondern die Antwort auf die Nachweisfrage,
// und die steht seit derselben Aenderung in value[x] — bei der spezifischen
// Mikroskopie als Detected/Not detected, bei der allgemeinen als Befund. Diese
// Liste ist die Antwortliste der Mengenkomponente beider Profile.
//
// ZWEI ACHSEN, und das ist ein offener Punkt fuer die europaeische Gruppe.
// Nachgemessen am 2026-09-10; es gibt keinen Teilbaum, der die Wunschliste
// liefert, die Liste ist daher aufgezaehlt.

// Praesenzachse — unter 52101004 |Present|, die Plus-Stufen des Katalogs.
* $sct#441614007 "Present one plus out of three plus"
* $sct#441517005 "Present two plus out of three plus"
* $sct#441521003 "Present three plus out of three plus"

// Mengenachse — Grad- und Zahl-Deskriptoren, verteilt auf drei Elternkonzepte
// (106234000 |General adjectival modifier|, 277434004 |Numerical descriptors|,
// 272520006 |Degree findings|). Das Labor benutzt sie fuer das Grampraeparat.
* $sct#57176003 "Few"
* $sct#260354000 "Moderate number"
* $sct#260396001 "Numerous"
* $sct#263865001 "Scanty"
