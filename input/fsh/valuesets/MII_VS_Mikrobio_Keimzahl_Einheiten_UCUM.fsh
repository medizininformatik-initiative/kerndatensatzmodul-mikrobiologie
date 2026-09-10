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

// TODO (2026-09-03, eingegrenzt 2026-09-10): Sollen diese drei Codes zusaetzlich
// maschinenlesbar DEPRECATED werden? Die EMPFEHLUNG selbst ist entschieden und
// steht seit 2026-09-10 im code ^short von MII_PR_Mikrobio_Keimzahl, also dort,
// wo ein Implementierer sie liest. Offen ist nur noch das maschinenlesbare
// Signal.
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
//   - Mechanismus: GEMESSEN 2026-09-10. Die Extension
//     http://hl7.org/fhir/StructureDefinition/valueset-deprecated liegt in R4
//     Core und in hl7.fhir.uv.extensions.r4 5.2.0, Kontext
//     ValueSet.compose.include.concept, Wert boolean — passt genau. NICHT
//     gemessen ist, ob IG Publisher und die eingesetzten Terminologieserver sie
//     anzeigen. Ohne Anzeige bliebe das Flag folgenlos; die Empfehlung ist
//     davon aber nicht mehr abhaengig, weil sie im ^short steht.
//   - Zeitpunkt: 2027.0.0 ist ein Major-Bump mit Ballot und stellt ohnehin von
//     component-Darstellungen auf eigenständige Observation-Profile um. Wenn
//     überhaupt, ist das das Fenster dafür.
//   - Tragweite: Die Bindung ist extensible. Selbst ein Entfernen erzeugte
//     Warnungen, keine Validierungsfehler, und der Migrationspfad wäre
//     mechanisch (/mL -> [CFU]/mL).
* $ucum#/g
* $ucum#/mL
* $ucum#1
