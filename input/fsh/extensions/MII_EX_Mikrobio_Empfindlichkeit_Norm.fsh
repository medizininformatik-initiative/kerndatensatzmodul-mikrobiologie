Extension: MII_EX_Mikrobio_Empfindlichkeit_Norm
Id: mii-ex-mikrobio-empfindlichkeit-norm
Title: "MII EX Mikrobio Empfindlichkeit Norm"
Description: "Normative susceptibility interpretation metadata (system, version, category)."
* insert PR_CS_VS_Version
* insert Publisher
* ^status = #active
* ^context[0].type = #element
* ^context[0].expression = "Observation.interpretation"
* value[x] only CodeableConcept
* valueCodeableConcept 1..1 MS
* valueCodeableConcept from MII_VS_Mikrobio_Susceptibility (extensible)