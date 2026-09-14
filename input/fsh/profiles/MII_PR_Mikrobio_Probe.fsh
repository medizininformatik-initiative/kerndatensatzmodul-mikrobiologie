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
// TEMPERATURBEDINGUNGEN — ERLEDIGT am 2026-09-14.
//
// Specimen.processing.extension:temperaturbedingungen war im Parent 1..1 (in
// 2026.0.1 wie in 2027.0.0-ballot.rc2), und ein Profil darf nur verengen: Wer
// Specimen.processing benutzte, musste Lagertemperaturbedingungen mitliefern,
// obwohl die Pflicht aus der Lagerung von Bioproben stammt und fuer die
// Aufarbeitung im Labor keine Aussage traegt. Das Modul hat die Frage als
// Ballotfrage im Leitfaden gestellt.
//
// Das Biobank-Modul hat sie in 2027.0.0-ballot geloest, an den Tarballs
// nachgemessen: processing.extension:temperaturbedingungen ist 0..1,
// processing.extension frei, und die Pflicht ist auf den Lagerprozess-Slice
// gewandert (processing:lagerprozess.extension 1..*). Die Ballotfrage ist
// deshalb gestrichen. Der Grund, weshalb dieses Modul die Faerbung dennoch in
// einer Extension an der Observation fuehrt, ist allein die offene Frage, ob
// ueberhaupt eine Specimen-Ressource entsteht — siehe MII_EX_Mikrobio_Faerbung.
Profile: MII_PR_Mikrobio_Probe
Parent: https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore
Id: mii-pr-mikrobio-probe
Title: "MII PR Mikrobio Probe"
Description: "Probe beschreibt das mikrobiologisch untersuchte Material. Das Profil leitet vom Bioproben-Basisprofil der MII-Biobank ab und ergaenzt die Erwartungen der mikrobiologischen Diagnostik."
* insert PR_CS_VS_Version
* insert Publisher
// Modulthema. Der Biobank-Parent traegt keine Themen, hier werden sie also neu
// angelegt — dieselbe Regel, siehe input/fsh/rulesets/crmi.fsh.
* insert CRMIArtifactTopic(0, http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl, C16851)
* insert CRMIArtifactTopic(+, http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl, C217438)
* ^purpose = "Dieses Profil gibt Observation.specimen der mikrobiologischen Untersuchungsprofile ein Zielprofil und benennt die fuer die Mikrobiologie tragenden Angaben."
* type ^short = "Probenart. Auch dann anzugeben, wenn das Material im verwendeten LOINC-Code bereits praekoordiniert ist — nur so steht die Probenart strukturiert und unabhaengig vom Untersuchungscode zur Verfuegung."
* collection.collected[x] ^short = "Entnahmezeitpunkt. Ist er nicht bekannt, kann stattdessen Specimen.receivedTime dokumentiert werden; der Parent verlangt collected[x] jedoch verpflichtend."
* processing ^comment = "Bis 2027.0.0-ballot.rc2 verlangte der Parent hier verpflichtend die Extension 'temperaturbedingungen', eine Pflicht aus der Lagerung von Bioproben ohne Aussage fuer die mikrobiologische Aufarbeitung. Seit 2027.0.0-ballot ist sie 0..1 und auf den Lagerprozess-Slice begrenzt. Die Faerbetechnik wird trotzdem nicht hier, sondern in Observation.extension[faerbung] angegeben, solange offen ist, ob ueberhaupt eine Specimen-Ressource entsteht."
* parent ^short = "Verweis auf das Material, aus dem diese Probe gewonnen wurde — etwa ein Isolat aus einer Primaerprobe. Traegt die Kette von der Primaerprobe zum Isolat, auf das sich Empfindlichkeitstestung und Resistenzmechanismen beziehen."
