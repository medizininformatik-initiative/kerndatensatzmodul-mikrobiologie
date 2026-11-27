<!-- MIGRATED verbatim from Simplifier page: MIIIGModulMikrobiologie/Technische-Implementierung/FHIR-Profile/Kultur/Keimzahl.page.md  -->
Keimzahl beschreibt die Bestimmung lebensfähiger Mikroorganismen in einer Probe: quantitativ als koloniebildende Einheiten je Volumen, je Masse oder je Probe, oder semiquantitativ (+ bis ++++), etwa beim Ausstrich.

### Zählung oder semiquantitativer Wert

Eine Zählung steht mit einem quantitativen Code wie `49223-1` als `Quantity` in
`value[x]`, ihre Einordnung in `interpretation`. Wurde nicht gezählt (+ bis
++++), steht der semiquantitative Wert mit dem ordinalen Code `565-2` in
`value[x]`; die quantitativen Codes verlangen eine Zahl.

### Zuordnung zum Erreger

Die Identifizierung des Erregers führt die Keimzahl über `hasMember`; bei
mehreren Erregern aus einer Probe ist das Pflicht.

### Beispiele

Beispiel (minimal):

[mii-exa-mikrobio-keimzahl](Observation-mii-exa-mikrobio-keimzahl.html)

Semiquantitativ, ohne Zählung:

[mii-exa-mikrobio-keimzahl-semiquantitativ](Observation-mii-exa-mikrobio-keimzahl-semiquantitativ.html)

