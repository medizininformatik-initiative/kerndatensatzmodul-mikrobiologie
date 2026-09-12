Profile: MII_PR_Mikrobio_Allgemeine_Mikroskopie
Parent: MII_PR_Labor_Laboruntersuchung
Id: mii-pr-mikrobio-mikroskopie
Title: "MII PR Mikrobio Allgemeine Mikroskopie"
Description: "Allgemeine Mikroskopie beschreibt die morphologische Beobachtung von Mikroorganismen in einer Probe mittels mikroskopischer Untersuchung, optional mit Färbetechniken (z. B. Gramfärbung). Das Ergebnis ist eine morphologische Gruppe, keine Spezies."
* insert MIKRO_OBSERVATION_COMMON
* ^purpose = "Dieses Profil beschreibt mikroskopische Beobachtungen der Morphologie." 
* code from MII_VS_Mikrobio_Allgemeine_Mikroskopie_Tests_LOINC (extensible)
* code ^short = "Bevorzugt 105059-0 'Microscopic observation [Identifier] in Specimen', weil es die Faerbung nicht in den Code zieht. 664-3 '... by Gram stain' ist gleichwertig zulaessig; die Faerbung wird in beiden Faellen zusaetzlich in extension[faerbung] angegeben, damit sie unabhaengig von der Codewahl an einer Stelle auswertbar ist."
* value[x] only CodeableConcept
* valueCodeableConcept
* valueCodeableConcept from MII_VS_Mikrobio_Morphologie_Ergebnis_SNOMED (extensible)
* valueCodeableConcept ^short = "Die beobachtete morphologische GRUPPE — grampositive Kokken, gramnegative Staebchen, Hyphen. KEINE Spezies: Eine Speziesidentifizierung gehoert in die Allgemeine Bestimmung, auch wenn sie mikroskopisch gestellt wurde. Ein Teil der Gruppen liegt in SNOMED in der Organismus-Hierarchie, weil es sie dort nur so gibt; das macht die Aussage nicht praeziser."
// FAERBUNG UND METHODE waren bis 2026-09-12 dasselbe Element. Observation.method
// ist im Elternprofil 0..1, und weil 278289002 |Microscopy techniques| das
// Konzept 708061008 |Gram stain| nicht subsumiert (gemessen 2026-09-10), passte
// genau eines von beiden hinein. Die Faerbung steht deshalb jetzt in
// extension[faerbung], mit den Codes der HL7 EU Lab Semantic Workgroup; method
// traegt nur noch das Mikroskopieverfahren. Siehe MII_EX_Mikrobio_Faerbung fuer
// die Begruendung der Elementwahl.
* extension contains MII_EX_Mikrobio_Faerbung named faerbung 0..1 MS
* extension[faerbung] ^short = "Eingesetzte Faerbung, z. B. Gramfaerbung. Immer angeben, wenn gefaerbt wurde — auch wenn der Untersuchungscode sie schon nennt."
* method from MII_VS_Mikrobio_Morphologie_Methode_SNOMED (extensible)
* method ^short = "Das mikroskopische Verfahren, z. B. 278289002 'Microscopy technique' oder eine Verengung davon. Die Faerbung gehoert NICHT hierher, sondern in extension[faerbung]."

// KOMPONENTE MENGE. Sie loest den haeufigsten Grambefund, der bisher nicht
// abbildbar war: "wenig grampositive Kokken" braucht die Morphologie UND die
// Menge, value[x] traegt aber nur eine von beiden.
//
// Das ist der Weg, den das Modellblatt "Microscopy" vorschlaegt (Zeile 11
// "Component Procedure or has member?", Zeile 13 "new LOINC"), und den die
// Prosa der HL7 EU Lab Semantic Workgroup entscheidet: Komponente fuer die
// Menge eines einzelnen Befunds, hasMember fuer die Gruppierung mehrerer
// Befunde einer Untersuchung. Zugleich dreht er eine Entscheidung dieses
// Zyklus zurueck: 2027.0.0-alpha.1 hat die Komponenten aus genau diesem Profil
// entfernt und in eigenstaendige Observations ueberfuehrt (changes.md,
// Abschnitt 2027.0.0-alpha.1). Deshalb fragt Ballotfrage 5, ob Standorte die
// Komponente verarbeiten koennen.
//
// Definition in MIKRO_MENGE_KOMPONENTE, gemeinsam mit der Spezifischen
// Mikroskopie — dort steht auch die Begruendung fuer Code und Antwortformate.
* insert MIKRO_MENGE_KOMPONENTE
