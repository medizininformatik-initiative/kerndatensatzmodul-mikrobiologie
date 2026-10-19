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
* component[menge] ^short = "Semiquantitative quantity or count of the reported finding"
* component[menge] ^definition = "How much of the finding was seen: as a semiquantitative grade, as a count per field of view, or as an interval of such a count."
// KEIN Display und KEINE Version im Pattern: Ein Pattern verlangt
// Uebereinstimmung in jedem gesetzten Feld, ein Labor mit anderem Display oder
// ohne Coding.version waere also nicht konform. Deshalb $sct-no-ver und nur der
// Code; der Klartext steht im ^short und im Kommentar oben. Siehe
// input/fsh/aliases.fsh, wo die Regel fuer Patterns und fixed values steht.
* component[menge].code = $sct-no-ver#103392008
* component[menge].value[x] only CodeableConcept or Quantity or Range
* component[menge].valueCodeableConcept from MII_VS_Mikrobio_Mikroskopie_Semiquantitativ_SNOMED (extensible)
* component[menge].valueCodeableConcept ^short = "Semiquantitative grade, e.g. 'Few' or 'Present two plus out of three plus'."
* component[menge].valueQuantity ^short = "Count per field of view, UCUM unit /[HPF]. For open bounds Quantity.comparator is used, e.g. '<10/HPF' as comparator = '<', value = 10."
* component[menge].valueQuantity.code from MII_VS_Mikrobio_Mikroskopie_Gesichtsfeld_Einheiten_UCUM (extensible)
* component[menge].valueRange ^short = "Count per field of view as an interval, UCUM unit /[HPF] — e.g. '10-25/HPF' as low = 10, high = 25."
// Range.low und Range.high sind je ein eigenes Quantity, die Bindung muss also
// zweimal stehen — sonst waere an einer der beiden Grenzen jede Einheit erlaubt.
* component[menge].valueRange.low.code from MII_VS_Mikrobio_Mikroskopie_Gesichtsfeld_Einheiten_UCUM (extensible)
* component[menge].valueRange.high.code from MII_VS_Mikrobio_Mikroskopie_Gesichtsfeld_Einheiten_UCUM (extensible)
