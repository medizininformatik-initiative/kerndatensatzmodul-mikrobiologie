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
Title: "MII PR Microbiology Specimen"
Description: "Specimen describes the material examined microbiologically. The profile derives from the biospecimen base profile of the MII Biobank module and adds the expectations of microbiological diagnostics."
* insert PR_CS_VS_Version
* insert Publisher
// Modulthema. Der Biobank-Parent traegt keine Themen, hier werden sie also neu
// angelegt — dieselbe Regel, siehe input/fsh/rulesets/crmi.fsh.
* insert CRMIArtifactTopic(0, http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl, C16851)
* insert CRMIArtifactTopic(+, http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl, C217438)
* ^purpose = "This profile gives Observation.specimen of the microbiological investigation profiles a target profile and names the information that matters for microbiology."
* type ^short = "Specimen type. To be stated even when the material is already pre-coordinated in the LOINC code used — only then is the specimen type available in a structured form, independently of the investigation code."
* collection.collected[x] ^short = "Collection time. If it is unknown, Specimen.receivedTime can be documented instead; the parent, however, requires collected[x] mandatorily."
* processing ^comment = "Up to 2027.0.0-ballot.rc2 the parent mandatorily required the extension 'temperaturbedingungen' here, an obligation stemming from biospecimen storage with no relevance to microbiological processing. Since 2027.0.0-ballot it is 0..1 and limited to the storage-process slice. The staining technique is nevertheless stated not here but in Observation.extension[faerbung], as long as it remains open whether a Specimen resource is created at all."
* parent ^short = "Reference to the material from which this specimen was obtained — for instance an isolate from a primary specimen. Carries the chain from the primary specimen to the isolate to which susceptibility testing and resistance mechanisms refer."
