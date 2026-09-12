Extension: MII_EX_Mikrobio_Empfindlichkeit_Norm
Id: mii-ex-mikrobio-empfindlichkeit-norm
Title: "MII EX Mikrobio Empfindlichkeit Norm"
Description: "Normative susceptibility interpretation metadata (system, version, category)."
* insert PR_CS_VS_Version
* insert Publisher
* ^status = #active
* ^context[0].type = #element
* ^context[0].expression = "Observation.interpretation"
// Am 2026-09-12 ergaenzt, auf Rueckmeldung aus dem Labor: Wer die Kategorie in
// Observation.value fuehrt, konnte die Norm dort nicht angeben und musste die
// Kategorie zusaetzlich in interpretation doppeln, nur damit sie einen Platz hat.
// Ein zweiter Kontext loest das. Die Erweiterung ist ADDITIV — bestehende
// Instanzen mit der Norm an interpretation bleiben gueltig.
* ^context[1].type = #element
* ^context[1].expression = "Observation.value[x]"
* value[x] only CodeableConcept
* valueCodeableConcept 1..1 MS
* valueCodeableConcept from MII_VS_Mikrobio_Susceptibility_NORM (required)