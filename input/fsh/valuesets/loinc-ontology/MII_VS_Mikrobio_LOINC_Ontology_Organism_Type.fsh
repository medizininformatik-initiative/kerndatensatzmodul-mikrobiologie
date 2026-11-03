ValueSet: MII_VS_Mikrobio_LOINC_Ontology_Organism_Type
Id: mii-vs-mikrobio-loinc-ontology-organism-type
Title: "MII VS Microbiology LOINC Ontology Organism Type"
Description: "Proposal: LOINC codes of the microbiology request 'General determination: Typing — type of an organism (serotype, genotype, biotype)', computed by ECL over the LOINC Ontology 2026-10-21. Property = Type with an organism in 'Inheres in': serotyping, HBV/HCV genotype, biotype of an isolate. Sits between determination and susceptibility in the 2027 module (no own profile). Parts: LOINC enumeration (21, LOINC 2.83), LOINC Ontology observables without LOINC code (1), and the ECL as an intensional include. ECL: `<< 363787002 |Observable entity (observable entity)| : 370130000 |Property (attribute)| = 410656007 |Type (property) (qualifier value)|, 704319004 |Inheres in (attribute)| = << 410607006 |Organism (organism)|`"
* insert PR_CS_VS_Version
* insert Publisher
* insert SnomedLicense
* ^status = #draft
* ^experimental = true
* ^date = "2026-11-03"
* ^purpose = "Guidance for binding Observation.code of the MII microbiology request profiles to a computably defined LOINC set; accompanies ballot comments on 2027.0.0-ballot2. Generated, not hand-curated."
// Release delta 2026-03-21 -> 2026-10-21: +0 / -0 concepts (see the release-delta page)
// Request 'organism_type': LOINC enumeration (21 codes) resolved from the ECL below
* $loinc-ontology-loinc#59846-6
* $loinc-ontology-loinc#60528-7
* $loinc-ontology-loinc#60546-9
* $loinc-ontology-loinc#61112-9
* $loinc-ontology-loinc#65756-9
* $loinc-ontology-loinc#72412-0
* $loinc-ontology-loinc#72413-8
* $loinc-ontology-loinc#72482-3
* $loinc-ontology-loinc#72483-1
* $loinc-ontology-loinc#72484-9
* $loinc-ontology-loinc#73658-7
* $loinc-ontology-loinc#73659-5
* $loinc-ontology-loinc#73666-0
* $loinc-ontology-loinc#73671-0
* $loinc-ontology-loinc#73672-8
* $loinc-ontology-loinc#73673-6
* $loinc-ontology-loinc#73702-3
* $loinc-ontology-loinc#73733-8
* $loinc-ontology-loinc#82512-5
* $loinc-ontology-loinc#86732-5
* $loinc-ontology-loinc#87962-7
// Observables of the LOINC Ontology module without a LOINC code (1)
* $sct-loinc-ontology#1285113001 "Type of antimicrobial resistant organism (observable entity)"
// The rule itself: intensional include, expandable only on a terminology server that
// holds the LOINC Ontology release named by the alias
* include codes from system $sct-loinc-ontology where constraint = "<< 363787002 |Observable entity (observable entity)| : 370130000 |Property (attribute)| = 410656007 |Type (property) (qualifier value)|, 704319004 |Inheres in (attribute)| = << 410607006 |Organism (organism)|"
