// WARUM QUALITATIVE NACHWEISE ZUSAMMENLIEGEN UND QUANTITATIVE NICHT — beantwortet
// am 2026-09-10. Die Frage kam aus einer Anwenderrueckmeldung aus dem Labor und
// ist berechtigt, denn die Aufteilung sieht auf den ersten Blick inkonsequent aus:
//
//   quantitativ   MII_PR_Mikrobio_Molekulare_Pathogenlast          (molekular)
//                 MII_PR_Mikrobio_Antigen_Antikoerper_Quantitativ  (serologisch)
//   qualitativ    DIESES Profil                     (molekular UND serologisch)
//   kulturell     MII_PR_Mikrobio_Spezifische_Kultur (eigenstaendig)
//
// Die Regel ist jedes Mal dieselbe: Ein Profil folgt der FRAGESTELLUNG und dem
// ERGEBNISRAUM, nicht dem Verfahren. Nur die Zahl der unterscheidbaren
// Ergebnisraeume ist verschieden. Qualitativ gibt es einen — Detected /
// Not detected, gleich ob per PCR oder Immunoassay gefunden. Quantitativ mehrere:
// Kopien je Volumen, eine Konzentration, eine Verduennungsstufe sind verschiedene
// Raeume mit verschiedenen Einheiten. Kulturell einen dritten: Wachstum oder kein
// Wachstum. Das Verfahren steht in Observation.method.
//
// Der Whitepaper-Durchgang vom 2026-09-10 hat diese Regel an vier unabhaengigen
// Stellen bestaetigt:
//   - "Culture and Detection by Culture", Prinzip 1 "Separate Culture from
//     Identification": Kombinierte Codes erzeugen Unsinn wie "culture by means of
//     MALDI-TOF" — der Ergebnisraum, nicht das Verfahren, trennt.
//   - Das Empfindlichkeitskapitel trennt Messwert und Kategorie nach
//     Ergebnistyp, nicht nach Geraet.
//   - Die Serologie wird eigens behandelt, weil ihre Rahmenbedingungen andere
//     sind — nicht weil ihre Verfahren andere sind.
//   - "Recommended Patterns & Conventions": Postkoordination, Verfahren nach
//     Observation.method.
//
// Was die Rueckmeldung anzweifelt, ist damit europaeisch abgestimmt. Die Regel
// steht seit 2026-09-03 auf profilauswahl-und-abgrenzung, jetzt mit den Belegen.
Profile: MII_PR_Mikrobio_Spezifische_Bestimmung
Parent: MII_PR_Labor_Laboruntersuchung
Id: mii-pr-mikrobio-spezifische-bestimmung
Title: "MII PR Mikrobio Spezifische Bestimmung"
Description: "Spezifische Bestimmung beschreibt den qualitativen Nachweis eines vordefinierten mikrobiellen Ziels in einer Probe durch direkte molekulare, immunologische oder biochemische Nachweismethoden sowie durch methodenneutral kodierte Nachweistests. Der kulturbasierte zielgerichtete Nachweis wird über MII_PR_Mikrobio_Spezifische_Kultur abgebildet."
* insert MIKRO_OBSERVATION_COMMON
* ^purpose = "Dieses Profil beschreibt den zielgerichteten, nicht kulturbasierten Nachweis. Es bildet auch das negative Ergebnis eines zielgerichteten Erregernachweises ab, z. B. einen negativen VRE-Nachweis über 105904-7 mit dem Wert 'Not detected'."
* code from MII_VS_Mikrobio_Spezifische_Bestimmung_Tests_LOINC (extensible)
* code ^short = "Es werden bevorzugt LOINC-Codes ohne präkoordinierte Specimentype-Angabe verwendet (System = XXX); der Specimentype wird separat über Specimen.type kodiert. AUSNAHME fuer die serologische Anwendung dieses Profils — qualitativer Antigen- oder Antikoerpernachweis: Dort ist ein praekoordiniertes Specimen zulaessig, weil in der Serologie nur wenige Materialien vorkommen, ueberwiegend Serum."
* value[x] only CodeableConcept
* valueCodeableConcept
* valueCodeableConcept from MII_VS_Mikrobio_Spezifische_Bestimmung_Ergebnis_SNOMED (extensible)
* valueCodeableConcept ^short = "Nachweis oder Ausschluss des im Code benannten Ziels. Ein grenzwertiger Befund wird als 'Weakly positive' oder 'Equivocal result' berichtet — das ist eine Aussage und gehört deshalb hierher. Ein unbestimmbares Ergebnis, bei dem die Untersuchung gar keine verwertbare Aussage liefert (z. B. inhibierte PCR), wird dagegen über dataAbsentReason abgebildet."
* method from MII_VS_Mikrobio_Spezifische_Bestimmung_Methode_SNOMED (extensible)
