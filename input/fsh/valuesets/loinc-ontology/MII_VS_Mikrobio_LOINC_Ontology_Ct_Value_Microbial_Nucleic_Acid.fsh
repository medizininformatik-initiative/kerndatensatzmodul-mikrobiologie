ValueSet: MII_VS_Mikrobio_LOINC_Ontology_Ct_Value_Microbial_Nucleic_Acid
Id: mii-vs-mikrobio-loinc-ontology-ct-value-microbial-nucleic-acid
Title: "MII VS Microbiology LOINC Ontology Ct Value Microbial Nucleic Acid"
Description: "Proposal: LOINC codes of the microbiology request 'Ct value: Ct value — threshold number of a microbial nucleic acid', computed by ECL over the LOINC Ontology 2026-10-21. Cycle threshold of a pathogen nucleic acid by any amplification technique. Parts: LOINC enumeration (40, LOINC 2.83), LOINC Ontology observables without LOINC code (0), and the ECL as an intensional include. ECL: `<< 363787002 |Observable entity (observable entity)| : 370130000 |Property (attribute)| = 1268648001 |Threshold number (property) (qualifier value)|, 246093002 |Component (attribute)| = << 117174000 |Nucleic acid sequence with relative specificity for microorganism (substance)|`"
* insert PR_CS_VS_Version
* insert Publisher
* insert SnomedLicense
* ^status = #draft
* ^experimental = true
* ^date = "2026-11-03"
* ^purpose = "Guidance for binding Observation.code of the MII microbiology request profiles to a computably defined LOINC set; accompanies ballot comments on 2027.0.0-ballot2. Generated, not hand-curated."
// Release delta 2026-03-21 -> 2026-10-21: +0 / -0 concepts (see the release-delta page)
// Request 'ct_value_microbial_nucleic_acid': LOINC enumeration (40 codes) resolved from the ECL below
* $loinc-ontology-loinc#101178-2
* $loinc-ontology-loinc#105765-2
* $loinc-ontology-loinc#105767-8
* $loinc-ontology-loinc#105770-2
* $loinc-ontology-loinc#105771-0
* $loinc-ontology-loinc#105772-8
* $loinc-ontology-loinc#105774-4
* $loinc-ontology-loinc#105775-1
* $loinc-ontology-loinc#105776-9
* $loinc-ontology-loinc#105796-7
* $loinc-ontology-loinc#105797-5
* $loinc-ontology-loinc#105798-3
* $loinc-ontology-loinc#105800-7
* $loinc-ontology-loinc#105802-3
* $loinc-ontology-loinc#105803-1
* $loinc-ontology-loinc#105805-6
* $loinc-ontology-loinc#105806-4
* $loinc-ontology-loinc#74038-1
* $loinc-ontology-loinc#74039-9
* $loinc-ontology-loinc#74040-7
* $loinc-ontology-loinc#74423-5
* $loinc-ontology-loinc#74424-3
* $loinc-ontology-loinc#81305-5
* $loinc-ontology-loinc#81308-9
* $loinc-ontology-loinc#81309-7
* $loinc-ontology-loinc#81320-4
* $loinc-ontology-loinc#81321-2
* $loinc-ontology-loinc#81325-3
* $loinc-ontology-loinc#81327-9
* $loinc-ontology-loinc#86317-5
* $loinc-ontology-loinc#86700-2
* $loinc-ontology-loinc#86701-0
* $loinc-ontology-loinc#86702-8
* $loinc-ontology-loinc#86731-7
* $loinc-ontology-loinc#87394-3
* $loinc-ontology-loinc#87395-0
* $loinc-ontology-loinc#90321-1
* $loinc-ontology-loinc#90886-3
* $loinc-ontology-loinc#94745-7
* $loinc-ontology-loinc#94746-5
// The rule itself: intensional include, expandable only on a terminology server that
// holds the LOINC Ontology release named by the alias
* include codes from system $sct-loinc-ontology where constraint = "<< 363787002 |Observable entity (observable entity)| : 370130000 |Property (attribute)| = 1268648001 |Threshold number (property) (qualifier value)|, 246093002 |Component (attribute)| = << 117174000 |Nucleic acid sequence with relative specificity for microorganism (substance)|"
