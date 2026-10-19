ValueSet: MII_VS_Mikrobio_Allgemeine_Bestimmung_Ergebnis_SNOMED
Id: mii-vs-mikrobio-allgemeine-bestimmung-ergebnis-snomed
Title: "MII VS Microbiology General Determination Result [SNOMED]"
Description: "Result ValueSet for general determination: the identified microorganism, or the negative result if no pathogen was identified."
* insert PR_CS_VS_Version
* insert Publisher
* ^status = #active
* include codes from valueset MII_VS_Mikrobio_Organismen_SNOMEDCT
// Negatives Ergebnis der allgemeinen Identifikation: Es wurde untersucht, aber kein
// Erreger identifiziert. Abzugrenzen von 264868006 (No growth), das an das Wachstum in
// der Kultur gebunden ist und deshalb bei MII_PR_Mikrobio_Allgemeine_Kultur steht, sowie
// von 264887000 (Not isolated), das ebenfalls kulturbezogen formuliert ist. Die allgemeine
// Bestimmung ist nicht kulturbasiert, daher der methodenneutrale Code.
// Ein unbestimmbares Ergebnis wird nicht hierueber, sondern ueber dataAbsentReason abgebildet.
* $sct#260415000 "Not detected (qualifier value)"
