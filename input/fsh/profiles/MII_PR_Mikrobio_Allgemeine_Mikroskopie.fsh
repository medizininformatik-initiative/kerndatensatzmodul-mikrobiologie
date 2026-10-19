Profile: MII_PR_Mikrobio_Allgemeine_Mikroskopie
Parent: MII_PR_Labor_Laboruntersuchung
Id: mii-pr-mikrobio-mikroskopie
Title: "MII PR Microbiology General Microscopy"
Description: "General microscopy describes the morphological observation of microorganisms in a specimen by microscopic examination, optionally with staining techniques (e.g. Gram stain). The result is a morphological group, not a species."
* insert MIKRO_OBSERVATION_COMMON
* ^purpose = "This profile describes microscopic observations of morphology." 
* code from MII_VS_Mikrobio_Allgemeine_Mikroskopie_Tests_LOINC (extensible)
* code ^short = "Preferably 105059-0 'Microscopic observation [Identifier] in Specimen', because it does not pull the stain into the code. 664-3 '... by Gram stain' is equally permitted; in both cases the stain is additionally stated in extension[faerbung], so that it can be evaluated in one place independently of the code chosen."
* value[x] only CodeableConcept
* valueCodeableConcept
* valueCodeableConcept from MII_VS_Mikrobio_Morphologie_Ergebnis_SNOMED (extensible)
* valueCodeableConcept ^short = "The morphological GROUP observed — Gram-positive cocci, Gram-negative rods, hyphae. NO species: a species identification belongs in General determination, even if it was made microscopically. Some of the groups sit in the organism hierarchy in SNOMED because that is the only place they exist there; this does not make the statement more precise."
// FAERBUNG UND METHODE waren bis 2026-09-12 dasselbe Element. Observation.method
// ist im Elternprofil 0..1, und weil 278289002 |Microscopy techniques| das
// Konzept 708061008 |Gram stain| nicht subsumiert (gemessen 2026-09-10), passte
// genau eines von beiden hinein. Die Faerbung steht deshalb jetzt in
// extension[faerbung], mit den Codes der HL7 EU Lab Semantic Workgroup; method
// traegt nur noch das Mikroskopieverfahren. Siehe MII_EX_Mikrobio_Faerbung fuer
// die Begruendung der Elementwahl.
* extension contains MII_EX_Mikrobio_Faerbung named faerbung 0..1 MS
* extension[faerbung] ^short = "Staining technique used, e.g. Gram stain. Always state it when a stain was applied — even when the investigation code already names it."
* method from MII_VS_Mikrobio_Morphologie_Methode_SNOMED (extensible)
* method ^short = "The microscopic procedure, e.g. 278289002 'Microscopy technique' or a narrowing of it. The stain does NOT belong here but in extension[faerbung]."

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
// Abschnitt 2027.0.0-alpha.1). Deshalb fragt Ballotfrage 4, ob Standorte die
// Komponente verarbeiten koennen.
//
// Definition in MIKRO_MENGE_KOMPONENTE, gemeinsam mit der Spezifischen
// Mikroskopie — dort steht auch die Begruendung fuer Code und Antwortformate.
* insert MIKRO_MENGE_KOMPONENTE
