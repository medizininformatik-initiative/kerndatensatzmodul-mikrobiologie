ValueSet: MII_VS_Mikrobio_Kultur_Ergebnis_SNOMED
Id: mii-vs-mikrobio-kultur-ergebnis-snomed
Title: "MII VS Microbiology Culture Result [SNOMED]"
Description: "Result ValueSet for general and specific culture: growth, no growth or an equivocal result. How much has grown is not stated by this ValueSet but by the colony count. An indeterminable result is represented not via value[x] but via Observation.dataAbsentReason."
* insert PR_CS_VS_Version
* insert Publisher
* ^status = #active
* $sct#365698005 "Organism growth"
* $sct#264868006 "No growth (qualifier value)"
// Graubereich zwischen Wachstum und keinem Wachstum, ergänzt auf Vorschlag der
// europäischen Arbeitsgruppe. "Equivocal result" ist achsenneutral (Elternkonzept
// 281296001 |Result comments|) und passt deshalb sowohl hier als auch bei der
// Spezifischen Bestimmung.
//
// BEWUSST NICHT AUFGENOMMEN: 260408008 "Weakly positive". Die Gruppe hatte es
// für beide Profile vorgeschlagen; bei der Kultur trägt es nicht. Die
// Ergebnisachse hier ist Wachstum/kein Wachstum — 365698005 hängt unter
// 441742003 |Evaluation finding|, während "Weakly positive" unter 10828004
// |Positive| und damit unter |Presence findings| liegt. Nachgemessen: unter
// 365698005 liegen 62 Codes, "Weakly positive" ist keiner davon. Bei der
// Spezifischen Bestimmung dagegen sind "Weakly positive" und "Detected"
// Geschwister unter |Presence findings| — dort steht es deshalb auch.
//
// 263866000 "Scanty growth" ist ebenfalls kein Ersatz: Es hängt unter 272520006
// |Degree findings|, also auf der Mengenachse, und die delegiert dieses Modul an
// die Keimzahl (MII_PR_Mikrobio_Keimzahl).
//
// Die Regel "unbestimmbar -> dataAbsentReason" bleibt von alledem unberührt.
// Unbestimmbar heisst: Die Kultur liefert keine verwertbare Aussage —
// überwuchert, nicht angelegt, Material unzureichend. Ein grenzwertiger Befund
// liefert sehr wohl eine Aussage, nämlich "grenzwertig". -> value[x]
* $sct#280414007 "Equivocal result"
