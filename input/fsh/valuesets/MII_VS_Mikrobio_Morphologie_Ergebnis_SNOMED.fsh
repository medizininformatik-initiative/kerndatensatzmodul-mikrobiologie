// ERLEDIGT am 2026-09-11 durch Rueckmeldung des rueckmeldenden Labors. Hier
// standen zwei Befunde aus dessen Grampraeparat-Katalog, fuer die kein Code
// gefunden wurde; beide sind jetzt entschieden, und zwar gegen eine Aufnahme:
//
//   "Detritus"                    Wird dort "so gut wie nicht verwendet"; das
//                                 Labor erwaegt, den Eintrag aus seiner eigenen
//                                 Antwortliste zu streichen. Kein Code
//                                 beantragt, 257159000 |Debris| nicht
//                                 aufgenommen.
//   "V. a. Gardnerella vaginalis" Vom Labor als eigener Fehler zurueckgezogen —
//                                 ein Verdacht gehoert nicht in die
//                                 Ergebnisliste, die Aussage laeuft ueber den
//                                 Nugent-Score. Damit bestaetigt die Praxis die
//                                 Modellierung dieses Moduls.
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
//
// ENTFERNT am 2026-09-11: 115199003 |Subclass Irregular Non-Sporing Gram
// Positive Rods|. Das rueckmeldende Labor bittet ausdruecklich darum und stellt
// es im Primaersystem ebenfalls um — der Code benennt eine veraltete
// taxonomische Unterklasse und keinen mikroskopischen Befund.
* $sct#59206002 "Gram-positive coccus (organism)"
* $sct#18383003 "Gram-negative coccus (organism)"
* $sct#83514008 "Gram-positive bacillus (organism)"
* $sct#87172008 "Gram-negative bacillus (organism)"
* $sct#11471007 "Gram-positive diplococcus (organism)"
* $sct#116442009 "Coryneform bacteria (organism)"
* $sct#62093005 "Yeast (organism)"

// Saeurefeste Morphologie — (organism), aus demselben Grund wie die
// unangeordneten Gramformen darueber. Am 2026-09-11 ergaenzt, weil das
// allgemeine Test-ValueSet seither die Acid-fast- und die
// Rhodamin-Auramin-Faerbung fuehrt und deren Ergebnis sonst unbenennbar waere.
// Der Negativfall braucht nichts Neues: 27863008 |No organisms seen| unten gilt
// unabhaengig von der Faerbung.
* $sct#243365003 "Acid-fast bacillus (organism)"
* $sct#243366002 "Partially acid-fast bacillus (organism)"
* $sct#243367006 "Acid and alcohol-fast bacillus (organism)"

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
