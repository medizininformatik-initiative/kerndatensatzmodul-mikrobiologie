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
* code ^short = "Es werden bevorzugt LOINC-Codes ohne präkoordinierte Specimentype-Angabe verwendet (System = XXX); der Specimentype wird separat über Specimen.type kodiert."
* value[x] only Quantity
* valueQuantity
  * code from MII_VS_Mikrobio_Empfindlichkeit_Einheiten_UCUM (extensible)
* interpretation from MII_VS_Mikrobio_Susceptibility (extensible)
* interpretation.extension contains MII_EX_Mikrobio_Empfindlichkeit_Norm named Norm 1..1 MS
