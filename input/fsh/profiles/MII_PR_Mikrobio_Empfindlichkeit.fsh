Profile: MII_PR_Mikrobio_Empfindlichkeit
Parent: MII_PR_Labor_Laboruntersuchung
Id: mii-pr-mikrobio-empfindlichkeit
Title: "MII PR Microbiology Susceptibility"
Description: "Susceptibility describes the result of phenotypic resistance testing of a pathogen against antimicrobial substances with reference to an interpretive standard (e.g. EUCAST, CLSI)."
* insert MIKRO_OBSERVATION_COMMON
* ^purpose = "This profile describes phenotypic susceptibility testing. The resistance of an already identified pathogen to a single substance is represented here, e.g. a linezolid-resistant Enterococcus via 29258-1 |Linezolid [Susceptibility]| with interpretation R; the negative case is interpretation S. The targeted detection of a resistant pathogen as such belongs to MII_PR_Mikrobio_Spezifische_Bestimmung instead."
// Terminologische Luecke, nachverfolgt in Issue #92: Fuer den direkten zielgerichteten
// LRE-Nachweis aus einer Probe fehlt ein geeigneter LOINC-Code; LOINC kennt zu Linezolid
// nur [Susceptibility]-, Wirkspiegel- und Antikoerpercodes. Fuer MRSA und VRE existieren
// entsprechende Nachweiscodes. Betrifft nur den Direktnachweis: Die Bewertung eines bereits
// nachgewiesenen Enterococcus laeuft ueber MII_PR_Mikrobio_Resistenzkategorie_Status
// (lre-status bzw. lvre-status). Externe SNOMED-Organism-Codes sind kein Ersatz fuer einen
// fehlenden Testcode, da Observation.code die Testfrage und nicht den Organismus
// ausdruecken soll.
* code from MII_VS_Mikrobio_Empfindlichkeit_Phenotyp_LOINC (extensible)
* code ^short = "Preferably LOINC codes WITHOUT a pre-coordinated method, e.g. 100044-7 'Cefcapene [Susceptibility]' and not the '... by Broth dilution' variant — the method belongs in Observation.method. The EU data model marks this method-free set as 'methodless:true' and Preferred. Likewise preferably without a pre-coordinated specimen type (System = XXX); the specimen type is coded separately via Specimen.type. Codes with the method 'Genotyping', such as 103958-5 'Ofloxacin [Susceptibility] by Genotype', do NOT belong here: this profile requires a breakpoint rule set in interpretation.extension[Norm], and a genotypic prediction is based on none. It belongs to MII_PR_Mikrobio_Voraussichtliche_Empfindlichkeit."
// ZWEI ERGEBNISFORMEN, nach dem Grundsatz des EU-Datenmodells (Blatt
// "Phenotypic susceptibility", Zeile 46): "Result value will be quantitativ
// (MIC value or diameter) or codeable (SIR)". Ein Labor, das nur die Kategorie
// berichtet und keine MHK gemessen hat, hat sonst keinen Wert anzugeben — eine
// Observation ohne value[x] ist die unuebliche Gestalt, nicht die Redundanz.
* value[x] only Quantity or CodeableConcept
* valueQuantity
  * code from MII_VS_Mikrobio_Empfindlichkeit_Einheiten_UCUM (extensible)
* valueCodeableConcept from MII_VS_Mikrobio_Susceptibility (extensible)
* valueCodeableConcept ^short = "The susceptibility category when no measured value is available. From the same list as interpretation, because both state the same thing; if both are given, they must name the same category. The norm is then in the place where the category is — here in valueCodeableConcept.extension[Norm]."
// DIE NORM WIRD STRUKTURELL ERZWUNGEN, nicht ueber eine Invariante. Constraints
// unter valueCodeableConcept greifen nur, WENN der Wert ein CodeableConcept ist:
// Eine Kategorie kann damit nicht ohne Norm berichtet werden, ein Messwert
// (Quantity) braucht am Wert keine — dort steht die Norm an interpretation.
//
// Bis zum 2026-09-12 stand hier stattdessen die Invariante
// empfindlichkeit-kategorie-braucht-interpretation, die `interpretation` verlangte,
// weil die Norm nur dort haengen konnte. Die Anforderung war aber immer die NORM
// und nie das Element; die Kardinalitaet sagt das direkt, ist von jedem Validator
// prueffbar, erscheint in der Differential-Tabelle und braucht kein FHIRPath, das
// SUSHI nicht prueft. Die Strenge bleibt gleich: Eine Kategorie ohne Norm war auch
// vorher unzulaessig.
* valueCodeableConcept.extension contains MII_EX_Mikrobio_Empfindlichkeit_Norm named Norm 1..1 MS
* obeys empfindlichkeit-messwert-sollte-bewertet-sein
* method from MII_VS_Mikrobio_Empfindlichkeit_Methode_SNOMED (extensible)
* interpretation from MII_VS_Mikrobio_Susceptibility (extensible)
* interpretation.extension contains MII_EX_Mikrobio_Empfindlichkeit_Norm named Norm 1..1 MS

// ZWEI INVARIANTEN AM 2026-09-12 GESTRICHEN, ersetzt durch Kardinalitaet oben.
//
// empfindlichkeit-kategorie-braucht-interpretation verlangte `interpretation`,
// weil die Norm nur dort haengen konnte — das ist jetzt die Kardinalitaet an
// valueCodeableConcept.extension[Norm].
//
// empfindlichkeit-kategorie-stimmt-mit-interpretation verglich die Codes von Wert
// und Interpretation mit `subsetOf`. Sie faellt weg, und zwar aus einem Grund, der
// festgehalten gehoert: `subsetOf` ist auf einer LEEREN rechten Seite false, wenn
// links etwas steht. Sobald die Norm am Wert haengen darf, ist genau das der
// Normalfall — Kategorie in value, kein interpretation —, die Invariante haette ihn
// also verboten. Eine Fassung mit Schutz waere moeglich gewesen, haette aber
// `all()` mit `%resource` gebraucht: dieselbe Konstruktion, deren erste Fassung
// hier eine Tautologie war, weil `$this` in jeder iterierenden Funktion neu bindet.
// Dass beide Stellen dieselbe Kategorie nennen muessen, wenn beide gefuellt sind,
// sagt jetzt der ^short. Eine falsche Invariante ist schlechter als keine.

// SOLLTE, nicht MUSS — deshalb `warning`. Ein Messwert ohne Kategorie laesst die
// Bewertung beim Konsumenten, der dafuer die Grenzwerttabellen braeuchte. Eine
// Pflicht waere aber falsch: Fuer manche Erreger-Substanz-Kombinationen hat
// EUCAST keine Grenzwerte definiert, und dann gibt es keine Kategorie, die man
// angeben koennte. Das Blatt fordert die Interpretation nur fuer den
// SIR-Fall (Zeile 49); dieses Invariant geht bewusst darueber hinaus.
Invariant: empfindlichkeit-messwert-sollte-bewertet-sein
Description: "Where the result is a measured value, an interpretation SHOULD be given. It may be absent where no breakpoints are defined for the organism and agent."
Expression: "value.ofType(Quantity).exists() implies interpretation.exists()"
Severity: #warning
