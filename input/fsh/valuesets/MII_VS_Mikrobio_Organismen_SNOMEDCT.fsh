ValueSet: MII_VS_Mikrobio_Organismen_SNOMEDCT
Id: mii-vs-mikrobio-organismen-snomedct
Title: "MII VS Mikrobio Organismen [SNOMED CT]"
Description: "Organismen-ValueSet: die SNOMED-CT-Hierarchien, aus denen ein identifizierter Erreger stammen kann. Wird nicht direkt gebunden, sondern in die Ergebnis-ValueSets der Bestimmung eingebunden."
* insert PR_CS_VS_Version
* insert Publisher
* ^status = #active
* ^date = "2023-03-02T00:00:00Z"
* include codes from system SNOMED_CT where concept is-a #409822003
* include codes from system SNOMED_CT where concept is-a #414561005
* include codes from system SNOMED_CT where concept is-a #417396000
* include codes from system SNOMED_CT where concept is-a #243565002
* include codes from system SNOMED_CT where concept is-a #84676004
* include codes from system SNOMED_CT where concept is-a #49872002