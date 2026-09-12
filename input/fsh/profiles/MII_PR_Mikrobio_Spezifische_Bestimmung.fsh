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
// als Ballotfrage 7 im Intro dieses Profils. Die allgemeine Kultur bleibt
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
* valueCodeableConcept ^short = "Nachweis oder Ausschluss des im Code benannten Ziels — auch dann, wenn er kulturell erfolgte: Eine zielgerichtete Kultur berichtet 'Detected' oder 'Not detected' und nicht 'Organism growth', weil die Kultur schon im Untersuchungscode steht (Ballotfrage 7). Ein grenzwertiger Befund wird als 'Weakly positive' oder 'Equivocal result' berichtet — das ist eine Aussage und gehört deshalb hierher. Ein unbestimmbares Ergebnis, bei dem die Untersuchung gar keine verwertbare Aussage liefert (z. B. inhibierte PCR), wird dagegen über dataAbsentReason abgebildet."
* method from MII_VS_Mikrobio_Spezifische_Bestimmung_Methode_SNOMED (extensible)
