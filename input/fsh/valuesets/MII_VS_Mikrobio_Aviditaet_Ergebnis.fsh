// Niedrig, grenzwertig, hoch — und die drei Codes kommen bewusst aus zwei
// Systemen. Am 2026-09-14 auf Rueckmeldung umgestellt.
//
// DIE BINDUNG, DIE GILT, ist nicht die von R4 Core, sondern die des Parents:
// MII_PR_Labor_Laboruntersuchung bindet Observation.interpretation EXTENSIBLE an
// mii-vs-labor-interpretation, und diese Liste hat fuenf Codes — L Low,
// LU Significantly low, N Normal, H High, HU Significantly high (gemessen am
// laborbefund-Paket 2027.0.0-ballot). Extensible heisst: Wo ein passender Code
// in der Liste existiert, MUSS er genommen werden.
//
// Fuer niedrig und hoch existieren L und H. Sie sind deshalb Pflicht, und
// LA22671-4 "Low avidity" bzw. LA22673-0 "High avidity" waeren an ihrer Stelle
// NICHT konform — auch wenn sie praeziser klingen.
//
// Fuer die Mitte existiert in der Parent-Liste keiner. Dort ist ein Fremdcode
// zulaessig, und genommen wird der, den dieses Modul fuer "grenzwertig" bereits
// fuehrt: 280414007 |Equivocal result| steht ebenso in
// mii-vs-mikrobio-kultur-ergebnis-snomed und in
// mii-vs-mikrobio-spezifische-bestimmung-ergebnis-snomed. Er ist achsenneutral
// (Elternkonzept 281296001) und damit weder an den Erregernachweis noch an die
// Empfindlichkeit gebunden. Ein Implementierender begegnet im ganzen Leitfaden
// einem Begriff fuer grenzwertig, nicht drei.
//
// NICHT LA22672-2 "Gray-zone" aus der LOINC-Answer-List LL3257-4, obwohl die
// fuer die Aviditaet gebaut ist: Aus dieser Liste waere nur die Mitte
// verwendbar, denn ihre Geschwister LA22671-4 "Low avidity" und LA22673-0
// "High avidity" verdraengen L und H nicht — siehe oben. Ein drittes
// Codesystem fuer einen einzelnen Wert, dessen Listenzusammenhang wir gar nicht
// nutzen koennen, waere der schlechtere Tausch.
//
// NICHT v3-ObservationInterpretation#I, was bis zum 2026-09-14 hier stand.
// Nachgelesen in THO 7.1.0: `subsumedBy: _ObservationInterpretationSusceptibility`,
// Definition wortwoertlich "Bacterial strain inhibited in vitro by a
// concentration of an antimicrobial agent that is associated with uncertain
// therapeutic effect. Reference: CLSI". Eine Aussage ueber einen Bakterienstamm
// unter einem Antibiotikum, kein Aviditaetsindex. Formal war er zulaessig, weil
// die Parent-Liste fuer die Mitte nichts anbietet — gueltig und trotzdem falsch.
//
// HISTORIE, damit niemand im Kreis laeuft: 2025.0.1 und 2025.0.2 trugen SNOMED
// 62482003 |Low| und 75540009 |High| an der Aviditaets-Komponente der Serologie,
// ohne Mitte. 2027.0.0-alpha.1 wechselte auf L und H, alpha.2 ergaenzte I. Die
// Mitte berichten Labore tatsaechlich — niedrig, intermediaer/grenzwertig, hoch
// —, sie bleibt also, nur mit einem Code, der das aussagt.
//
// 280414007 ist am 2026-09-14 gegen die gepinnte SNOMED-Release nachgesehen
// (Display "Equivocal result", Elternkonzept 281296001).
ValueSet: MII_VS_Mikrobio_Aviditaet_Ergebnis
Id: mii-vs-mikrobio-aviditaet-ergebnis
Title: "MII VS Mikrobio Aviditaet Ergebnis"
Description: "Bewertungs-ValueSet für die Avidität: kategoriale Einordnung des Aviditätsindex als niedrig, grenzwertig oder hoch. Niedrige Avidität spricht für eine frische Infektion."
* insert PR_CS_VS_Version
* insert Publisher
* ^status = #active
* $v3-ObservationInterpretation-ver#L "Low"
* $sct#280414007 "Equivocal result"
* $v3-ObservationInterpretation-ver#H "High"
