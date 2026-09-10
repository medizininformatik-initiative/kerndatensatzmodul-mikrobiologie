Profile: MII_PR_Mikrobio_Empfindlichkeit
Parent: MII_PR_Labor_Laboruntersuchung
Id: mii-pr-mikrobio-empfindlichkeit
Title: "MII PR Mikrobio Empfindlichkeit"
Description: "Empfindlichkeit beschreibt das Ergebnis der phänotypischen Resistenztestung eines Erregers gegenüber antimikrobiellen Substanzen unter Bezug auf ein Normsystem."
* insert MIKRO_OBSERVATION_COMMON
* ^purpose = "Dieses Profil beschreibt die phänotypische Empfindlichkeitstestung. Die Resistenz eines bereits identifizierten Erregers gegen eine einzelne Substanz wird hier abgebildet, z. B. ein linezolidresistenter Enterococcus über 29258-1 |Linezolid [Susceptibility]| mit interpretation R; der Negativfall ist interpretation S. Der zielgerichtete Nachweis eines resistenten Erregers als solchen gehört dagegen nach MII_PR_Mikrobio_Spezifische_Bestimmung bzw. MII_PR_Mikrobio_Spezifische_Kultur."
// Terminologische Luecke, nachverfolgt in Issue #92: Fuer den direkten zielgerichteten
// LRE-Nachweis aus einer Probe fehlt ein geeigneter LOINC-Code; LOINC kennt zu Linezolid
// nur [Susceptibility]-, Wirkspiegel- und Antikoerpercodes. Fuer MRSA und VRE existieren
// entsprechende Nachweiscodes. Betrifft nur den Direktnachweis: Die Bewertung eines bereits
// nachgewiesenen Enterococcus laeuft ueber MII_PR_Mikrobio_Resistenzkategorie_Status
// (lre-status bzw. lvre-status). Externe SNOMED-Organism-Codes sind kein Ersatz fuer einen
// fehlenden Testcode, da Observation.code die Testfrage und nicht den Organismus
// ausdruecken soll.
* code from MII_VS_Mikrobio_Empfindlichkeit_Phenotyp_LOINC (extensible)
* code ^short = "Bevorzugt LOINC-Codes OHNE praekoordiniertes Verfahren, z. B. 100044-7 'Cefcapene [Susceptibility]' und nicht die '... by Broth dilution'-Variante — das Verfahren gehoert nach Observation.method. Das EU-Datenmodell markiert diese methodenfreie Menge als 'methodless:true' und Preferred. Ebenso bevorzugt ohne praekoordinierte Specimentype-Angabe (System = XXX); der Specimentype wird separat ueber Specimen.type kodiert. NICHT hierher gehoeren Codes mit der Methode 'Genotyping', etwa 103958-5 'Ofloxacin [Susceptibility] by Genotype': Dieses Profil verlangt ein Grenzwert-Regelwerk in interpretation.extension[Norm], und eine genotypische Vorhersage beruht auf keinem. Sie gehoert nach MII_PR_Mikrobio_Voraussichtliche_Empfindlichkeit."
// ZWEI ERGEBNISFORMEN, nach dem Grundsatz des EU-Datenmodells (Blatt
// "Phenotypic susceptibility", Zeile 46): "Result value will be quantitativ
// (MIC value or diameter) or codeable (SIR)". Ein Labor, das nur die Kategorie
// berichtet und keine MHK gemessen hat, hat sonst keinen Wert anzugeben — eine
// Observation ohne value[x] ist die unuebliche Gestalt, nicht die Redundanz.
* value[x] only Quantity or CodeableConcept
* valueQuantity
  * code from MII_VS_Mikrobio_Empfindlichkeit_Einheiten_UCUM (extensible)
* valueCodeableConcept from MII_VS_Mikrobio_Susceptibility (extensible)
* valueCodeableConcept ^short = "Die Empfindlichkeitskategorie, wenn kein Messwert vorliegt. Aus derselben Liste wie interpretation, weil beide dasselbe aussagen — sind beide angegeben, muessen sie uebereinstimmen (empfindlichkeit-kategorie-stimmt-mit-interpretation)."
* obeys empfindlichkeit-kategorie-braucht-interpretation and empfindlichkeit-kategorie-stimmt-mit-interpretation and empfindlichkeit-messwert-sollte-bewertet-sein
* method from MII_VS_Mikrobio_Empfindlichkeit_Methode_SNOMED (extensible)
* interpretation from MII_VS_Mikrobio_Susceptibility (extensible)
* interpretation.extension contains MII_EX_Mikrobio_Empfindlichkeit_Norm named Norm 1..1 MS

// Die beiden Invarianten fordert das Blatt selbst an: Zeile 20 "add invariant
// checking valueCC & interpretation are equal" und Zeile 49 "If the result value
// is just SIR, interpretation SHALL be also provided".
//
// Der Grund fuer die zweite: Die Norm haengt an interpretation.extension. Ohne
// interpretation steht eine Kategorie ohne die Angabe, nach welchem Regelwerk
// sie gebildet wurde — und damit ohne Aussage.
Invariant: empfindlichkeit-kategorie-braucht-interpretation
Description: "If the result is given as a susceptibility category rather than a measured value, Observation.interpretation SHALL be present, because the norm it was derived from is carried there."
Expression: "value.ofType(CodeableConcept).exists() implies interpretation.exists()"
Severity: #error

// Die erste Fassung dieses Ausdrucks war FALSCH und ist es wert, festgehalten
// zu werden: Sie lautete
//
//   value.ofType(CodeableConcept).coding.all(
//     %resource.interpretation.coding.where(system = $this.system and
//                                           code = $this.code).exists())
//
// In FHIRPath bindet JEDE iterierende Funktion `$this` neu. Innerhalb des
// `where()` zeigt `$this` also auf das Interpretations-Coding, nicht auf das
// Wert-Coding — die Bedingung verglich das Coding mit sich selbst, war immer
// wahr, und das Invariant prüfte faktisch nur, ob überhaupt ein
// Interpretations-Coding existiert.
//
// `subsetOf` braucht keine Variable: Es vergleicht die Code-Strings direkt.
// Auf einer leeren Menge liefert es true, der Fall "kein kategorialer Wert"
// ist also mitgedeckt.
Invariant: empfindlichkeit-kategorie-stimmt-mit-interpretation
Description: "Where both a categorical result value and an interpretation are given, every code of the value SHALL also appear among the interpretation codes."
Expression: "value.ofType(CodeableConcept).coding.code.subsetOf(interpretation.coding.code)"
Severity: #error

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
