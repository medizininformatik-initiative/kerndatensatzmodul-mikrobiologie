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
// DER KOMPONENTENCODE ist 103392008 |Semi-quantitative value|, den die HL7 EU
// Lab Semantic Workgroup dafuer vorschlaegt. Ein eigener Interimscode stand hier
// bis 2026-09-12; ein halbwegs passender SNOMED-Code ist fuer Verarbeitende die
// kleinere Huerde als ein modulspezifisches CodeSystem.
//
// Die Einschraenkung sei benannt, weil sie zurueckgemeldet ist: Gemessen am
// 2026-09-12 liegt 103392008 NICHT unter 363787002 |Observable entity|, sondern
// als Qualifier Value unter 398195001 |Measurement scales|, neben
// 30766002 |Quantitative value| und 117363000 |Ordinal value|. Das Konzept
// benennt also eine Skalenart und keine Frage, und component.code braucht
// eigentlich ein Observable. Es hat keine Nachkommen. Wird der im EU-Modell
// angeforderte LOINC-Code veroeffentlicht, tritt er an diese Stelle.
// Discriminator-Pfad mit $this.-Praefix, wie die MII-Geschwistermodule ihn
// schreiben (Biobank: Observation.component -> pattern/$this.code,
// Specimen.processing -> value/$this.procedure). Semantisch identisch mit "code",
// aber die explizite FHIRPath-Form. Bare "$this" geht hier NICHT: component ist
// ein BackboneElement, und pattern[x] kann keines tragen — gemessen am
// 2026-09-12 tut das auch keines von 36 component-Slicings im Paketcache.
* component ^slicing.discriminator[0].type = #pattern
* component ^slicing.discriminator[0].path = "$this.code"
* component ^slicing.rules = #open
* component ^slicing.description = "Slicing nach dem Komponenten-Code."
* component contains menge 0..1 MS
* component[menge] ^short = "Semiquantitative Menge des in value[x] benannten Befunds"
* component[menge].code = $sct#103392008 "Semi-quantitative value"
* component[menge].value[x] only CodeableConcept
* component[menge].valueCodeableConcept from MII_VS_Mikrobio_Mikroskopie_Semiquantitativ_SNOMED (extensible)
