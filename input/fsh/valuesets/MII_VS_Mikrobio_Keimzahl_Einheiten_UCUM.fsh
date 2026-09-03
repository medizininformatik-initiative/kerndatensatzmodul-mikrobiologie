ValueSet: MII_VS_Mikrobio_Keimzahl_Einheiten_UCUM
Id: mii-vs-mikrobio-keimzahl-einheiten-ucum
Title: "MII VS Mikrobio Keimzahl Einheiten [UCUM]"
Description: "Einheiten-ValueSet für die Keimzahlbestimmung (UCUM): koloniebildende Einheiten je Volumen, je Masse oder als Anzahl je Probe."
* insert PR_CS_VS_Version
* insert Publisher
* ^status = #active
* ^date = "2023-03-02T00:00:00Z"
* $ucum#[CFU]/mL
// Nennerlose Keimzahl: Probenmaterialien ohne Volumen- oder Massenbezug, allen
// voran Katheterspitzen (Roll-Platten-Verfahren nach Maki). Das Gegenstück in
// MII_VS_Mikrobio_Keimzahl_LOINC ist 564-5 "Colony count [#] in Specimen by
// Visual count". Die Bezugsgröße steht in Specimen.type.
* $ucum#[CFU]
* $ucum#[arb'U]/mL
* $ucum#/g
* $ucum#/mL
* $ucum#1
