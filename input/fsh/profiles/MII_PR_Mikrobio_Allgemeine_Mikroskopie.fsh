Profile: MII_PR_Mikrobio_Allgemeine_Mikroskopie
Parent: MII_PR_Labor_Laboruntersuchung
Id: mii-pr-mikrobio-mikroskopie
Title: "MII PR Mikrobio Allgemeine Mikroskopie"
Description: "Allgemeine Mikroskopie beschreibt die morphologische Beobachtung von Mikroorganismen in einer Probe mittels mikroskopischer Untersuchung, optional mit Färbetechniken (z. B. Gramfärbung). Das Ergebnis ist eine morphologische Gruppe, keine Spezies."
* insert MIKRO_OBSERVATION_COMMON
* ^purpose = "Dieses Profil beschreibt mikroskopische Beobachtungen der Morphologie." 
* code from MII_VS_Mikrobio_Allgemeine_Mikroskopie_Tests_LOINC (extensible)
* code ^short = "Bevorzugt 105059-0 'Microscopic observation [Identifier] in Specimen', weil es die Faerbung nach Observation.method auslagert. 664-3 '... by Gram stain' ist gleichwertig zulaessig und hat den Vorteil, dass Observation.method frei bleibt — das Element ist 0..1 und kann Faerbung und Mikroskopieverfahren nicht beide tragen."
* value[x] only CodeableConcept
* valueCodeableConcept
* valueCodeableConcept from MII_VS_Mikrobio_Morphologie_Ergebnis_SNOMED (extensible)
* valueCodeableConcept ^short = "Die beobachtete morphologische GRUPPE — grampositive Kokken, gramnegative Staebchen, Hyphen. KEINE Spezies: Eine Speziesidentifizierung gehoert in die Allgemeine Bestimmung, auch wenn sie mikroskopisch gestellt wurde. Ein Teil der Gruppen liegt in SNOMED in der Organismus-Hierarchie, weil es sie dort nur so gibt; das macht die Aussage nicht praeziser."
// Gemessen 2026-09-10: 278289002 |Microscopy techniques| subsumiert 708061008
// |Gram stain| NICHT; dessen Elternkonzept ist 703857004 |Staining technique|.
// Faerbung und Mikroskopie sind Geschwisterzweige, und Observation.method ist im
// Elternprofil 0..1 — ein Profil darf nur verengen, die 1 ist also eine Decke.
// Es passt genau eines von beiden hinein.
//
// Die Faerbung ist die informativere Wahl, weil 105059-0 mit "Microscopic
// observation" bereits sagt, dass mikroskopiert wurde. Das EU-Datenmodell loest
// dieselbe Enge anders und legt die Faerbung nach Specimen.processing; das ist
// hier kein Weg, weil der Parent von MII_PR_Mikrobio_Probe dort
// Lagertemperaturbedingungen verpflichtend macht.
* method from MII_VS_Mikrobio_Morphologie_Methode_SNOMED (extensible)
* method ^short = "Bevorzugt die Faerbetechnik, z. B. 708061008 'Gram stain'; bei nativer Mikroskopie ohne Faerbung das Mikroskopieverfahren. Beides zugleich ist nicht moeglich, weil Observation.method 0..1 ist."

// Die einzige Stelle im Modul, an der interpretation eine Menge NICHT tragen
// soll, aber eine Beurteilung sehr wohl: "unauffaellig" ist kein Befund, sondern
// ein Urteil ueber den Befund.
* interpretation ^short = "Ein zusammenfassendes Urteil ueber das Praeparat — 'unauffaellig' als N 'Normal'. NICHT fuer die Menge des Gesehenen: die steht in component[menge]."

// KOMPONENTE MENGE. Sie loest den haeufigsten Grambefund, der bisher nicht
// abbildbar war: "wenig grampositive Kokken" braucht die Morphologie UND die
// Menge, value[x] traegt aber nur eine von beiden. Bei der Spezifischen
// Mikroskopie stellt sich die Frage nicht, weil der ordinale Code das Objekt
// benennt und die Stufe damit selbst der Wert ist.
//
// Das ist der Weg, den das EU-Datenmodell im Blatt "Microscopy" vorschlaegt
// (Zeile 11 "Component Procedure or has member?", Zeile 13 "new LOINC").
// Zugleich dreht er eine Entscheidung dieses Zyklus zurueck: 2027.0.0-alpha.1
// hat die Komponenten aus genau diesem Profil entfernt und in eigenstaendige
// Observations ueberfuehrt (changes.md, Abschnitt 2027.0.0-alpha.1). Deshalb
// steht als Ballotfrage 5 offen, ob Komponente oder hasMember hier richtig ist
// — die Frage, die das Blatt selbst offenlaesst.
//
// Der Code ist ein Interimscode aus MII_CS_Mikrobio_Mikroskopie_Komponenten und
// wird ersetzt, sobald der angeforderte LOINC-Code existiert.
* component ^slicing.discriminator[0].type = #pattern
* component ^slicing.discriminator[0].path = "code"
* component ^slicing.rules = #open
* component ^slicing.description = "Slicing nach dem Komponenten-Code."
* component contains menge 0..1 MS
* component[menge] ^short = "Semiquantitative Menge des in value[x] benannten Befunds"
* component[menge].code = MII_CS_Mikrobio_Mikroskopie_Komponenten#semiquantitative-menge
* component[menge].value[x] only CodeableConcept
* component[menge].valueCodeableConcept from MII_VS_Mikrobio_Mikroskopie_Semiquantitativ_SNOMED (extensible)
