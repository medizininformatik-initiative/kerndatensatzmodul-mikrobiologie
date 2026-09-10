// GRUNDSATZFRAGE BEANTWORTET (2026-09-10): Das Profil bleibt. Das Whitepaper
// spezifiziert den Ct-Wert im Kapitel "Molecular Genetic Testing" ausdrücklich
// aus — Observation.code als LOINC "cycle threshold", Methode 70601000052104
// Echtzeit-PCR — und das Kapitel "Relationships between diagnostic steps" zeigt,
// wie er sich einfügt. Der fachliche Einwand unten bleibt als Warnung stehen; er
// ist ein Grund zur Zurückhaltung, aber keiner zum Streichen.
//
// RICHTUNG VON derivedFrom, hier bisher falsch beschrieben: `A.derivedFrom = B`
// heisst "A entsteht aus B". Nicht der Ct-Wert verweist also auf das abgeleitete
// Ergebnis, sondern das ERGEBNIS auf den Ct-Wert. Das Whitepaper zeigt es so:
//
//   Observation: Microorganism detected, valueCodeableConcept = Detected
//     derivedFrom -> Observation: PCR Ct value, valueQuantity = 28.4
//
// `derivedFrom MS` an diesem Profil bleibt trotzdem sinnvoll: Ein Ct-Wert kann
// seinerseits aus einer vorangegangenen Untersuchung stammen. Die Kette
// Nachweis -> Ct-Wert wird aber am NACHWEIS angegeben, nicht hier.
//
// Ein Fehler im Whitepaper an derselben Stelle, der Nachahmung nicht verdient:
// Es nennt "Observation.valueDecimal". Diesen Datentyp gibt es fuer
// Observation.value[x] in R4 nicht — zulaessig sind Quantity, CodeableConcept,
// string, boolean, integer, Range, Ratio, SampledData, time, dateTime, Period.
// Dieses Profil verwendet Quantity mit code = #1, was richtig ist.
//
// FACHLICHER EINWAND aus der klinischen und regulatorischen Praxis, unveraendert:
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
// Konsequenz daraus: Das Profil ist der Ausnahmefall, nicht die Regel — zu
// verwenden nur, wo der Hersteller den Wert reportet, und ohne
// assayuebergreifende Vergleichbarkeit zu unterstellen.
//
// STAND 2026-09-10, nach dem Abgleich mit dem Blatt "Molecular techniques":
// Das Modell kennt den Ct-Wert und hält ihn für im Umfang. Zeile 17 nennt als
// Eigenschaften des Blocks "Quantification Procedure" ausdrücklich "AcNc or
// NcNc or threshold (CT)"; gemessen ist "threshold (CT)" die LOINC-Eigenschaft
// LP188772-0 ThreshNum, über die dieses Modul MII_VS_Mikrobio_CT_Wert_LOINC
// definiert. Wir filtern also genau auf die Achse, die das Blatt nennt.
//
// Was das NICHT entscheidet: Das Blatt gruppiert nach VERFAHREN, nicht nach
// Ergebnisraum. Dass Ct-Wert und Kopienzahl in einem Verfahrensblock stehen,
// heißt nicht, dass sie ein FHIR-Profil teilen — nach der Regel dieses Moduls
// ist ein einheitenloser Zyklusschwellenwert ein anderer Ergebnisraum als eine
// Konzentration in Kopien/mL, so wie Titer und Antigenkonzentration getrennt
// sind. Die Profiltrennung trägt also weiter.
//
// Und der fachliche Einwand oben bleibt davon unberührt: Dass das Modell den
// Wert vorsieht, sagt nichts darüber, ob Hersteller ihn reporten und ob er
// assayübergreifend vergleichbar ist. Die Grundsatzfrage ist offen.
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
* method = $sct-no-ver#70601000052104 // Cycle Treshold für Nukleinsäurenachweis in Probenmaterial bei Polymerase-Kettenreaktion in Echtzeit
* derivedFrom MS
