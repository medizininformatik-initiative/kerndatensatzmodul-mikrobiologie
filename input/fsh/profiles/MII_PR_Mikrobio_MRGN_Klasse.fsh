Profile: MII_PR_Mikrobio_MRGN_Klasse
Parent: MII_PR_Labor_Laboruntersuchung
Id: mii-pr-mikrobio-mrgn-klasse
Title: "MII PR Microbiology MRGN Class"
Description: "MRGN class describes the classification of multidrug-resistant Gram-negative pathogens according to the RKI categorisation."
* insert MIKRO_OBSERVATION_COMMON
* ^purpose = "This profile describes the MRGN class." 
* code = $loinc-no-ver#99780-9
* value[x] only CodeableConcept
* valueCodeableConcept
* valueCodeableConcept from MII_VS_Mikrobio_MRGN_Klasse_LOINC (required)
* valueCodeableConcept ^short = "MRGN classification according to RKI. If the identified isolate was assessed on the basis of the susceptibility results and cannot be assigned to any MRGN class, 'Keine MRGN-Klasse' (no MRGN class) is used; this is to be distinguished from the negative result of a targeted pathogen detection."
// Die MRGN-Einstufung ist eine abgeleitete fachliche Aussage: Sie entsteht durch Bewertung
// mehrerer Empfindlichkeitsbefunde, nicht durch eine ausgeloeste Folgeuntersuchung. Deshalb
// derivedFrom und nicht die triggeredBy-Extension — dieselbe Begruendung wie bei
// MII_PR_Mikrobio_Resistenzkategorie_Status, und deshalb hier auch dieselben Regeln.
//
// Kein 1..-Constraint: Wird die Klasse unmittelbar aus einem bereits eingestuften
// Laborbefund uebernommen, liegen die zugrunde liegenden Empfindlichkeitsbefunde im
// sendenden System ggf. nicht als eigene Observations vor. Die Angabe ist deshalb SHOULD
// und nicht SHALL.
* derivedFrom 0..* MS
* derivedFrom ^short = "Investigations from which the classification was derived: the susceptibility results of the assessed substance groups, where applicable together with the pathogen identification. These investigations SHOULD be stated so that the basis of the classification is traceable. They may be omitted if the class is taken directly from an already classified laboratory report."
* extension[triggeredBy-r5] ^short = "Only for follow-up diagnostics that were actually triggered. The clinical derivation of the MRGN classification is represented not here but via derivedFrom."
