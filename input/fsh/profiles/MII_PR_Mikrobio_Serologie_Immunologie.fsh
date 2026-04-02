Profile: MII_PR_Mikrobio_Serologie_Immunologie
Parent: MII_PR_Labor_Laboruntersuchung
Id: mii-pr-mikrobio-serologie-immunologie
Title: "MII PR Mikrobio Serologie Immunologie"
Description: "Serologie/Immunologie beschreibt den qualitativen Nachweis erregerspezifischer Antigene oder Antikörper in einer Probe."
* insert MIKRO_OBSERVATION_COMMON
* ^purpose = "Dieses Profil beschreibt qualitative serologische und immunologische Nachweise." 
* code from MII_VS_Mikrobio_Antigen_Antikoerper_Tests_LOINC (extensible)
* value[x] only CodeableConcept
* valueCodeableConcept
* valueCodeableConcept from MII_VS_Mikrobio_Positiv_Negativ_SNOMED (required)
* method from MII_VS_Mikrobio_Antigen_Antikoerper_Methode_SNOMED (extensible)
