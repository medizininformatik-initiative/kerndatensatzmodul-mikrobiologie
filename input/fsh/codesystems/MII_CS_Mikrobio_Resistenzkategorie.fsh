CodeSystem: MII_CS_Mikrobio_Resistenzkategorie
Id: mii-cs-mikrobio-resistenzkategorie
Title: "MII CS Mikrobio Resistenzkategorie"
Description: "Untersuchungscodes (Observation.code) für die Bewertung eines nachgewiesenen Erregers hinsichtlich einer definierten Resistenzkategorie. Jeder Code benennt die bewertete Kategorie; das Ergebnis der Bewertung steht in Observation.value."
* insert PR_CS_VS_Version
* insert Publisher
* ^status = #active
// Terminologierecherche (tx.fhir.org, SNOMED CT International Edition 20250201, LOINC 2.82):
//
// SNOMED CT, Hierarchie "Observable entity" (363787002): Eine Volltextsuche ueber die
// gesamte Hierarchie liefert zu "resistant" genau ein Konzept, 1285113001 "Type of
// antimicrobial resistant organism". Es fragt nach dem TYP des resistenten Organismus und
// ist fuer eine kategorienbezogene Positive/Negative-Aussage ungeeignet. Zu "methicillin",
// "vancomycin" und "linezolid" existieren dort keine Konzepte.
//
// LOINC: Es existieren ausschliesslich Nachweistests (z. B. 35492-8 MRSA DNA [Presence],
// 13317-3 MRSA [Presence] by Organism specific culture, 13316-5 VRE [Presence]) sowie
// Panels (100913-3, 86622-8). Kein Code drueckt den Bewertungsstatus eines vorliegenden
// Isolats aus.
//
// Geprueft und verworfen - SNOMED-Konzepte, die die Antwort bereits im Code tragen und
// daher nicht als Observation.code taugen, weil dort die Fragestellung stehen muss:
//   312210001 "Methicillin resistant Staphylococcus aureus detected"
//   440380006 "Methicillin resistant Staphylococcus aureus not detected by screening"
//   432415000 "Carrier of methicillin resistant Staphylococcus aureus"
//   712672003 "No Vancomycin-resistant Enterococcus (VRE) isolated"
//
// Ebenfalls verworfen - Organism-Konzepte benennen den Erreger, nicht die Testfrage:
//   115329001 "Methicillin resistant Staphylococcus aureus"
//   113727004 "Vancomycin resistant Enterococcus"
//   838510005 "Linezolid resistant Enterococcus"
//   838511009 "Linezolid and vancomycin resistant Enterococcus"
//
// Ergebnis: Fuer alle vier Kategorien sind MII-eigene Codes erforderlich.
* #mrsa-status "MRSA-Status" "Erfüllt der nachgewiesene Erreger die Kriterien der Kategorie MRSA (methicillinresistenter Staphylococcus aureus)? Bewertungsgrundlage: Identifikation als Staphylococcus aureus und Nachweis der Methicillin-/Oxacillinresistenz, phänotypisch oder über mecA/mecC."
* #vre-status "VRE-Status" "Erfüllt der nachgewiesene Erreger die Kriterien der Kategorie VRE (vancomycinresistenter Enterococcus)? Bewertungsgrundlage: Identifikation als Enterococcus und Nachweis der Vancomycinresistenz, phänotypisch oder über vanA/vanB."
* #lre-status "LRE-Status" "Erfüllt der nachgewiesene Erreger die Kriterien der Kategorie LRE (linezolidresistenter Enterococcus)? Bewertungsgrundlage: Identifikation als Enterococcus und Nachweis der Linezolidresistenz."
* #lvre-status "LVRE-Status" "Erfüllt der nachgewiesene Erreger die Kriterien der Kategorie LVRE (linezolid- und vancomycinresistenter Enterococcus)? Bewertungsgrundlage: Identifikation als Enterococcus und Nachweis sowohl der Linezolid- als auch der Vancomycinresistenz."
