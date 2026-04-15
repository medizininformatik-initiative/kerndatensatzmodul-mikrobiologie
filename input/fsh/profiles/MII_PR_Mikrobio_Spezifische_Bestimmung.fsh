Profile: MII_PR_Mikrobio_Spezifische_Bestimmung
Parent: MII_PR_Labor_Laboruntersuchung
Id: mii-pr-mikrobio-spezifische-bestimmung
Title: "MII PR Mikrobio Spezifische Bestimmung"
Description: "Spezifische Bestimmung beschreibt den qualitativen Nachweis eines vordefinierten mikrobiellen Ziels in einer Probe, entweder durch kulturbasierte Verfahren (Nachweis durch Wachstum eines Organismus) oder durch direkte molekulare, immunologische oder biochemische Nachweismethoden."
* insert MIKRO_OBSERVATION_COMMON
* code from MII_VS_Mikrobio_Spezifische_Bestimmung_Tests_LOINC (extensible)
* code ^short = "Es werden bevorzugt LOINC-Codes ohne präkoordinierte Specimentype-Angabe verwendet (System = XXX); der Specimentype wird separat über Specimen.type kodiert."
* value[x] only CodeableConcept
* valueCodeableConcept
* valueCodeableConcept from MII_VS_Mikrobio_Spezifische_Bestimmung_Ergebnis_SNOMED (required)
* method from MII_VS_Mikrobio_Spezifische_Bestimmung_Methode_SNOMED (extensible)
