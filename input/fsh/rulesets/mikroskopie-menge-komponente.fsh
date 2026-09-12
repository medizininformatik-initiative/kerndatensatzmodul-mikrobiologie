// DIE MENGENKOMPONENTE DER MIKROSKOPIE, gemeinsam fuer die allgemeine und die
// spezifische Mikroskopie. Ein RuleSet und nicht zweimal dieselben Zeilen, weil
// es dieselbe Aussage ist: wie viel des berichteten Befunds gesehen wurde.
//
// Am 2026-09-12 eingefuehrt, als die Stufe aus value[x] der spezifischen
// Mikroskopie hierher wanderte. Das Modellblatt "Microscopy" der HL7 EU Lab
// Semantic Workgroup fuehrt die Menge in einer Komponente und im Wert den
// Nachweis (Ergebniszeile: "present/absent for specific"); die Stufen aus
// Zeile 15 — few/moderate/many, +/++/+++/++++, 1 of 3, 2 of 3, 3 of 3 — sind
// die Antworten dieser Komponente.
//
// DER KOMPONENTENCODE 103392008 |Semi-quantitative value| ist der, den die
// Workgroup dafuer vorschlaegt. Die Einschraenkung ist zurueckgemeldet:
// gemessen am 2026-09-12 liegt er nicht unter 363787002 |Observable entity|,
// sondern als Qualifier Value unter 398195001 |Measurement scales|, benennt
// also eine Skalenart und keine Frage. Ein eigener Interimscode stand hier bis
// 2026-09-12; ein halbwegs passender SNOMED-Code ist fuer Verarbeitende die
// kleinere Huerde als ein modulspezifisches CodeSystem. Sobald der in Zeile 13
// angeforderte LOINC-Code existiert, tritt er an diese Stelle.
//
// DREI ANTWORTFORMATE, weil das rueckmeldende Labor dasselbe Analyt in zwei
// Formaten berichtet: leu1-leu3 kategorial ("wenig", "maessig viel"),
// leu4-leu6 als Zaehlung je Gesichtsfeld ("<10/GF", "10-25/GF"). /[HPF] ist
// ein gueltiger UCUM-Code, am 2026-09-10 gegen UCUM 2.2 nachgemessen. Eine
// Zaehlung ist streng genommen kein semiquantitativer Wert — das Geschwister-
// konzept 30766002 |Quantitative value| waere dafuer das genauere —, aber zwei
// Slices fuer dieselbe Aussage zwingen jeden Verarbeitenden, beide zu lesen.
// Auch diese Unschaerfe ist zurueckgemeldet.
RuleSet: MIKRO_MENGE_KOMPONENTE
* component ^slicing.discriminator[0].type = #pattern
* component ^slicing.discriminator[0].path = "$this.code"
* component ^slicing.rules = #open
* component ^slicing.description = "Slicing nach dem Komponenten-Code."
* component contains menge 0..1 MS
* component[menge] ^short = "Semiquantitative Menge oder Zaehlung des berichteten Befunds"
* component[menge] ^definition = "Wie viel des Befunds gesehen wurde: als semiquantitative Stufe, als Zaehlung je Gesichtsfeld oder als Intervall einer solchen Zaehlung."
* component[menge].code = $sct#103392008 "Semi-quantitative value"
* component[menge].value[x] only CodeableConcept or Quantity or Range
* component[menge].valueCodeableConcept from MII_VS_Mikrobio_Mikroskopie_Semiquantitativ_SNOMED (extensible)
* component[menge].valueCodeableConcept ^short = "Semiquantitative Stufe, z. B. 'Few' oder 'Present two plus out of three plus'."
* component[menge].valueQuantity ^short = "Zaehlung je Gesichtsfeld, UCUM-Einheit /[HPF]. Fuer offene Grenzen wird Quantity.comparator verwendet, z. B. '<10/GF' als comparator = '<', value = 10."
* component[menge].valueRange ^short = "Zaehlung je Gesichtsfeld als Intervall, UCUM-Einheit /[HPF] — z. B. '10-25/GF' als low = 10, high = 25."
