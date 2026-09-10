// TODO (2026-09-10): ZWEI BEFUNDE AUS DER LABORPRAXIS OHNE CODE. Beide stehen
// im realen Grampraeparat-Katalog eines deutschen Labors, beide sind hier nicht
// abbildbar, und beide brauchen eine Entscheidung von aussen.
//
//   "Detritus"                   Naechstliegender Kandidat ist 257159000
//                                |Debris|. FACHLICH ZU BESTAETIGEN, nicht
//                                anzunehmen: Der Code ist nicht als
//                                mikroskopischer Befund gepraegt, und ob er die
//                                gemeinte Zelltrummer-Beobachtung trifft, muss
//                                ein Mikrobiologe sagen.
//   "V. a. Gardnerella vaginalis" Ein VERDACHT, kein Befund. Ein CodeableConcept
//                                hat keinen "suspected"-Qualifier, und den
//                                Organismus einfach als Wert zu setzen behauptet
//                                mehr als gemeint. Im vaginalen Kontext traegt
//                                der Nugent-Score diese Aussage; ausserhalb
//                                braucht es eine Modellentscheidung der
//                                europaeischen Gruppe.
//
// Beide sind in der Ableitungsanalyse, Part 2, an die Gruppe formuliert — die
// liegt AUSSERHALB dieses Repositorys, im lokalen materials/ des Bearbeiters,
// weil dort Arbeitsstaende Dritter liegen und dieses Repository oeffentlich ist.
// Dieser Vermerk ist deshalb die einzige Fassung, die im Repository ueberlebt;
// gefunden wird er von der TODO-Suche ueber input/fsh/, die
// docs/release-checklist.md vor jedem Release verlangt.
ValueSet: MII_VS_Mikrobio_Morphologie_Ergebnis_SNOMED
Id: mii-vs-mikrobio-morphologie-ergebnis-snomed
Title: "MII VS Mikrobio Morphologie Ergebnis [SNOMED]"
Description: "Ergebnis-ValueSet für die Mikroskopie: die mikroskopisch beobachtete morphologische Gruppe, etwa grampositive Kokken in Haufen oder gramnegative Stäbchen. Eine Speziesidentifizierung gehört nicht hierher, auch wenn sie mikroskopisch gestellt wurde."
* insert PR_CS_VS_Version
* insert Publisher
* ^status = #active
// ZWEI SNOMED-ACHSEN, und das ist unvermeidlich. Am 2026-09-10 nachgemessen:
// SNOMED hat (finding)-Codes NUR fuer die angeordneten Formen — in chains, in
// clusters, in pairs, und die Kombination. Fuer "grampositive Kokken" ohne
// Anordnung existiert kein (finding)-Code; die nackte Morphologie gibt es nur
// als (organism).
//
// Das ist kein Fehler der Terminologie, sondern eine richtige Aussage ueber die
// Aussage: "grampositive Kokken gesehen" IST taxonomisch, nur grob. Es schraenkt
// den Organismus auf eine Klasse ein, statt ihn zu bestimmen. Der Unterschied zu
// MII_PR_Mikrobio_Allgemeine_Bestimmung ist die GRANULARITAET, nicht die Achse.
//
// Folge fuer Auswertungen: 59206002, 18383003, 83514008 und 87172008 sind
// Nachkommen von 409822003 (Bacteria domain) und damit auch Mitglieder von
// MII_VS_Mikrobio_Organismen_SNOMEDCT — also gueltige Werte der Allgemeinen
// Bestimmung. Wer "welche Organismen wurden identifiziert" fragt, filtert
// deshalb ueber Profil oder Untersuchungscode und nicht ueber value[x] allein.
// Die Untersuchungscodes sind disjunkt (105059-0 / 664-3 gegen 41852-5), eine
// Mehrdeutigkeit entsteht also nicht.

// Morphologische Gruppen, angeordnete Formen — (finding).
* $sct#61609004 "Gram-positive cocci in chains (finding)"
* $sct#70003006 "Gram-positive cocci in clusters (finding)"
* $sct#1359949003 "Gram-positive cocci in pair (finding)"
* $sct#734444009 "Gram-positive cocci in chains, clusters, and pairs (finding)"
* $sct#723529006 "Extracellular Gram-negative diplococcus (finding)"
* $sct#734447002 "Intracellular Gram-negative diplococcus (finding)"
* $sct#404509004 "Large gram-negative coccobacilli (finding)"
* $sct#404510009 "Large gram-negative rods (finding)"
* $sct#427824002 "Small Gram-negative rods (finding)"

// Morphologische Gruppen, unangeordnete Formen — (organism), weil SNOMED sie
// nur dort fuehrt. Aus dem realen Ergebniskatalog eines deutschen Labors; es
// sind die haeufigsten Grambefunde ueberhaupt.
* $sct#59206002 "Gram-positive coccus (organism)"
* $sct#18383003 "Gram-negative coccus (organism)"
* $sct#83514008 "Gram-positive bacillus (organism)"
* $sct#87172008 "Gram-negative bacillus (organism)"
* $sct#11471007 "Gram-positive diplococcus (organism)"
* $sct#115199003 "Subclass Irregular Non-Sporing Gram Positive Rods (organism)"
* $sct#116442009 "Coryneform bacteria (organism)"
* $sct#62093005 "Yeast (organism)"

// Pilzmorphologie — (finding), hier ist die Reihe vollstaendig.
* $sct#404507002 "Hyphae of kingdom Fungi detected (finding)"
* $sct#768480006 "Branching hyphae of kingdom Fungi detected (finding)"
* $sct#768488004 "Broad irregular hyphae of kingdom Fungi detected (finding)"
* $sct#768479008 "Narrow hyphae of kingdom Fungi detected (finding)"
* $sct#768481005 "Nonbranching hyphae of kingdom Fungi detected (finding)"
* $sct#719645005 "Nonseptate hyphae of kingdom Fungi detected (finding)"
* $sct#719644009 "Septate hyphae of kingdom Fungi detected (finding)"

// Untersucht, nichts gesehen — und ein Sonderbefund.
* $sct#27863008 "No organisms seen (finding)"
* $sct#721786009 "No cells seen (finding)"
* $sct#250440009 "Clue cells present (finding)"

// BEWUSST NICHT AUFGENOMMEN: die Wirtszellen 52501007 Leukocyte, 41898006
// Erythrocyte und 4212006 Epithelial cell. Sie liessen sich hier als Wert mit
// der Menge in component[menge] abbilden, aber LOINC hat fuer sie ordinale
// Codes — 72163-9, 72162-1, 72161-3 —, bei denen das Objekt im Code steht und
// die Menge der Wert ist. Das gehoert damit in
// MII_PR_Mikrobio_Spezifische_Mikroskopie. Zwei Wege fuer denselben Befund zu
// empfehlen waere genau die Inkonsistenz, die uns aus der Laborpraxis
// zurueckgemeldet wurde.
