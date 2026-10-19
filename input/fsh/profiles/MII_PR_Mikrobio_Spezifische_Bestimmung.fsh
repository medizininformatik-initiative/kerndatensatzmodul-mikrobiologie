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
Title: "MII PR Microbiology Specific Determination"
Description: "Specific determination describes the qualitative detection of a predefined microbial target in a specimen by direct molecular, immunological or biochemical detection methods and by method-neutrally coded detection tests. Culture-based targeted detection also belongs here; the procedure is stated in the investigation code and in Observation.method."
* insert MIKRO_OBSERVATION_COMMON
* ^purpose = "This profile describes targeted detection, regardless of whether it is performed molecularly, immunologically, biochemically or by culture. It also represents the negative result of a targeted pathogen detection, e.g. a negative VRE detection via 105904-7 with the value 'Not detected'."
* code from MII_VS_Mikrobio_Spezifische_Bestimmung_Tests_LOINC (extensible)
* code ^short = "LOINC codes without a pre-coordinated specimen type are preferred (System = XXX); the specimen type is coded separately via Specimen.type. EXCEPTION for the serological use of this profile — qualitative antigen or antibody detection: there a pre-coordinated specimen is permitted, because only a few materials occur in serology, predominantly serum."
* value[x] only CodeableConcept
* valueCodeableConcept
* valueCodeableConcept from MII_VS_Mikrobio_Spezifische_Bestimmung_Ergebnis_SNOMED (extensible)
* valueCodeableConcept ^short = "Detection or exclusion of the target named in the code — even when it was performed by culture: a targeted culture reports 'Detected' or 'Not detected' and not 'Organism growth', because the culture is already in the investigation code (ballot question 6). A borderline finding is reported as 'Weakly positive' or 'Equivocal result' — that is a statement and therefore belongs here. An indeterminable result, where the investigation yields no usable statement at all (e.g. inhibited PCR), is represented via dataAbsentReason instead."
* method from MII_VS_Mikrobio_Spezifische_Bestimmung_Methode_SNOMED (extensible)
