ValueSet: MII_VS_Mikrobio_LOINC_Ontology_Ct_Value_Any
Id: mii-vs-mikrobio-loinc-ontology-ct-value-any
Title: "MII VS Microbiology LOINC Ontology Ct Value Any"
Description: "Proposal: LOINC codes of the microbiology request 'Ct value: Ct value — all threshold-number observables (upper bound)', computed by ECL over the LOINC Ontology 2026-10-21. Every Threshold number observable, including human targets (RNase P control, TREC, SMN1). The difference to the query above is the non-microbiological remainder. Parts: LOINC enumeration (44, LOINC 2.83), LOINC Ontology observables without LOINC code (1), and the ECL as an intensional include. ECL: `<< 363787002 |Observable entity (observable entity)| : 370130000 |Property (attribute)| = 1268648001 |Threshold number (property) (qualifier value)|`"
* insert PR_CS_VS_Version
* insert Publisher
* insert SnomedLicense
* ^status = #draft
* ^experimental = true
* ^date = "2026-11-03"
* ^purpose = "Guidance for binding Observation.code of the MII microbiology request profiles to a computably defined LOINC set; accompanies ballot comments on 2027.0.0-ballot2. Generated, not hand-curated."
// Release delta 2026-03-21 -> 2026-10-21: +1 / -0 concepts (see the release-delta page)
// Request 'ct_value_any': LOINC enumeration (44 codes) resolved from the ECL below
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
* $loinc-ontology-loinc#81326-1
* $loinc-ontology-loinc#81327-9
* $loinc-ontology-loinc#86316-7
* $loinc-ontology-loinc#86317-5
* $loinc-ontology-loinc#86700-2
* $loinc-ontology-loinc#86701-0
* $loinc-ontology-loinc#86702-8
* $loinc-ontology-loinc#86731-7
* $loinc-ontology-loinc#87394-3
* $loinc-ontology-loinc#87395-0
* $loinc-ontology-loinc#90321-1
* $loinc-ontology-loinc#90886-3
* $loinc-ontology-loinc#92002-5
* $loinc-ontology-loinc#92006-6
* $loinc-ontology-loinc#94745-7
* $loinc-ontology-loinc#94746-5
// Observables of the LOINC Ontology module without a LOINC code (1)
* $sct-loinc-ontology#1268647006 "Cycle threshold for nucleic acid detection in specimen using real-time polymerase chain reaction (observable entity)"
// The rule itself: intensional include, expandable only on a terminology server that
// holds the LOINC Ontology release named by the alias
* include codes from system $sct-loinc-ontology where constraint = "<< 363787002 |Observable entity (observable entity)| : 370130000 |Property (attribute)| = 1268648001 |Threshold number (property) (qualifier value)|"
