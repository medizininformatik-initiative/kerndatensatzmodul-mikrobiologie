CodeSystem: MII_CS_Mikrobio_MRGN_Ergebnis
Id: mii-cs-mikrobio-mrgn-ergebnis
Title: "MII CS Microbiology MRGN Result"
Description: "CodeSystem for results of the MRGN classification that cannot be represented with LOINC. The LOINC answer list LL6195-3 for 99780-9 contains only 2MRGN, 3MRGN and 4MRGN and therefore no negative value."
* insert PR_CS_VS_Version
* insert Publisher
* ^status = #active
* ^caseSensitive = true
* #keine-mrgn-klasse "Keine MRGN-Klasse" "The identified Gram-negative isolate was assessed on the basis of the available susceptibility results and cannot be assigned to any MRGN class (2MRGN, 3MRGN, 4MRGN). To be distinguished from the negative result of a targeted pathogen detection, which is represented by MII_PR_Mikrobio_Spezifische_Bestimmung or MII_PR_Mikrobio_Spezifische_Kultur."
