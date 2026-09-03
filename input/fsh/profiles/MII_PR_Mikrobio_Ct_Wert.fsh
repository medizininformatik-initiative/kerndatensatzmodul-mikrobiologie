// TODO (2026-09-03): GRUNDSATZFRAGE — soll dieses Profil überhaupt bestehen bleiben?
// Fachlicher Einwand aus der klinischen und regulatorischen Praxis:
//
//   - Ein Ct-Wert dürfte zu VERSORGUNGSZWECKEN nur dann über eine Schnittstelle
//     gehen, wenn der Hersteller den Report dieses Werts für seinen Test auch
//     vorsieht. Ein Test, bei dem das der Fall ist, ist nicht bekannt.
//   - Der Ct-Wert ist eine rein technische Messgröße. Im Labor wird VOR der
//     Schnittstelle daraus abgeleitet:
//       i)  bei quantitativer PCR ein Ergebnis in IU/mL oder Kopien/mL
//           -> MII_PR_Mikrobio_Molekulare_Pathogenlast
//       ii) oder ein qualitatives Ergebnis pos/neg
//           -> MII_PR_Mikrobio_Spezifische_Bestimmung
//     Übertragen wird also üblicherweise das ABGELEITETE Ergebnis, nicht der
//     Zwischenwert.
//   - Ct-Werte sind zwischen Assays für dasselbe Ziel NICHT vergleichbar.
//   - Auch für die Forschung ist er mangels Standardisierung kein guter
//     Parameter.
//
// Zu entscheiden: Profil streichen, oder behalten und im Leitfaden ausdrücklich
// als Ausnahmefall kennzeichnen (nur wo der Hersteller den Wert reportet, immer
// mit derivedFrom auf die abgeleitete Untersuchung, keine assayübergreifende
// Vergleichbarkeit). Ein Streichen entfernt eine veröffentlichte Canonical und
// ist damit keine reine Redaktionsentscheidung.
//
// Bis dahin unverändert. Das bestehende `derivedFrom MS` und die feste Methode
// (Echtzeit-PCR) bleiben die einzigen Sicherungen.
Profile: MII_PR_Mikrobio_Ct_Wert
Parent: MII_PR_Labor_Laboruntersuchung
Id: mii-pr-mikrobio-ct-wert
Title: "MII PR Mikrobio CT Wert"
Description: "CT-Wert beschreibt die Quantifizierung des Zyklusschwellenwerts bei Nukleinsäurenachweisen (z. B. Echtzeit-PCR) in einer Probe."
* insert MIKRO_OBSERVATION_COMMON
* code from MII_VS_Mikrobio_CT_Wert_LOINC (extensible)
* code ^short = "Es werden bevorzugt LOINC-Codes ohne präkoordinierte Specimentype-Angabe verwendet (System = XXX); der Specimentype wird separat über Specimen.type kodiert."
* value[x] only Quantity
* valueQuantity
  * code = #1
* method = $sct#70601000052104 // Cycle Treshold für Nukleinsäurenachweis in Probenmaterial bei Polymerase-Kettenreaktion in Echtzeit
* derivedFrom MS
