Profile: MII_PR_Mikrobio_Allgemeine_Kultur
Parent: MII_PR_Labor_Laboruntersuchung
Id: mii-pr-mikrobio-allgemeine-kultur
Title: "MII PR Mikrobio Allgemeine Kultur"
Description: "Allgemeine Kultur beschreibt das Ergebnis einer nicht zielgerichteten mikrobiologischen Kultur, die prüft, ob in der Probe irgendein Mikroorganismus wächst, ohne die Analyse auf einen vordefinierten Erreger zu beschränken."
* insert MIKRO_OBSERVATION_COMMON
* ^purpose = "Dieses Profil beschreibt die allgemeine Kulturdiagnostik ohne vordefiniertes Ziel." 
* code = $loinc#11475-1 // Microorganism identified in Specimen by Culture
* value[x] only CodeableConcept
* valueCodeableConcept
* valueCodeableConcept from MII_VS_Mikrobio_Allgemeine_Kultur_Ergebnis_SNOMED (required)
* method from MII_VS_Mikrobio_Allgemeine_Kultur_Methode_SNOMED (extensible)