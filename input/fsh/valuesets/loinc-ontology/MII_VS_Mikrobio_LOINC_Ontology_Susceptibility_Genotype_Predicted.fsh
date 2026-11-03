ValueSet: MII_VS_Mikrobio_LOINC_Ontology_Susceptibility_Genotype_Predicted
Id: mii-vs-mikrobio-loinc-ontology-susceptibility-genotype-predicted
Title: "MII VS Microbiology LOINC Ontology Susceptibility Genotype Predicted"
Description: "Proposal: LOINC codes of the microbiology request 'Susceptibility: Predicted susceptibility — by genotype determination technique', computed by ECL over the LOINC Ontology 2026-10-21. Genotypic prediction of susceptibility (HIV, HBV, HCV, M. tuberculosis drug resistance mutations). The LOINC filter METHOD_TYP = Genotyping maps to Technique = Genotype determination technique. Parts: LOINC enumeration (81, LOINC 2.83), LOINC Ontology observables without LOINC code (0), and the ECL as an intensional include. ECL: `<< 363787002 |Observable entity (observable entity)| : 370130000 |Property (attribute)| = 118588007 |Susceptibility (property) (qualifier value)|, 246501002 |Technique (attribute)| = << 708060009 |Genotype determination technique (qualifier value)|`"
* insert PR_CS_VS_Version
* insert Publisher
* insert SnomedLicense
* ^status = #draft
* ^experimental = true
* ^date = "2026-11-03"
* ^purpose = "Guidance for binding Observation.code of the MII microbiology request profiles to a computably defined LOINC set; accompanies ballot comments on 2027.0.0-ballot2. Generated, not hand-curated."
// Release delta 2026-03-21 -> 2026-10-21: +0 / -0 concepts (see the release-delta page)
// Request 'susceptibility_genotype_predicted': LOINC enumeration (81 codes) resolved from the ECL below
* $loinc-ontology-loinc#103958-5
* $loinc-ontology-loinc#103959-3
* $loinc-ontology-loinc#103960-1
* $loinc-ontology-loinc#106742-0
* $loinc-ontology-loinc#30282-8
* $loinc-ontology-loinc#30283-6
* $loinc-ontology-loinc#30284-4
* $loinc-ontology-loinc#30285-1
* $loinc-ontology-loinc#30286-9
* $loinc-ontology-loinc#30287-7
* $loinc-ontology-loinc#30288-5
* $loinc-ontology-loinc#30289-3
* $loinc-ontology-loinc#30290-1
* $loinc-ontology-loinc#30291-9
* $loinc-ontology-loinc#30292-7
* $loinc-ontology-loinc#30293-5
* $loinc-ontology-loinc#30294-3
* $loinc-ontology-loinc#30295-0
* $loinc-ontology-loinc#30297-6
* $loinc-ontology-loinc#41031-6
* $loinc-ontology-loinc#41396-3
* $loinc-ontology-loinc#41402-9
* $loinc-ontology-loinc#41403-7
* $loinc-ontology-loinc#42317-8
* $loinc-ontology-loinc#43736-8
* $loinc-ontology-loinc#43737-6
* $loinc-ontology-loinc#52749-9
* $loinc-ontology-loinc#55091-3
* $loinc-ontology-loinc#56791-7
* $loinc-ontology-loinc#56792-5
* $loinc-ontology-loinc#60440-5
* $loinc-ontology-loinc#68463-9
* $loinc-ontology-loinc#72525-9
* $loinc-ontology-loinc#72526-7
* $loinc-ontology-loinc#72839-4
* $loinc-ontology-loinc#72853-5
* $loinc-ontology-loinc#72854-3
* $loinc-ontology-loinc#72856-8
* $loinc-ontology-loinc#72857-6
* $loinc-ontology-loinc#72858-4
* $loinc-ontology-loinc#72859-2
* $loinc-ontology-loinc#72860-0
* $loinc-ontology-loinc#73574-6
* $loinc-ontology-loinc#75029-9
* $loinc-ontology-loinc#82376-5
* $loinc-ontology-loinc#82377-3
* $loinc-ontology-loinc#82378-1
* $loinc-ontology-loinc#82379-9
* $loinc-ontology-loinc#82382-3
* $loinc-ontology-loinc#82520-8
* $loinc-ontology-loinc#82521-6
* $loinc-ontology-loinc#82522-4
* $loinc-ontology-loinc#82523-2
* $loinc-ontology-loinc#89480-8
* $loinc-ontology-loinc#89481-6
* $loinc-ontology-loinc#89482-4
* $loinc-ontology-loinc#89483-2
* $loinc-ontology-loinc#89484-0
* $loinc-ontology-loinc#89485-7
* $loinc-ontology-loinc#89487-3
* $loinc-ontology-loinc#89488-1
* $loinc-ontology-loinc#89489-9
* $loinc-ontology-loinc#89490-7
* $loinc-ontology-loinc#89491-5
* $loinc-ontology-loinc#90080-3
* $loinc-ontology-loinc#91897-9
* $loinc-ontology-loinc#92241-9
* $loinc-ontology-loinc#92242-7
* $loinc-ontology-loinc#92255-9
* $loinc-ontology-loinc#92733-5
* $loinc-ontology-loinc#92734-3
* $loinc-ontology-loinc#92735-0
* $loinc-ontology-loinc#96107-8
* $loinc-ontology-loinc#96108-6
* $loinc-ontology-loinc#96109-4
* $loinc-ontology-loinc#96110-2
* $loinc-ontology-loinc#96111-0
* $loinc-ontology-loinc#96112-8
* $loinc-ontology-loinc#96113-6
* $loinc-ontology-loinc#96114-4
* $loinc-ontology-loinc#96566-5
// The rule itself: intensional include, expandable only on a terminology server that
// holds the LOINC Ontology release named by the alias
* include codes from system $sct-loinc-ontology where constraint = "<< 363787002 |Observable entity (observable entity)| : 370130000 |Property (attribute)| = 118588007 |Susceptibility (property) (qualifier value)|, 246501002 |Technique (attribute)| = << 708060009 |Genotype determination technique (qualifier value)|"
