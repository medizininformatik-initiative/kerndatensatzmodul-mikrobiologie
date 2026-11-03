// LOINC Ontology (SNOMED CT extension module 11010000107), release 2026-10-21.
// Only the proposal ValueSets under valuesets/loinc-ontology/ use these aliases; they are
// deliberately NOT in aliases.fsh, whose $sct/$loinc pins are tied to the expansion
// manifest by scripts/terminology-pins.test.mjs.
Alias: $sct-loinc-ontology = http://snomed.info/sct|http://snomed.info/sct/11010000107/version/20261021
// LOINC 2.83: the LOINC release the LOINC Ontology 2026-10-21 is built on. The module pins
// LOINC 2.82 for its own ValueSets; several hundred of the enumerated codes below were
// introduced in 2.83 and would be unknown codes under the 2.82 pin.
Alias: $loinc-ontology-loinc = http://loinc.org|2.83
