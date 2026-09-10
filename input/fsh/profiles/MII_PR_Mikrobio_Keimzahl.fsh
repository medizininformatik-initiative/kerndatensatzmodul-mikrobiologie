Profile: MII_PR_Mikrobio_Keimzahl
Parent: MII_PR_Labor_Laboruntersuchung
Id: mii-pr-mikrobio-keimzahl
Title: "MII PR Mikrobio Keimzahl"
Description: "Keimzahl beschreibt die quantitative Bestimmung lebensfähiger Mikroorganismen in einer Probe als koloniebildende Einheiten je Volumen, je Masse oder als Anzahl je Probe."
* insert MIKRO_OBSERVATION_COMMON
* ^purpose = "Dieses Profil beschreibt die Keimzahlbestimmung." 
* code from MII_VS_Mikrobio_Keimzahl_LOINC (extensible)
* value[x] only Quantity
* valueQuantity
  * code from MII_VS_Mikrobio_Keimzahl_Einheiten_UCUM (extensible)
  * code ^short = "Bevorzugt eine Einheit MIT der KBE-Annotation: [CFU]/mL je Volumen, [CFU]/g je Masse, [CFU] je Probe. Die unannotierten Formen /mL, /g und 1 sagen weniger — /mL heisst in UCUM woertlich 'pro Milliliter' und nicht, WAS pro Milliliter, und 1 ist die dimensionslose Eins. Sie bleiben zulaessig, weil sie bis 2025.0.2 die einzige Moeglichkeit waren; der Migrationspfad ist mechanisch. Bei Probenmaterialien ohne Volumen- oder Massenbezug, etwa Katheterspitzen, wird [CFU] verwendet und die Bezugsgroesse steht in Specimen.type."
* method = $sct-no-ver#410681005 // Count of entities (property) (qualifier value)
* interpretation from MII_VS_Labor_Laborergebnis_Semiquantitativ (extensible)
