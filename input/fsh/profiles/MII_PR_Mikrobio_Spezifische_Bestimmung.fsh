// TODO (2026-09-03) — MIGRATION/Gate B, aus Anwenderrückmeldung Labor:
// ASYMMETRIE zwischen qualitativen und quantitativen Ergebnissen prüfen.
//
// Bei QUANTITATIVEN Ergebnissen trennt das Modell nach Verfahren:
//   MII_PR_Mikrobio_Molekulare_Pathogenlast (molekular)
//   MII_PR_Mikrobio_Antigen_Antikoerper_Quantitativ (serologisch)
// Bei QUALITATIVEN Ergebnissen liegen molekulare und serologische Nachweise
// dagegen zusammen in DIESEM Profil. Die Spezifische Kultur ist wiederum
// eigenständig. Für Anwender im Labor wirkt das inkonsequent.
//
// Die Begründung, die das Modell trägt: ein Profil folgt der Fragestellung und
// dem ERGEBNISTYP, nicht dem Verfahren. Qualitativ gibt es einen Ergebnisraum
// (Detected/Not detected), quantitativ mehrere (Kopien/mL, Konzentration,
// Verdünnungsstufe), kulturell einen dritten (Wachstum/kein Wachstum). Das
// Verfahren steht in Observation.method.
// Diese Regel ist seit 2026-09-03 auf profilauswahl-und-abgrenzung dokumentiert.
//
// OFFEN bleibt trotzdem die fachliche Bestätigung: Trägt die Regel auch aus
// Sicht der Laborpraxis, oder soll der qualitative Fall wie der quantitative
// nach Verfahren getrennt werden? Eine Trennung wäre eine Modelländerung mit
// neuen Canonicals, keine Redaktion.
//
// Aus derselben Rückmeldung, separat zu entscheiden: den TITLE der Allgemeinen
// Bestimmung um "Identifizierung" ergänzen — "Bestimmung" ist im kulturellen
// Kontext missverständlich, wo es faktisch die MALDI-TOF-Speziesidentifizierung
// ist. Ein Title ändert weder Id noch Canonical.
Profile: MII_PR_Mikrobio_Spezifische_Bestimmung
Parent: MII_PR_Labor_Laboruntersuchung
Id: mii-pr-mikrobio-spezifische-bestimmung
Title: "MII PR Mikrobio Spezifische Bestimmung"
Description: "Spezifische Bestimmung beschreibt den qualitativen Nachweis eines vordefinierten mikrobiellen Ziels in einer Probe durch direkte molekulare, immunologische oder biochemische Nachweismethoden sowie durch methodenneutral kodierte Nachweistests. Der kulturbasierte zielgerichtete Nachweis wird über MII_PR_Mikrobio_Spezifische_Kultur abgebildet."
* insert MIKRO_OBSERVATION_COMMON
* ^purpose = "Dieses Profil beschreibt den zielgerichteten, nicht kulturbasierten Nachweis. Es bildet auch das negative Ergebnis eines zielgerichteten Erregernachweises ab, z. B. einen negativen VRE-Nachweis über 105904-7 mit dem Wert 'Not detected'."
* code from MII_VS_Mikrobio_Spezifische_Bestimmung_Tests_LOINC (extensible)
* code ^short = "Es werden bevorzugt LOINC-Codes ohne präkoordinierte Specimentype-Angabe verwendet (System = XXX); der Specimentype wird separat über Specimen.type kodiert."
* value[x] only CodeableConcept
* valueCodeableConcept
* valueCodeableConcept from MII_VS_Mikrobio_Spezifische_Bestimmung_Ergebnis_SNOMED (extensible)
* valueCodeableConcept ^short = "Nachweis oder Ausschluss des im Code benannten Ziels. Ein grenzwertiger Befund wird als 'Weakly positive' oder 'Equivocal result' berichtet — das ist eine Aussage und gehört deshalb hierher. Ein unbestimmbares Ergebnis, bei dem die Untersuchung gar keine verwertbare Aussage liefert (z. B. inhibierte PCR), wird dagegen über dataAbsentReason abgebildet."
* method from MII_VS_Mikrobio_Spezifische_Bestimmung_Methode_SNOMED (extensible)
