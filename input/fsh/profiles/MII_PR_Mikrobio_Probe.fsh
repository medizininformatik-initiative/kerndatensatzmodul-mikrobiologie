// Das Modul verlangt seit je eine Probe — MIKRO_OBSERVATION_COMMON setzt
// `specimen 1.. MS` fuer alle Untersuchungsprofile —, sagte aber nichts darueber:
// Observation.specimen hatte kein Zielprofil, jedes beliebige Specimen erfuellte
// die Bedingung. Die Seite probe.md verwies bereits auf
// MII_PR_Biobank_Specimen_Bioprobe_Core, ohne dass es aufloesbar war.
//
// Der Parent ist ausdruecklich fuer diesen Zweck gebaut: "Nicht zur direkten
// Implementierung gedacht, Module leiten bei Bedarf eigene Profile von diesem
// Profil ab."
//
// Das Typ-Binding wird NICHT ersetzt. mii-vs-biobank-probenart-sct ist
// `descendent-of 123038009 |Specimen|` und trifft damit genau die
// mikrobiologischen Probenarten; ein eigenes ValueSet waere eine Teilmenge ohne
// zusaetzliche Aussage. Eine Luecke hat es: Der Wurzelcode 123038009 selbst ist
// ausgeschlossen, "Probe, nicht naeher bestimmt" also nicht ausdrueckbar. Die
// Bindung ist extensible, der Fall damit nur eine Warnung — an das Biobank-Modul
// zu melden.
//
// TODO (2026-09-10): TEMPERATURBEDINGUNGEN — im Ballot zu kommentieren.
//
// Specimen.processing.extension:temperaturbedingungen ist im Parent 1..1, in
// 2026.0.1 wie in 2027.0.0-ballot.rc2. Ein Profil darf nur verengen, wir koennen
// die Pflicht also nicht loesen: Wer Specimen.processing benutzt, muss
// Lagertemperaturbedingungen mitliefern.
//
// Fuer den mikrobiologischen Anwendungsfall ist das nicht relevant. Die Pflicht
// stammt aus der Biobank, wo Specimen.processing den Lagerprozess einer
// Bioprobe beschreibt und die Temperatur zur Kernangabe gehoert. In der
// Mikrobiologie beschreibt derselbe Platz die Aufarbeitung — Faerbung,
// Anreicherung, Bebruetung —, und dort ist die Lagertemperatur entweder
// unbekannt oder ohne Aussage.
//
// Praktische Folge: Dieses Modul fuehrt die Faerbung in Observation.method und
// nicht, wie das EU-Datenmodell vorschlaegt, in Specimen.processing.procedure.
//
// Zu klaeren mit dem Biobank-Modul, nicht mit der europaeischen Gruppe: ob die
// Pflicht auf den Lagerprozess-Slice (processing:lagerprozess) begrenzt werden
// kann, wo sie hingehoert, statt auf jedes processing-Element zu wirken. Bis
// dahin steht die Frage als Ballotfrage 3 im Leitfaden.
Profile: MII_PR_Mikrobio_Probe
Parent: https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore
Id: mii-pr-mikrobio-probe
Title: "MII PR Mikrobio Probe"
Description: "Probe beschreibt das mikrobiologisch untersuchte Material. Das Profil leitet vom Bioproben-Basisprofil der MII-Biobank ab und ergaenzt die Erwartungen der mikrobiologischen Diagnostik."
* insert PR_CS_VS_Version
* insert Publisher
* ^purpose = "Dieses Profil gibt Observation.specimen der mikrobiologischen Untersuchungsprofile ein Zielprofil und benennt die fuer die Mikrobiologie tragenden Angaben."
* type ^short = "Probenart. Auch dann anzugeben, wenn das Material im verwendeten LOINC-Code bereits praekoordiniert ist — nur so steht die Probenart strukturiert und unabhaengig vom Untersuchungscode zur Verfuegung."
* collection.collected[x] ^short = "Entnahmezeitpunkt. Ist er nicht bekannt, kann stattdessen Specimen.receivedTime dokumentiert werden; der Parent verlangt collected[x] jedoch verpflichtend."
* processing ^comment = "Der Parent verlangt hier verpflichtend die Extension 'temperaturbedingungen'. Diese Pflicht stammt aus der Beschreibung von Lagerprozessen in der Biobank und traegt fuer die mikrobiologische Aufarbeitung nicht; ein abgeleitetes Profil kann sie nicht loesen. Sie ist als Ballotfrage 3 offen und mit dem Biobank-Modul zu klaeren. Solange sie besteht, wird die Faerbetechnik nicht hier, sondern in Observation.method angegeben."
* parent ^short = "Verweis auf das Material, aus dem diese Probe gewonnen wurde — etwa ein Isolat aus einer Primaerprobe. Traegt die Kette von der Primaerprobe zum Isolat, auf das sich Empfindlichkeitstestung und Resistenzmechanismen beziehen."
