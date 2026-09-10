ValueSet: MII_VS_Mikrobio_Empfindlichkeit_Phenotyp_LOINC
Id: mii-vs-mikrobio-empfindlichkeit-phenotyp-loinc
Title: "MII VS Mikrobio Empfindlichkeit Phenotyp [LOINC]"
Description: "Tests-ValueSet für die phänotypische Empfindlichkeitstestung: LOINC-Codes der getesteten antimikrobiellen Substanz."
* insert PR_CS_VS_Version
* insert Publisher
* ^status = #active
* ^date = "2023-03-02T00:00:00Z"
// KEIN exclude DER GENOTYPING-CODES — am 2026-09-10 entschieden, nachdem ein
// TODO hier die Wiederherstellung vorschlug.
//
// Der Sachverhalt stimmt: Bis 2025.0.1 schloss dieses ValueSet
// METHOD_TYP = "LP28723-2" aus, 2027.0.0-alpha.1 hat den exclude gestrichen
// (dokumentiert in changes.md), und seither ist dieses VS eine Obermenge von
// MII_VS_Mikrobio_Empfaenglichkeit_Genotyp_LOINC — gemessen 1637 gegen 97 Codes.
//
// Er zurueckzunehmen bringt aber wenig:
//   - Die Bindung ist EXTENSIBLE. Ein ausgeschlossener Code wird dadurch nicht
//     ungueltig, sondern erzeugt eine Warnung. Der exclude kauft keine Trennung,
//     sondern einen Hinweis.
//   - Die Trennung sitzt schon in der Struktur, und dort erzwungen: Dieses
//     Profil verlangt interpretation.extension[Norm] 1..1 mit required-Bindung
//     auf EUCAST/CLSI/Andere. Wer einen "by Genotype"-Code hier verwendet, muss
//     also ein Grenzwert-Regelwerk fuer eine Vorhersage angeben, die auf keinem
//     beruht. MII_PR_Mikrobio_Voraussichtliche_Empfindlichkeit kennt
//     interpretation gar nicht. Dazu drei Invarianten und ein engeres value[x].
//   - Ein exclude waere eine ZWEITE Stelle fuer dieselbe Grenze. Kommt in LOINC
//     ein neuer Vorhersage-METHOD_TYP dazu, muessten beide ValueSets im
//     Gleichschritt nachgezogen werden — genau die Redundanz, die alpha.1 mit
//     "the assignment must follow from the profile used" aufgeloest hat.
//
// Die Grenze steht deshalb als Begruendung im code ^short beider Profile, nicht
// als Codeliste. Das wirkt auch fuer Codes, die es heute noch nicht gibt.
//
// Unabhaengig davon entfallen ist ORDER_OBS = "Observation"; dem Genotyp-VS
// fehlt STATUS = "ACTIVE".
* include codes from system $loinc
    where CLASS = "LP7755-4" and
    PROPERTY = "LP6870-2" and
    STATUS = "ACTIVE"

// EINZELN AUFGENOMMEN, weil der CLASS-Filter sie verliert. Beide sind echte
// Empfindlichkeitstests — PROPERTY = LP6870-2 (Susc) —, liegen aber in der
// falschen LOINC-Klasse; am 2026-09-10 nachgemessen:
//
//   106843-6  CLASS LP7819-8 MICRO      statt ABXBACT
//   103673-0  CLASS LP7790-1 DRUG/TOX   statt ABXBACT
//
// Das EU-Datenmodell fuehrt sie deshalb als "Additional binding" und vermerkt
// "ask to fix these two loinc codes" (Blatt "Phenotypic susceptibility",
// Zeile 4). Die Fehlklassifikation ist an Regenstrief zu melden; bis dahin
// aufgezaehlt, wie bei den Carbapenemase-Schnelltests in
// MII_VS_Mikrobio_Resistenzmechanismen_Determinanten_LOINC.
* $loinc#106843-6 "Cefotaxime+Cloxacillin [Susceptibility] in Isolate by Broth dilution"
* $loinc#103673-0 "Isavuconazole [Susceptibility] in Isolate by Gradient strip"
