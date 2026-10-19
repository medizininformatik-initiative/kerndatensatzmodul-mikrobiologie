Profile: MII_PR_Mikrobio_Voraussichtliche_Empfindlichkeit
Parent: MII_PR_Labor_Laboruntersuchung
Id: mii-pr-mikrobio-voraussichtliche-empfindlichkeit
Title: "MII PR Microbiology Predicted Susceptibility"
Description: "Predicted susceptibility describes the expected susceptibility or resistance to antimicrobial substances derived from genotypic resistance detections."
* insert MIKRO_OBSERVATION_COMMON
* ^purpose = "This profile describes predicted susceptibility." 
* code from MII_VS_Mikrobio_Empfaenglichkeit_Genotyp_LOINC (extensible)
* code ^short = "A code with the method 'Genotyping', e.g. 103958-5 'Ofloxacin [Susceptibility] by Genotype'. DELIMITATION from measured susceptibility: this profile does NOT require a breakpoint rule set, because a prediction is based on a genotype and not on breakpoints. MII_PR_Mikrobio_Empfindlichkeit, by contrast, requires it mandatorily — a 'by Genotype' code is therefore out of place there, regardless of the fact that the binding formally permits it."
* value[x] only CodeableConcept
* valueCodeableConcept
* valueCodeableConcept from MII_VS_Mikrobio_Voraussichtliche_Empfindlichkeit (required)
