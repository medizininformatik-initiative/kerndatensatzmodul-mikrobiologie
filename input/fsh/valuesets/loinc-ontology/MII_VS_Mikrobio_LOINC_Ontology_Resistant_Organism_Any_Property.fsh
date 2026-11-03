ValueSet: MII_VS_Mikrobio_LOINC_Ontology_Resistant_Organism_Any_Property
Id: mii-vs-mikrobio-loinc-ontology-resistant-organism-any-property
Title: "MII VS Microbiology LOINC Ontology Resistant Organism Any Property"
Description: "Proposal: LOINC codes of the microbiology request 'Resistant organisms and resistance mechanisms: Resistant organism — any observable about a resistant organism (upper bound)', computed by ECL over the LOINC Ontology 2026-10-21. Every observable whose Component or Inheres in is an antimicrobial resistant organism, any property (identity, threshold, counts, type). Parts: LOINC enumeration (16, LOINC 2.83), LOINC Ontology observables without LOINC code (0), and the ECL as an intensional include. ECL: `<< 363787002 |Observable entity (observable entity)| : (246093002 |Component (attribute)| = << 409793007 |Antimicrobial resistant bacteria (organism)| OR 704319004 |Inheres in (attribute)| = << 409793007 |Antimicrobial resistant bacteria (organism)|)`"
* insert PR_CS_VS_Version
* insert Publisher
* insert SnomedLicense
* ^status = #draft
* ^experimental = true
* ^date = "2026-11-03"
* ^purpose = "Guidance for binding Observation.code of the MII microbiology request profiles to a computably defined LOINC set; accompanies ballot comments on 2027.0.0-ballot2. Generated, not hand-curated."
// Release delta 2026-03-21 -> 2026-10-21: +0 / -0 concepts (see the release-delta page)
// Request 'resistant_organism_any_property': LOINC enumeration (16 codes) resolved from the ECL below
* $loinc-ontology-loinc#100907-5
* $loinc-ontology-loinc#105904-7
* $loinc-ontology-loinc#106044-1
* $loinc-ontology-loinc#106046-6
* $loinc-ontology-loinc#13316-5
* $loinc-ontology-loinc#13317-3
* $loinc-ontology-loinc#52969-3
* $loinc-ontology-loinc#53572-4
* $loinc-ontology-loinc#59150-3
* $loinc-ontology-loinc#59151-1
* $loinc-ontology-loinc#63480-8
* $loinc-ontology-loinc#73834-4
* $loinc-ontology-loinc#73836-9
* $loinc-ontology-loinc#76081-9
* $loinc-ontology-loinc#77924-9
* $loinc-ontology-loinc#94151-8
// The rule itself: intensional include, expandable only on a terminology server that
// holds the LOINC Ontology release named by the alias
* include codes from system $sct-loinc-ontology where constraint = "<< 363787002 |Observable entity (observable entity)| : (246093002 |Component (attribute)| = << 409793007 |Antimicrobial resistant bacteria (organism)| OR 704319004 |Inheres in (attribute)| = << 409793007 |Antimicrobial resistant bacteria (organism)|)"
