ValueSet: MII_VS_Mikrobio_LOINC_Ontology_Colony_Count_Organism
Id: mii-vs-mikrobio-loinc-ontology-colony-count-organism
Title: "MII VS Microbiology LOINC Ontology Colony Count Organism"
Description: "Proposal: LOINC codes of the microbiology request 'Colony count: Colony count — number concentration of an organism', computed by ECL over the LOINC Ontology 2026-10-21. Number concentration or logarithmic number concentration where the counted entity is an organism (Component or Inheres in). Parts: LOINC enumeration (16, LOINC 2.83), LOINC Ontology observables without LOINC code (0), and the ECL as an intensional include. ECL: `<< 363787002 |Observable entity (observable entity)| : 370130000 |Property (attribute)| = (118550005 |Number concentration (property) (qualifier value)| OR 705056007 |Logarithmic number concentration (property) (qualifier value)|), (246093002 |Component (attribute)| = << 410607006 |Organism (organism)| OR 704319004 |Inheres in (attribute)| = << 410607006 |Organism (organism)|)`"
* insert PR_CS_VS_Version
* insert Publisher
* insert SnomedLicense
* ^status = #draft
* ^experimental = true
* ^date = "2026-11-03"
* ^purpose = "Guidance for binding Observation.code of the MII microbiology request profiles to a computably defined LOINC set; accompanies ballot comments on 2027.0.0-ballot2. Generated, not hand-curated."
// Release delta 2026-03-21 -> 2026-10-21: +0 / -0 concepts (see the release-delta page)
// Request 'colony_count_organism': LOINC enumeration (16 codes) resolved from the ECL below
* $loinc-ontology-loinc#100906-7
* $loinc-ontology-loinc#105610-0
* $loinc-ontology-loinc#105907-0
* $loinc-ontology-loinc#106018-5
* $loinc-ontology-loinc#20695-3
* $loinc-ontology-loinc#20696-1
* $loinc-ontology-loinc#20769-6
* $loinc-ontology-loinc#20770-4
* $loinc-ontology-loinc#34890-4
* $loinc-ontology-loinc#43161-9
* $loinc-ontology-loinc#51480-2
* $loinc-ontology-loinc#51481-0
* $loinc-ontology-loinc#53266-3
* $loinc-ontology-loinc#53355-4
* $loinc-ontology-loinc#87317-4
* $loinc-ontology-loinc#99923-5
// The rule itself: intensional include, expandable only on a terminology server that
// holds the LOINC Ontology release named by the alias
* include codes from system $sct-loinc-ontology where constraint = "<< 363787002 |Observable entity (observable entity)| : 370130000 |Property (attribute)| = (118550005 |Number concentration (property) (qualifier value)| OR 705056007 |Logarithmic number concentration (property) (qualifier value)|), (246093002 |Component (attribute)| = << 410607006 |Organism (organism)| OR 704319004 |Inheres in (attribute)| = << 410607006 |Organism (organism)|)"
