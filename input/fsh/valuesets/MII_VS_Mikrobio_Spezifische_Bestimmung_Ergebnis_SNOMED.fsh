ValueSet: MII_VS_Mikrobio_Spezifische_Bestimmung_Ergebnis_SNOMED
Id: mii-vs-mikrobio-spezifische-bestimmung-ergebnis-snomed
Title: "MII VS Mikrobio Spezifische Bestimmung Ergebnis [SNOMED]"
Description: "Ergebnis-ValueSet fuer die spezifische Bestimmung: Nachweis oder Ausschluss des Ziels, das bereits im Untersuchungscode benannt ist, einschliesslich der Graubereichsbefunde schwach positiv und nicht eindeutig. Ein unbestimmbares Ergebnis wird nicht ueber value[x], sondern ueber Observation.dataAbsentReason abgebildet."
* insert PR_CS_VS_Version
* insert Publisher
* ^status = #active
* include codes from valueset MII_VS_Mikrobio_Detected_Not_Detected_SNOMED
// Graubereich zwischen Nachweis und Ausschluss, ergänzt auf Vorschlag der
// europäischen Arbeitsgruppe. Ein Code für "borderline" liess sich in SNOMED
// nicht finden; "Equivocal result" deckt ihn ab.
//
// Das lässt die Regel "unbestimmbar -> dataAbsentReason" UNBERÜHRT; die beiden
// Fälle sind verschieden:
//   unbestimmbar  Die Untersuchung liefert keine verwertbare Aussage — PCR
//                 inhibiert, Material unzureichend, nicht durchgeführt. Es gibt
//                 kein Ergebnis.                        -> dataAbsentReason
//   Graubereich   Die Untersuchung liefert sehr wohl eine Aussage, und diese
//                 Aussage lautet "grenzwertig" bzw. "schwach positiv". Das
//                 Labor berichtet sie, üblicherweise mit der Bitte um eine
//                 Folgeprobe.                           -> value[x]
* $sct#260408008 "Weakly positive"
* $sct#280414007 "Equivocal result"
