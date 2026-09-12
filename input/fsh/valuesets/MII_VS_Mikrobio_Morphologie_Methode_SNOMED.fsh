// Am 2026-09-12 auf die Mikroskopieverfahren verengt: Die Faerbetechniken unter
// 703857004 |Staining technique (qualifier value)| sind hier entfallen und
// stehen jetzt in MII_EX_Mikrobio_Faerbung, mit den Prozedurcodes der HL7 EU Lab
// Semantic Workgroup (MII_VS_Mikrobio_Faerbung_SNOMED). Damit traegt
// Observation.method nur noch eine Aussage, und die 0..1 des Elternprofils ist
// keine Enge mehr.
ValueSet: MII_VS_Mikrobio_Morphologie_Methode_SNOMED
Id: mii-vs-mikrobio-morphologie-methode-snomed
Title: "MII VS Mikrobio Morphologie Methode [SNOMED]"
Description: "Methoden-ValueSet für die Mikroskopie: die eingesetzten mikroskopischen Verfahren. Die Färbung wird nicht hier, sondern in der Extension MII_EX_Mikrobio_Faerbung angegeben."
* insert PR_CS_VS_Version
* insert Publisher
* ^status = #active
* include codes from system $sct where concept is-a #278289002
