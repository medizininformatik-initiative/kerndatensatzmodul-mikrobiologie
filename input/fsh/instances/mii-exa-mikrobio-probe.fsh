// Gemeinsames Probenmaterial aller mikrobiologischen Beispiele dieses Moduls.
//
// Anders als Patient ist die Probe eine Kernangabe dieses Moduls: der RuleSet
// MIKRO_OBSERVATION_COMMON setzt `specimen 1.. MS`, jede mikrobiologische
// Untersuchung verweist also zwingend auf eine. Vorher zeigten 26 Beispiele auf
// `Specimen/example`, das nichts auflöste (26 Fehler im QA-Report).
//
// Der Probentyp ist ABSICHTLICH generisch (SNOMED 123038009 |Specimen|): dieselbe
// Probe dient Beispielen für Kultur, Mikroskopie, Molekulardiagnostik und
// Empfindlichkeitstestung. Ein konkreter Typ — Urin, Blutkultur, Abstrich — würde
// zu den meisten davon nicht passen. Beispiele, bei denen der Probentyp fachlich
// trägt, sollten eine eigene Specimen-Instanz mitbringen.
//
// Der Typ 123038009 |Specimen| liegt AUSSERHALB des geerbten Typ-ValueSets, das
// `descendent-of 123038009` ist und den Wurzelcode damit ausschliesst. Die
// Bindung ist extensible, es bleibt also eine Warnung — und sie zeigt genau die
// Luecke, die MII_PR_Mikrobio_Probe im Kommentar festhaelt.
Instance: mii-exa-mikrobio-probe
InstanceOf: MII_PR_Mikrobio_Probe
Usage: #example
Title: "MII EXA Mikrobio Probe"
Description: "Generisches Probenmaterial für die Beispiele dieses Moduls. Der Typ ist bewusst unspezifisch, weil dieselbe Probe Beispiele unterschiedlicher Untersuchungsarten trägt."
* identifier[0].system = "https://example.org/fhir/sid/test-specimen"
* identifier[0].value = "probe-1"
* status = #available
* type = $sct#123038009 "Specimen"
* subject = Reference(mii-exa-mikrobio-patient)
* receivedTime = "2026-04-02T08:30:00+01:00"
* collection.collectedDateTime = "2026-04-02T08:00:00+01:00"
