ValueSet: MII_VS_Mikrobio_Spezifische_Bestimmung_Ergebnis_SNOMED
Id: mii-vs-mikrobio-spezifische-bestimmung-ergebnis-snomed
Title: "MII VS Mikrobio Spezifische Bestimmung Ergebnis [SNOMED]"
Description: "Ergebnis-ValueSet fuer die spezifische Bestimmung: Nachweis, Ausschluss oder nicht eindeutiger Befund für das Ziel, das bereits im Untersuchungscode benannt ist. Schwach positiv wird als Detected mit einem semiquantitativen Wert in component[menge] berichtet; 260408008 Weakly positive ist abgekündigt. Ein unbestimmbares Ergebnis wird nicht ueber value[x], sondern ueber Observation.dataAbsentReason abgebildet."
* insert PR_CS_VS_Version
* insert Publisher
* ^status = #active
* include codes from valueset MII_VS_Mikrobio_Detected_Not_Detected_Equivocal_SNOMED
// "Weakly positive" war auf Vorschlag der europaeischen Arbeitsgruppe als
// Graubereichsbefund aufgenommen. Das traegt nicht: "Schwach positiv" ist ein
// gewerteter Nachweis mit geringer Last (Issue #61, 2026-10-08), und 260408008
// liegt nicht unter Detected, eine Abfrage auf Detected verloere den Befund.
// Seit 2026-11-27 deshalb Detected + component[menge] (siehe Profil). Der Code
// bleibt fuer bestehende Sender zulaessig, ist aber als abgekuendigt markiert
// (valueset-deprecated, R4 Core, Kontext ValueSet.compose.include.concept).
//
// Die Regel "unbestimmbar -> dataAbsentReason" bleibt unberuehrt:
//   unbestimmbar     Die Untersuchung liefert keine verwertbare Aussage (PCR
//                    inhibiert, Material unzureichend).     -> dataAbsentReason
//   nicht eindeutig  Die Aussage lautet "grenzwertig".      -> value[x], Equivocal
* $sct#260408008 "Weakly positive"
* $sct#260408008 ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/valueset-deprecated"
* $sct#260408008 ^extension[0].valueBoolean = true
// "Equivocal result" kommt seit 2026-11-26 ueber das inkludierte ValueSet.
