// TODO (2026-09-10): BEBRUeTUNGSDAUER UND -TEMPERATUR — betrifft die kulturell
// durchgefuehrten Nachweise dieses Profils gleichermassen. Hypothese und
// Begruendung stehen bei MII_PR_Mikrobio_Allgemeine_Kultur.

// WARUM DER ZIELGERICHTETE NACHWEIS IN EINEM PROFIL LIEGT, unabhaengig vom
// Verfahren. Die Regel des Moduls ist jedes Mal dieselbe: Ein Profil folgt der
// FRAGESTELLUNG und dem ERGEBNISRAUM, nicht dem Verfahren.
//
//   quantitativ   MII_PR_Mikrobio_Molekulare_Pathogenlast          (molekular)
//                 MII_PR_Mikrobio_Antigen_Antikoerper_Quantitativ  (serologisch)
//   qualitativ    DIESES Profil       (molekular, serologisch UND kulturell)
//
// Quantitativ gibt es mehrere unterscheidbare Ergebnisraeume — Kopien je
// Volumen, eine Konzentration, eine Verduennungsstufe sind verschiedene Raeume
// mit verschiedenen Einheiten. Qualitativ gibt es einen: Detected /
// Not detected, gleich ob per PCR, Immunoassay oder Kultur gefunden.
//
// GEAENDERT AM 2026-09-11. Bis dahin lag der kulturell durchgefuehrte
// zielgerichtete Nachweis in einem eigenen Profil, mit Wachstum als drittem
// Ergebnisraum. Zwei Gruende dagegen:
//
//   1. Das Verfahren steht schon im Untersuchungscode. Jeder der ~68 Codes mit
//      METHOD_TYP "Organism specific culture" nennt die Kultur selbst; sie im
//      Wert als "Organism growth" zu wiederholen, doppelt die Aussage des Codes
//      und widerspricht der Postkoordination, die dieses Modul durchgaengig
//      anwendet.
//   2. Die Standorte implementieren den ungetrennten Stand. Die Trennung war neu
//      in 2027.0.0 und in keinem Release erschienen; sie haette Nacharbeit
//      erzeugt, ohne eine Aussage zu gewinnen.
//
// Die HL7 EU Lab Semantic Workgroup fuehrt die zielgerichtete Kultur getrennt
// und bindet dort Wachstum. Diese Abweichung ist NICHT verschwiegen: Sie steht
// als Ballotfrage 6 im Intro dieses Profils. Die allgemeine Kultur bleibt
// unberuehrt — dort IST Wachstum die Antwort auf die Frage "waechst etwas?".
Profile: MII_PR_Mikrobio_Spezifische_Bestimmung
Parent: MII_PR_Labor_Laboruntersuchung
Id: mii-pr-mikrobio-spezifische-bestimmung
Title: "MII PR Mikrobio Spezifische Bestimmung"
Description: "Spezifische Bestimmung beschreibt den qualitativen Nachweis eines vordefinierten mikrobiellen Ziels in einer Probe durch direkte molekulare, immunologische oder biochemische Nachweismethoden sowie durch methodenneutral kodierte Nachweistests. Der kulturbasierte zielgerichtete Nachweis liegt ebenfalls hier; das Verfahren steht im Untersuchungscode und in Observation.method."
* insert MIKRO_OBSERVATION_COMMON
* ^purpose = "Dieses Profil beschreibt den zielgerichteten Nachweis, unabhaengig davon, ob er molekular, immunologisch, biochemisch oder kulturell erfolgt. Es bildet auch das negative Ergebnis eines zielgerichteten Erregernachweises ab, z. B. einen negativen VRE-Nachweis über 105904-7 mit dem Wert 'Not detected'."
* code from MII_VS_Mikrobio_Spezifische_Bestimmung_Tests_LOINC (extensible)
* code ^short = "Es werden bevorzugt LOINC-Codes ohne präkoordinierte Specimentype-Angabe verwendet (System = XXX); der Specimentype wird separat über Specimen.type kodiert. AUSNAHME fuer die serologische Anwendung dieses Profils — qualitativer Antigen- oder Antikoerpernachweis: Dort ist ein praekoordiniertes Specimen zulaessig, weil in der Serologie nur wenige Materialien vorkommen, ueberwiegend Serum."
* value[x] only CodeableConcept
* valueCodeableConcept
* valueCodeableConcept from MII_VS_Mikrobio_Spezifische_Bestimmung_Ergebnis_SNOMED (extensible)
* valueCodeableConcept ^short = "Nachweis oder Ausschluss des im Code benannten Ziels — auch dann, wenn er kulturell erfolgte: Eine zielgerichtete Kultur berichtet 'Detected' oder 'Not detected' und nicht 'Organism growth', weil die Kultur schon im Untersuchungscode steht (Ballotfrage 6). 'Schwach positiv' ist ein Nachweis mit geringer Menge: Wert 'Detected', die Menge in component[menge]; 'Weakly positive' ist abgekündigt. Ein nicht eindeutiger Befund wird als 'Equivocal result' berichtet. Ein unbestimmbares Ergebnis, bei dem die Untersuchung gar keine verwertbare Aussage liefert (z. B. inhibierte PCR), wird dagegen über dataAbsentReason abgebildet."
* method from MII_VS_Mikrobio_Spezifische_Bestimmung_Methode_SNOMED (extensible)
// MENGE (Ballotkommentierung, Issue #61, 2026-11-26/27): "Schwach positiv" ist
// ein gewerteter Nachweis mit geringer Last ohne echte Quantifizierung, kein
// Graubereich und keine Bewertung. Deshalb Detected im Wert und die Menge in
// einer Komponente, wie bei der Spezifischen Mikroskopie; nicht interpretation,
// die eine Bewertung traegt. Damit ist der Wert bei jedem Nachweis Detected, und
// eine Abfrage auf Detected verliert den schwachen Befund nicht mehr.
//
// Gleicher Komponentencode wie MIKRO_MENGE_KOMPONENTE, aber kein insert: Die
// Zaehlbegriffe der Mikroskopie (Few, Many) und die Zaehlung je Gesichtsfeld
// passen hier nicht, und eine echte Quantifizierung ist eine Molekulare
// Pathogenlast. Deshalb nur CodeableConcept und die geordnete Dreier-Skala
// gering/maessig/hoch, die die fachliche Leitung am 2026-11-27 festgelegt hat
// (MII_VS_Mikrobio_Nachweis_Menge_SNOMED, auch Teil des Mikroskopie-ValueSets).
// Kein Display und keine Version im Pattern, siehe aliases.fsh.
* component ^slicing.discriminator[0].type = #pattern
* component ^slicing.discriminator[0].path = "$this.code"
* component ^slicing.rules = #open
* component ^slicing.description = "Slicing nach dem Komponenten-Code."
* component contains menge 0..1 MS
* component[menge] ^short = "Semiquantitativer Wert des Nachweises: gering, mäßig oder hoch; schwach positiv ist 441614007."
* component[menge] ^definition = "Wie viel des Ziels nachgewiesen wurde, als semiquantitativer Wert, wenn nicht quantifiziert wurde. Der Wert der Observation ist dann Detected."
* component[menge].code = $sct-no-ver#103392008
* component[menge].value[x] only CodeableConcept
* component[menge].valueCodeableConcept from MII_VS_Mikrobio_Nachweis_Menge_SNOMED (extensible)
