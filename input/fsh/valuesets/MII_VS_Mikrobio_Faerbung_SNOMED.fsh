// Dasselbe ValueSet, das die HL7 EU Lab Semantic Workgroup fuer die Faerbung
// vorsieht: < 37926009 |Microbial stain method (procedure)|, 53 Konzepte
// (gemessen 2026-09-12). Bewusst UNVERAENDERT uebernommen — der Wert soll ohne
// Umcodierung nach Specimen.processing.procedure wandern koennen, wenn die
// europaeische Abstimmung dort landet.
//
// `descendent-of` und nicht `is-a`, weil die Workgroup `<` schreibt: der
// Wurzelcode selbst ("irgendwie gefaerbt") ist keine Faerbeangabe.
//
// Die Hierarchie liegt in der PROZEDUR-Achse und damit ausserhalb von
// 272394005 / 129264002 / 386053000, den drei Wurzeln des FHIR-Core-ValueSets
// observation-methods (gemessen 2026-09-12) — deshalb traegt die Extension
// MII_EX_Mikrobio_Faerbung diese Codes und nicht Observation.method.
ValueSet: MII_VS_Mikrobio_Faerbung_SNOMED
Id: mii-vs-mikrobio-faerbung-snomed
Title: "MII VS Mikrobio Färbung [SNOMED]"
Description: "Färbeverfahren der mikroskopischen Untersuchung, z. B. Gramfärbung oder Kinyounfärbung."
* insert PR_CS_VS_Version
* insert Publisher
* ^status = #active
* include codes from system $sct where concept descendent-of #37926009
