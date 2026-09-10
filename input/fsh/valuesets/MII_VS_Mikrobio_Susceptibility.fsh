ValueSet: MII_VS_Mikrobio_Susceptibility
Id: mii-vs-mikrobio-susceptibility
Title: "MII VS Mikrobio Susceptibility"
Description: "Bewertungs-ValueSet für die phänotypische Empfindlichkeitstestung: die Kategorien sensibel, intermediär, sensibel bei erhöhter Exposition, resistent und nicht sensibel."
* insert PR_CS_VS_Version
* insert Publisher
* ^status = #active
* ^date = "2023-03-02T00:00:00Z"
// WARUM HIER EIN EINZELNER SNOMED-CODE ZWISCHEN DEN v3-CODES STEHT — und warum
// das kein Versehen ist, das man "symmetrisch" machen sollte.
//
// S, I, SDD, R und NS kommen aus v3-ObservationInterpretation, dem
// FHIR-Kernvokabular; auf diese Codes bindet FHIR selbst extensibel, sie sind
// also zu nutzen. SNOMED fuehrt daneben eine vollstaendige EUCAST-2019-Familie
// (am 2026-09-10 gemessen: 1306540001 als Standard, 1306577009 S, 1306583007 I,
// 1306581009 R). Aufgenommen ist davon nur EINER, und zwar dieser:
//
//   Bei S und R sagt der SNOMED-Code dasselbe wie der v3-Code, waere also ein
//   zweiter Weg fuer dieselbe Aussage.
//   Bei I nicht: EUCAST hat die Bedeutung von I 2019 GEAENDERT, von
//   "intermediaer" zu "sensibel bei erhoehter Exposition". Der v3-Code #I
//   ("Intermediate") kann das nicht ausdruecken, 1306583007 kann es.
//
// Die Liste ist also nicht unvollstaendig, sondern genau so lang wie noetig.
* $v3-ObservationInterpretation-ver#S "Susceptible"
* $v3-ObservationInterpretation-ver#I "Intermediate"
* $v3-ObservationInterpretation-ver#SDD "Susceptible-dose dependent"
* $v3-ObservationInterpretation-ver#R "Resistant"
* $v3-ObservationInterpretation-ver#NS "Non-susceptible"
* $sct#1306583007 "I (Susceptible, increased exposure) EUCAST (European Committee on Antimicrobial Susceptibility Testing) category 2019"