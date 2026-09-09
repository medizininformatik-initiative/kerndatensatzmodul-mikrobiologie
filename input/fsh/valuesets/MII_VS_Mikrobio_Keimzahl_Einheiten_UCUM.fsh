ValueSet: MII_VS_Mikrobio_Keimzahl_Einheiten_UCUM
Id: mii-vs-mikrobio-keimzahl-einheiten-ucum
Title: "MII VS Mikrobio Keimzahl Einheiten [UCUM]"
Description: "Einheiten-ValueSet für die Keimzahlbestimmung (UCUM): koloniebildende Einheiten je Volumen, je Masse oder als Anzahl je Probe."
* insert PR_CS_VS_Version
* insert Publisher
* ^status = #active
* ^date = "2023-03-02T00:00:00Z"
// Die drei Bezugsformen der Keimzahl, jeweils mit ihrem Gegenstück in
// MII_VS_Mikrobio_Keimzahl_LOINC:
//   je Volumen   49223-1 "Colony count [#/volume]"
//   je Masse     38436-2 "Colony count [#/mass]"
//   je Probe     564-5   "Colony count [#]"        — nennerlos
// Nennerlos heißt: Das Probenmaterial hat weder Volumen noch Masse, allen voran
// die Katheterspitze (Roll-Platten-Verfahren nach Maki). Die Bezugsgröße steht
// dann in Specimen.type.
* $ucum#[CFU]/mL
* $ucum#[CFU]/g
* $ucum#[CFU]
// Kein Dublettenfall: arbiträre Einheiten für Verfahren, die keine echten KBE
// zählen. Bleibt unabhängig vom TODO unten.
* $ucum#[arb'U]/mL

// TODO (2026-09-03): Sollen diese drei Codes DEPRECATED werden?
//
// Seit [CFU] und [CFU]/g dazugekommen sind, steht für jeden Bezug beides in der
// Liste, und die unannotierte Form sagt jeweils weniger:
//   je Volumen   [CFU]/mL  gegenüber  /mL
//   je Masse     [CFU]/g   gegenüber  /g
//   je Probe     [CFU]     gegenüber  1
// `/mL` heißt in UCUM wörtlich "pro Milliliter" und sagt nicht, WAS pro
// Milliliter. Bei `1` ist es mehr als Redundanz: die dimensionslose Eins steht
// neben einer Einheit, die tatsächlich "koloniebildende Einheiten" bedeutet.
// Wer eine Einheit auswählt, hat damit für jeden Fall zwei Wege, dasselbe zu
// sagen — und die Kaufempfehlung steht bisher nur in diesem Kommentar, den der
// Guide nie rendert.
//
// Ausgeliefert wurden die drei in 2024.0.0, 2025.0.0, 2025.0.1 und 2025.0.2; es
// kann also sendende Systeme geben. Deshalb hier die Frage nach DEPRECATION und
// nicht nach Entfernen: Konsumenten behalten den Code, bekommen aber das Signal.
//
// Zu prüfen:
//   - Mechanismus: die R4-Extension
//     http://hl7.org/fhir/StructureDefinition/valueset-deprecated mit Kontext
//     ValueSet.compose.include.concept — passt genau auf diese Stelle. Zu
//     messen ist, ob IG Publisher und die eingesetzten Terminologieserver sie
//     auch anzeigen; ohne Anzeige bliebe es folgenlos und die Guidance gehörte
//     statt dessen auf eine Seite.
//   - Zeitpunkt: 2027.0.0 ist ein Major-Bump mit Ballot und stellt ohnehin von
//     component-Darstellungen auf eigenständige Observation-Profile um. Wenn
//     überhaupt, ist das das Fenster dafür.
//   - Tragweite: Die Bindung ist extensible. Selbst ein Entfernen erzeugte
//     Warnungen, keine Validierungsfehler, und der Migrationspfad wäre
//     mechanisch (/mL -> [CFU]/mL).
* $ucum#/g
* $ucum#/mL
* $ucum#1
