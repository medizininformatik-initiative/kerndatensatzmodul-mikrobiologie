ValueSet: MII_VS_Mikrobio_Mikroskopie_Semiquantitativ_SNOMED
Id: mii-vs-mikrobio-mikroskopie-semiquantitativ-snomed
Title: "MII VS Mikrobio Mikroskopie Semiquantitativ [SNOMED]"
Description: "Ergebnis-ValueSet für die spezifische Mikroskopie: die semiquantitative Stufe, in der das im Code benannte Objekt gesehen wurde."
* insert PR_CS_VS_Version
* insert Publisher
* ^status = #active
// Quelle ist der reale Ergebniskatalog eines deutschen Labors, abgebildet auf
// seine Auramin- und Kinyoun-Faerbungen und auf das Grampraeparat. Damit deckt
// diese Liste die Wunschliste des EU-Blattes "Microscopy" (Zeile 15: "few?,
// moderate?, many?, +?, ++?, +++?, ++++?, 1 of 3, 2 of 3, 3 of 3") mit
// existierenden SNOMED-Codes ab. Ein neuer LOINC-Code, den Zeile 13 fordert,
// ist dafuer nicht noetig: Weil der Untersuchungscode ordinal ist, IST die
// Stufe der Wert — keine Komponente, kein hasMember.
//
// ZWEI ACHSEN, und das ist ein offener Punkt fuer die europaeische Gruppe.
// Nachgemessen am 2026-09-10; es gibt keinen Teilbaum, der die Wunschliste
// liefert, die Liste ist daher aufgezaehlt.

// Praesenzachse — unter 52101004 |Present|. Die natuerliche Antwort auf einen
// ordinalen [Presence]-Code: vorhanden, und zwar in Stufe N.
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

// Negatives Ergebnis: untersucht, nichts gesehen. 260413007 haengt unter
// 272519000 |Absence findings| und ist damit das Gegenstueck zu 52101004.
// 27863008 ist die mikroskopiespezifische Formulierung desselben Befunds und
// steht deshalb daneben; welcher von beiden zu bevorzugen ist, ist mit der
// Gruppe zu klaeren.
* $sct#260413007 "None"
* $sct#27863008 "No organisms seen (finding)"

// Reine Praesenzcodes ohne Stufe, fuer ordinale Codes, deren Antwortraum nur
// vorhanden/nicht vorhanden ist — im Katalog des Labors 107527-4 "Clue cells
// [Presence] in Vaginal fluid by Gram stain". 52101004 ist zugleich das
// Elternkonzept der drei Plus-Stufen oben.
* $sct#52101004 "Present"
* $sct#2667000 "Absent"
