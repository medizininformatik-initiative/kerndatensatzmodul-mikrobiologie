// Einheiten der Zaehlung je Gesichtsfeld, fuer die Mengenkomponente der
// Mikroskopie. Am 2026-09-14 angelegt: Die Komponente liess Quantity und Range
// ohne Einheitenbindung zu, jede Einheit waere also zulaessig gewesen — anders
// als bei jeder anderen quantitativen Aussage dieses Moduls (Keimzahl,
// molekulare Pathogenlast, Antigen/Antikoerper haben je ein UCUM-ValueSet).
//
// /[HPF] "per high power field" und /[LPF] "per low power field" sind gueltige
// UCUM-Codes, am 2026-09-14 gegen tx.fhir.org geprueft (result=true fuer beide). Das rueckmeldende
// Labor berichtet in /[HPF]; /[LPF] steht daneben, weil dieselbe Zaehlung bei
// kleiner Vergroesserung ueblich ist. Die Bindung ist extensible, wie bei den
// uebrigen Einheitenlisten.
ValueSet: MII_VS_Mikrobio_Mikroskopie_Gesichtsfeld_Einheiten_UCUM
Id: mii-vs-mikrobio-mikroskopie-gesichtsfeld-einheiten-ucum
Title: "MII VS Mikrobio Mikroskopie Gesichtsfeld Einheiten [UCUM]"
Description: "Einheiten für die Zählung je Gesichtsfeld in der Mengenkomponente der Mikroskopie."
* insert PR_CS_VS_Version
* insert Publisher
* ^status = #active
// Ohne Display, wie in den uebrigen UCUM-Listen dieses Moduls: Der Server gibt
// als Display den Code selbst zurueck, und UCUM hat keine normierten Klartexte.
* $ucum#/[HPF]
* $ucum#/[LPF]
