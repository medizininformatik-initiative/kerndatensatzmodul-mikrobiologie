ValueSet: MII_VS_Mikrobio_Antigen_Antikoerper_Quantitativ_Einheiten_UCUM
Id: mii-vs-mikrobio-antigen-antikoerper-quantitativ-einheiten-ucum
Title: "MII VS Mikrobio Antigen Antikoerper Quantitativ Einheiten [UCUM]"
Description: "Einheiten-ValueSet für quantitative Antigen- und Antikörpertests (UCUM). Bindet Observation.valueQuantity.code."
* insert PR_CS_VS_Version
* insert Publisher
* ^status = #active
// LITER IST DER BEVORZUGTE NENNER. Das europaeische Whitepaper empfiehlt es im
// Serologie-Kapitel: "The denominator for all units for concentrations in NPU
// system is the litre (L) and not the milliliter (mL) as widely used
// internationally for serology. […] It is suggested to standardize the units in
// serology and use L as the denominator when concentrations are expressed." Es
// beruft sich dabei auf einen Vorschlag der DGKL (10.1515/cclm-2026-0075).
//
// Die mL-Varianten bleiben trotzdem drin: [IU]/mL ist in der Serologie die
// international verbreitete Schreibweise, und ein Labor, das heute so meldet,
// soll nicht unkonform werden. Die Empfehlung steht deshalb hier und im
// valueQuantity.code des Profils, nicht in der Bindung.
//
// ng/L und pg/L am 2026-09-10 als UCUM-Codes geprueft und ergaenzt — vorher
// hatten ng/mL und pg/mL kein L-Gegenstueck, der Empfehlung konnte man bei
// diesen beiden Einheiten also gar nicht folgen.

// Bevorzugt — Liter als Nenner.
* $ucum#ng/L
* $ucum#pg/L
* $ucum#ug/L
* $ucum#[IU]/L
* $ucum#[arb'U]/L

// Weiter zulaessig — Milliliter als Nenner.
* $ucum#ng/mL
* $ucum#pg/mL
* $ucum#[IU]/mL
* $ucum#[arb'U]/mL

// Ohne Nenner: eine arbitraere Einheit ohne Bezugsvolumen.
* $ucum#[arb'U]
